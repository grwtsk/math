-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKernel.Variant9ba707dacd2d9ba33325989c708c895eaf14379cbd68738a4ca12ec8984bbcf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ba707dacd2d9ba33325989c708c895eaf14379cbd68738a4ca12ec8984bbcf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceKernel.Variant9ba707dacd2d9ba33325989c708c895eaf14379cbd68738a4ca12ec8984bbcf8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9ba707dacd2d9ba33325989c708c895eaf14379cbd68738a4ca12ec8984bbcf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/mainterm/SourceMainTermOrigins.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceDivisorCounterterms

/-!
# Independently kernel-indexed main term with explicit occurrence origins

Every source occurrence is reconstructed from the old finite arithmetic and
sampling data. The diagonal baseline is defined independently from a kernel
integral and its zero value, then anchored to the old normalization/log baseline.
Stationary and reflected kernel transports are different supplied structural
identities. No physical extension is selected from their real-even scalar alias.
Mixed origins retain an explicit defect; no estimate for that defect is assumed.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKernel.Variant9ba707dacd2d9ba33325989c708c895eaf14379cbd68738a4ca12ec8984bbcf8

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMainTermOrigins

open MeasureTheory
open SourcePairing SourceSamplingLedger SourceShortSamplingInventory
open SourceSamplingPointwise SourceSamplingCoefficients SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeNormalization CorrelationRegularity
open EstimateVaughanSource EstimatePlainKernel EstimateBetaCentering
open EstimateBetaSourceRecombination EstimateTypeTwoLogBlocks

noncomputable section

/-- The authored stationary scalar correlation, before selecting any complex dual lift. -/
def sourceKernel (A : ℝ) : ℝ → ℝ := sourceCorrelation explicitSecondDerivative A

/-- A supplied displacement kernel's literal inverse-square-root source weight. -/
def kernelWeight (K : ℝ → ℝ) (x : ℝ) : ℝ := K (Real.log x) / Real.sqrt x

/-- The centering source occurrence retains the original masked unequal-index pairs. -/
def kernelPlainOff (A : ℝ) (K : ℝ → ℝ) : ℝ :=
  ∑ p ∈ longOffDiagonalPairs A,
    ArithmeticFunction.vonMangoldt p.1 * kernelWeight K ((p.1 * p.2 : ℕ) : ℝ)

/-- The original closed short Mangoldt inventory with its supplied kernel. -/
def kernelShortMangoldt (A : ℝ) (K : ℝ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
    ArithmeticFunction.vonMangoldt m * kernelWeight K m

/-- The independent constant/linear plain sampling model for a supplied entire kernel. -/
def kernelPlainSampling (K : ℝ → ℝ) (k : ℝ) : ℝ :=
  (samplingAlpha0 * K (Real.log k) + samplingAlpha1 * deriv K (Real.log k)) / Real.sqrt k

/-- The shifted constant/linear logarithmic sampling model, retaining signed coefficients. -/
def kernelLogSampling (K : ℝ → ℝ) (k : ℝ) : ℝ :=
  (samplingAlpha1 * K (Real.log k) + samplingAlpha2 * deriv K (Real.log k)) / Real.sqrt k

/-- The independent diagonal replacement uses both its integral and kernel zero value. -/
def kernelDiagonalBaseline (A : ℝ) (K : ℝ → ℝ) : ℝ :=
  (∫ t in 0..A, K (2 * t)) - K 0 * Real.log (vaughanCutoff A : ℝ)

/-- Every authored occurrence has an explicit independently supplied origin slot. -/
def mixedKernelMainTerm (A : ℝ) (Kcent Kdiag Kshort Klog Kplain : ℝ → ℝ) : ℝ :=
  alpha (vaughanCutoff A) * kernelPlainOff A Kcent + kernelDiagonalBaseline A Kdiag -
    kernelShortMangoldt A Kshort - shortLogMainTerm A (kernelLogSampling Klog) +
    shortPlainMainTerm A (kernelPlainSampling Kplain)

/-- One explicitly common kernel is a chosen specialization, not a canonical duality law. -/
def kernelMainTerm (A : ℝ) (K : ℝ → ℝ) : ℝ :=
  mixedKernelMainTerm A K K K K K

/-- Weight anchoring keeps the exact source denominator and logarithmic displacement. -/
theorem kernelWeight_source (A : ℝ) : kernelWeight (sourceKernel A) = sourcePlainWeight A := rfl

/-- Original centering occurrence, including every retained product and deletion. -/
theorem kernelPlainOff_source (A : ℝ) :
    kernelPlainOff A (sourceKernel A) = plainTypeTwoOffDiagonal A := rfl

/-- Original short Mangoldt occurrence, with its authored source weight. -/
theorem kernelShortMangoldt_source (A : ℝ) :
    kernelShortMangoldt A (sourceKernel A) = shortMangoldtSource A := rfl

/-- The original plain value and derivative occurrences are the retained sampling model. -/
theorem kernelPlainSampling_source (A : ℝ) :
    kernelPlainSampling (sourceKernel A) = sourcePlainSamplingMainTerm A := rfl

/-- The original logarithmic value and derivative occurrences retain their shifted model. -/
theorem kernelLogSampling_source (A : ℝ) :
    kernelLogSampling (sourceKernel A) = sourceLogSamplingMainTerm A := rfl

/-- The anchor's stationary zero value is positive mass one. -/
theorem sourceKernel_zero (A : ℝ) (hA : 1 ≤ A) : sourceKernel A 0 = 1 := by
  simp only [sourceKernel, sourceCorrelation, sub_zero, ← pow_two]
  exact normalized_square_integral A hA

/-- The anchored diagonal integral is genuine before the lower-window replacement. -/
theorem sourceKernel_diagonal_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ sourceKernel A (2 * t)) volume 0 A :=
  ((sourceCorrelation_contDiff A (by linarith : 0 < A)).continuous.comp
    (continuous_const.mul continuous_id)).intervalIntegrable _ _

/-- The authored normalization and arithmetic log baseline are both anchored independently. -/
theorem kernelDiagonalBaseline_source (A : ℝ) (hA : 1 ≤ A) :
    kernelDiagonalBaseline A (sourceKernel A) =
      diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ) := by
  unfold kernelDiagonalBaseline
  rw [sourceKernel_zero A hA, one_mul]
  change (∫ t in 0..A, sourceCorrelation explicitSecondDerivative A (2 * t)) - _ = _
  have hi : (∫ t in 0..A, sourceCorrelation explicitSecondDerivative A (2 * t)) =
      diagonalMainCoefficient A * A := actual_source_half_integral A hA
  rw [hi]

/-- All five original origin slots recover the literal independent main term. -/
theorem kernelMainTerm_source (A : ℝ) (hA : 1 ≤ A) :
    kernelMainTerm A (sourceKernel A) = independentMainTerm A := by
  rw [kernelMainTerm, mixedKernelMainTerm, kernelPlainOff_source,
    kernelDiagonalBaseline_source A hA, kernelShortMangoldt_source,
    kernelLogSampling_source, kernelPlainSampling_source]
  rw [independentMainTerm, coefficientMainTerm_eq_sampling_inventory]
  have hlog : sourceLogSamplingMainTerm A = logLinearMain A samplingAlpha1 samplingAlpha2 := by
    funext k
    rfl
  have hplain : sourcePlainSamplingMainTerm A =
      plainLinearMain A samplingAlpha0 samplingAlpha1 := by
    funext k
    rfl
  rw [hlog, hplain]
  ring

/-- Negating an entire kernel transports its displacement derivative at every point. -/
theorem kernel_derivative_neg (K : ℝ → ℝ) :
    deriv (-K) = -deriv K := by
  funext x
  exact deriv.neg

/-- The inverse-square-root weight is linear under reflected reversal. -/
theorem kernelWeight_neg (K : ℝ → ℝ) (x : ℝ) : kernelWeight (-K) x = -kernelWeight K x := by
  simp only [kernelWeight, Pi.neg_apply, neg_div]

/-- Every finite centering source occurrence reverses together. -/
theorem kernelPlainOff_neg (A : ℝ) (K : ℝ → ℝ) :
    kernelPlainOff A (-K) = -kernelPlainOff A K := by
  unfold kernelPlainOff
  simp_rw [kernelWeight_neg, mul_neg]
  rw [Finset.sum_neg_distrib]

/-- The entire exact short Mangoldt inventory reverses for the oriented kernel. -/
theorem kernelShortMangoldt_neg (A : ℝ) (K : ℝ → ℝ) :
    kernelShortMangoldt A (-K) = -kernelShortMangoldt A K := by
  unfold kernelShortMangoldt
  simp_rw [kernelWeight_neg, mul_neg]
  rw [Finset.sum_neg_distrib]

/-- Both plain-model occurrences reverse through the same entire kernel identity. -/
theorem kernelPlainSampling_neg (K : ℝ → ℝ) :
    kernelPlainSampling (-K) = -kernelPlainSampling K := by
  funext k
  simp only [kernelPlainSampling, Pi.neg_apply, kernel_derivative_neg]
  ring

/-- Both logarithmic-model occurrences reverse, with the universal coefficients fixed. -/
theorem kernelLogSampling_neg (K : ℝ → ℝ) : kernelLogSampling (-K) = -kernelLogSampling K := by
  funext k
  simp only [kernelLogSampling, Pi.neg_apply, kernel_derivative_neg]
  ring

/-- The actual integral and zero-value replacement reverse together, not the normalization mass. -/
theorem kernelDiagonalBaseline_neg (A : ℝ) (K : ℝ → ℝ) :
    kernelDiagonalBaseline A (-K) = -kernelDiagonalBaseline A K := by
  unfold kernelDiagonalBaseline
  simp only [Pi.neg_apply, intervalIntegral.integral_neg]
  ring

/-- The finite logarithmic arithmetic aggregation remains linear under complete kernel reversal. -/
theorem shortLogMainTerm_kernel_neg (A : ℝ) (K : ℝ → ℝ) :
    shortLogMainTerm A (kernelLogSampling (-K)) =
      -shortLogMainTerm A (kernelLogSampling K) := by
  rw [kernelLogSampling_neg]
  unfold shortLogMainTerm
  simp only [Pi.neg_apply, mul_neg, Finset.sum_neg_distrib]

/-- The complete doubly short arithmetic aggregation reverses without an absolute bound. -/
theorem shortPlainMainTerm_kernel_neg (A : ℝ) (K : ℝ → ℝ) :
    shortPlainMainTerm A (kernelPlainSampling (-K)) =
      -shortPlainMainTerm A (kernelPlainSampling K) := by
  rw [kernelPlainSampling_neg]
  unfold shortPlainMainTerm
  simp only [Pi.neg_apply, mul_neg, Finset.sum_neg_distrib]

/-- Proved whole transport for an explicitly oriented common-kernel extension. -/
theorem kernelMainTerm_neg (A : ℝ) (K : ℝ → ℝ) :
    kernelMainTerm A (-K) = -kernelMainTerm A K := by
  unfold kernelMainTerm mixedKernelMainTerm
  rw [kernelPlainOff_neg, kernelDiagonalBaseline_neg, kernelShortMangoldt_neg,
    shortLogMainTerm_kernel_neg, shortPlainMainTerm_kernel_neg]
  ring

/-- A separately proved stationary Hermitian kernel identity supplies its invariant lift. -/
theorem kernelMainTerm_of_stationary_transport (A : ℝ) (hA : 1 ≤ A)
    (Kvee : ℝ → ℝ) (hK : Kvee = sourceKernel A) :
    kernelMainTerm A Kvee = independentMainTerm A := by
  rw [hK, kernelMainTerm_source A hA]

/-- An actual entire oriented reflected-kernel identity supplies the reversed lift.
The premise is a structural kernel adapter, never an unproved arithmetic estimate. -/
theorem kernelMainTerm_of_reflected_transport (A : ℝ) (hA : 1 ≤ A)
    (Kvee : ℝ → ℝ) (hK : Kvee = -sourceKernel A) :
    kernelMainTerm A Kvee = -independentMainTerm A := by
  rw [hK, kernelMainTerm_neg, kernelMainTerm_source A hA]

/-- The common source anchor cannot identify the two different dual kernels at zero. -/
theorem stationary_and_reflected_kernel_distinct (A : ℝ) (hA : 1 ≤ A) :
    sourceKernel A ≠ -sourceKernel A := by
  intro h
  have hz := congrFun h 0
  rw [Pi.neg_apply, sourceKernel_zero A hA] at hz
  norm_num at hz

/-- The actual unit-scale baseline is strictly positive at the original source. -/
theorem sourceBaseline_one_pos : 0 < kernelDiagonalBaseline 1 (sourceKernel 1) := by
  rw [kernelDiagonalBaseline_source 1 (by norm_num)]
  norm_num [vaughanCutoff, diagonalMainCoefficient, sourceNormalization]

/-- Hostile actual-source fixture: the stationary and oriented diagonal lifts disagree. -/
theorem baseline_lifts_disagree_at_one :
    kernelDiagonalBaseline 1 (sourceKernel 1) ≠
      kernelDiagonalBaseline 1 (-sourceKernel 1) := by
  rw [kernelDiagonalBaseline_neg]
  have h := sourceBaseline_one_pos
  linarith

/-- Mixed physical centering, stationary short models, and a separately chosen diagonal baseline. -/
def mixedOriginDefect (A : ℝ) (Kdiag : ℝ → ℝ) : ℝ :=
  kernelDiagonalBaseline A (sourceKernel A) + kernelDiagonalBaseline A Kdiag -
    2 * kernelShortMangoldt A (sourceKernel A) -
    2 * shortLogMainTerm A (kernelLogSampling (sourceKernel A)) +
    2 * shortPlainMainTerm A (kernelPlainSampling (sourceKernel A))

/-- Mixed origins retain the exact mismatch rather than silently reversing every occurrence. -/
theorem mixedKernelMainTerm_transport (A : ℝ) (hA : 1 ≤ A)
    (Kref Kstat Kdiag : ℝ → ℝ) (hR : Kref = -sourceKernel A)
    (hS : Kstat = sourceKernel A) :
    independentMainTerm A + mixedKernelMainTerm A Kref Kdiag Kstat Kstat Kstat =
      mixedOriginDefect A Kdiag := by
  rw [← kernelMainTerm_source A hA, hR, hS]
  unfold kernelMainTerm mixedKernelMainTerm mixedOriginDefect
  rw [kernelPlainOff_neg]
  ring

/-- A reflected diagonal baseline leaves exactly the stationary short occurrences in the defect. -/
theorem mixedOriginDefect_reflected_baseline (A : ℝ) :
    mixedOriginDefect A (-sourceKernel A) =
      -2 * kernelShortMangoldt A (sourceKernel A) -
        2 * shortLogMainTerm A (kernelLogSampling (sourceKernel A)) +
        2 * shortPlainMainTerm A (kernelPlainSampling (sourceKernel A)) := by
  unfold mixedOriginDefect
  rw [kernelDiagonalBaseline_neg]
  ring

/-- A stationary diagonal baseline leaves both baseline occurrences in the exact defect. -/
theorem mixedOriginDefect_stationary_baseline (A : ℝ) :
    mixedOriginDefect A (sourceKernel A) =
      2 * (kernelDiagonalBaseline A (sourceKernel A) -
        kernelShortMangoldt A (sourceKernel A) -
        shortLogMainTerm A (kernelLogSampling (sourceKernel A)) +
        shortPlainMainTerm A (kernelPlainSampling (sourceKernel A))) := by
  unfold mixedOriginDefect
  ring

end
end FormalResearch.RiemannHypothesis.SourceMainTermOrigins
