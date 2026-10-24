# map_dblY

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7ba8c90-07c5-7f35-091a-9e8952feb2fe",
  "kind": "lemma",
  "lexical_name": "map_dblY",
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
  "slug": "map-dbly--5fba8f7ce0cf5eeb3fe213df",
  "source": {
    "blob": "4a8f4c270e03d36756a9c4a314108d1ece1e23f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 743,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fba8f7ce0cf5eeb3fe213df22b5bf45af25342e66d1bfe7485e201ba5aab357",
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

Occurrence: `result:e7ba8c90-07c5-7f35-091a-9e8952feb2fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_dblY : (W'.map f).toJacobian.dblY (f ∘ P) = f (W'.dblY P) := by
  simp only [dblY, negY_eq, map_negDblY, map_dblX, map_dblZ]
  map_simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8f4c270e03d36756a9c4a314108d1ece1e23f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
