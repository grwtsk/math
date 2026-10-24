# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Plurality.Variant86e6aa14c2fe10a5c9b36d5c5851ddb24a476c63d6362d0e705bcb9144467c9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1def6904390e1db8846f646c9e43c07c18f1260a` · SHA-256 `86e6aa14c2fe10a5c9b36d5c5851ddb24a476c63d6362d0e705bcb9144467c9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PointUniverse
import Mathematics.Oracle.Jurisdiction

/-!
# Oracle plurality over one point universe

Many oracles may interpret the same mathematics under different jurisdictions.
They do not receive private semantic identity spaces.
-/

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
