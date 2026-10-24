# Complete source: GRWTSK.Analysis.PrimitiveWeilApi.Variant3565987debe31ae7197e49a52efba6f1a397e5ea3169b6ab5e7cae12f5249ce9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e8a682e883f2c38e2db979c501eadaad5e7702b` · SHA-256 `a0b4a07b3b911dea36c39a69d1b81e17e59a3b3924ca8ca9c5f63adde8337249`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MathlibLFunctionAdapters.Variantabd5227d06a940be6b4b22bb984d73bc8797128db96885f384cf87ab940dea2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abd5227d06a940be6b4b22bb984d73bc8797128db96885f384cf87ab940dea2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MathlibLFunctionAdapters.Variantabd5227d06a940be6b4b22bb984d73bc8797128db96885f384cf87ab940dea2c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"abd5227d06a940be6b4b22bb984d73bc8797128db96885f384cf87ab940dea2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0317a4625b7fb52a4f466550/workspace/Audit/PrimitiveWeilApi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.MathlibLFunctionAdapters.Variantabd5227d06a940be6b4b22bb984d73bc8797128db96885f384cf87ab940dea2c

#check DirichletCharacter.gammaFactor
#check DirichletCharacter.completedLFunction
#check DirichletCharacter.LFunction_eq_completed_div_gammaFactor
#check DirichletCharacter.IsPrimitive.completedLFunction_one_sub
#check DirichletCharacter.rootNumber
#check Surface.Core.DirichletGRH.canonicalCompletedLFunction
#check Surface.Core.DirichletGRH.poleRemovedLFunction
#check Surface.Core.DirichletGRH.LFunction_zero_reflect
#check Surface.Core.DirichletGRH.primitive_LFunction_reflects_zero

#check Complex.Gammaℝ_ne_zero_of_re_pos
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
#check MeasureTheory.integral_add_right_eq_self
#check MeasureTheory.integral_neg_eq_self

#check MeromorphicOn.divisor
#check Surface.Core.ConductorThreeCompletedL.conductorThreeXiDivisor
```
