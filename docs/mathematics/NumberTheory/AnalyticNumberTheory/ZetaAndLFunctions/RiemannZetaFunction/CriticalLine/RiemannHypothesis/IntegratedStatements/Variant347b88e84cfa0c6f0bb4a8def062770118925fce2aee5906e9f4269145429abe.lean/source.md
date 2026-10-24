# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegratedStatements.Variant347b88e84cfa0c6f0bb4a8def062770118925fce2aee5906e9f4269145429abe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f216756a8a6b9891cca597e76201f3c7c3e4014` · SHA-256 `3e7e70e9a6a738c224a329aa1b30751706c22a03c44bc4a2ffb5352f90e1c3ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceControllerEnergy.Variant12ffbfaeece436165dd12437b177b2109b1b77cea9a1a7ce2156a03f4bd58213","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12ffbfaeece436165dd12437b177b2109b1b77cea9a1a7ce2156a03f4bd58213","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceControllerEnergy.Variant12ffbfaeece436165dd12437b177b2109b1b77cea9a1a7ce2156a03f4bd58213","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"12ffbfaeece436165dd12437b177b2109b1b77cea9a1a7ce2156a03f4bd58213","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/integrated-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint
import FormalResearch.RiemannHypothesis.SourceComparison.ExponentialCovariance
import FormalResearch.RiemannHypothesis.SourceComparison.SourceLaplaceOne
import FormalResearch.RiemannHypothesis.SourceComparison.SourceScalarController
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteControllerEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceControllerEnergy.Variant12ffbfaeece436165dd12437b177b2109b1b77cea9a1a7ce2156a03f4bd58213

namespace ControllerTransportLiteral
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential PositiveResolvent HalfLineOperator SourceResolventTruncation

example : ∀ (T : H →L[ℂ] H) (α : ℝ) (r q : H),
    SourceControllerEnergy.trackingEnergy T α r q = ‖r - T q‖ ^ 2 + α * ‖q‖ ^ 2 := by
  intros; rfl
example : ∀ (T : H →L[ℂ] H) (α : ℝ) (r : H),
    SourceControllerEnergy.canonicalController T α r =
      T.adjoint (positiveResolvent (T.comp T.adjoint) α r) := by
  intros; rfl
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    r - T (SourceControllerEnergy.canonicalController T α r) =
      (α : ℂ) • positiveResolvent (T.comp T.adjoint) α r :=
  SourceControllerEnergy.canonical_residual
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    SourceControllerEnergy.trackingEnergy T α r
      (SourceControllerEnergy.canonicalController T α r) =
      regularizedMass (T.comp T.adjoint) α r := SourceControllerEnergy.canonical_energy
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r w : H,
    (inner ℂ (r - T (SourceControllerEnergy.canonicalController T α r)) (T w)).re =
      α * (inner ℂ (SourceControllerEnergy.canonicalController T α r) w).re :=
  SourceControllerEnergy.canonical_cross_term
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r w : H,
    SourceControllerEnergy.trackingEnergy T α r
      (SourceControllerEnergy.canonicalController T α r + w) =
        regularizedMass (T.comp T.adjoint) α r + ‖T w‖ ^ 2 + α * ‖w‖ ^ 2 :=
  SourceControllerEnergy.trackingEnergy_translate_canonical
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r q : H,
    regularizedMass (T.comp T.adjoint) α r ≤
      SourceControllerEnergy.trackingEnergy T α r q :=
  SourceControllerEnergy.regularizedMass_le_trackingEnergy
example : ∀ α : ℝ, 0 < α → ∀ q : H,
    sourceMass α ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  SourceControllerEnergy.sourceMass_le_full_energy
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    IsLeast (Set.range (SourceControllerEnergy.trackingEnergy T α r))
      (regularizedMass (T.comp T.adjoint) α r) := SourceControllerEnergy.isLeast_trackingEnergy
example : ∀ α : ℝ, 0 < α →
    IsLeast (Set.range (fun q : H =>
      ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2)) (sourceMass α) :=
  SourceControllerEnergy.sourceMass_isLeast_full_energy
example : ∀ N α : ℝ, 0 < α → ∀ q : H,
    truncatedMass N α ≤ ‖referenceVector - TimeKernelTruncation.truncatedOperator N q‖ ^ 2 +
      α * ‖q‖ ^ 2 := SourceControllerEnergy.truncatedMass_le_full_energy
example : ∀ α : ℝ, 0 < α →
    ‖referenceVector - sourceOperator
      (SourceControllerEnergy.canonicalController sourceOperator α referenceVector)‖ ^ 2 +
      α * ‖SourceControllerEnergy.canonicalController sourceOperator α referenceVector‖ ^ 2 =
        sourceMass α := SourceControllerEnergy.sourceMass_canonical_energy
example : ∀ (z : ℂ) (hz : 0 < z.re) (q : H),
    inner ℂ (exponentialVector z hz) q = 0 →
      inner ℂ (exponentialVector z hz) (referenceVector - sourceOperator q) = 1 / (z + 1) :=
  SourceControllerPoleConstraint.source_residual_evaluation_of_input_zero
example : ∀ q : H, inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0 →
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 :=
  SourceControllerPoleConstraint.source_residual_sq_ge_of_input_half_zero
example : ∀ α : ℝ, 0 ≤ α → ∀ q : H,
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0 →
      (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  SourceControllerPoleConstraint.source_full_energy_ge_of_input_half_zero

end ControllerTransportLiteral


namespace ExponentialCovarianceLiteral
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator HalfLineExtension FullLineConvolution
open FixedSourceKernel FixedLaplaceContinuation
open FormalResearch.RiemannHypothesis.SourceComparison.ExponentialCovariance
noncomputable section

example (a : ℝ) (ha : 0 < a) :
    controller a ha = exponentialVector (a : ℂ) (by simpa using ha) := rfl
example (a : ℝ) (ha : 0 < a) : response a ha = sourceOperator (controller a ha) := rfl
example (a : ℝ) (ha : 0 < a) :
    controller a ha =ᵐ[halfLineMeasure] (fun t : ℝ => (Real.exp (-a * t) : ℂ)) :=
  controller_ae a ha
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (controller a ha) (controller b hb) = ((1 / (a + b) : ℝ) : ℂ) :=
  controller_inner a b ha hb
example (a : ℝ) (ha : 0 < a) :
    inner ℂ referenceVector (response a ha) = actualLaplace 1 / (1 + (a : ℂ)) :=
  reference_inner_response a ha
example (a : ℝ) (ha : 0 < a) :
    response a ha =ᵐ[halfLineMeasure]
      (fun t => ∫ s in Ioc 0 t, ((fixedKernel (t - s) * Real.exp (-a * s) : ℝ) : ℂ)) :=
  response_ae a ha
example (s : ℝ) : signedCorrelation s =
    ∫ u : ℝ in Ioi 0, fixedKernel u * fixedKernel (u + s) := rfl
example (a : ℝ) : signedCovariance a =
    ∫ s : ℝ in Ioi 0, Real.exp (-a * s) * signedCorrelation s := rfl
example (s : ℝ) :
    IntegrableOn (fun u : ℝ => fixedKernel u * fixedKernel (u + s)) (Ioi 0) :=
  signedCorrelation_integrable s
example (u : ℝ) : (∫ s : ℝ, ‖fixedKernel (u + s)‖) = ∫ s : ℝ, ‖fixedKernel s‖ :=
  shifted_kernel_norm_integral u
example : Integrable (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2))
    (halfLineMeasure.prod halfLineMeasure) := signed_product_integrable
example (a : ℝ) (ha : 0 ≤ a) :
    Integrable (fun p : ℝ × ℝ =>
      Real.exp (-a * p.2) * (fixedKernel p.1 * fixedKernel (p.1 + p.2)))
      (halfLineMeasure.prod halfLineMeasure) := weighted_signed_product_integrable a ha
example (a : ℝ) (ha : 0 ≤ a) :
    IntegrableOn (fun s : ℝ => Real.exp (-a * s) * signedCorrelation s) (Ioi 0) :=
  signedCovariance_integrable a ha
example (a : ℝ) (ha : 0 ≤ a) : signedCovariance a =
    ∫ u : ℝ in Ioi 0, ∫ s : ℝ in Ioi 0,
      Real.exp (-a * s) * (fixedKernel u * fixedKernel (u + s)) :=
  signedCovariance_eq_reordered a ha
example (u v : ℝ) (f : FullLineConvolution.FullH) :
    fullShift u (fullShift v f) = fullShift (u + v) f := fullShift_add u v f
example (a b u v : ℝ) : overlap a b u v =
    if u ≤ v then Real.exp (-a * (v - u)) / (a + b)
    else Real.exp (-b * (u - v)) / (a + b) := rfl
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) (huv : u ≤ v) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) =
      ((Real.exp (-a * (v - u)) / (a + b) : ℝ) : ℂ) :=
  shifted_controller_inner_of_le a b ha hb u v huv
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) = (overlap a b u v : ℂ) :=
  shifted_controller_inner a b ha hb u v
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    |overlap a b u v| ≤ 1 / (a + b) := overlap_abs_le a b ha hb u v
example (a b : ℝ) : Measurable (fun p : ℝ × ℝ => overlap a b p.1 p.2) :=
  overlap_measurable a b
example (a b : ℝ) (p : ℝ × ℝ) :
    gramIntegrand a b p = fixedKernel p.1 * fixedKernel p.2 * overlap a b p.1 p.2 := rfl
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    Integrable (gramIntegrand a b) (volume.prod volume) := gramIntegrand_integrable a b ha hb
example (f : ℝ → FullLineConvolution.FullH) (hf : Integrable f)
    (g : FullLineConvolution.FullH) :
    (∫ u : ℝ, inner ℂ (f u) g) = inner ℂ (∫ u : ℝ, f u) g := integral_inner_first f hf g
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      (((∫ u : ℝ, ∫ v : ℝ, gramIntegrand a b (u, v)) : ℝ) : ℂ) :=
  response_inner_full_double a b ha hb
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      (((∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)) : ℝ) : ℂ) :=
  response_inner_double a b ha hb
end
end ExponentialCovarianceLiteral

namespace SourceLaplaceOneLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.SourceLaplaceOne
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedLaplaceContinuation
example :
    0 < 36 * Real.exp 1 - 266 * Real.exp (-1) := source_exponential_difference_pos


example :
    V 1 = ((288 * (36 * Real.exp 1 - 266 * Real.exp (-1)) /
      Real.sqrt (45056 / 1105 : ℝ) : ℝ) : ℂ) := V_one_eq


example : 0 < (V 1).re := V_one_re_pos


example : V 1 ≠ 0 := V_one_ne_zero


example : actualLaplace 1 ≠ 0 := actualLaplace_one_ne_zero


example : 0 < (actualLaplace 1).re := actualLaplace_one_re_pos


example : (actualLaplace 1).im = 0 := actualLaplace_one_im_eq_zero

end SourceLaplaceOneLiteral

namespace SourceScalarControllerLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.SourceScalarController
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator FixedLaplaceContinuation SourceResolventTruncation TimeKernelTruncation
example : 0 < kappa := kappa_pos


example :
    (inner ℂ referenceVector (sourceOperator referenceVector)).re = kappa / 2 := reference_source_inner_re


example (c α : ℝ) :
    ‖referenceVector - sourceOperator ((c : ℂ) • referenceVector)‖ ^ 2 +
      α * ‖(c : ℂ) • referenceVector‖ ^ 2 =
      1 / 2 - c * kappa + c ^ 2 * (‖sourceOperator referenceVector‖ ^ 2 + α / 2) := scaled_reference_full_energy c α


example (α : ℝ) (hα : 0 < α) :
    ‖referenceVector - sourceOperator (scalarController α)‖ ^ 2 +
      α * ‖scalarController α‖ ^ 2 ≤
      1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) := scalarController_full_energy_le α hα


example (α : ℝ) (hα : 0 < α) :
    sourceMass α ≤ 1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) := sourceMass_le_scalar_improvement α hα


example (α : ℝ) (hα : 0 < α) :
    sourceMass α < 1 / 2 := sourceMass_lt_reference_norm_sq α hα

example : kappa = (actualLaplace 1).re := rfl

example (α : ℝ) : scalarController α =
    ((kappa / (kernelMass ^ 2 + α) : ℝ) : ℂ) • referenceVector := rfl

end SourceScalarControllerLiteral


namespace FiniteControllerEnergyLiteral
open MeasureTheory Set
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator ExponentialCovariance FixedLaplaceContinuation
open FixedSourceKernel FormalResearch.RiemannHypothesis.SourceComparison.FiniteControllerEnergy
noncomputable section
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    finiteController n a ha c = ∑ i, (c i : ℂ) • controller (a i) (ha i) := rfl
example (a b : ℝ) : sourceGram a b =
    ∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0,
      fixedKernel u * fixedKernel v * overlap a b u v := rfl
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    (inner ℂ referenceVector (sourceOperator (finiteController n a ha c))).re =
      ∑ i, c i * (actualLaplace 1).re / (1 + a i) :=
  finiteController_reference_re n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖finiteController n a ha c‖ ^ 2 = ∑ i, ∑ j, c i * c j / (a i + a j) :=
  finiteController_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2 =
      ∑ i, ∑ j, c i * c j * sourceGram (a i) (a j) :=
  finiteController_response_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) (α : ℝ) :
    ‖referenceVector - sourceOperator (finiteController n a ha c)‖ ^ 2 +
      α * ‖finiteController n a ha c‖ ^ 2 =
      1 / 2 - 2 * (∑ i, c i * (actualLaplace 1).re / (1 + a i)) +
        ∑ i, ∑ j, c i * c j * (sourceGram (a i) (a j) + α / (a i + a j)) :=
  finiteController_energy n a ha c α
end
end FiniteControllerEnergyLiteral

namespace FiniteMobiusControllerLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController

open MeasureTheory Set Finset

open scoped ComplexConjugate

open FormalResearch.RiemannHypothesis.SourceComparison

open HalfLineExponential HalfLineExtension HalfLineDuality FullLineConvolution

open HalfLineOperator FixedKernelAdjointExponential SourceControllerPoleConstraint

example (a : ℝ) (p : H) : causalShift a p = restriction (fullShift a (zeroExtension p)) := rfl

example (X : ℕ) : mobiusReciprocalSum X = ∑ n ∈ Finset.Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) := rfl

example (X : ℕ) (p : H) : finiteMobiusController X p =
  (∑ n ∈ Finset.Icc 1 X, ((ArithmeticFunction.moebius n : ℂ) / (Real.sqrt (n : ℝ) : ℂ)) •
    causalShift (Real.log (n : ℝ)) p) -
  ((Real.sqrt (X : ℝ) * mobiusReciprocalSum X : ℝ) : ℂ) •
    causalShift (Real.log (X : ℝ)) p := rfl

example (a : ℝ) (p : H) :
    causalShift a p =ᵐ[halfLineMeasure]
      (fun t : ℝ => (Ioi (0 : ℝ)).indicator p (t - a)) := causalShift_ae a p

example (a : ℝ) (p : H) : ‖causalShift a p‖ ≤ ‖p‖ := causalShift_norm_le a p

example (a : ℝ) (ha : 0 ≤ a)
    (z : ℂ) (hz : 0 < z.re) (p : H) :
    inner ℂ (exponentialVector z hz) (causalShift a p) =
      Complex.exp (-z * (a : ℂ)) * inner ℂ (exponentialVector z hz) p := causalShift_exponential_inner a ha z hz p

example (n : ℕ) (hn : 1 ≤ n) (p : H) :
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) (causalShift (Real.log (n : ℝ)) p) =
      (Real.sqrt (n : ℝ) : ℂ)⁻¹ *
        inner ℂ (exponentialVector (1 / 2) (by norm_num)) p := causalShift_half_inner n hn p

example (X : ℕ) (hX : 2 ≤ X) (p : H) :
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) (finiteMobiusController X p) = 0 := finiteMobiusController_half_inner X hX p

example (X : ℕ) (hX : 2 ≤ X) (p : H) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator (finiteMobiusController X p)‖ ^ 2 := finiteMobiusController_residual_sq_ge X hX p

example (X : ℕ) (hX : 2 ≤ X) (p : H)
    (α : ℝ) (hα : 0 ≤ α) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator (finiteMobiusController X p)‖ ^ 2 +
      α * ‖finiteMobiusController X p‖ ^ 2 := finiteMobiusController_full_energy_ge X hX p α hα

example (X : ℕ) (p : H) : MemLp (finiteMobiusController X p) 2 halfLineMeasure := Lp.memLp _

example (X : ℕ) (hX : 2 ≤ X) (p : H) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator
      ((∑ n ∈ Finset.Icc 1 X,
          ((ArithmeticFunction.moebius n : ℂ) / (Real.sqrt (n : ℝ) : ℂ)) •
            restriction (fullShift (Real.log (n : ℝ)) (zeroExtension p))) -
        ((Real.sqrt (X : ℝ) *
          (∑ n ∈ Finset.Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ)) : ℝ) : ℂ) •
          restriction (fullShift (Real.log (X : ℝ)) (zeroExtension p)))‖ ^ 2 :=
  finiteMobiusController_residual_sq_ge X hX p

end FiniteMobiusControllerLiteral
```
