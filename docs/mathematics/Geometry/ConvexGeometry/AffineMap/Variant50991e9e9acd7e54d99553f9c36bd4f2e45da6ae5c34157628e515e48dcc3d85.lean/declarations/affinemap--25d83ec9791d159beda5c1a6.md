# AffineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88d761658af9813ce44f6b8d391906297b2a31f8d241bb0e8bbfafcc6e0bd9b1",
  "kind": "structure",
  "lexical_name": "AffineMap",
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
  "slug": "affinemap--25d83ec9791d159beda5c1a6",
  "source": {
    "blob": "410f1a6b7d3dd5f2a29635257deeab8ca582aa04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25d83ec9791d159beda5c1a6e0f532b0d6ebd93911d9dabf3d47f62c0b64e82f",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88d761658af9813ce44f6b8d391906297b2a31f8d241bb0e8bbfafcc6e0bd9b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected structure AffineMap
    (X Y : Type*) [ConvexSpace R X] [ConvexSpace R Y] where
  /-- The underlying map of an affine map between convex spaces. -/
  toFun : X → Y
  isAffineMap_toFun : IsAffineMap R toFun := by fun_prop

namespace AffineMap
variable {X Y Z T : Type*} [ConvexSpace R X] [ConvexSpace R Y] [ConvexSpace R Z] [ConvexSpace R T]
  {f g : ConvexSpace.AffineMap R X Y}

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410f1a6b7d3dd5f2a29635257deeab8ca582aa04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
