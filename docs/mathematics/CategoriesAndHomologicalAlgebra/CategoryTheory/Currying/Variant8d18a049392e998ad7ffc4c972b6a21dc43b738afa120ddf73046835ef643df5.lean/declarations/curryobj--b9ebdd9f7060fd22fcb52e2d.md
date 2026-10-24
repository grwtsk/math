# curryObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a816d34c891434be5b14b628a938328c12082a9e90f264413c6022401dcb497",
  "kind": "def",
  "lexical_name": "curryObj",
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
  "slug": "curryobj--b9ebdd9f7060fd22fcb52e2d",
  "source": {
    "blob": "c5078d2e543afb43ddb161ea3b4f04312349a7a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9ebdd9f7060fd22fcb52e2deaf4d25d727b1004adfa85d89e7f0b86af519642",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a816d34c891434be5b14b628a938328c12082a9e90f264413c6022401dcb497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curryObj (F : C × D ⥤ E) : C ⥤ D ⥤ E where
  obj X :=
    { obj := fun Y => F.obj (X, Y)
      map := fun g => F.map (𝟙 X ×ₘ g)
      map_id := fun Y => by rw [← prod_id]; exact F.map_id ⟨X,Y⟩
      map_comp := fun f g => by simp [← F.map_comp] }
  map f :=
    { app := fun Y => F.map (f ×ₘ 𝟙 Y)
      naturality := fun {Y} {Y'} g => by simp [← F.map_comp] }
  map_id := fun X => by ext Y; exact F.map_id _
  map_comp := fun f g => by ext Y; simp [← F.map_comp]

/-- The currying functor, taking a functor `(C × D) ⥤ E` and producing a functor `C ⥤ (D ⥤ E)`.
-/
@[implicit_reducible, simps! obj_obj_obj obj_obj_map obj_map_app map_app_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5078d2e543afb43ddb161ea3b4f04312349a7a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
