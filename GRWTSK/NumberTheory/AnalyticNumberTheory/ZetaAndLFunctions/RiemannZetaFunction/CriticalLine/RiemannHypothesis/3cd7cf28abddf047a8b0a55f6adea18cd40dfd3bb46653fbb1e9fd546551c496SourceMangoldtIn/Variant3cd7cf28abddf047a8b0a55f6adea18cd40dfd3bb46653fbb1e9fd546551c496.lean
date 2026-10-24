import FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.RiemannHypothesis.GevreyPolynomial
import FormalResearch.RiemannHypothesis.SourceDualRotation

/-!
# Literal Mangoldt translation interaction

The finite self-adjoint translation sum uses the complete closed arithmetic
inventory. Its quadratic coefficient is the original prime moment; positivity
of arithmetic weights is not positivity of this operator.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open MeasureTheory Filter Set ArithmeticFunction
open scoped Topology InnerProductSpace
open SourcePairing SourceReflectionDuality SourceScaleL2Continuity SourceScaleDerivative
open SourcePrimeMomentScale SourceMangoldtAbel SourceFirstPrimeAbel SourceDualRotation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimatePrimeSmoothDefect EstimateMertensResidual

/-- Composition tracks literal right shifts, without reversing a reflected argument. -/
theorem translation_add (s t : ℝ) (f : ComplexL2) :
    translation s (translation t f) = translation (s + t) f := by
  apply Lp.ext
  filter_upwards [translation_coe_ae s (translation t f),
    (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
      (translation_coe_ae t f), translation_coe_ae (s + t) f] with x hs ht hst
  change (translation t f) (x - s) = f ((x - s) - t) at ht
  rw [hs, ht, hst]
  congr 1
  ring

/-- The zero shift acts identically on the actual L² classes. -/
theorem translation_zero (f : ComplexL2) : translation 0 f = f := by
  apply Lp.ext
  filter_upwards [translation_coe_ae 0 f] with x hx
  simpa using hx

/-- The inverse shift is the inverse unitary. -/
theorem translation_symm_apply (s : ℝ) (f : ComplexL2) :
    (translation s).symm f = translation (-s) f := by
  apply (translation s).injective
  rw [LinearIsometryEquiv.apply_symm_apply, translation_add, add_neg_cancel, translation_zero]

/-- Moving a right shift to the left changes its sign. -/
theorem translation_inner_flip (s : ℝ) (f g : ComplexL2) :
    ⟪translation s f, g⟫_ℂ = ⟪f, translation (-s) g⟫_ℂ := by
  rw [(translation s).inner_map_eq_flip, translation_symm_apply]

/-- The real part of a diagonal translation coefficient is even for any vector. -/
theorem translation_self_real_even (s : ℝ) (f : ComplexL2) :
    (⟪f, translation (-s) f⟫_ℂ).re = (⟪f, translation s f⟫_ℂ).re := by
  rw [← translation_inner_flip]
  exact inner_re_symm (𝕜 := ℂ) (translation s f) f

/-- Averaged opposite right shifts are one bounded symmetric operator. -/
def symmetricTranslation (s : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  (1 / 2 : ℂ) • ((translation s).toLinearIsometry.toContinuousLinearMap +
    (translation (-s)).toLinearIsometry.toContinuousLinearMap)

/-- The averaging convention is frozen at coefficient one half. -/
theorem symmetricTranslation_apply (s : ℝ) (f : ComplexL2) :
    symmetricTranslation s f = (1 / 2 : ℂ) • (translation s f + translation (-s) f) := rfl

/-- Hermitian symmetry of the actual shift average. -/
theorem symmetricTranslation_inner_symmetric (s : ℝ) (f g : ComplexL2) :
    ⟪symmetricTranslation s f, g⟫_ℂ = ⟪f, symmetricTranslation s g⟫_ℂ := by
  simp only [symmetricTranslation_apply, inner_smul_left, inner_add_left,
    inner_smul_right, inner_add_right, translation_inner_flip, neg_neg]
  simp only [map_div₀, map_one, map_ofNat]
  ring

/-- Self-adjointness has no positivity conclusion. -/
theorem symmetricTranslation_selfAdjoint (s : ℝ) : IsSelfAdjoint (symmetricTranslation s) :=
  ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr (symmetricTranslation_inner_symmetric s)

/-- The real diagonal coefficient of the average equals that of the original shift. -/
theorem symmetricTranslation_self_real (s : ℝ) (f : ComplexL2) :
    (⟪f, symmetricTranslation s f⟫_ℂ).re = (⟪f, translation s f⟫_ℂ).re := by
  simp only [symmetricTranslation_apply, inner_smul_right, inner_add_right]
  rw [Complex.mul_re]
  norm_num [Complex.add_re, translation_self_real_even]
  ring

/-- The unchanged all-Λ closed coefficient, with no prime-only filtering or square-root rewrite. -/
def mangoldtCoefficient (n : ℕ) : ℝ := vonMangoldt n * Real.exp (-Real.log n / 2)

/-- Actual arithmetic operator: all integers in the literal closed floor inventory. -/
def mangoldtInteraction (A : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  ∑ n ∈ primePowerInventory (2 * A), (mangoldtCoefficient n : ℂ) •
    symmetricTranslation (Real.log n)

/-- Application keeps the complete changing arithmetic inventory. -/
theorem mangoldtInteraction_apply (A : ℝ) (f : ComplexL2) :
    mangoldtInteraction A f = ∑ n ∈ primePowerInventory (2 * A),
      (mangoldtCoefficient n : ℂ) • symmetricTranslation (Real.log n) f := by
  simp only [mangoldtInteraction, sum_apply,
    _root_.smul_apply]

/-- Real arithmetic weights preserve Hermitian symmetry, with every index retained. -/
theorem mangoldtInteraction_inner_symmetric (A : ℝ) (f g : ComplexL2) :
    ⟪mangoldtInteraction A f, g⟫_ℂ = ⟪f, mangoldtInteraction A g⟫_ℂ := by
  simp only [mangoldtInteraction_apply, sum_inner, inner_sum, inner_smul_left,
    inner_smul_right, Complex.conj_ofReal, symmetricTranslation_inner_symmetric]

/-- The full arithmetic operator is self-adjoint at each scale. -/
theorem mangoldtInteraction_selfAdjoint (A : ℝ) : IsSelfAdjoint (mangoldtInteraction A) :=
  ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr (mangoldtInteraction_inner_symmetric A)

/-- Exact real quadratic expansion for an arbitrary actual L² vector. -/
theorem mangoldtInteraction_self_real (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n *
        (⟪f, translation (Real.log n) f⟫_ℂ).re := by
  simp only [mangoldtInteraction_apply, inner_sum, inner_smul_right,
    Complex.re_sum, Complex.re_ofReal_mul, symmetricTranslation_self_real]

/-- Literal source quadratic readout; this is the original complete prime moment. -/
theorem closedPrimeMoment_eq_quadratic {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A =
      (⟪originalSourceState A, mangoldtInteraction A (originalSourceState A)⟫_ℂ).re := by
  rw [mangoldtInteraction_self_real]
  unfold closedPrimeMoment mangoldtCoefficient exponentialTest
  apply Finset.sum_congr rfl
  intro n hn
  rw [sourceCorrelation_eq_inner hA]
  ring

/-- The unchanged residual is this coefficient only under its existing source scope. -/
theorem mertensResidual_eq_quadratic {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A =
      (⟪originalSourceState A, mangoldtInteraction A (originalSourceState A)⟫_ℂ).re := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_quadratic (by linarith)]

/-- Actual Abel work remains a signed arithmetic quantity, separate from the continuous term. -/
theorem criticalMangoldtWork_eq_continuous_sub_quadratic {A : ℝ} (hA : 1 ≤ A) :
    criticalMangoldtWork A = criticalContinuousMoment A -
      (⟪originalSourceState A, mangoldtInteraction A (originalSourceState A)⟫_ℂ).re := by
  have h := closedPrimeMoment_eq_continuous_sub_Mangoldt_work A hA
  rw [closedPrimeMoment_eq_quadratic (by linarith)] at h
  linarith


/-- Full mixed coefficient retains every arithmetic weight. -/
theorem mangoldtInteraction_mixed_real (A : ℝ) (f g : ComplexL2) :
    (⟪f, mangoldtInteraction A g⟫_ℂ).re =
      ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n *
        (⟪f, symmetricTranslation (Real.log n) g⟫_ℂ).re := by
  simp only [mangoldtInteraction_apply, inner_sum, inner_smul_right,
    Complex.re_sum, Complex.re_ofReal_mul]

/-- The two scale product-rule coefficients combine only after signed symmetry. -/
theorem correlationScaleDerivative_eq_mixed (A s : ℝ) :
    correlationScaleDerivative A s =
      2 * (⟪scaleDerivativeState A, symmetricTranslation s (originalSourceState A)⟫_ℂ).re := by
  have hf : (⟪originalSourceState A, translation s (scaleDerivativeState A)⟫_ℂ).re =
      (⟪scaleDerivativeState A, translation (-s) (originalSourceState A)⟫_ℂ).re := by
    rw [← translation_inner_flip]
    exact inner_re_symm (𝕜 := ℂ) _ _
  simp only [correlationScaleDerivative, symmetricTranslation_apply, inner_smul_right,
    inner_add_right, Complex.mul_re, Complex.add_re]
  rw [hf]
  norm_num
  ring

/-- The independent literal derivative is the mixed coefficient of the same current operator. -/
theorem closedPrimeMomentScaleDerivative_eq_mixed (A : ℝ) :
    closedPrimeMomentScaleDerivative A =
      2 * (⟪scaleDerivativeState A, mangoldtInteraction A (originalSourceState A)⟫_ℂ).re := by
  rw [mangoldtInteraction_mixed_real, Finset.mul_sum]
  unfold closedPrimeMomentScaleDerivative closedPrimeWeightScaleDerivative mangoldtCoefficient
  apply Finset.sum_congr rfl
  intro n hn
  rw [correlationScaleDerivative_eq_mixed]
  ring

/-- Exact stationarity of the actual translation group. -/
theorem translation_inner_stationary (s t : ℝ) (f : ComplexL2) :
    ⟪translation s f, translation t f⟫_ℂ = ⟪f, translation (t - s) f⟫_ℂ := by
  rw [translation_inner_flip, translation_add]
  rw [show -s + t = t - s by ring]

/-- Unit correlation for the prescribed polynomial source on every positive scale. -/
theorem sourceCorrelation_zero {A : ℝ} (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A 0 = 1 := by
  have hn : ∃ x : ℝ, sourceBump x ≠ 0 := by
    refine ⟨0, ?_⟩
    norm_num [sourceBump]
  have h := GevreyNormalization.normalizedOperator_square_integral
    GevreyPolynomial.sourceBump_contDiff GevreyPolynomial.sourceBump_hasCompactSupport hn hA
  rw [GevreyPolynomial.normalizedOperator_sourceBump_eq hA] at h
  simpa only [sourceCorrelation, sub_zero, pow_two] using h

/-- A separate compact source is an independently defined hostile test scale. -/
def probeScale : ℝ := Real.log (3 / 2 : ℝ) / 4

/-- The probe is an actual prescribed source at a positive, smaller scale. -/
theorem probeScale_pos : 0 < probeScale := by
  unfold probeScale
  exact div_pos (Real.log_pos (by norm_num)) (by norm_num)

/-- The source probe paired with its signed first-prime translate. -/
def interactionProbe (ε : ℝ) : ComplexL2 :=
  originalSourceState probeScale + (ε : ℂ) •
    translation (Real.log 2) (originalSourceState probeScale)

/-- All mixed channels are retained before their actual support is evaluated. -/
theorem interactionProbe_correlation (ε t : ℝ) :
    (⟪interactionProbe ε, translation t (interactionProbe ε)⟫_ℂ).re =
      (1 + ε ^ 2) * sourceCorrelation explicitSecondDerivative probeScale t +
      ε * sourceCorrelation explicitSecondDerivative probeScale (t - Real.log 2) +
      ε * sourceCorrelation explicitSecondDerivative probeScale (t + Real.log 2) := by
  have hlast : ⟪translation (Real.log 2) (originalSourceState probeScale),
      translation t (translation (Real.log 2) (originalSourceState probeScale))⟫_ℂ =
      ⟪originalSourceState probeScale, translation t (originalSourceState probeScale)⟫_ℂ := by
    rw [translation_add, translation_inner_stationary]
    rw [show t + Real.log 2 - Real.log 2 = t by ring]
  simp only [interactionProbe, map_add, map_smul, inner_add_left, inner_add_right,
    inner_smul_left, inner_smul_right, Complex.conj_ofReal]
  rw [hlast, translation_add, translation_inner_stationary]
  simp only [Complex.add_re, Complex.re_ofReal_mul]
  rw [← sourceCorrelation_eq_inner probeScale_pos t,
    ← sourceCorrelation_eq_inner probeScale_pos (t - Real.log 2),
    ← sourceCorrelation_eq_inner probeScale_pos (t + Real.log 2)]
  ring


/-- The hostile probe support is shorter than the first adjacent logarithmic gap. -/
theorem probeScale_gap : 2 * probeScale < Real.log (3 / 2 : ℝ) := by
  have h := Real.log_pos (show (1 : ℝ) < 3 / 2 by norm_num)
  unfold probeScale
  linarith

/-- It is also shorter than the first-prime translation. -/
theorem probeScale_log_two : 2 * probeScale < Real.log 2 := by
  have h := Real.strictMonoOn_log (by norm_num : (0 : ℝ) < 3 / 2)
    (by norm_num : (0 : ℝ) < 2) (by norm_num : (3 / 2 : ℝ) < 2)
  exact probeScale_gap.trans h

/-- Every later closed index lies beyond the adjacent gap in all mixed channels. -/
theorem interactionProbe_correlation_eq_zero (ε : ℝ) {n : ℕ} (hn : 3 ≤ n) :
    (⟪interactionProbe ε, translation (Real.log n) (interactionProbe ε)⟫_ℂ).re = 0 := by
  have hnR : (3 : ℝ) ≤ n := by exact_mod_cast hn
  have hn0 : (0 : ℝ) < n := by linarith
  have hl : Real.log (3 : ℝ) ≤ Real.log n :=
    Real.log_le_log (by norm_num) hnR
  have hdiv : Real.log (3 / 2 : ℝ) = Real.log 3 - Real.log 2 :=
    Real.log_div (by norm_num) (by norm_num)
  have hs := probeScale_gap
  have h2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  rw [interactionProbe_correlation]
  have hz (t : ℝ) (ht : 2 * probeScale ≤ t) :
      sourceCorrelation explicitSecondDerivative probeScale t = 0 :=
    sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale t probeScale_pos
      (ht.trans (le_abs_self t))
  rw [hz (Real.log n) (by linarith),
    hz (Real.log n - Real.log 2) (by linarith),
    hz (Real.log n + Real.log 2) (by linarith)]
  ring

/-- At the first prime the entire nonzero coefficient is the signed mixed channel. -/
theorem interactionProbe_correlation_two (ε : ℝ) :
    (⟪interactionProbe ε, translation (Real.log 2) (interactionProbe ε)⟫_ℂ).re = ε := by
  rw [interactionProbe_correlation, sub_self, sourceCorrelation_zero probeScale_pos]
  have hz (t : ℝ) (ht : 2 * probeScale ≤ t) :
      sourceCorrelation explicitSecondDerivative probeScale t = 0 :=
    sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale t probeScale_pos
      (ht.trans (le_abs_self t))
  have h2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  rw [hz (Real.log 2) probeScale_log_two.le,
    hz (Real.log 2 + Real.log 2) (by have := probeScale_log_two; linarith)]
  ring

/-- The original closed inventory contains the first prime on the source scope. -/
theorem two_mem_primePowerInventory {A : ℝ} (hA : 1 ≤ A) :
    2 ∈ primePowerInventory (2 * A) := by
  apply Finset.mem_Icc.mpr
  refine ⟨le_rfl, (Nat.le_floor_iff (Real.exp_pos _).le).mpr ?_⟩
  have h := Real.add_one_lt_exp (show 2 * A ≠ 0 by linarith)
  norm_num at ⊢
  linarith

/-- Independently specified probes expose opposite signs in the actual arithmetic operator. -/
theorem mangoldtInteraction_probe_value {A : ℝ} (hA : 1 ≤ A) (ε : ℝ) :
    (⟪interactionProbe ε, mangoldtInteraction A (interactionProbe ε)⟫_ℂ).re =
      mangoldtCoefficient 2 * ε := by
  rw [mangoldtInteraction_self_real]
  rw [Finset.sum_eq_single_of_mem 2 (two_mem_primePowerInventory hA)]
  · norm_num only [Nat.cast_ofNat]
    rw [interactionProbe_correlation_two]
  · intro n hn hn2
    have hnn : 3 ≤ n := by
      have h := (Finset.mem_Icc.mp hn).1
      omega
    rw [interactionProbe_correlation_eq_zero ε hnn, mul_zero]

/-- The actual first-prime arithmetic coefficient is strictly positive. -/
theorem mangoldtCoefficient_two_pos : 0 < mangoldtCoefficient 2 := by
  unfold mangoldtCoefficient
  rw [vonMangoldt_apply_prime Nat.prime_two]
  exact mul_pos (Real.log_pos (by norm_num)) (Real.exp_pos _)

/-- Negative probe: positive Mangoldt weights do not make the translation operator positive. -/
theorem mangoldtInteraction_negative_probe {A : ℝ} (hA : 1 ≤ A) :
    (⟪interactionProbe (-1), mangoldtInteraction A (interactionProbe (-1))⟫_ℂ).re < 0 := by
  rw [mangoldtInteraction_probe_value hA]
  nlinarith [mangoldtCoefficient_two_pos]

/-- Positive probe: the same actual operator is not negative semidefinite either. -/
theorem mangoldtInteraction_positive_probe {A : ℝ} (hA : 1 ≤ A) :
    0 < (⟪interactionProbe 1, mangoldtInteraction A (interactionProbe 1)⟫_ℂ).re := by
  rw [mangoldtInteraction_probe_value hA, mul_one]
  exact mangoldtCoefficient_two_pos

/-- No generic nonnegative-quadratic certificate can be inferred for this arithmetic operator. -/
theorem mangoldtInteraction_not_nonnegative {A : ℝ} (hA : 1 ≤ A) :
    ¬ ∀ f : ComplexL2, 0 ≤ (⟪f, mangoldtInteraction A f⟫_ℂ).re := by
  intro h
  exact (not_le.mpr (mangoldtInteraction_negative_probe hA)) (h (interactionProbe (-1)))

/-- No generic nonpositive-quadratic certificate bounds the source family by itself. -/
theorem mangoldtInteraction_not_nonpositive {A : ℝ} (hA : 1 ≤ A) :
    ¬ ∀ f : ComplexL2, (⟪f, mangoldtInteraction A f⟫_ℂ).re ≤ 0 := by
  intro h
  exact (not_le.mpr (mangoldtInteraction_positive_probe hA)) (h (interactionProbe 1))


/-- The actual source has unit norm at every positive scale, including the small hostile probe. -/
theorem originalSourceState_norm {A : ℝ} (hA : 0 < A) : ‖originalSourceState A‖ = 1 := by
  have h := sourceCorrelation_zero hA
  rw [sourceCorrelation_eq_inner hA, translation_zero] at h
  have hn : ‖originalSourceState A‖ ^ 2 = 1 := by
    rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
    exact h
  nlinarith [norm_nonneg (originalSourceState A)]

/-- A comparison error carries the norm budget of the vector actually being tested. -/
theorem quadratic_comparison_error (K B : ComplexL2 →L[ℂ] ComplexL2) (f : ComplexL2) :
    |(⟪f, K f⟫_ℂ).re - (⟪f, B f⟫_ℂ).re| ≤ ‖K - B‖ * ‖f‖ ^ 2 := by
  have he : (⟪f, K f⟫_ℂ).re - (⟪f, B f⟫_ℂ).re =
      (⟪f, (K - B) f⟫_ℂ).re := by
    simp only [sub_apply, inner_sub_right, Complex.sub_re]
  rw [he]
  calc
    _ ≤ ‖⟪f, (K - B) f⟫_ℂ‖ := Complex.abs_re_le_norm _
    _ ≤ ‖f‖ * ‖(K - B) f‖ := norm_inner_le_norm _ _
    _ ≤ ‖f‖ * (‖K - B‖ * ‖f‖) :=
      mul_le_mul_of_nonneg_left ((K - B).le_opNorm f) (norm_nonneg _)
    _ = _ := by ring

/-- Unit source normalization removes its own vector factor; arithmetic stays in K. -/
theorem source_quadratic_comparison_error {A : ℝ} (hA : 0 < A)
    (B : ComplexL2 →L[ℂ] ComplexL2) :
    |closedPrimeMoment A - (⟪originalSourceState A, B (originalSourceState A)⟫_ℂ).re| ≤
      ‖mangoldtInteraction A - B‖ := by
  rw [closedPrimeMoment_eq_quadratic hA]
  have h := quadratic_comparison_error (mangoldtInteraction A) B (originalSourceState A)
  simpa only [originalSourceState_norm hA, one_pow, mul_one] using h


/-- Actual angular duality commutes with the symmetrized shifts. -/
theorem symmetricTranslation_angular_commute (s : ℝ) (f : ComplexL2) :
    angularSignDuality (symmetricTranslation s f) =
      symmetricTranslation s (angularSignDuality f) := by
  simp only [symmetricTranslation_apply, map_smul, map_add,
    ← angular_translation_duality_commute]

/-- Reflection exchanges the two terms without discarding either signed channel. -/
theorem symmetricTranslation_reflection_commute (s : ℝ) (f : ComplexL2) :
    reflection (symmetricTranslation s f) = symmetricTranslation s (reflection f) := by
  simp only [symmetricTranslation_apply, map_smul, map_add,
    reflection_translation_reverse, neg_neg]
  rw [add_comm]

/-- Source-angular duality preserves the full arithmetic operator, not merely vector norms. -/
theorem mangoldtInteraction_angular_commute (A : ℝ) (f : ComplexL2) :
    angularSignDuality (mangoldtInteraction A f) =
      mangoldtInteraction A (angularSignDuality f) := by
  simp only [mangoldtInteraction_apply, map_sum, map_smul,
    symmetricTranslation_angular_commute]

/-- Reflection also preserves the complete arithmetic operator. -/
theorem mangoldtInteraction_reflection_commute (A : ℝ) (f : ComplexL2) :
    reflection (mangoldtInteraction A f) = mangoldtInteraction A (reflection f) := by
  simp only [mangoldtInteraction_apply, map_sum, map_smul,
    symmetricTranslation_reflection_commute]

/-- The frozen quarter turn R after angular T commutes with this even translation sum. -/
theorem mangoldtInteraction_quarterTurn_commute (A : ℝ) (f : ComplexL2) :
    quarterTurn (mangoldtInteraction A f) = mangoldtInteraction A (quarterTurn f) := by
  rw [quarterTurn_apply, mangoldtInteraction_angular_commute,
    mangoldtInteraction_reflection_commute, quarterTurn_apply]

/-- The entire independent real rotation commutes, before any unit-circle assumption. -/
theorem mangoldtInteraction_rotation_commute (A c s : ℝ) (f : ComplexL2) :
    rotationMap c s (mangoldtInteraction A f) =
      mangoldtInteraction A (rotationMap c s f) := by
  simp only [rotationMap_apply, map_add, map_smul, mangoldtInteraction_quarterTurn_commute]

/-- Common unitary rotation preserves the complete signed coefficient exactly. -/
theorem mangoldtInteraction_rotation_pairing (A c s : ℝ) (h : c ^ 2 + s ^ 2 = 1)
    (f g : ComplexL2) :
    ⟪rotationMap c s f, mangoldtInteraction A (rotationMap c s g)⟫_ℂ =
      ⟪f, mangoldtInteraction A g⟫_ℂ := by
  rw [← mangoldtInteraction_rotation_commute, rotation_inner c s h]

/-- Rotation alone does not decrease the actual signed source readout. -/
theorem source_rotation_readout_eq {A : ℝ} (hA : 0 < A) (c s : ℝ)
    (h : c ^ 2 + s ^ 2 = 1) :
    (⟪rotationMap c s (originalSourceState A),
      mangoldtInteraction A (rotationMap c s (originalSourceState A))⟫_ℂ).re =
      closedPrimeMoment A := by
  rw [mangoldtInteraction_rotation_pairing A c s h, closedPrimeMoment_eq_quadratic hA]


/-- OPEN: the eventual upper bound tests the actual changing source, not all probe vectors. -/
def MangoldtInteractionTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    (⟪originalSourceState A, mangoldtInteraction A (originalSourceState A)⟫_ℂ).re ≤ D

/-- Checked equivalence preserves the literal residual target and identical witnesses. -/
theorem interaction_tail_iff_residual_tail :
    MangoldtInteractionTailUpperBound ↔ MertensResidualTailUpperBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, fun A hA => ?_⟩
    rw [mertensResidual_eq_quadratic (hR.trans hA)]
    exact h A hA
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, fun A hA => ?_⟩
    rw [← mertensResidual_eq_quadratic (hR.trans hA)]
    exact h A hA

end FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
