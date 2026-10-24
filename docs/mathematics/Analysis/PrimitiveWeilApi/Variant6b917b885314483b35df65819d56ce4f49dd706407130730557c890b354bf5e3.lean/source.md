# Complete source: GRWTSK.Analysis.PrimitiveWeilApi.Variant6b917b885314483b35df65819d56ce4f49dd706407130730557c890b354bf5e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e88c235d09b63d747fab8ce032c93b7c913928af` · SHA-256 `fdb8eec65c6004b9370fd955a221080e6d2f2a36ea7c94e860f1106bfea43de9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MathlibLFunctionAdapters.Variante747afaf0b30fd1fce29632ed5f83661d161ebdd3f259531b04efc03c2766946","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e747afaf0b30fd1fce29632ed5f83661d161ebdd3f259531b04efc03c2766946","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MathlibLFunctionAdapters.Variante747afaf0b30fd1fce29632ed5f83661d161ebdd3f259531b04efc03c2766946","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e747afaf0b30fd1fce29632ed5f83661d161ebdd3f259531b04efc03c2766946","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Audit/PrimitiveWeilApi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
import Surface.Core.DirichletGRH.FunctionalEquation
import Surface.Core.ConductorThreeCompletedL
import Surface.Core.ComplexAnalysis.ResidueAPI
import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.Analysis.MellinTransform
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier

/-!
# Primitive-Weil API probes

Compile-time probes for the pinned mathlib and Surface normalizations used by
`PrimitiveWeilPositivity_DESIGN.md`.  This file introduces no declaration and
asserts no positivity, explicit-formula, RH, or GRH theorem.
-/


namespace GRWTSK.Analysis.MathlibLFunctionAdapters.Variante747afaf0b30fd1fce29632ed5f83661d161ebdd3f259531b04efc03c2766946

#check DirichletCharacter.gammaFactor
#check DirichletCharacter.completedLFunction
#check DirichletCharacter.completedLFunction_modOne_eq
#check DirichletCharacter.LFunction_modOne_eq
#check DirichletCharacter.LFunction_eq_completed_div_gammaFactor
#check DirichletCharacter.IsPrimitive.completedLFunction_one_sub
#check DirichletCharacter.rootNumber
#check Surface.Core.DirichletGRH.canonicalCompletedLFunction
#check Surface.Core.DirichletGRH.poleRemovedLFunction
#check Surface.Core.DirichletGRH.LFunction_zero_reflect
#check Surface.Core.DirichletGRH.primitive_LFunction_reflects_zero

#check Complex.Gammaℝ_ne_zero_of_re_pos
#check completedRiemannZeta₀
#check differentiable_completedZeta₀
#check completedRiemannZeta₀_one_sub
#check completedRiemannZeta_eq
#check RiemannHypothesis
#check ArithmeticFunction.vonMangoldt
#check mellin
#check VectorFourier.fourierIntegral
#check Real.fourierChar
#check HasCompactSupport.toSchwartzMap
#check SchwartzMap.decay
#check SchwartzMap.fourier_coe
#check Real.fourier_eq'
#check iteratedDeriv_mul
#check MeasureTheory.integral_mul_deriv_eq_deriv_mul_of_integrable

#check MeasureTheory.convolution
#check ContinuousLinearMap.mul
#check MeasureTheory.convolution_def
#check MeasureTheory.support_convolution_subset
#check HasCompactSupport.convolution
#check HasCompactSupport.of_support_subset_isCompact
#check HasCompactSupport.contDiff_convolution_right
#check ContDiff.neg
#check MeasureTheory.integral_add_right_eq_self
#check MeasureTheory.integral_neg_eq_self
#check RCLike.conj_mul
#check RCLike.conj_conj

#check MeromorphicOn.divisor
#check MeromorphicOn.divisor_apply
#check MeromorphicOn.divisor_support_finite_of_subset
#check AnalyticAt.analyticOrderAt_eq_natCast
#check AnalyticAt.tendsto_mul_logDeriv_simple_zero
#check meromorphicOrderAt_eq_int_iff
#check Complex.integral_boundary_rect_eq_zero_of_differentiableOn
#check Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn
#check Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
#check circleIntegral.integral_sub_center_inv
#check DirichletCharacter.LFunction_ne_zero_of_one_le_re
#check Surface.Core.ConductorThreeCompletedL.conductorThreeXiDivisor
```
