# mapPullbackConeLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fc383d00e2bda77c9667b1910d9bad031c946be70e1be1aa29e904fbdffc7c6",
  "kind": "def",
  "lexical_name": "mapPullbackConeLike",
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
  "slug": "mappullbackconelike--3132690fad0ec40cc80dd199",
  "source": {
    "blob": "a2af706dfd90494678ab963686037e3fb42e6413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variantf826caa3ba3a9e3b3b66d315f2781aea54eacda3060b68de253df1ddebe353d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3132690fad0ec40cc80dd199e4348d9e431668a4b4ed4d5deb694d0a3acf6ba1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variantf826caa3ba3a9e3b3b66d315f2781aea54eacda3060b68de253df1ddebe353d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fc383d00e2bda77c9667b1910d9bad031c946be70e1be1aa29e904fbdffc7c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapPullbackConeLike
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (K : PullbackConeLike C) : PullbackConeLike D where
  left := F.obj K.left
  right := F.obj K.right
  base := F.obj K.base
  apex := F.obj K.apex
  fst := F.map K.fst
  snd := F.map K.snd
  leftLeg := F.map K.leftLeg
  rightLeg := F.map K.rightLeg
  commutes := by
    rw [← F.map_comp, ← F.map_comp, K.commutes]

/-- A chosen collection of pullback-shaped cones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variantf826caa3ba3a9e3b3b66d315f2781aea54eacda3060b68de253df1ddebe353d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variantf826caa3ba3a9e3b3b66d315f2781aea54eacda3060b68de253df1ddebe353d5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2af706dfd90494678ab963686037e3fb42e6413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
