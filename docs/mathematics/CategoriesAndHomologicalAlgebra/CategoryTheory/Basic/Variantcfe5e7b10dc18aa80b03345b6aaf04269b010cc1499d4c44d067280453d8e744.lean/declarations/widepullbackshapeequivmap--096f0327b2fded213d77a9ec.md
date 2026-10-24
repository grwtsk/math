# widePullbackShapeEquivMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56bd03c046d1965658ca03f4f99306bc076ac852ee8ed0e7d06a52f580378eed",
  "kind": "def",
  "lexical_name": "widePullbackShapeEquivMap",
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
  "slug": "widepullbackshapeequivmap--096f0327b2fded213d77a9ec",
  "source": {
    "blob": "df5d7abc334aa2eec3d64260a30edc110c7722aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 450,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcfe5e7b10dc18aa80b03345b6aaf04269b010cc1499d4c44d067280453d8e744.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:096f0327b2fded213d77a9ecf74c5cefe89241fde29f1e5db7e84b8e9175b377",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcfe5e7b10dc18aa80b03345b6aaf04269b010cc1499d4c44d067280453d8e744.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56bd03c046d1965658ca03f4f99306bc076ac852ee8ed0e7d06a52f580378eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def widePullbackShapeEquivMap {J : Type*} (x y : WidePullbackShape J) :
    (x ⟶ y) ≃ (widePullbackShapeEquivObj x ⟶ widePullbackShapeEquivObj y) where
  toFun
  | .term _ => PUnit.unit
  | .id _ => 𝟙 _
  invFun f := match x, y with
  | some x, some y =>
    cast (by
        have eq : x = y := f.eq
        rw [eq]
        rfl) (Hom.id (some y))
  | none, some y => by cases f
  | some x, none => .term x
  | none, none => .id none
  left_inv f := by apply Subsingleton.allEq
  right_inv f := match x, y with
  | some x, some y => Subsingleton.allEq _ _
  | none, some y => by cases f
  | some x, none
  | none, none => rfl

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- In the case of a discrete category, `WithTerminal` is the same category as `WidePullbackShape`

TODO: Should we simply replace `WidePullbackShape J` with `WithTerminal (Discrete J)` everywhere? -/
@[simps! functor_obj inverse_obj]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcfe5e7b10dc18aa80b03345b6aaf04269b010cc1499d4c44d067280453d8e744.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcfe5e7b10dc18aa80b03345b6aaf04269b010cc1499d4c44d067280453d8e744.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df5d7abc334aa2eec3d64260a30edc110c7722aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
