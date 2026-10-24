# isColimitCokernelCoforkOfDistTriang

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08835ba41d606a16b6118182e21278ad6c227bd1530ce07282e70d6ecdf6aa0f",
  "kind": "def",
  "lexical_name": "isColimitCokernelCoforkOfDistTriang",
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
  "slug": "iscolimitcokernelcoforkofdisttriang--fa6e039c090c8c662932d033",
  "source": {
    "blob": "ee49efb3a75e36d68f20ae42bdeb3a9f26972b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa6e039c090c8c662932d03398499408855e3329ac5efbf4b301d4aa6760f786",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08835ba41d606a16b6118182e21278ad6c227bd1530ce07282e70d6ecdf6aa0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCokernelCoforkOfDistTriang {X₁ X₂ X₃ : A}
    (f₁ : X₁ ⟶ X₂) (f₂ : X₂ ⟶ X₃) (f₃ : ι.obj X₃ ⟶ (ι.obj X₁)⟦(1 : ℤ)⟧)
    (hT : Triangle.mk (ι.map f₁) (ι.map f₂) f₃ ∈ distTriang C) :
    IsColimit (CokernelCofork.ofπ f₂ (show f₁ ≫ f₂ = 0 from ι.map_injective (by
      have := comp_distTriang_mor_zero₁₂ _ hT
      dsimp at this
      cat_disch))) := by
  have hT' : Triangle.mk (0 : ((ι ⋙ shiftFunctor C (1 : ℤ)).obj 0) ⟶ _) (𝟙 (ι.obj X₃)) 0 ∈
      distTriang C := by
    refine isomorphic_distinguished _ (inv_rot_of_distTriang _
      (contractible_distinguished (ι.obj X₃))) _ ?_
    refine Triangle.isoMk _ _ (IsZero.iso ?_ ?_) (Iso.refl _) (Iso.refl _) ?_ ?_ ?_
    · dsimp
      rw [IsZero.iff_id_eq_zero, ← Functor.map_id, ← Functor.map_id, id_zero,
        Functor.map_zero, Functor.map_zero]
    · dsimp
      rw [IsZero.iff_id_eq_zero, ← Functor.map_id, id_zero, Functor.map_zero]
    all_goals simp
  refine IsColimit.ofIsoColimit (AbelianSubcategory.isColimitCokernelCofork hι hT hT') ?_
  exact Cofork.ext (Iso.refl _) (ι.map_injective (by simp))

variable (hA : admissibleMorphism ι = ⊤)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include hι hA in
omit [HasFiniteProducts A] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee49efb3a75e36d68f20ae42bdeb3a9f26972b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
