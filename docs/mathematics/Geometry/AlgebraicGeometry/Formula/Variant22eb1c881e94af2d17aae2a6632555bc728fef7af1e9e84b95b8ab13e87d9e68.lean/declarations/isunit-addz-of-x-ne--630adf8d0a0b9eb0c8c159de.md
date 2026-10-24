# isUnit_addZ_of_X_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a97aa80-42ee-4b44-edc7-2eb9250606c5",
  "kind": "lemma",
  "lexical_name": "isUnit_addZ_of_X_ne",
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
  "slug": "isunit-addz-of-x-ne--630adf8d0a0b9eb0c8c159de",
  "source": {
    "blob": "4a8f4c270e03d36756a9c4a314108d1ece1e23f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 453,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630adf8d0a0b9eb0c8c159def221643bafa37ec49103d79056cdcd8357e124f9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a97aa80-42ee-4b44-edc7-2eb9250606c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_addZ_of_X_ne {P Q : Fin 3 → F} (hx : P x * Q z ^ 2 ≠ Q x * P z ^ 2) :
    IsUnit <| addZ P Q :=
  (addZ_ne_zero_of_X_ne hx).isUnit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8f4c270e03d36756a9c4a314108d1ece1e23f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
