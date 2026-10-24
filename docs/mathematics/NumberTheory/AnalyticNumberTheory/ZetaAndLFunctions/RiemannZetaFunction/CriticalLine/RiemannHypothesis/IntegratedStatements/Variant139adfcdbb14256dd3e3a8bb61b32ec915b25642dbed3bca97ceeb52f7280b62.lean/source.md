# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegratedStatements.Variant139adfcdbb14256dd3e3a8bb61b32ec915b25642dbed3bca97ceeb52f7280b62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e164c9250fe764276f5f51e3c76bdba129d4e1c9` · SHA-256 `c96c1aeb0bd360965bdbe31d0c2384f38a0cb43641f5d961a496f206f5ad80cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceComparison.Variant270062305a02a901911925d5dd1633dfcb04b1efe39985fdf4ab9dbdf584f928","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"270062305a02a901911925d5dd1633dfcb04b1efe39985fdf4ab9dbdf584f928","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceComparison.Variant270062305a02a901911925d5dd1633dfcb04b1efe39985fdf4ab9dbdf584f928","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"270062305a02a901911925d5dd1633dfcb04b1efe39985fdf4ab9dbdf584f928","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/integrated-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceComparison.Variant270062305a02a901911925d5dd1633dfcb04b1efe39985fdf4ab9dbdf584f928

set_option autoImplicit false

namespace OperatorIntegratedStatements0
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
noncomputable section
example : FullH = Lp ℂ 2 (volume : Measure ℝ) := rfl
example (f : H) : zeroExtensionFunction f = (Ioi (0 : ℝ)).indicator f := rfl
example (f : H) : MemLp ((Ioi (0 : ℝ)).indicator (fun t => f t)) 2 volume :=
  zeroExtensionFunction_memLp f
example (f : H) : zeroExtensionVector f =
    (zeroExtensionFunction_memLp f).toLp ((Ioi (0 : ℝ)).indicator (fun t => f t)) := rfl
example (f : H) : zeroExtensionVector f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtensionVector_ae f
example (f : H) : ‖zeroExtensionVector f‖ = ‖f‖ := zeroExtensionVector_norm f
example (f g : H) : zeroExtensionVector (f + g) =
    zeroExtensionVector f + zeroExtensionVector g := zeroExtensionVector_add f g
example (c : ℂ) (f : H) : zeroExtensionVector (c • f) = c • zeroExtensionVector f :=
  zeroExtensionVector_smul c f
example : H →ₗᵢ[ℂ] Lp ℂ 2 (volume : Measure ℝ) := zeroExtension
example (f : H) : zeroExtension f = zeroExtensionVector f := rfl
example (f : H) : zeroExtension f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtension_ae f
example (f : H) : ‖zeroExtension f‖ = ‖f‖ := zeroExtension_norm f
example (f : H) : zeroExtension f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f :=
  zeroExtension_ae_halfLine f
example (f : H) : zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) :=
  zeroExtension_ae_nonpositive f
example : restriction = LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0) := rfl
example (f : FullH) : restriction f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f :=
  restriction_ae f
example (f : FullH) : ‖restriction f‖ ≤ ‖f‖ := restriction_norm_le f
example : ‖restriction‖ ≤ 1 := restriction_opNorm_le
example (f : H) : restriction (zeroExtension f) = f := restriction_zeroExtension f
example : restriction.comp zeroExtension.toContinuousLinearMap =
    ContinuousLinearMap.id ℂ H := restriction_comp_zeroExtension
end
end OperatorIntegratedStatements0

namespace OperatorIntegratedStatements1
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineDuality
noncomputable section
example (f : Lp ℂ 2 (volume : Measure ℝ)) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (h t)) (volume.restrict (Ioi (0 : ℝ))) :=
  restricted_inner_integrable f h
example (f : Lp ℂ 2 (volume : Measure ℝ)) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (zeroExtension h t)) volume :=
  extended_inner_integrable f h
example (f : Lp ℂ 2 (volume : Measure ℝ)) (h : H) :
    inner ℂ (restriction f) h = inner ℂ f (zeroExtension h) :=
  inner_restriction_zeroExtension f h
example : zeroExtension.toContinuousLinearMap.adjoint = restriction := zeroExtension_adjoint
example : restriction.adjoint = zeroExtension.toContinuousLinearMap := restriction_adjoint
end
end OperatorIntegratedStatements1

namespace OperatorIntegratedStatements2
namespace RootOperatorLiteral
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
noncomputable section

section Full
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution
-- 01: the exact ambient Hilbert space.
example : FullH = Lp ℂ 2 (volume : Measure ℝ) := rfl
-- 02: the actual measure-preserving translation, including its sign.
example (a : ℝ) : fullShift a =
    Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x - a) (measurePreserving_sub_right volume a) := rfl
-- 03
example (a : ℝ) (f : FullH) : fullShift a f =ᵐ[volume] (fun x : ℝ => f (x - a)) :=
  fullShift_ae a f
-- 04
example (f : FullH) : Continuous (fun a : ℝ => fullShift a f) := fullShift_continuous f
-- 05
example (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    Integrable (fun a : ℝ => (g a : ℂ) • fullShift a f) := weighted_shift_integrable g hg f
-- 06: literal Bochner integral body.
example (g : ℝ → ℝ) (f : FullH) : vector g f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl
-- 07
example (g : ℝ → ℝ) (f : FullH) :
    ‖vector g f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := vector_norm_le g f
-- 08
example (g : ℝ → ℝ) (hg : Integrable g) (f h : FullH) :
    vector g (f + h) = vector g f + vector g h := vector_add g hg f h
-- 09
example (g : ℝ → ℝ) (c : ℂ) (f : FullH) : vector g (c • f) = c • vector g f := vector_smul g c f
-- 10: linear-map function body, with its integrability premise retained.
example (g : ℝ → ℝ) (hg : Integrable g) :
    (linearMap g hg : FullH → FullH) = fun f => ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl
-- 11: the actual continuous-map constructor and bound.
example (g : ℝ → ℝ) (hg : Integrable g) : fullConvolution g hg =
    (linearMap g hg).mkContinuous (∫ a : ℝ, ‖g a‖) (vector_norm_le g) := rfl
-- 12
example (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    fullConvolution g hg f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := fullConvolution_apply g hg f
-- 13
example (g : ℝ → ℝ) (hg : Integrable g) :
    ‖fullConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ := fullConvolution_norm_le g hg
-- 14
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    fullConvolution (g - h) (hg.sub hh) = fullConvolution g hg - fullConvolution h hh :=
  fullConvolution_sub_kernel g h hg hh
-- 15
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖fullConvolution g hg - fullConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ :=
  fullConvolution_norm_sub_le g h hg hh
-- 16: actual source, not an arbitrary substituted kernel.
example : actualFull = fullConvolution fixedKernel fixedKernel_integrable := rfl
-- 17
example (f : FullH) : actualFull f = ∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a f := actualFull_apply f
-- 18
example : ‖actualFull‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ := actualFull_norm_le
end Full

section Half
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator
-- 19: exact restriction/convolution/extension order.
example (g : ℝ → ℝ) (hg : Integrable g) : halfConvolution g hg =
    restriction.comp ((fullConvolution g hg).comp zeroExtension.toContinuousLinearMap) := rfl
-- 20
example (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    halfConvolution g hg f = restriction (∫ a : ℝ, (g a : ℂ) • fullShift a (zeroExtension f)) :=
  halfConvolution_apply g hg f
-- 21
example (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    ‖halfConvolution g hg f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := halfConvolution_apply_norm_le g hg f
-- 22
example (g : ℝ → ℝ) (hg : Integrable g) :
    ‖halfConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ := halfConvolution_norm_le g hg
-- 23
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    halfConvolution (g - h) (hg.sub hh) = halfConvolution g hg - halfConvolution h hh :=
  halfConvolution_sub_kernel g h hg hh
-- 24
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖halfConvolution g hg - halfConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ :=
  halfConvolution_norm_sub_le g h hg hh
-- 25
example : sourceOperator = halfConvolution fixedKernel fixedKernel_integrable := rfl
-- 26
example (f : H) : sourceOperator f =
    restriction (∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a (zeroExtension f)) := sourceOperator_apply f
-- 27
example (f : H) : ‖sourceOperator f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ :=
  sourceOperator_apply_norm_le f
-- 28
example : ‖sourceOperator‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ := sourceOperator_norm_le
-- 29: T T*, not T* T or T squared.
example : sourceEnergy = sourceOperator.comp sourceOperator.adjoint := rfl
-- 30
example (f : H) : sourceEnergy f = sourceOperator (sourceOperator.adjoint f) := sourceEnergy_apply f
-- 31
example : sourceEnergy.IsPositive := sourceEnergy_isPositive
-- 32
example : IsSelfAdjoint sourceEnergy := sourceEnergy_isSelfAdjoint
-- 33
example (f : H) : inner ℂ f (sourceEnergy f) =
    inner ℂ (sourceOperator.adjoint f) (sourceOperator.adjoint f) := sourceEnergy_inner f
-- 34
example (f : H) : (inner ℂ f (sourceEnergy f)).re = ‖sourceOperator.adjoint f‖ ^ 2 :=
  sourceEnergy_re_inner f
-- 35
example : sourceEnergy.ker = sourceOperator.adjoint.ker := sourceEnergy_kernel
-- 36
example : ‖sourceEnergy‖ = ‖sourceOperator‖ ^ 2 := sourceEnergy_norm
end Half

section Truncation
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation
-- 37: actual time truncation, with both interval endpoints retained.
example (N : ℝ) : truncatedKernel N = (Icc (0 : ℝ) N).indicator fixedKernel := rfl
-- 38
example (N : ℝ) : Integrable (truncatedKernel N) := truncatedKernel_integrable N
-- 39
example (N : ℝ) : MemLp (truncatedKernel N) 2 volume := truncatedKernel_memLp N
-- 40
example (N t : ℝ) : fixedKernel t - truncatedKernel N t = (Ioi N).indicator fixedKernel t :=
  kernel_sub_truncated N t
-- 41
example (N : ℝ) : (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) =
    ∫ t : ℝ in Ioi N, ‖fixedKernel t‖ := norm_kernel_sub_truncated_integral N
-- 42
example (N : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Ioi N) :=
  tail_majorant_integrable N
-- 43: exact evaluation of the majorant, not equality to the unknown actual tail.
example (N : ℝ) :
    (∫ t : ℝ in Ioi N, Real.exp ((1 - t) / 2) * derivativeBudget) =
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := tail_majorant_integral N
-- 44
example (N : ℝ) (hN : 2 ≤ N) : (∫ t : ℝ in Ioi N, ‖fixedKernel t‖) ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := kernel_tail_integral_le N hN
-- 45
example (N : ℝ) (hN : 2 ≤ N) : (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := norm_kernel_sub_truncated_integral_le N hN
-- 46
example : kernelMass = ∫ t : ℝ, ‖fixedKernel t‖ := rfl
-- 47
example : 0 ≤ kernelMass := kernelMass_nonneg
-- 48
example (N : ℝ) : (∫ t : ℝ, ‖truncatedKernel N t‖) ≤ kernelMass := truncated_norm_integral_le N
-- 49
example (N : ℝ) : truncatedOperator N =
    halfConvolution (truncatedKernel N) (truncatedKernel_integrable N) := rfl
-- 50
example (N : ℝ) : ‖truncatedOperator N‖ ≤ kernelMass := truncatedOperator_norm_le N
-- 51
example (N : ℝ) (hN : 2 ≤ N) : ‖sourceOperator - truncatedOperator N‖ ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := operator_norm_sub_le N hN
-- 52
example (N : ℝ) : truncatedEnergy N =
    (truncatedOperator N).comp (truncatedOperator N).adjoint := rfl
-- 53
example (N : ℝ) : (truncatedEnergy N).IsPositive := truncatedEnergy_isPositive N
-- 54
example (S T : H →L[ℂ] H) :
    ‖S.comp S.adjoint - T.comp T.adjoint‖ ≤ (‖S‖ + ‖T‖) * ‖S - T‖ := norm_energy_difference S T
-- 55
example (N : ℝ) (hN : 2 ≤ N) : ‖sourceEnergy - truncatedEnergy N‖ ≤
    4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) := energy_norm_sub_le N hN
-- 56
example (α : ℝ) : diagonalCutoff α = max 2 (1 + 4 * Real.log (1 / α)) := rfl
-- 57
example (α : ℝ) : 2 ≤ diagonalCutoff α := diagonalCutoff_ge_two α
-- 58
example (α : ℝ) (hα : 0 < α) : Real.exp ((1 - diagonalCutoff α) / 2) ≤ α ^ 2 := diagonal_exp_le α hα
-- 59
example (α : ℝ) (hα : 0 < α) :
    ‖sourceOperator - truncatedOperator (diagonalCutoff α)‖ ≤ 2 * derivativeBudget * α ^ 2 :=
  diagonal_operator_error_le α hα
-- 60
example (α : ℝ) (hα : 0 < α) :
    ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ ≤
      4 * kernelMass * derivativeBudget * α ^ 2 := diagonal_energy_error_le α hα
end Truncation
end
end RootOperatorLiteral
end OperatorIntegratedStatements2

namespace OperatorIntegratedStatements3
namespace FixedLaplaceContinuationLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedSourceFilter FixedSourceTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation
noncomputable section
example : actualLaplace = (fun z : ℂ ↦
    ∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) := rfl
example (z : ℂ) (hz : 0 < z.re) : DifferentiableAt ℂ actualLaplace z :=
  actualLaplace_differentiableAt z hz
example (z : ℂ) (hz : z ≠ 0) : DifferentiableAt ℂ V z :=
  V_differentiableAt_of_ne_zero z hz
example (z : ℂ) (hz : z ≠ 0) (hzp : z ≠ 1 / 2) :
    DifferentiableAt ℂ repairedTransfer z :=
  repairedTransfer_differentiableAt_of_ne z hz hzp
example : AnalyticAt ℂ repairedTransfer (1 / 2) := repairedTransfer_analyticAt_pole
example : DifferentiableOn ℂ repairedTransfer {z : ℂ | 0 < z.re} :=
  repairedTransfer_differentiableOn_positive
example : AnalyticOnNhd ℂ actualLaplace {z : ℂ | 0 < z.re} :=
  actualLaplace_analyticOn_positive
example (z : ℂ) (hz : 0 < z.re) : actualLaplace z = repairedTransfer z :=
  actualLaplace_eq_repairedTransfer z hz
example : actualLaplace (1 / 2) = removedPoleValue := actualLaplace_at_pole
example : actualLaplace (1 / 2) ≠ 0 := actualLaplace_pole_ne_zero
example (z : ℂ) (hz : 0 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      repairedTransfer z := actual_laplace_integral_eq_repairedTransfer z hz
example :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-(1 / 2 : ℂ)) * (t : ℂ))) =
      Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ) := actual_laplace_integral_at_pole
example (ρ : ℂ) (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-(ρ - 1 / 2)) * (t : ℂ))) = 0 :=
  actual_laplace_integral_zero_of_nontrivial ρ hρ hρre
example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-ZeroObject.shiftedValue o) * (t : ℂ))) = 0 :=
  actual_laplace_integral_zero_occurrence o ho
end
end FixedLaplaceContinuationLiteral
end OperatorIntegratedStatements3

namespace OperatorIntegratedStatements4
namespace FixedKernelAdjointExponentialLiteral
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel FixedKernelAdmission
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension FormalResearch.RiemannHypothesis.SourceComparison.HalfLineDuality
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
noncomputable section
example (a : ℝ) (f : FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution.FullH) :
    fullShift (-a) (fullShift a f) = f := fullShift_neg_cancel a f
example (z : ℂ) (hz : 0 < z.re) :
    zeroExtension (exponentialVector z hz) =ᵐ[volume]
      (Ioi (0 : ℝ)).indicator (exponentialFunction z) := zeroExtension_exponential_ae z hz
example (a : ℝ) (ha : 0 ≤ a) (z : ℂ) (hz : 0 < z.re) :
    restriction (fullShift (-a) (zeroExtension (exponentialVector z hz))) =
      Complex.exp (-conj z * (a : ℂ)) • exponentialVector z hz :=
  restriction_backwardShift_exponential a ha z hz
example (a : ℝ) (ha : 0 ≤ a) (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (zeroExtension (exponentialVector z hz)) (fullShift a (zeroExtension f)) =
      Complex.exp (-z * (a : ℂ)) * inner ℂ (exponentialVector z hz) f :=
  exponential_inner_shift a ha z hz f
example (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (exponentialVector z hz) (sourceOperator f) =
      actualLaplace z * inner ℂ (exponentialVector z hz) f := exponential_inner_sourceOperator z hz f
example (z : ℂ) (hz : 0 < z.re) :
    sourceOperator.adjoint (exponentialVector z hz) =
      conj (actualLaplace z) • exponentialVector z hz := sourceOperator_adjoint_exponential z hz
example (ρ : ℂ) (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    sourceOperator.adjoint (exponentialVector (ρ - 1 / 2) (by
      simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]; linarith)) = 0 :=
  sourceOperator_adjoint_exponential_zero_of_nontrivial ρ hρ hρre
example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) :
    sourceOperator.adjoint (exponentialVector (ZeroObject.shiftedValue o) ho) = 0 :=
  sourceOperator_adjoint_exponential_zero_occurrence o ho
example (ρ : ℂ) (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := nontrivial_reference_visible_kernel ρ hρ hρre
example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 =
        2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := occurrence_reference_visible_kernel o ho
end
end FixedKernelAdjointExponentialLiteral
end OperatorIntegratedStatements4

namespace OperatorIntegratedStatements5
open MeasureTheory Set
open scoped ENNReal
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension hiding FullH
open FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE
noncomputable section
example (u : ℝ → ℝ) (v : ℝ → ℂ) (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    Integrable (fun a => u a • v a) := smul_integrable_of_memLp_two u v hu hv
example (u : ℝ → ℝ) (v : ℝ → ℂ) (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    (∫ a, ‖u a • v a‖) ≤ (eLpNorm u 2 volume).toReal * (eLpNorm v 2 volume).toReal :=
  integral_norm_smul_le u v hu hv
example (f : FullH) (t : ℝ) : convolutionFunction f t =
    ∫ a : ℝ, fixedKernel a • f (t-a) := rfl
example (f : FullH) (t : ℝ) : Integrable (fun a : ℝ => fixedKernel a • f (t-a)) :=
  convolution_integrand_integrable f t
example (f : FullH) (t : ℝ) : (∫ a : ℝ, ‖fixedKernel a • f (t-a)‖) ≤
    (eLpNorm fixedKernel 2 volume).toReal * ‖f‖ := convolution_norm_integral_bound f t
example (f : FullH) :
    StronglyMeasurable (fun p : ℝ × ℝ => fixedKernel p.1 • f (p.2-p.1)) :=
  convolution_integrand_stronglyMeasurable f
example (f : FullH) (B : Set ℝ) (hB : volume B < ∞) :
    Integrable (fun p : ℝ × ℝ => fixedKernel p.1 • f (p.2-p.1))
      (volume.prod (volume.restrict B)) := convolution_product_integrable f B hB
example (f : FullH) (B : Set ℝ) (hB : volume B < ∞) :
    IntegrableOn (convolutionFunction f) B := convolutionFunction_integrableOn f B hB
example (f : FullH) (B : Set ℝ) (hB : MeasurableSet B) (hBfin : volume B < ∞) :
    (∫ t in B, actualFull f t) = ∫ a : ℝ, ∫ t in B, fixedKernel a • f (t-a) :=
  vector_setIntegral f B hB hBfin
example (f : FullH) : actualFull f =ᵐ[volume]
    (fun t => ∫ a : ℝ, fixedKernel a • f (t-a)) := actualFull_ae_convolution f
example (f : FullH) (t : ℝ) : convolutionFunction f t =
    ∫ a : ℝ, fixedKernel (t-a) • f a := convolutionFunction_commuted f t
example (f : H) (t a : ℝ) :
    fixedKernel (t-a) • (Ioi (0 : ℝ)).indicator f a =
      (Ioc 0 t).indicator (fun s => fixedKernel (t-s) • f s) a :=
  causal_integrand_identity f t a
example (f : H) (t : ℝ) : convolutionFunction (zeroExtension f) t =
    ∫ a in Ioc 0 t, fixedKernel (t-a) • f a :=
  convolutionFunction_zeroExtension_eq_setIntegral f t
example (f : H) (t : ℝ) :
    IntegrableOn (fun a : ℝ => fixedKernel (t-a) • f a) (Ioc 0 t) :=
  causal_setIntegral_integrable f t
example (f : H) (t : ℝ) (ht : 0 ≤ t) :
    IntervalIntegrable (fun a : ℝ => (fixedKernel (t-a) : ℂ) * f a) volume 0 t :=
  causal_intervalIntegrable f t ht
example (f : H) (t : ℝ) (ht : t ≤ 0) : convolutionFunction (zeroExtension f) t = 0 :=
  convolutionFunction_zeroExtension_nonpositive f t ht
example (f : H) : sourceOperator f =ᵐ[volume.restrict (Ioi (0 : ℝ))]
    (fun t => ∫ a in Ioc 0 t, fixedKernel (t-a) • f a) :=
  sourceOperator_ae_causal_setIntegral f
example (f : H) : sourceOperator f =ᵐ[volume.restrict (Ioi (0 : ℝ))]
    (fun t => ∫ a in (0 : ℝ)..t, (fixedKernel (t-a) : ℂ) * f a) :=
  sourceOperator_ae_causal_integral f
example (f : H) : actualFull (zeroExtension f) =ᵐ[volume.restrict (Iic (0 : ℝ))]
    (fun _ => 0) := full_sourceOperator_causal f
example (f : H) : zeroExtension (sourceOperator f) = actualFull (zeroExtension f) :=
  zeroExtension_sourceOperator f
end
end OperatorIntegratedStatements5

namespace OperatorIntegratedStatements6
namespace PositiveResolventLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent

open ContinuousLinearMap

open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]

example (S : E →L[ℂ] E) (α : ℝ) : positiveShift S α = S + (α : ℂ) • (1 : E →L[ℂ] E) := rfl

example (S : E →L[ℂ] E) (α : ℝ) : positiveResolvent S α = Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) := rfl

example (S : E →L[ℂ] E) (α : ℝ) (r : E) : regularizedMass S α r = α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re := rfl

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveShift S α).IsPositive := by
  apply positiveShift_isPositive <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (x : E) :
    α * ‖x‖ ^ 2 ≤ (inner ℂ (positiveShift S α x) x).re := by
  exact positiveShift_coercive S hS α x

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : IsUnit (positiveShift S α) := by
  apply positiveShift_isUnit <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveShift S α * positiveResolvent S α = 1 := by
  apply positiveShift_mul_resolvent <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveResolvent S α * positiveShift S α = 1 := by
  apply resolvent_mul_positiveShift <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (x : E) :
    positiveShift S α (positiveResolvent S α x) = x := by
  apply positiveShift_resolvent_apply <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : ‖positiveResolvent S α‖ ≤ 1 / α := by
  apply positiveResolvent_norm_le <;> assumption

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveResolvent S α).IsPositive := by
  apply positiveResolvent_isPositive <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    positiveResolvent S α - positiveResolvent T α =
      positiveResolvent S α * (T - S) * positiveResolvent T α := by
  apply positiveResolvent_sub <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    ‖positiveResolvent S α - positiveResolvent T α‖ ≤ ‖S - T‖ / α ^ 2 := by
  apply positiveResolvent_sub_norm_le <;> assumption

example (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |regularizedMass S α r - regularizedMass T α r| ≤ ‖r‖ ^ 2 * ‖S - T‖ / α := by
  apply regularizedMass_sub_abs_le <;> assumption

example
    (S T : FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H →L[ℂ]
      FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    |regularizedMass S α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector -
      regularizedMass T α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector| ≤
      ‖S - T‖ / (2 * α) := by
  apply reference_regularizedMass_sub_abs_le <;> assumption

example (S T : E →L[ℂ] E) (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re -
      α * (inner ℂ r (Ring.inverse (T + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re| ≤
      ‖r‖ ^ 2 * ‖S - T‖ / α := by
  exact regularizedMass_sub_abs_le S T hS hT α hα r

end PositiveResolventLiteral
end OperatorIntegratedStatements6

namespace OperatorIntegratedStatements7
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel HalfLineOperator TimeKernelTruncation PositiveResolvent
open SourceResolventTruncation
noncomputable section
example (α : ℝ) : sourceMass α = α *
    (inner ℂ referenceVector
      (Ring.inverse (sourceEnergy + (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re := rfl
example (N α : ℝ) : truncatedMass N α = α *
    (inner ℂ referenceVector
      (Ring.inverse (truncatedEnergy N + (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re := rfl
example (α : ℝ) (hα : 0 < α) :
    IsUnit (sourceEnergy + (α : ℂ) • (1 : H →L[ℂ] H)) := sourceShift_isUnit α hα
example (N α : ℝ) (hα : 0 < α) :
    IsUnit (truncatedEnergy N + (α : ℂ) • (1 : H →L[ℂ] H)) := truncatedShift_isUnit N α hα
example (α : ℝ) (hα : 0 < α) : 0 ≤ sourceMass α := sourceMass_nonneg α hα
example (N α : ℝ) (hα : 0 < α) : 0 ≤ truncatedMass N α := truncatedMass_nonneg N α hα
example (α : ℝ) (hα : 0 < α) : sourceMass α ≤ (1 / 2 : ℝ) := sourceMass_le_half α hα
example (N α : ℝ) (hα : 0 < α) : truncatedMass N α ≤ (1 / 2 : ℝ) :=
  truncatedMass_le_half N α hα
example (N : ℝ) (hN : 2 ≤ N) (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass N α| ≤
      2 * kernelMass * derivativeBudget * Real.exp ((1-N)/2) / α :=
  mass_sub_abs_le N hN α hα
example (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass (max 2 (1 + 4 * Real.log (1/α))) α| ≤
      2 * kernelMass * derivativeBudget * α := diagonal_mass_sub_abs_le α hα
example : Tendsto (fun α : ℝ =>
    |sourceMass α - truncatedMass (max 2 (1 + 4 * Real.log (1/α))) α|)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := diagonal_mass_sub_abs_tendsto_zero
example : Tendsto (fun α : ℝ =>
    sourceMass α - truncatedMass (max 2 (1 + 4 * Real.log (1/α))) α)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := diagonal_mass_sub_tendsto_zero
end
end OperatorIntegratedStatements7

namespace OperatorIntegratedStatements8
namespace PositiveResolventKernelLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel

open ContinuousLinearMap

open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]

example (B : E →L[ℂ] E) (hB : B.IsPositive)
    (r e : E) (he : e ≠ 0) (hBe : B e = e) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ (inner ℂ r (B r)).re := positive_fixed_direction_le B hB r e he hBe

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (e : E) (he : S e = 0) :
    ((α : ℂ) • positiveResolvent S α) e = e := regularized_resolvent_kernel_apply S hS α hα e he

example (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ regularizedMass S α r := kernel_witness_regularizedMass_le S hS α hα r e he hSe

example (S : E →L[ℂ] E) (hS : S.IsPositive) (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤
      α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re :=
  kernel_witness_regularizedMass_le S hS α hα r e he hSe

end PositiveResolventKernelLiteral
end OperatorIntegratedStatements8

namespace OperatorIntegratedStatements9
namespace FixedSourceResolventFloorLiteral
open FormalResearch.RiemannHypothesis.SourceComparison FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential

open PositiveResolventKernel SourceResolventTruncation

example (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := sourceMass_kernel_overlap_le u hu hTu α hα

example (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := occurrence_sourceMass_floor o ho α hα

example (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := nontrivial_sourceMass_uniform_positive_floor ρ hρ hρre

example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤
      α * (inner ℂ referenceVector
        (Ring.inverse (sourceOperator.comp sourceOperator.adjoint +
          (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re :=
  occurrence_sourceMass_floor o ho α hα

end FixedSourceResolventFloorLiteral
end OperatorIntegratedStatements9
```
