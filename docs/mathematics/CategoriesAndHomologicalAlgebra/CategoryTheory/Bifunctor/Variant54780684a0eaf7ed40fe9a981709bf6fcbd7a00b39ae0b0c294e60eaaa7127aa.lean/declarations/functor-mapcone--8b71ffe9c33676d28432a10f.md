# Functor.mapCone₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f821ca08b75a126eeb52a913b225f83b0e72cee2c0d1b97b40a33a66a1265e3b",
  "kind": "def",
  "lexical_name": "Functor.mapCone₂",
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
  "slug": "functor-mapcone--8b71ffe9c33676d28432a10f",
  "source": {
    "blob": "57ba882132a202a7541fc1e8d53df7366fb4de7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b71ffe9c33676d28432a10fe95eb3e160428c081eaa122d13a1a94cd851a6c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f821ca08b75a126eeb52a913b225f83b0e72cee2c0d1b97b40a33a66a1265e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.mapCone₂ (G : C₁ ⥤ C₂ ⥤ C) {K₁ : J₁ ⥤ C₁} {K₂ : J₂ ⥤ C₂}
    (c₁ : Cone K₁) (c₂ : Cone K₂) :
    Cone <| uncurry.obj (whiskeringLeft₂ C |>.obj K₁ |>.obj K₂ |>.obj G) where
  pt := (G.obj c₁.pt).obj c₂.pt
  π :=
    { app := fun ⟨j₁, j₂⟩ ↦ (G.map <| c₁.π.app j₁).app _ ≫ (G.obj _).map (c₂.π.app j₂)
      naturality := by
        rintro ⟨j₁, j₂⟩ ⟨k₁, k₂⟩ ⟨f₁, f₂⟩
        dsimp
        simp only [assoc, id_comp, NatTrans.naturality_assoc,
          ← Functor.map_comp,
          ← NatTrans.comp_app_assoc, c₁.w, c₂.w] }

namespace Limits

/-- A functor `PreservesColimit₂ K₁ K₂` if whenever `c₁` is a colimit cocone and `c₂` is a colimit
cocone then `G.mapCocone₂ c₁ c₂` is a colimit cocone. This can be thought of as the data of an
isomorphism
$\mathrm{colim}_{(j_1,j_2)} G(K_1(j_1),K_2(j_2)) \simeq G(\mathrm{colim} K_1,\mathrm{colim} K_2)$.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ba882132a202a7541fc1e8d53df7366fb4de7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
