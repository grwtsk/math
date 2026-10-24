# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Plurality.Variant01f4461ca065ba8012bb9c8edb6c0a3cc413fe7020ebb3ced7873fa02d0787d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbb5976b0df549402e0a1437713db3bff52000d0` · SHA-256 `d34a79dc7426c56f4bc5587cd089054d4eebfc47248df0703feb403322564bde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OracleFamily.Variant86e6aa14c2fe10a5c9b36d5c5851ddb24a476c63d6362d0e705bcb9144467c9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86e6aa14c2fe10a5c9b36d5c5851ddb24a476c63d6362d0e705bcb9144467c9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OracleFamily.Variant86e6aa14c2fe10a5c9b36d5c5851ddb24a476c63d6362d0e705bcb9144467c9c","mathematical_subject":"Computation.DataStructures","original_sha256":"86e6aa14c2fe10a5c9b36d5c5851ddb24a476c63d6362d0e705bcb9144467c9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/Plurality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PointUniverse
import Mathematics.Oracle.Jurisdiction

/-!
# Oracle plurality over one point universe

Many oracles may interpret the same mathematics under different jurisdictions.
They do not receive private semantic identity spaces.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OracleFamily.Variant86e6aa14c2fe10a5c9b36d5c5851ddb24a476c63d6362d0e705bcb9144467c9c

namespace Mathematics.Oracle

structure OracleFamily where
  familyId : StableId
  pointUniverse : Concept.PointUniverse
  jurisdictions : List Jurisdiction
  jurisdiction_ids_unique :
    (jurisdictions.map Jurisdiction.jurisdictionId).Nodup
  sharedPointUniverse :
    ∀ jurisdiction ∈ jurisdictions,
      jurisdiction.pointUniverseId =
        pointUniverse.universeId
  jurisdictionsValid :
    ∀ jurisdiction ∈ jurisdictions,
      jurisdiction.Valid
  familyDigest : Digest

theorem OracleFamily.no_private_point_universe
    (family : OracleFamily)
    {jurisdiction : Jurisdiction}
    (member : jurisdiction ∈ family.jurisdictions) :
    jurisdiction.pointUniverseId =
      family.pointUniverse.universeId :=
  family.sharedPointUniverse jurisdiction member

theorem OracleFamily.jurisdiction_valid
    (family : OracleFamily)
    {jurisdiction : Jurisdiction}
    (member : jurisdiction ∈ family.jurisdictions) :
    jurisdiction.Valid :=
  family.jurisdictionsValid jurisdiction member

end Mathematics.Oracle
```
