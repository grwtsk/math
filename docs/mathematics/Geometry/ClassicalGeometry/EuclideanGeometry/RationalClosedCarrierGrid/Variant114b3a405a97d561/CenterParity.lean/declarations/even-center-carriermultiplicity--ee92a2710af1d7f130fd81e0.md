# even_center_carrierMultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45e5f125-eb38-eee2-b080-9f93392e9599",
  "kind": "theorem",
  "lexical_name": "even_center_carrierMultiplicity",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "even-center-carriermultiplicity--ee92a2710af1d7f130fd81e0",
  "source": {
    "blob": "68a2aad2b71d8d945b7adf8ca8ab27247d7cf025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee92a2710af1d7f130fd81e0fa2b238eb198dcec28d842e93dadaa52d87a58f1",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45e5f125-eb38-eee2-b080-9f93392e9599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_center_carrierMultiplicity (half : Nat) :
    carrierMultiplicity (2 * (half + 1)) { x := center, y := center } = 4 := by
  unfold carrierMultiplicity
  rw [even_center_axisCarriers]
  have unequal : evenCenterLeft half ≠ evenCenterRight half := by
    intro equality
    have values : half = half + 1 := by
      simpa [evenCenterLeft, evenCenterRight] using congrArg Fin.val equality
    omega
  simp [unequal]


/-- On an odd grid, the unique supporting center cell is also the unique
origin match. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a2aad2b71d8d945b7adf8ca8ab27247d7cf025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
