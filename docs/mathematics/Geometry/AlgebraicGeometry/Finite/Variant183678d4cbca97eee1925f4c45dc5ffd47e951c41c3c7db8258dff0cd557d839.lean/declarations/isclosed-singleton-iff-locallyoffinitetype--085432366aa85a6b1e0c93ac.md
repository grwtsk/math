# isClosed_singleton_iff_locallyOfFiniteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb824d7f-415e-e5f0-bc33-98d173983d13",
  "kind": "lemma",
  "lexical_name": "isClosed_singleton_iff_locallyOfFiniteType",
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
  "slug": "isclosed-singleton-iff-locallyoffinitetype--085432366aa85a6b1e0c93ac",
  "source": {
    "blob": "02a6da9a8138f2b01e8850d9c9c8ee2d6f2c5fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 174,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:085432366aa85a6b1e0c93ac57d32aa5c4bfd29afa7e0478248374c16994a078",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb824d7f-415e-e5f0-bc33-98d173983d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_singleton_iff_locallyOfFiniteType {X : Scheme.{u}} [JacobsonSpace X] {x : X} :
    IsClosed ({x} : Set X) ↔ LocallyOfFiniteType (X.fromSpecResidueField x) := by
  constructor
  · exact fun H ↦ have := isClosed_singleton_iff_isClosedImmersion.mp H; inferInstance
  · intro H
    simpa using (X.fromSpecResidueField x).closePoints_subset_preimage_closedPoints
      (IsLocalRing.isClosed_singleton_closedPoint _)

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant183678d4cbca97eee1925f4c45dc5ffd47e951c41c3c7db8258dff0cd557d839.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02a6da9a8138f2b01e8850d9c9c8ee2d6f2c5fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
