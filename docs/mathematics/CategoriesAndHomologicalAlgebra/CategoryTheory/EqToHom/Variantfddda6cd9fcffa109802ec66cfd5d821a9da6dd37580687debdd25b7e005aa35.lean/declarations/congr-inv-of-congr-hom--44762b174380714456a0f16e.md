# congr_inv_of_congr_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2b40ec6-0ec0-67a6-40d5-c9e61cbb94db",
  "kind": "theorem",
  "lexical_name": "congr_inv_of_congr_hom",
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
  "slug": "congr-inv-of-congr-hom--44762b174380714456a0f16e",
  "source": {
    "blob": "4dfe4c7c640680b4abb28737eefd521a069dd437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 279,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44762b174380714456a0f16eb2afe2661494c896d255a24eccd6b6c0c470f46c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2b40ec6-0ec0-67a6-40d5-c9e61cbb94db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congr_inv_of_congr_hom (F G : C ⥤ D) {X Y : C} (e : X ≅ Y) (hX : F.obj X = G.obj X)
    (hY : F.obj Y = G.obj Y)
    (h₂ : F.map e.hom = eqToHom (by rw [hX]) ≫ G.map e.hom ≫ eqToHom (by rw [hY])) :
    F.map e.inv = eqToHom (by rw [hY]) ≫ G.map e.inv ≫ eqToHom (by rw [hX]) := by
  simp only [← IsIso.Iso.inv_hom e, Functor.map_inv, h₂, IsIso.inv_comp, inv_eqToHom,
    Category.assoc]

section HEq

-- Composition of functors and maps w.r.t. heq
variable {E : Type u₃} [Category.{v₃} E] {F G : C ⥤ D} {X Y Z : C} {f : X ⟶ Y} {g : Y ⟶ Z}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dfe4c7c640680b4abb28737eefd521a069dd437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
