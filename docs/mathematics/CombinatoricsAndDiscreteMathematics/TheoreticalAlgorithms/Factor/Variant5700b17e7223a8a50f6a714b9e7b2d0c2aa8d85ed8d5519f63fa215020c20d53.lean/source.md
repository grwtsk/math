# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Factor.Variant5700b17e7223a8a50f6a714b9e7b2d0c2aa8d85ed8d5519f63fa215020c20d53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b355ac104741eec0bf69c7416521bb41882eb42` · SHA-256 `f2b9cfbc851d41285ec956d8d2ba1a0970073b674967d1d058dfb22f800c7a64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FactorRow.Variant245dd74c351adbdf36b5f2de818ed14a3abebb7977292e9a9c3333567decf435","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"245dd74c351adbdf36b5f2de818ed14a3abebb7977292e9a9c3333567decf435","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FactorRow.Variant245dd74c351adbdf36b5f2de818ed14a3abebb7977292e9a9c3333567decf435","mathematical_subject":"Computation.DataStructures","original_sha256":"245dd74c351adbdf36b5f2de818ed14a3abebb7977292e9a9c3333567decf435","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Embedding/Factor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Embedding.Receipt

/-! # Exact finite factors imported from frozen embedding snapshots -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FactorRow.Variant245dd74c351adbdf36b5f2de818ed14a3abebb7977292e9a9c3333567decf435

namespace Mathematics.Embedding

open Mathematics

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


end Mathematics.Embedding
```
