/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroMultiplicity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimitiveDirichletCompletedSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PrimitiveDirichletCriticalLine
import Mathlib.Analysis.Complex.ReImTopology

/-!
# Reflection of genuine primitive Dirichlet zero windows

Conjugation pairs the actual character with its inverse. Composing with the
dual functional equation yields reflection in the critical line in the same
character's zero set, with the ordinate and vanishing order preserved. An
off-line zero therefore forces a distinct zero that an ordinate-only readout
identifies with it. The finite windows retain both points and their weights.

The continuation argument follows the private inverse L-function identity in
`WeilPrimitiveInverseOrbitStages` on the punctured plane, so it also applies to
conductor one. The all-window criterion allows a cofinal schedule for each
character separately. Its arithmetic zero-exclusion premise remains open.
-/

set_option autoImplicit false
noncomputable section

open Complex Filter Set
open scoped ComplexConjugate Topology

namespace GRWTSK.NumberTheory.PrimitiveDirichletSource

open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.NumberTheory.Conditional
open GRWTSK.RiemannHypothesis (criticalReflection critical_reflection_involutive)

variable {q : ℕ} [NeZero q]

/-- The dual conjugates both the Dirichlet coefficients and the argument. -/
theorem lFunction_dual_conj (source : PrimitiveDirichletSource q) {s : ℂ} (hs : s ≠ 1) :
    source.dual.lFunction s = conj (source.lFunction (conj s)) := by
  let U : Set ℂ := ({1}ᶜ : Set ℂ)
  let g : ℂ → ℂ := fun z => conj (source.lFunction (conj z))
  have hleft := analyticOnNhd_LFunction_compl_one source.dual.character
  have hright : AnalyticOnNhd ℂ g U := by
    apply DifferentiableOn.analyticOnNhd _ isOpen_compl_singleton
    intro z hz
    have hne : conj z ≠ 1 := by
      intro h
      apply hz
      apply Set.mem_singleton_iff.mpr
      simpa only [conj_conj, map_one] using congrArg (starRingEnd ℂ) h
    have hd : DifferentiableAt ℂ g z := differentiableAt_conj_conj_iff.mpr
      (source.character.differentiableAt_LFunction (conj z) (.inl hne))
    exact hd.differentiableWithinAt
  have hagree : source.dual.lFunction =ᶠ[𝓝 (2 : ℂ)] g := by
    have hopen : IsOpen {z : ℂ | 1 < z.re} := isOpen_lt continuous_const continuous_re
    filter_upwards [hopen.mem_nhds (show (2 : ℂ) ∈ {z : ℂ | 1 < z.re} by norm_num)] with z hz
    have hzc : 1 < (conj z).re := by simpa using hz
    simp only [g, lFunction, DirichletCharacter.LFunction_eq_LSeries _ hz,
      DirichletCharacter.LFunction_eq_LSeries _ hzc]
    unfold LSeries
    change (∑' n : ℕ, LSeries.term (fun k => source.dual.character k) z n) =
      star (∑' n : ℕ, LSeries.term (fun k => source.character k) (conj z) n)
    rw [tsum_star]
    congr 1
    funext n
    by_cases hn : n = 0
    · simp [hn, LSeries.term_zero]
    · change LSeries.term (fun k => source.dual.character k) z n =
        conj (LSeries.term (fun k => source.character k) (conj z) n)
      rw [LSeries.term_of_ne_zero hn, LSeries.term_of_ne_zero hn,
        source.dual_character_apply, map_div₀]
      have harg : (n : ℂ).arg ≠ Real.pi := by
        rw [Complex.natCast_arg]
        exact Real.pi_ne_zero.symm
      have hpow := Complex.cpow_conj (n : ℂ) z harg
      rw [Complex.conj_natCast] at hpow
      rw [hpow, conj_conj]
  have hpre : IsPreconnected U :=
    (isConnected_compl_singleton_of_one_lt_rank (by simp) (1 : ℂ)).isPreconnected
  exact hleft.eqOn_of_preconnected_of_eventuallyEq hright hpre
    (show (2 : ℂ) ∈ U by norm_num [U]) hagree hs

private theorem analyticAt_conjugated {f : ℂ → ℂ} {s : ℂ} (hf : AnalyticAt ℂ f s) :
    AnalyticAt ℂ (fun z => conj (f (conj z))) (conj s) := by
  apply analyticAt_iff_eventually_differentiableAt.mpr
  have ht : Tendsto conj (𝓝 (conj s)) (𝓝 s) := by
    simpa using continuous_conj.tendsto (conj s)
  filter_upwards [ht.eventually (analyticAt_iff_eventually_differentiableAt.mp hf)] with z hz
  exact differentiableAt_conj_conj_iff.mpr hz

/-- Conjugation changes the primitive character and retains analytic order. -/
theorem analyticOrderAt_lFunction_dual_conj (source : PrimitiveDirichletSource q)
    (rho : CriticalStripZero source.character) :
    analyticOrderAt source.dual.lFunction (conj rho.1) =
      analyticOrderAt source.lFunction rho.1 := by
  have hne : conj rho.1 ≠ 1 := by
    intro h
    apply rho.ne_one
    simpa only [conj_conj, map_one] using congrArg (starRingEnd ℂ) h
  have hdual : source.dual.lFunction =ᶠ[𝓝 (conj rho.1)] fun z => conj (source.lFunction (conj z)) := by
    filter_upwards [eventually_ne_nhds hne] with z hz
    exact source.lFunction_dual_conj hz
  rw [analyticOrderAt_congr hdual, ← zeroMultiplicity_cast source.character rho]
  have ha := analyticOnNhd_LFunction_compl_one source.character rho.1 rho.ne_one
  obtain ⟨g, hg, hg0, hfactor⟩ := zeroMultiplicity_factorization source.character rho
  apply (analyticAt_conjugated ha).analyticOrderAt_eq_natCast.mpr
  refine ⟨fun z => conj (g (conj z)), analyticAt_conjugated hg, by simpa using hg0, ?_⟩
  have ht : Tendsto conj (𝓝 (conj rho.1)) (𝓝 rho.1) := by
    simpa using continuous_conj.tendsto (conj rho.1)
  filter_upwards [ht.eventually hfactor] with z hz
  simp only [hz, map_mul, map_pow, map_sub, conj_conj, smul_eq_mul]

private def conjZero (source : PrimitiveDirichletSource q) (rho : CriticalStripZero source.character) :
    CriticalStripZero source.dual.character := by
  have hne : conj rho.1 ≠ 1 := by
    intro h
    apply rho.ne_one
    simpa only [conj_conj, map_one] using congrArg (starRingEnd ℂ) h
  refine ⟨conj rho.1, ?_, by simpa using rho.2.2.1, by simpa using rho.2.2.2⟩
  change source.dual.lFunction (conj rho.1) = 0
  rw [source.lFunction_dual_conj hne, conj_conj]
  change conj (source.character.LFunction rho.1) = 0
  rw [rho.2.1, map_zero]

/-- An equivalence of typed zero sets, with no identification between the two
characters' other data. -/
def dualConjugateZero (source : PrimitiveDirichletSource q) :
    CriticalStripZero source.character ≃ CriticalStripZero source.dual.character :=
  Equiv.ofBijective (conjZero source) (by
    constructor
    · intro rho sigma h
      apply Subtype.ext
      have hc := congrArg Subtype.val h
      change conj rho.1 = conj sigma.1 at hc
      exact (starRingEnd ℂ).injective hc
    · intro sigma
      have hz : conj (source.lFunction (conj sigma.1)) = 0 :=
        (source.lFunction_dual_conj sigma.ne_one).symm.trans sigma.2.1
      have hr : source.lFunction (conj sigma.1) = 0 :=
        (starRingEnd ℂ).injective (hz.trans (map_zero _).symm)
      refine ⟨⟨conj sigma.1, hr, by simpa using sigma.2.2.1, by simpa using sigma.2.2.2⟩,
        Subtype.ext ?_⟩
      exact conj_conj _)

@[simp] theorem dualConjugateZero_val (source : PrimitiveDirichletSource q)
    (rho : CriticalStripZero source.character) :
    (source.dualConjugateZero rho).1 = conj rho.1 := rfl

theorem zeroMultiplicity_dualConjugateZero (source : PrimitiveDirichletSource q)
    (rho : CriticalStripZero source.character) :
    zeroMultiplicity source.dual.character (source.dualConjugateZero rho) =
      zeroMultiplicity source.character rho := by
  rw [← Nat.cast_inj (R := ℕ∞), zeroMultiplicity_cast, zeroMultiplicity_cast,
    dualConjugateZero_val]
  exact source.analyticOrderAt_lFunction_dual_conj rho

private def reflectZero (source : PrimitiveDirichletSource q) (rho : CriticalStripZero source.character) :
    CriticalStripZero source.character := by
  let sigma := source.dualConjugateZero rho
  have hzero := (source.lFunction_zero_reflection_iff sigma.2.2.1 sigma.2.2.2).mpr sigma.2.1
  have hre : (criticalReflection rho.1).re = 1 - rho.1.re := by simp [criticalReflection]
  refine ⟨criticalReflection rho.1, ?_, ?_, ?_⟩
  · change source.lFunction (1 - conj rho.1) = 0
    simpa only [sigma, dualConjugateZero_val] using hzero
  · rw [hre]
    linarith [rho.2.2.2]
  · rw [hre]
    linarith [rho.2.2.1]

/-- Reflection in the critical line acts within a single primitive zero set. -/
def criticalReflectZero (source : PrimitiveDirichletSource q) :
    CriticalStripZero source.character ≃ CriticalStripZero source.character where
  toFun := reflectZero source
  invFun := reflectZero source
  left_inv := fun rho => Subtype.ext (critical_reflection_involutive rho.1)
  right_inv := fun rho => Subtype.ext (critical_reflection_involutive rho.1)

@[simp] theorem criticalReflectZero_val (source : PrimitiveDirichletSource q)
    (rho : CriticalStripZero source.character) :
    (source.criticalReflectZero rho).1 = criticalReflection rho.1 := rfl

@[simp] theorem criticalReflectZero_im (source : PrimitiveDirichletSource q)
    (rho : CriticalStripZero source.character) :
    (source.criticalReflectZero rho).1.im = rho.1.im := by simp [criticalReflection]

theorem criticalReflectZero_re (source : PrimitiveDirichletSource q)
    (rho : CriticalStripZero source.character) :
    (source.criticalReflectZero rho).1.re = 1 - rho.1.re := by simp [criticalReflection]

theorem zeroMultiplicity_criticalReflectZero (source : PrimitiveDirichletSource q)
    (rho : CriticalStripZero source.character) :
    zeroMultiplicity source.character (source.criticalReflectZero rho) =
      zeroMultiplicity source.character rho := by
  rw [← Nat.cast_inj (R := ℕ∞), zeroMultiplicity_cast, zeroMultiplicity_cast,
    criticalReflectZero_val]
  have hc₀ : 0 < (conj rho.1).re := by simpa using rho.2.2.1
  have hc₁ : (conj rho.1).re < 1 := by simpa using rho.2.2.2
  change analyticOrderAt source.lFunction (1 - conj rho.1) = _
  exact (source.analyticOrderAt_lFunction_one_sub hc₀ hc₁).trans
    (source.analyticOrderAt_lFunction_dual_conj rho)

theorem heightWindow_map_dualConjugateZero (source : PrimitiveDirichletSource q) (H : ℝ) :
    (heightWindow source.character source.isPrimitive H).map source.dualConjugateZero.toEmbedding =
      heightWindow source.dual.character source.dual.isPrimitive H := by
  classical
  ext sigma
  obtain ⟨rho, rfl⟩ := source.dualConjugateZero.surjective sigma
  simp [Complex.conj_im, abs_neg]

/-- The exact count in every window agrees with the dual count, including the
real axis and every analytic multiplicity. -/
theorem heightCount_dual (source : PrimitiveDirichletSource q) (H : ℝ) :
    heightCount source.dual.character source.dual.isPrimitive H =
      heightCount source.character source.isPrimitive H := by
  classical
  unfold heightCount
  rw [← source.heightWindow_map_dualConjugateZero H, Finset.sum_map]
  exact Finset.sum_congr rfl (fun rho _ => source.zeroMultiplicity_dualConjugateZero rho)

/-- Right-half exclusion on a symmetric height window is invariant under
inverting the character. -/
theorem no_rightZeros_heightWindow_dual_iff (source : PrimitiveDirichletSource q) (H : ℝ) :
    (∀ sigma ∈ heightWindow source.dual.character source.dual.isPrimitive H,
      sigma.1.re ≤ 1 / 2) ↔
    (∀ rho ∈ heightWindow source.character source.isPrimitive H, rho.1.re ≤ 1 / 2) := by
  have hmem (rho : CriticalStripZero source.character) :
      source.dualConjugateZero rho ∈ heightWindow source.dual.character source.dual.isPrimitive H ↔
        rho ∈ heightWindow source.character source.isPrimitive H := by
    simp only [mem_heightWindow, dualConjugateZero_val, conj_im, abs_neg]
  constructor
  · intro h rho hrho
    simpa only [dualConjugateZero_val, conj_re] using
      h (source.dualConjugateZero rho) ((hmem rho).mpr hrho)
  · intro h sigma hsigma
    obtain ⟨rho, rfl⟩ := source.dualConjugateZero.surjective sigma
    simpa only [dualConjugateZero_val, conj_re] using h rho ((hmem rho).mp hsigma)

theorem criticalReflectZero_mem_heightWindow_iff (source : PrimitiveDirichletSource q)
    (H : ℝ) (rho : CriticalStripZero source.character) :
    source.criticalReflectZero rho ∈ heightWindow source.character source.isPrimitive H ↔
      rho ∈ heightWindow source.character source.isPrimitive H := by
  simp only [mem_heightWindow, criticalReflectZero_im]

/-- A genuine off-line zero forces a distinct, equally weighted zero at the
same ordinate in the very same source window. -/
theorem heightWindow_ordinate_collision (source : PrimitiveDirichletSource q)
    {H : ℝ} {rho : CriticalStripZero source.character}
    (hH : rho ∈ heightWindow source.character source.isPrimitive H)
    (hoff : rho.1.re ≠ 1 / 2) :
    ∃ sigma ∈ heightWindow source.character source.isPrimitive H,
      sigma ≠ rho ∧ sigma.1.im = rho.1.im ∧
        zeroMultiplicity source.character sigma = zeroMultiplicity source.character rho := by
  refine ⟨source.criticalReflectZero rho, (source.criticalReflectZero_mem_heightWindow_iff H rho).mpr hH,
    ?_, source.criticalReflectZero_im rho, source.zeroMultiplicity_criticalReflectZero rho⟩
  intro h
  have he := congrArg (fun r : CriticalStripZero source.character => r.1.re) h
  change (source.criticalReflectZero rho).1.re = rho.1.re at he
  rw [source.criticalReflectZero_re rho] at he
  apply hoff
  linarith

/-- The ordinate map is injective on a complete height window exactly when
every zero in that window is on the critical line. -/
theorem ordinate_injOn_heightWindow_iff (source : PrimitiveDirichletSource q) (H : ℝ) :
    Set.InjOn (fun rho : CriticalStripZero source.character => rho.1.im)
      (heightWindow source.character source.isPrimitive H : Set (CriticalStripZero source.character)) ↔
      ∀ rho ∈ heightWindow source.character source.isPrimitive H, rho.1.re = 1 / 2 := by
  constructor
  · intro hinj rho hmem
    by_contra hoff
    obtain ⟨sigma, hSigma, hNe, hIm, _⟩ := source.heightWindow_ordinate_collision hmem hoff
    exact hNe (hinj hSigma hmem hIm)
  · intro h rho hRho sigma hSigma hIm
    apply Subtype.ext
    apply Complex.ext
    · exact (h rho hRho).trans (h sigma hSigma).symm
    · exact hIm

/-- For this fixed character, a cofinal schedule suffices if every scheduled
window excludes right-half zeros of the actual L-function. -/
theorem criticalLine_iff_no_rightZeros_in_cofinal_windows (source : PrimitiveDirichletSource q)
    (height : ℕ → ℝ) (cofinal : ∀ t : ℝ, ∃ n, t < height n) :
    DirichletCriticalLine source.character ↔
      ∀ n (rho : CriticalStripZero source.character),
        rho ∈ heightWindow source.character source.isPrimitive (height n) →
          rho.1.re ≤ 1 / 2 := by
  constructor
  · intro h _ rho _
    exact (h rho.1 rho.2.2.1 rho.2.2.2 rho.2.1).le
  · intro h s hlo hhi hz
    let rho : CriticalStripZero source.character := ⟨s, hz, hlo, hhi⟩
    obtain ⟨n, hn⟩ := cofinal |s.im|
    have hmem : rho ∈ heightWindow source.character source.isPrimitive (height n) :=
      (mem_heightWindow _ _ _ _).mpr hn
    have hrho := h n rho hmem
    have hsigma := h n (source.criticalReflectZero rho)
      ((source.criticalReflectZero_mem_heightWindow_iff (height n) rho).mpr hmem)
    rw [source.criticalReflectZero_re rho] at hsigma
    change s.re ≤ 1 / 2 at hrho
    change 1 - s.re ≤ 1 / 2 at hsigma
    linarith

/-- The family permits a cofinal schedule for each character independently. -/
theorem dirichletGRH_iff_characterwise_cofinal_windows :
    DirichletGRH ↔ ∀ (m : ℕ) [NeZero m] (source : PrimitiveDirichletSource m),
      ∃ height : ℕ → ℝ, (∀ t : ℝ, ∃ n, t < height n) ∧
        ∀ n (rho : CriticalStripZero source.character),
          rho ∈ heightWindow source.character source.isPrimitive (height n) →
            rho.1.re ≤ 1 / 2 := by
  constructor
  · intro h m _ source
    have hcofinal : ∀ t : ℝ, ∃ n : ℕ, t < (n : ℝ) := exists_nat_gt
    exact ⟨fun n => n, hcofinal,
      (source.criticalLine_iff_no_rightZeros_in_cofinal_windows _ hcofinal).mp (h m source.character)⟩
  · intro h
    apply dirichletGRH_iff_primitive.mpr
    intro m _ chi hp
    let source : PrimitiveDirichletSource m := ⟨chi, hp⟩
    obtain ⟨height, hcofinal, hzero⟩ := h m source
    exact (source.criticalLine_iff_no_rightZeros_in_cofinal_windows height hcofinal).mpr hzero

/-- Conductor one specializes to the original Riemann hypothesis. -/
theorem zeta_rh_iff_no_rightZeros_in_cofinal_windows
    (height : ℕ → ℝ) (cofinal : ∀ t : ℝ, ∃ n, t < height n) :
    _root_.RiemannHypothesis ↔
      ∀ n (rho : CriticalStripZero zeta.character),
        rho ∈ heightWindow zeta.character zeta.isPrimitive (height n) →
          rho.1.re ≤ 1 / 2 :=
  rh_iff_mod_one.trans (zeta.criticalLine_iff_no_rightZeros_in_cofinal_windows height cofinal)

end GRWTSK.NumberTheory.PrimitiveDirichletSource
