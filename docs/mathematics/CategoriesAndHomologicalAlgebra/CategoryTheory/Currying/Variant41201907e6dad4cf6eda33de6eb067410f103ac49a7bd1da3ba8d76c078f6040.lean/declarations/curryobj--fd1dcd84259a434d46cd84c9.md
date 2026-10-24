# curryObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f539a4c6d58e3b3ebb5e3364cfe28fe6364c3393ca42e251493b25e6257020a",
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
  "slug": "curryobj--fd1dcd84259a434d46cd84c9",
  "source": {
    "blob": "e161c4c5c65174f3881765e178455bef08181ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd1dcd84259a434d46cd84c91cda06b28e042f4942b1c4d1cdf50e464c78a976",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f539a4c6d58e3b3ebb5e3364cfe28fe6364c3393ca42e251493b25e6257020a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curryObj (F : C × D ⥤ E) : C ⥤ D ⥤ E
    where
  obj X :=
    { obj := fun Y => F.obj (X, Y)
      map := fun g => F.map (𝟙 X, g)
      map_id := fun Y => by simp only [F.map_id]; rw [←prod_id]; exact F.map_id ⟨X,Y⟩
      map_comp := fun f g => by simp [←F.map_comp]}
  map f :=
    { app := fun Y => F.map (f, 𝟙 Y)
      naturality := fun {Y} {Y'} g => by simp [←F.map_comp] }
  map_id := fun X => by ext Y; exact F.map_id _
  map_comp := fun f g => by ext Y; dsimp; simp [←F.map_comp]
#align category_theory.curry_obj CategoryTheory.curryObj

/-- The currying functor, taking a functor `(C × D) ⥤ E` and producing a functor `C ⥤ (D ⥤ E)`.
-/
@[simps! obj_obj_obj obj_obj_map obj_map_app map_app_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e161c4c5c65174f3881765e178455bef08181ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
