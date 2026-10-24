# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Factor.Variantc4ca0d7ac737e159b62ca491bb51a5b4bc2ad8a6a10d8204c3d101a97e8622ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee044d4278fa51117cd20bbb2a3fa7c222869b70` · SHA-256 `529b273f844f7864a6dcfc83eda898f3ad7f7b11a3a3b2bb417d36aa41d4487b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FactorRow.Variant1606379a2e956b90a14e6952a4a9d1ddf074815338571fd0692b305fdc2e3a8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1606379a2e956b90a14e6952a4a9d1ddf074815338571fd0692b305fdc2e3a8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FactorRow.Variant1606379a2e956b90a14e6952a4a9d1ddf074815338571fd0692b305fdc2e3a8a","mathematical_subject":"Computation.DataStructures","original_sha256":"1606379a2e956b90a14e6952a4a9d1ddf074815338571fd0692b305fdc2e3a8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Embedding/Factor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Embedding.Receipt

/-! # Exact finite factors imported from frozen embedding snapshots -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FactorRow.Variant1606379a2e956b90a14e6952a4a9d1ddf074815338571fd0692b305fdc2e3a8a

namespace MathDiscovery.Embedding

open MathDiscovery

structure FactorRow where
  entityId : EntityId
  numerators : List Int
  deriving DecidableEq

namespace FactorRow

def ValidFor (dimension : Nat) (row : FactorRow) : Prop :=
  row.entityId.Valid ∧ row.numerators.length = dimension

end FactorRow

/-- A learned factor is advisory and is identified independently of the
intrinsic kernel profile. Its exact Gram contribution is obtained from the
integer rows and the shared dyadic denominator. -/
structure Factor where
  profileId : KernelProfileId
  intrinsicProfileId : KernelProfileId
  snapshotDigest : Digest
  dimension : Nat
  denominatorBits : Nat
  rows : List FactorRow
  factorDigest : Digest
  advisoryOnly : Bool := true
  deriving DecidableEq

namespace Factor

def Valid (factor : Factor) : Prop :=
  factor.profileId.Valid ∧
  factor.intrinsicProfileId.Valid ∧
  factor.snapshotDigest.Valid ∧
  factor.dimension > 0 ∧
  factor.denominatorBits > 0 ∧
  factor.rows ≠ [] ∧
  (factor.rows.map (·.entityId)).Nodup ∧
  (∀ row ∈ factor.rows, row.ValidFor factor.dimension) ∧
  factor.factorDigest.Valid ∧
  factor.advisoryOnly = true

end Factor


end MathDiscovery.Embedding
```
