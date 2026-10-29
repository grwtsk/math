-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Variant21c129814fbeba7511a3a9eba029e327bbac9b2e92c01917cb0bc36f688003ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21c129814fbeba7511a3a9eba029e327bbac9b2e92c01917cb0bc36f688003ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.MathlibLFunctionAdapters.Variant21c129814fbeba7511a3a9eba029e327bbac9b2e92c01917cb0bc36f688003ed","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"21c129814fbeba7511a3a9eba029e327bbac9b2e92c01917cb0bc36f688003ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0317370bd6314ec9df3d1e98/workspace/Audit/PrimitiveWeilApi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
import Surface.Core.DirichletGRH.FunctionalEquation
import Surface.Core.ConductorThreeCompletedL
import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.Analysis.MellinTransform

/-!
# Primitive-Weil API probes

Compile-time probes for the pinned mathlib and Surface normalizations used by
`PrimitiveWeilPositivity_DESIGN.md`.  This file introduces no declaration and
asserts no positivity, explicit-formula, RH, or GRH theorem.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Variant21c129814fbeba7511a3a9eba029e327bbac9b2e92c01917cb0bc36f688003ed

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
#check DirichletCharacter.LFunction_ne_zero_of_one_le_re
#check Surface.Core.ConductorThreeCompletedL.conductorThreeXiDivisor
