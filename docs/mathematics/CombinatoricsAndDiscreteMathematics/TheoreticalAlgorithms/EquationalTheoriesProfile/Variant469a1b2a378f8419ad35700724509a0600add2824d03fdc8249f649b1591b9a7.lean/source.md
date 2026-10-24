# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EquationalTheoriesProfile.Variant469a1b2a378f8419ad35700724509a0600add2824d03fdc8249f649b1591b9a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aebed17809ca8e98bf90afde1870f1fcc40e280` · SHA-256 `a40be94fc220d569a238ad290b1f3f3ff74defd5f156e6c32b99abd9215e131c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImplicationAuthority.Variant33200dc48da17387c87db93bc25a2bc72fb3f16535b173b9ae98ca495ab99e0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33200dc48da17387c87db93bc25a2bc72fb3f16535b173b9ae98ca495ab99e0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ImplicationAuthority.Variant33200dc48da17387c87db93bc25a2bc72fb3f16535b173b9ae98ca495ab99e0f","mathematical_subject":"Computation.DataStructures","original_sha256":"33200dc48da17387c87db93bc25a2bc72fb3f16535b173b9ae98ca495ab99e0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Tao/EquationalTheoriesProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projects.Profile

/-! # Tao Equational Theories finite-search profile -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImplicationAuthority.Variant33200dc48da17387c87db93bc25a2bc72fb3f16535b173b9ae98ca495ab99e0f

namespace Mathematics.Projects.Tao

inductive ImplicationAuthority
  | leanProved
  | certifiedTransitive
  | countermodelDisproved
  | externalProverCandidate
  | conjectured
  | unresolved
  deriving DecidableEq, Repr

structure ImplicationRecord where
  sourceEquationId : StableId
  targetEquationId : StableId
  authority : ImplicationAuthority
  derivationPath : List StableId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

structure EquationalTheoriesProfile where
  base : Projects.ProjectProfile
  equationIds : List StableId
  dualityRecordIds : List StableId
  implications : List ImplicationRecord
  countermodelIds : List StableId
  closureArtifactIds : List StableId
  reductionArtifactIds : List StableId
  externalProverArtifactIds : List StableId
  generationScriptIds : List StableId
  dashboardArtifactIds : List StableId
  proofBasisIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
```
