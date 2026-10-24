# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuxiliaryProfile.Variant85a157abe218df3eb1a7c2d422f46d843a1d81a71f41bd3cf283797c41e9e3e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `310900decaa0a4c10cbce955fa603d388b38311e` · SHA-256 `26906b441ca3486c90c2418a0ef1f9c88911cb56cb282ec295bf7ffb2d04bf25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuxiliaryFiberKind.Varianta974c7b631fd5a007ea7fd7c376e27b5bcec3dcd228865df119928936fd76901","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a974c7b631fd5a007ea7fd7c376e27b5bcec3dcd228865df119928936fd76901","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuxiliaryFiberKind.Varianta974c7b631fd5a007ea7fd7c376e27b5bcec3dcd228865df119928936fd76901","mathematical_subject":"Computation.DataStructures","original_sha256":"a974c7b631fd5a007ea7fd7c376e27b5bcec3dcd228865df119928936fd76901","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Tao/AuxiliaryProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projects.Profile

/-! # Tao-associated auxiliary project fibers -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuxiliaryFiberKind.Varianta974c7b631fd5a007ea7fd7c376e27b5bcec3dcd228865df119928936fd76901

namespace Mathematics.Projects.Tao

inductive AuxiliaryFiberKind
  | problemRegistry
  | estimateComputation
  | optimization
  | researchLog
  deriving DecidableEq, Repr

structure AuxiliaryProfile where
  base : Projects.ProjectProfile
  kind : AuxiliaryFiberKind
  candidateStatementIds : List StableId
  parameterDataIds : List StableId
  benchmarkIds : List StableId
  counterexampleSearchIds : List StableId
  theoremAuthorityExcluded : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
```
