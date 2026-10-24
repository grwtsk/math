# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PFRProfile.Variant88f5977ae4bbd11b1561092feea6ab097a356baa12db6264dffaeaf9407e7c7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `175495dd42920de5389d3a081822814b67400ac7` · SHA-256 `0b6060b3d1774a9e216012d9b8e4fc5c1a9e6565c0352c0b941ca58d2e9b5219`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParameterDependency.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ParameterDependency.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","mathematical_subject":"Computation.DataStructures","original_sha256":"70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Tao/PFRProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projects.Profile

/-! # Tao PFR blueprint-driven profile -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParameterDependency.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17

namespace Mathematics.Projects.Tao

structure ParameterDependency where
  parameterId : StableId
  downstreamDeclarationIds : List StableId
  downstreamBlueprintIds : List StableId
  deriving DecidableEq, Repr

structure PFRProfile where
  base : Projects.ProjectProfile
  blueprintArtifactIds : List StableId
  blueprintGraphIds : List StableId
  theoremBlueprintMapIds : List StableId
  issueIds : List StableId
  paperReferenceIds : List StableId
  parameterDependencies : List ParameterDependency
  stageIds : List StableId
  workflowIds : List StableId
  mathlibMigrationIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
```
