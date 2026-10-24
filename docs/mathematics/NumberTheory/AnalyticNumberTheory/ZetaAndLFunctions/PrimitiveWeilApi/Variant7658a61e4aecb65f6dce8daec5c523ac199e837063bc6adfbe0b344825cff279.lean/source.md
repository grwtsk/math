# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveWeilApi.Variant7658a61e4aecb65f6dce8daec5c523ac199e837063bc6adfbe0b344825cff279

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `374b067ae6fbebb34daea43a3820f6ea7ccf6bc5` · SHA-256 `68811fc2eadfc7f3f80740e16d3943d31869b8135ba6d1f68d280c3ad11fbd2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Variant3317079d8647022abbbfea3fb4254ccdff16bf87a778cff5f7a95c787209dd9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3317079d8647022abbbfea3fb4254ccdff16bf87a778cff5f7a95c787209dd9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.MathlibLFunctionAdapters.Variant3317079d8647022abbbfea3fb4254ccdff16bf87a778cff5f7a95c787209dd9e","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"3317079d8647022abbbfea3fb4254ccdff16bf87a778cff5f7a95c787209dd9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:372da892baf41bb05f6104f8/workspace/Audit/PrimitiveWeilApi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Variant3317079d8647022abbbfea3fb4254ccdff16bf87a778cff5f7a95c787209dd9e

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
#check HasCompactSupport.contDiff_convolution_right

#check MeromorphicOn.divisor
#check Surface.Core.ConductorThreeCompletedL.conductorThreeXiDivisor
```
