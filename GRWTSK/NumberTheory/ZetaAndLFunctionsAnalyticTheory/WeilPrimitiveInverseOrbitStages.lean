/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRightStripWitnessReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroMultiplicity
import Mathlib.NumberTheory.MulChar.Lemmas
import Mathlib.Analysis.Complex.ReImTopology

/-!
# Inverse-character stage coverage on real Weil tests

For a real test its lifted autocorrelation is real at every shift.
Conjugating the Dirichlet coefficient therefore leaves each signed real
prime summand unchanged. The inverse character also has the same gamma
parity and conductor. Hence the very same real test and window have the
same arithmetic value and admissibility for the two characters.

This uses the real-correlation argument of `FrobeniusPhaseSurplus`
(`71090563bb1dba7e4c07f5350d6681b3651285a7`) and the inverse parity
argument of `DirichletWeilIntegrand`
(`441a08d9acef71161fe69fff2ae58967324962c4`), with direct pinned
Mathlib imports. On a complex coefficient and complex correlation the
identity fails in general: taking both to be `I` gives real products
`1` and `-1` in the two orientations.

The consumer is the right-strip return at
`7d64aec18be7ecaa87cbd0bd6d2371a76de04343`. The cofinal-stage theorem
at `0ae31ea65d2251195aab77ebf1e39ca4e5f68a81` can supply the stages for
either member of each inverse pair. The conductor-one RH, right-strip
witness and one stage family per inverse pair are hypotheses.
-/

set_option autoImplicit false
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open MeasureTheory CharacterWindow SourcePrimeCorrelation OddRootProjection
open Set Filter Topology
open GRWTSK.NumberTheory.Conditional

private theorem inverse_apply {q : ℕ} (χ : DirichletCharacter ℂ q) (x : ZMod q) :
    χ⁻¹ x = conj (χ x) := by
  simpa only [RCLike.star_def] using (MulChar.star_apply' χ x).symm

private theorem inverse_parity {q : ℕ} (χ : DirichletCharacter ℂ q) :
    gammaParity χ⁻¹ = gammaParity χ := by
  classical
  have he : χ⁻¹ (-1) = 1 ↔ χ (-1) = 1 := by
    rw [inverse_apply]
    constructor
    · intro h
      simpa only [map_one, Complex.conj_conj] using congrArg (starRingEnd ℂ) h
    · intro h
      rw [h, map_one]
  simp only [gammaParity, he]

/-- On the original real lift, inverting the character preserves the signed form. -/
theorem primitiveArithmeticValue_inverse_liftReal {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hpInv : (χ⁻¹).IsPrimitive) (hnInv : χ⁻¹ ≠ 1)
    (T : ℝ) (f : ℝ → ℝ) (hf : MemLp (liftReal f) 2 volume) :
    primitiveArithmeticValue χ⁻¹ hpInv hnInv T (liftReal f) =
      primitiveArithmeticValue χ hp hn T (liftReal f) := by
  have hreal (r : ℝ) : (correlation (liftReal f) r).im = 0 := by
    have him := integral_im (integrable_correlation_integrand hf r)
    simp only [RCLike.im_to_complex] at him
    unfold correlation
    rw [← him]
    simp [liftReal, Complex.mul_im]
  have hprime : twistedPrime T χ⁻¹ (fun n => correlation (liftReal f) (Real.log (n : ℝ))) =
      twistedPrime T χ (fun n => correlation (liftReal f) (Real.log (n : ℝ))) := by
    unfold twistedPrime
    congr 1
    apply Finset.sum_congr rfl
    intro n _
    rw [inverse_apply]
    simp only [Complex.mul_re, Complex.conj_re, hreal, mul_zero, sub_zero]
  simp only [primitiveArithmeticValue, inverse_parity, hprime]

/-- A stage family for the inverse supplies the original character's stages. -/
theorem smallConductorStages_of_inverse {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hpInv : (χ⁻¹).IsPrimitive) (hnInv : χ⁻¹ ≠ 1)
    (hstage : SmallConductorStages χ⁻¹ hpInv hnInv) :
    SmallConductorStages χ hp hn := by
  intro j hconductor f hf
  have hconductorInv : (χ⁻¹).conductor < conductorFrontier (j + 1) := by
    simpa only [DirichletCharacter.conductor_inv] using hconductor
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hfInv : Admissible χ⁻¹ ((j : ℝ) + 1) f :=
    ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, by simpa only [inverse_parity] using harch⟩
  rw [← primitiveArithmeticValue_inverse_liftReal χ hp hn hpInv hnInv _ f hLp]
  exact hstage j hconductorInv f hfInv

/-! A left-half zero reflects to a right-half zero of the inverse character.
The inverse witness has the same real lift, gamma parity and arithmetic value.
This recovers the original witness on both halves before applying any stage
lower bounds. At `1 - s` the character is inverted even at non-real character
values; ignoring that change is not justified by the functional equation. -/

/-- Right-half witness coverage supplies exactly the original off-line
witness interface, using the same test on reflection. -/
theorem primitiveNegativeWitness_iff_rightStrip :
    PrimitiveNegativeWitness ↔ PrimitiveRightStripNegativeWitness := by
  constructor
  · intro hw q hq χ hp hn s hs hs1 hz
    exact hw q χ hp hn s (by linarith) hs1 (ne_of_gt hs) hz
  · intro hw q hq χ hp hn s hs0 hs1 hoff hz
    rcases lt_or_gt_of_ne hoff with hleft | hright
    · have hre : (1 - s).re = 1 - s.re := by rw [Complex.sub_re, Complex.one_re]
      have hpInv : (χ⁻¹).IsPrimitive := by
        simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp
      have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
      obtain ⟨T, f, hf, hneg⟩ := hw q χ⁻¹ hpInv hnInv (1 - s)
        (by linarith) (by linarith) (LFunction_zero_at_reflected_inverse χ hp hn hs0 hs1 hz)
      rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
      refine ⟨T, f, ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, ?_⟩, ?_⟩
      · simpa only [inverse_parity] using harch
      · rwa [primitiveArithmeticValue_inverse_liftReal χ hp hn hpInv hnInv T f hLp] at hneg
    · exact hw q χ hp hn s hright hs1 hz

private theorem inverse_LFunction_eq_conj {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hn : χ ≠ 1) (s : ℂ) :
    (χ⁻¹).LFunction s = conj (χ.LFunction (conj s)) := by
  have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
  have hleft : AnalyticOnNhd ℂ (χ⁻¹).LFunction univ :=
    (DirichletCharacter.differentiable_LFunction hnInv).differentiableOn.analyticOnNhd isOpen_univ
  let g := fun z : ℂ => conj (χ.LFunction (conj z))
  have hright : AnalyticOnNhd ℂ g univ := by
    apply DifferentiableOn.analyticOnNhd _ isOpen_univ
    intro z _
    have hd := (DirichletCharacter.differentiable_LFunction hn (conj z)).conj_conj
    rw [Complex.conj_conj] at hd
    exact hd.differentiableWithinAt
  have hagree : (χ⁻¹).LFunction =ᶠ[nhds (2 : ℂ)] g := by
    have hopen : IsOpen {z : ℂ | 1 < z.re} := isOpen_lt continuous_const Complex.continuous_re
    have htwo : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hopen.mem_nhds htwo] with z hz
    have hz' : 1 < (conj z).re := by simpa using hz
    rw [DirichletCharacter.LFunction_eq_LSeries _ hz]
    unfold g
    rw [DirichletCharacter.LFunction_eq_LSeries _ hz']
    unfold LSeries
    change (∑' n : ℕ, LSeries.term (fun x => χ⁻¹ x) z n) =
      star (∑' n : ℕ, LSeries.term (fun x => χ x) (conj z) n)
    rw [tsum_star]
    congr 1
    funext n
    by_cases hn0 : n = 0
    · simp [hn0, LSeries.term_zero]
    · change LSeries.term (fun x => χ⁻¹ x) z n = conj (LSeries.term (fun x => χ x) (conj z) n)
      rw [LSeries.term_of_ne_zero hn0, LSeries.term_of_ne_zero hn0, inverse_apply, map_div₀]
      have harg : (n : ℂ).arg ≠ Real.pi := by
        rw [Complex.natCast_arg]
        exact Real.pi_ne_zero.symm
      have hpow := Complex.cpow_conj (n : ℂ) z harg
      rw [Complex.conj_natCast] at hpow
      rw [hpow, Complex.conj_conj]
  exact hleft.eqOn_of_preconnected_of_eventuallyEq hright isPreconnected_univ
    (mem_univ (2 : ℂ)) hagree (mem_univ s)

/-- Right-strip witnesses at nonnegative heights. The real axis is included. -/
def PrimitiveUpperRightStripNegativeWitness : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (s : ℂ),
    1 / 2 < s.re → s.re < 1 → 0 ≤ s.im → χ.LFunction s = 0 →
      ∃ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f ∧
        primitiveArithmeticValue χ hp hn T (liftReal f) < 0

/-- At negative height, conjugate the zero and invert the character. Real-test
inverse transport returns the very same witness. The use of `0 ≤ s.im`
keeps real zeros in the supplier's domain. -/
theorem primitiveRightStripNegativeWitness_iff_upper :
    PrimitiveRightStripNegativeWitness ↔ PrimitiveUpperRightStripNegativeWitness := by
  constructor
  · intro hw q hq χ hp hn s hs hs1 _ hz
    exact hw q χ hp hn s hs hs1 hz
  · intro hw q hq χ hp hn s hs hs1 hz
    by_cases him : 0 ≤ s.im
    · exact hw q χ hp hn s hs hs1 him hz
    · have hpInv : (χ⁻¹).IsPrimitive := by
        simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp
      have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
      have hzInv : (χ⁻¹).LFunction (conj s) = 0 := by
        rw [inverse_LFunction_eq_conj χ hn, Complex.conj_conj, hz, map_zero]
      have him' : 0 ≤ (conj s).im := by
        rw [Complex.conj_im]
        exact neg_nonneg.mpr (le_of_lt (lt_of_not_ge him))
      obtain ⟨T, f, hf, hneg⟩ := hw q χ⁻¹ hpInv hnInv (conj s)
        (by simpa using hs) (by simpa using hs1) him' hzInv
      rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
      refine ⟨T, f, ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, ?_⟩, ?_⟩
      · simpa only [inverse_parity] using harch
      · rwa [primitiveArithmeticValue_inverse_liftReal χ hp hn hpInv hnInv T f hLp] at hneg

/-- One certified stage family per inverse pair is sufficient for the right-strip return. -/
theorem dirichletGRH_of_rh_rightStrip_and_inverse_orbit_stages
    (hRH : _root_.RiemannHypothesis) (hwitness : PrimitiveRightStripNegativeWitness)
    (horbits : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1),
      SmallConductorStages χ hp hn ∨
        SmallConductorStages χ⁻¹
          (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp)
          (by simpa only [ne_eq, inv_eq_one] using hn)) :
    DirichletGRH := by
  apply dirichletGRH_of_rh_and_rightStrip_witness hRH hwitness
  intro q hq χ hp hn
  rcases horbits q χ hp hn with h | h
  · exact h
  · exact smallConductorStages_of_inverse χ hp hn _ _ h

open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity zeroMultiplicity_cast zeroMultiplicity_factorization
    heightCount heightWindow mem_heightWindow)

/-- Conjugation sends an original critical-strip zero to the inverse character. -/
def inverseConjugateZero {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hn : χ ≠ 1) (ρ : CriticalStripZero χ) : CriticalStripZero χ⁻¹ :=
  ⟨conj ρ.1, by rw [inverse_LFunction_eq_conj χ hn, Complex.conj_conj, ρ.2.1, map_zero],
    by simpa only [Complex.conj_re] using ρ.2.2.1,
    by simpa only [Complex.conj_re] using ρ.2.2.2⟩

/-- Inverse-character conjugation preserves the analytic multiplicity of
the actual zero. Conjugate its local factorization to retain the order. -/
theorem zeroMultiplicity_inverseConjugateZero {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hn : χ ≠ 1) (ρ : CriticalStripZero χ) :
    zeroMultiplicity χ⁻¹ (inverseConjugateZero χ hn ρ) = zeroMultiplicity χ ρ := by
  have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
  obtain ⟨g, hg, hgne, hfactor⟩ := zeroMultiplicity_factorization χ ρ
  have hconj : Tendsto (starRingEnd ℂ) (𝓝 (conj ρ.1)) (𝓝 ρ.1) := by
    simpa only [Complex.conj_conj] using Complex.continuous_conj.tendsto (conj ρ.1)
  have hunit : AnalyticAt ℂ (fun z => conj (g (conj z))) (conj ρ.1) := by
    rw [Complex.analyticAt_iff_eventually_differentiableAt] at hg ⊢
    filter_upwards [hconj.eventually hg] with z hz
    have h := hz.conj_conj
    rw [Complex.conj_conj] at h
    exact h
  have ha := (DirichletCharacter.differentiable_LFunction hnInv).analyticAt (conj ρ.1)
  have horder : analyticOrderAt (χ⁻¹).LFunction (conj ρ.1) =
      (zeroMultiplicity χ ρ : ℕ∞) := by
    rw [ha.analyticOrderAt_eq_natCast]
    refine ⟨fun z => conj (g (conj z)), hunit, by simpa only [Complex.conj_conj, map_ne_zero] using hgne, ?_⟩
    filter_upwards [hconj.eventually hfactor] with z hz
    rw [inverse_LFunction_eq_conj χ hn, hz]
    simp only [map_mul, map_pow, map_sub, Complex.conj_conj, smul_eq_mul]
  have heq : (zeroMultiplicity χ⁻¹ (inverseConjugateZero χ hn ρ) : ℕ∞) =
      (zeroMultiplicity χ ρ : ℕ∞) := by
    rw [zeroMultiplicity_cast]
    exact horder
  exact_mod_cast heq

/-- The same strict height bound, including its boundary exclusion, is
preserved by inverse-character conjugation. -/
theorem inverseConjugateZero_mem_heightWindow_iff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hpInv : (χ⁻¹).IsPrimitive)
    (hn : χ ≠ 1) (H : ℝ) (ρ : CriticalStripZero χ) :
    inverseConjugateZero χ hn ρ ∈ heightWindow χ⁻¹ hpInv H ↔
      ρ ∈ heightWindow χ hp H := by
  simp only [mem_heightWindow, inverseConjugateZero, Complex.conj_im, abs_neg]

/-- The inverse character has the same multiplicity-weighted count in
each strict height window. Real zeros are retained. -/
theorem heightCount_eq_inverse {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hpInv : (χ⁻¹).IsPrimitive)
    (hn : χ ≠ 1) (H : ℝ) :
    heightCount χ hp H = heightCount χ⁻¹ hpInv H := by
  unfold heightCount
  refine Finset.sum_bij (fun ρ _ => inverseConjugateZero χ hn ρ) ?_ ?_ ?_ ?_
  · intro ρ hρ
    exact (inverseConjugateZero_mem_heightWindow_iff χ hp hpInv hn H ρ).mpr hρ
  · intro ρ _ σ _ heq
    apply Subtype.ext
    have h := congrArg (fun z : CriticalStripZero χ⁻¹ => conj z.1) heq
    simpa only [inverseConjugateZero, Complex.conj_conj] using h
  · intro σ hσ
    have hz := σ.2.1
    rw [inverse_LFunction_eq_conj χ hn] at hz
    let ρ : CriticalStripZero χ :=
      ⟨conj σ.1, by simpa using hz, by simpa only [Complex.conj_re] using σ.2.2.1,
        by simpa only [Complex.conj_re] using σ.2.2.2⟩
    have hρ : ρ ∈ heightWindow χ hp H := by
      simpa only [mem_heightWindow, ρ, Complex.conj_im, abs_neg] using hσ
    exact ⟨ρ, hρ, Subtype.ext (Complex.conj_conj σ.1)⟩
  · intro ρ _
    exact (zeroMultiplicity_inverseConjugateZero χ hn ρ).symm

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
