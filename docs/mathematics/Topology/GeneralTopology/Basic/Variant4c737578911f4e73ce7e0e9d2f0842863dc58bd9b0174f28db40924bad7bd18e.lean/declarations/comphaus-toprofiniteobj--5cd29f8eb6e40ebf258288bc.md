# CompHaus.toProfiniteObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:993101eed014c0308bcabf260325de8400d853f84fc0a9975c00fa8fa23dde68",
  "kind": "def",
  "lexical_name": "CompHaus.toProfiniteObj",
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
  "slug": "comphaus-toprofiniteobj--5cd29f8eb6e40ebf258288bc",
  "source": {
    "blob": "6059ce652699604f57cc70e80eb73de5985c00be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cd29f8eb6e40ebf258288bc5f5bbf62709250aa2117fb664f11164928708041",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:993101eed014c0308bcabf260325de8400d853f84fc0a9975c00fa8fa23dde68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompHaus.toProfiniteObj (X : CompHaus.{u}) : Profinite.{u} where
  toTop := ↧(ConnectedComponents X)
  is_compact := Quotient.compactSpace
  is_hausdorff := ConnectedComponents.t2
  prop := ConnectedComponents.totallyDisconnectedSpace

set_option backward.isDefEq.respectTransparency false in
/-- (Implementation) The bijection of homsets to establish the reflective adjunction of Profinite
spaces in compact Hausdorff spaces.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6059ce652699604f57cc70e80eb73de5985c00be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
