# Functor.mapCone₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:829ace4285ca7a75fa1c2bcf612d1ff748a37d6e469b5497e1dbba847f61bbc7",
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
  "slug": "functor-mapcone--f064847621e3b3f6b88a194c",
  "source": {
    "blob": "1f3d4416022e30e1d32fd0b38e5bab20cb4352a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f064847621e3b3f6b88a194c2e9bc9771c52bdb3ef8c4bb421eab2d9998ae991",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:829ace4285ca7a75fa1c2bcf612d1ff748a37d6e469b5497e1dbba847f61bbc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f3d4416022e30e1d32fd0b38e5bab20cb4352a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
