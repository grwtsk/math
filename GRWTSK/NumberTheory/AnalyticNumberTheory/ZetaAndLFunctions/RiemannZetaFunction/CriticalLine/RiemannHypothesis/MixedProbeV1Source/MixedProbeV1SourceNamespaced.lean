-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationAdd.Variant9ae10424950c6d936ff2202c5b3a310e84226bf05ac5becb8e7dae1ffc7b0964","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ae10424950c6d936ff2202c5b3a310e84226bf05ac5becb8e7dae1ffc7b0964","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TranslationAdd.Variant9ae10424950c6d936ff2202c5b3a310e84226bf05ac5becb8e7dae1ffc7b0964","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9ae10424950c6d936ff2202c5b3a310e84226bf05ac5becb8e7dae1ffc7b0964","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle7/mangoldt-interaction/mixed-probe-v1-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.RiemannHypothesis.GevreyPolynomial

/-!
# Literal Mangoldt translation interaction

The finite self-adjoint translation sum uses the complete closed arithmetic
inventory. Its quadratic coefficient is the original prime moment; positivity
of arithmetic weights is not positivity of this operator.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TranslationAdd.Variant9ae10424950c6d936ff2202c5b3a310e84226bf05ac5becb8e7dae1ffc7b0964

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open MeasureTheory Filter Set ArithmeticFunction
open scoped Topology InnerProductSpace
open SourcePairing SourceReflectionDuality SourceScaleL2Continuity SourceScaleDerivative
open SourcePrimeMomentScale SourceMangoldtAbel SourceFirstPrimeAbel
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
  congr 2
  ring

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
    congr 2
    ring
  simp only [interactionProbe, map_add, map_smul, inner_add_left, inner_add_right,
    inner_smul_left, inner_smul_right, Complex.conj_ofReal]
  rw [hlast, translation_add, translation_inner_stationary]
  simp only [Complex.add_re, Complex.re_ofReal_mul]
  rw [← sourceCorrelation_eq_inner probeScale_pos t,
    ← sourceCorrelation_eq_inner probeScale_pos (t - Real.log 2),
    ← sourceCorrelation_eq_inner probeScale_pos (t + Real.log 2)]
  ring

end FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
