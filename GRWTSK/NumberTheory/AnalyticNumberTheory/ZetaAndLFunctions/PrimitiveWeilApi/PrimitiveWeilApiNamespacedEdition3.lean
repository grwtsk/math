-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Varianteb33c0e18e0239b66829f5f4e4456f7587821cf8aba50e519024716559bc1b17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb33c0e18e0239b66829f5f4e4456f7587821cf8aba50e519024716559bc1b17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.MathlibLFunctionAdapters.Varianteb33c0e18e0239b66829f5f4e4456f7587821cf8aba50e519024716559bc1b17","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"eb33c0e18e0239b66829f5f4e4456f7587821cf8aba50e519024716559bc1b17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:3d314d13cc68fa13166d04eb/workspace/Audit/PrimitiveWeilApi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
import Surface.Core.DirichletGRH.FunctionalEquation
import Surface.Core.ConductorThreeCompletedL
import Surface.Core.ComplexAnalysis.LogDerivativeResidue
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


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Varianteb33c0e18e0239b66829f5f4e4456f7587821cf8aba50e519024716559bc1b17

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
#check DirichletCharacter.LFunction_ne_zero_of_one_le_re
#check Surface.Core.ConductorThreeCompletedL.conductorThreeXiDivisor
