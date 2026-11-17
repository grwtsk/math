/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveSmoothTestAdmission
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitivePairedH1Return
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveNegativePersistence
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRightStripWitnessReturn
import Mathlib.Analysis.Calculus.BumpFunction.Convolution

/-!
# Smooth approximation of the original primitive Weil witnesses

A mass-one even bump smooths a real odd test without changing its parity.
The same convolution smooths its classical derivative. A strictly larger
support window accommodates the bump. The signed physical H1 estimate in
`WeilPrimitivePairedH1Return` applies to both functions at this fixed window.
The passage between windows uses the exact prime-support theorem in
`WeilPrimitiveNegativePersistence`, with the original conductor and gamma
terms intact.

The collar is mathematical data. For example, convolution by a positive bump
can make a nonzero test near a support endpoint nonzero beyond that endpoint.
No fixed-support claim is made about the convolution. No zero-to-witness
supplier or GRH hypothesis is needed to transfer an already negative test.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory Metric ContinuousLinearMap
open scoped Convolution ContDiff Pointwise Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open NativeMixedGammaH1 SignedArithmeticH1Budget SignedRealMixedPolarization
open OddRootProjection LowSchur PrimitiveNegativePersistence

private theorem compact_of_zero_outside {f : ℝ → ℝ} {T : ℝ}
    (hf : ∀ t, t ∉ Icc (-T) T → f t = 0) : HasCompactSupport f :=
  HasCompactSupport.of_support_subset_isCompact isCompact_Icc
    (fun t ht => by_contra fun h => ht (hf t h))

private theorem deriv_zero_outside {f : ℝ → ℝ} {T : ℝ}
    (hf : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    ∀ t, t ∉ Icc (-T) T → deriv f t = 0 := by
  intro t ht
  have he : (fun _ : ℝ => (0 : ℝ)) =ᶠ[𝓝 t] f := by
    filter_upwards [isClosed_Icc.isOpen_compl.mem_nhds ht] with x hx
    exact (hf x hx).symm
  exact ((hasDerivAt_const t (0 : ℝ)).congr_of_eventuallyEq he.symm).deriv

/-- Any real odd compactly supported C² input admits a real odd smooth
approximation, uniformly in both function and first derivative, with
support in any prescribed strictly larger symmetric window. -/
theorem exists_smooth_odd_close_in_C1 {T U ε : ℝ} {f : ℝ → ℝ}
    (hTU : T < U) (hε : 0 < ε)
    (hf : ContDiff ℝ 2 f) (hodd : Function.Odd f)
    (hzero : ∀ x, x ∉ Icc (-T) T → f x = 0) :
    ∃ g : ℝ → ℝ, ContDiff ℝ ∞ g ∧ Function.Odd g ∧
      (∀ x, x ∉ Icc (-U) U → g x = 0) ∧
      (∀ x, |g x - f x| < ε) ∧ (∀ x, |deriv g x - deriv f x| < ε) := by
  have hcomp := compact_of_zero_outside hzero
  have hder := hf.continuous_deriv (by norm_num)
  obtain ⟨a, ha, hmod⟩ := Metric.uniformContinuous_iff.mp
    (hcomp.uniformContinuous_of_continuous hf.continuous) (ε / 2) (half_pos hε)
  obtain ⟨b, hb, hmod'⟩ := Metric.uniformContinuous_iff.mp
    (hcomp.deriv.uniformContinuous_of_continuous hder) (ε / 2) (half_pos hε)
  let r := min (min a b) (U - T)
  have hr : 0 < r := lt_min (lt_min ha hb) (sub_pos.mpr hTU)
  let φ : ContDiffBump (0 : ℝ) := ⟨r / 2, r, half_pos hr, half_lt_self hr⟩
  let L := lsmul ℝ ℝ (E := ℝ)
  let g := φ.normed volume ⋆[L, volume] f
  have hφ : ContDiff ℝ ∞ (φ.normed volume) := φ.contDiff_normed
  have hg : ContDiff ℝ ∞ g :=
    φ.hasCompactSupport_normed.contDiff_convolution_left L hφ hf.continuous.locallyIntegrable
  have hgd (x : ℝ) : deriv g x = (φ.normed volume ⋆[L, volume] deriv f) x :=
    (hcomp.hasDerivAt_convolution_right L
      hφ.continuous.locallyIntegrable (hf.of_le (by norm_num)) x).deriv
  have hoddg : Function.Odd g := by
    intro x
    change (∫ y : ℝ, φ.normed volume y • f (-x - y)) =
      -(∫ y : ℝ, φ.normed volume y • f (x - y))
    calc
      _ = ∫ y : ℝ, φ.normed volume (-y) • f (-x - -y) :=
        (integral_neg_eq_self (fun y : ℝ => φ.normed volume y • f (-x - y)) volume).symm
      _ = ∫ y : ℝ, -(φ.normed volume y • f (x - y)) := by
        apply integral_congr_ae
        filter_upwards [] with y
        rw [φ.normed_neg, show -x - -y = -(x - y) by ring, hodd, smul_neg]
      _ = _ := integral_neg _
  refine ⟨g, hg, hoddg, ?_, ?_, ?_⟩
  · intro x hx
    by_contra h
    have hm := (support_convolution_subset L) (show x ∈ Function.support g from h)
    obtain ⟨y, hy, z, hz, rfl⟩ := mem_add.mp hm
    rw [φ.support_normed_eq, mem_ball, Real.dist_eq, sub_zero, abs_lt] at hy
    have hz' : z ∈ Icc (-T) T := by_contra fun hz' => hz (hzero z hz')
    have hrt : r ≤ U - T := min_le_right _ _
    exact hx ⟨by change -U ≤ y + z; linarith [hy.1, hz'.1],
      by change y + z ≤ U; linarith [hy.2, hz'.2]⟩
  · intro x
    rw [← Real.dist_eq]
    refine (φ.dist_normed_convolution_le hf.continuous.aestronglyMeasurable
      (ε := ε / 2) ?_).trans_lt (half_lt_self hε)
    intro y hy
    exact (hmod ((mem_ball.mp hy).trans_le ((min_le_left _ _).trans (min_le_left _ _)))).le
  · intro x
    rw [hgd, ← Real.dist_eq]
    refine (φ.dist_normed_convolution_le hder.aestronglyMeasurable
      (ε := ε / 2) ?_).trans_lt (half_lt_self hε)
    intro y hy
    exact (hmod' ((mem_ball.mp hy).trans_le ((min_le_left _ _).trans (min_le_right _ _)))).le


private def classicalH1OfSupported {f : ℝ → ℝ} {U : ℝ}
    (hf : ContDiff ℝ 2 f) (hz : ∀ x, x ∉ Icc (-U) U → f x = 0) :
    ClassicalRealH1 f := by
  have hc := compact_of_zero_outside hz
  have hd := hf.continuous_deriv (by norm_num)
  exact ⟨deriv f, fun x => ((hf.differentiable (by norm_num)) x).hasDerivAt,
    hd, hf.continuous.memLp_of_hasCompactSupport hc,
    hd.memLp_of_hasCompactSupport hc.deriv⟩

private theorem physicalMass_le_uniform {f : ℝ → ℝ} {U c : ℝ}
    (hU : 0 ≤ U) (hz : ∀ x, x ∉ Icc (-U) U → f x = 0)
    (hbound : ∀ x, |f x| ≤ c) :
    physicalMass f ≤ (2 * U) * c ^ 2 := by
  have h := norm_setIntegral_le_of_norm_le_const (μ := (volume : Measure ℝ))
    (f := fun x => f x ^ 2) (s := Icc (-U) U) (C := c ^ 2) measure_Icc_lt_top
    (fun x _ => by
      rw [Real.norm_eq_abs, abs_pow]
      exact pow_le_pow_left₀ (abs_nonneg _) (hbound x) 2)
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => by simp [hz x hx]),
    Real.norm_eq_abs, abs_of_nonneg (integral_nonneg (fun x => sq_nonneg (f x))),
    measureReal_def, Real.volume_Icc, ENNReal.toReal_ofReal (by linarith : 0 ≤ U - -U)] at h
  unfold physicalMass
  linarith

private theorem physicalWeightedBudget_le_uniform {A U c : ℝ} {f d : ℝ → ℝ}
    (hA : 0 ≤ A) (hU : 0 ≤ U)
    (hf : ∀ x, x ∉ Icc (-U) U → f x = 0)
    (hd : ∀ x, x ∉ Icc (-U) U → d x = 0)
    (hfb : ∀ x, |f x| ≤ c) (hdb : ∀ x, |d x| ≤ c) :
    physicalWeightedBudget A (7 / 12) f d ≤ ((A + 7 / 12) * (2 * U)) * c ^ 2 := by
  unfold physicalWeightedBudget
  change A * physicalMass f + (7 / 12) * physicalMass d ≤ _
  calc
    _ ≤ A * ((2 * U) * c ^ 2) + (7 / 12) * ((2 * U) * c ^ 2) :=
      add_le_add (mul_le_mul_of_nonneg_left (physicalMass_le_uniform hU hf hfb) hA)
        (mul_le_mul_of_nonneg_left (physicalMass_le_uniform hU hd hdb) (by norm_num))
    _ = _ := by ring

private theorem physicalWeightedBudget_nonneg {A : ℝ} (hA : 0 ≤ A) (f d : ℝ → ℝ) :
    0 ≤ physicalWeightedBudget A (7 / 12) f d := by
  unfold physicalWeightedBudget physicalMass physicalDerivativeMass
  exact add_nonneg (mul_nonneg hA (integral_nonneg fun x => sq_nonneg (f x)))
    (mul_nonneg (by norm_num) (integral_nonneg fun x => sq_nonneg (d x)))

/-- Smooth odd tests approximate the full signed arithmetic value of an
admissible test within any positive error and any prescribed support collar. -/
theorem exists_smooth_odd_approx_primitiveArithmeticValue
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) {T U η : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hTU : T < U) (hη : 0 < η) :
    ∃ g : ℝ → ℝ, ContDiff ℝ ∞ g ∧ Admissible χ U g ∧
      |primitiveArithmeticValue χ hp hn U (liftReal g) -
        primitiveArithmeticValue χ hp hn T (liftReal f)| < η := by
  obtain ⟨hfc, hfo, hfT⟩ := (admissible_iff_smooth_odd_supported χ hf.1 f).mp hf
  have hU := hf.1.trans hTU
  have hfU (x : ℝ) (hx : x ∉ Icc (-U) U) : f x = 0 :=
    hfT x (fun h => hx ⟨(neg_le_neg hTU.le).trans h.1, h.2.trans hTU.le⟩)
  have hc := compact_of_zero_outside hfU
  obtain ⟨M₀, hM₀, hb₀⟩ :=
    (hc.isCompact_range hfc.continuous).isBounded.exists_pos_norm_le
  obtain ⟨M₁, hM₁, hb₁⟩ :=
    (hc.deriv.isCompact_range (hfc.continuous_deriv (by norm_num))).isBounded.exists_pos_norm_le
  let M := max M₀ M₁
  have hm : 0 ≤ M := hM₀.le.trans (le_max_left _ _)
  have hbf (x : ℝ) : |f x| ≤ M := by
    exact (Real.norm_eq_abs (f x) ▸ hb₀ (f x) ⟨x, rfl⟩).trans (le_max_left _ _)
  have hbd (x : ℝ) : |deriv f x| ≤ M := by
    exact (Real.norm_eq_abs (deriv f x) ▸ hb₁ (deriv f x) ⟨x, rfl⟩).trans (le_max_right _ _)
  let A := |gammaConstant q (gammaParity χ)| + primeMass U +
    2 * ExactGammaTail.tailUpper (gammaParity χ) 1
  have hA : 0 ≤ A := by
    have ht : 0 ≤ ExactGammaTail.tailUpper (gammaParity χ) 1 := by
      unfold ExactGammaTail.tailUpper
      apply div_nonneg (by positivity)
      exact mul_nonneg (by positivity) (sub_nonneg.mpr
        (Real.exp_le_one_iff.mpr (by norm_num)))
    exact add_nonneg (add_nonneg (abs_nonneg _) (primeMass_nonneg U))
      (mul_nonneg (by norm_num) ht)
  let C := (A + 7 / 12) * (2 * U)
  have hC : 0 ≤ C := by dsimp [C]; positivity
  let B := C * (2 * M + 1)
  have hB : 0 ≤ B := by dsimp [B]; positivity
  let ε := min 1 (η / (2 * (B + 1)))
  have hden : 0 < 2 * (B + 1) := by positivity
  have hε : 0 < ε := lt_min zero_lt_one (div_pos hη hden)
  have hε1 : ε ≤ 1 := min_le_left _ _
  have hmargin : ε * (2 * (B + 1)) ≤ η :=
    (le_div_iff₀ hden).mp (min_le_right _ _)
  obtain ⟨g, hgs, hgo, hgU, hgf, hgd⟩ := exists_smooth_odd_close_in_C1 hTU hε hfc hfo hfT
  have hgc : ContDiff ℝ 2 g := hgs.of_le (by simp)
  refine ⟨g, hgs, (admissible_iff_smooth_odd_supported χ hU g).mpr ⟨hgc, hgo, hgU⟩, ?_⟩
  let F := classicalH1OfSupported hfc hfU
  let G := classicalH1OfSupported hgc hgU
  have hsum (a b : ℝ) (h₁ : |b| ≤ M) (h₂ : |a - b| < ε) : |a + b| ≤ 2 * M + 1 := by
    calc
      |a + b| = |(a - b) + (b + b)| := by congr 1; ring
      _ ≤ |a - b| + |b + b| := abs_add_le _ _
      _ ≤ |a - b| + (|b| + |b|) := add_le_add le_rfl (abs_add_le b b)
      _ ≤ 2 * M + 1 := by linarith
  have hplus : physicalWeightedBudget A (7 / 12) (g + f) (G.first + F.first) ≤
      C * (2 * M + 1) ^ 2 :=
    physicalWeightedBudget_le_uniform hA hU.le
      (fun x hx => by simp [hgU x hx, hfU x hx])
      (fun x hx => by
        change deriv g x + deriv f x = 0
        simp [deriv_zero_outside hgU x hx, deriv_zero_outside hfU x hx])
      (fun x => hsum _ _ (hbf x) (hgf x))
      (fun x => hsum _ _ (hbd x) (hgd x))
  have hminus : physicalWeightedBudget A (7 / 12) (g - f) (G.first - F.first) ≤ C * ε ^ 2 :=
    physicalWeightedBudget_le_uniform hA hU.le
      (fun x hx => by simp [hgU x hx, hfU x hx])
      (fun x hx => by
        change deriv g x - deriv f x = 0
        simp [deriv_zero_outside hgU x hx, deriv_zero_outside hfU x hx])
      (fun x => (hgf x).le) (fun x => (hgd x).le)
  have hb := primitiveArithmeticValue_liftReal_difference_sq_H1 χ hp hn U G F
  change _ ≤ physicalWeightedBudget A (7 / 12) (g + f) (G.first + F.first) *
    physicalWeightedBudget A (7 / 12) (g - f) (G.first - F.first) at hb
  have habs : |primitiveArithmeticValue χ hp hn U (liftReal g) -
        primitiveArithmeticValue χ hp hn U (liftReal f)| ≤ B * ε := by
    apply abs_le_of_sq_le_sq _ (mul_nonneg hB hε.le)
    refine hb.trans ((mul_le_mul hplus hminus
      (physicalWeightedBudget_nonneg hA _ _) (by positivity)).trans_eq ?_)
    dsimp [B]
    ring
  rw [primitiveArithmeticValue_eq_of_window_extension χ hp hn hf.2.2.2.2.2.1 hTU.le]
  have hBε := mul_nonneg hB hε.le
  exact habs.trans_lt (by nlinarith [hmargin])

/-- Strict negativity for the original C² arithmetic test transfers to a
smooth odd test in any nonzero support collar, for the same character. -/
theorem exists_smooth_negative_primitiveArithmeticValue
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) {T U : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hTU : T < U)
    (hneg : primitiveArithmeticValue χ hp hn T (liftReal f) < 0) :
    ∃ g : ℝ → ℝ, ContDiff ℝ ∞ g ∧ Admissible χ U g ∧
      primitiveArithmeticValue χ hp hn U (liftReal g) < 0 := by
  obtain ⟨g, hgs, hg, hdiff⟩ := exists_smooth_odd_approx_primitiveArithmeticValue
    χ hp hn hf hTU (neg_pos.mpr hneg)
  exact ⟨g, hgs, hg, by linarith [(le_abs_self _).trans_lt hdiff]⟩

/-- The exact right-strip supplier can use exclusively smooth odd tests.
The witness still refers to the same original character and signed arithmetic form. -/
theorem primitiveRightStripNegativeWitness_iff_smooth :
    PrimitiveRightStripNegativeWitness ↔
      ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
        (hp : χ.IsPrimitive) (hn : χ ≠ 1) (s : ℂ),
        1 / 2 < s.re → s.re < 1 → χ.LFunction s = 0 →
        ∃ (T : ℝ) (f : ℝ → ℝ), ContDiff ℝ ∞ f ∧ Admissible χ T f ∧
          primitiveArithmeticValue χ hp hn T (liftReal f) < 0 := by
  constructor
  · intro h q hq χ hp hn s hhalf hright hz
    obtain ⟨T, f, hf, hneg⟩ := h q χ hp hn s hhalf hright hz
    obtain ⟨g, hgs, hg, hneg'⟩ := exists_smooth_negative_primitiveArithmeticValue
      χ hp hn hf (U := T + 1) (by linarith) hneg
    exact ⟨T + 1, g, hgs, hg, hneg'⟩
  · intro h q hq χ hp hn s hhalf hright hz
    obtain ⟨T, f, _, hf, hneg⟩ := h q χ hp hn s hhalf hright hz
    exact ⟨T, f, hf, hneg⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
