# equivOfTensorIsoUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69617a52e6aeee445234d95a5532a0e62d0568d8c3bec588cf11fa45df0c5db9",
  "kind": "def",
  "lexical_name": "equivOfTensorIsoUnit",
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
  "slug": "equivoftensorisounit--136a1696dc835ff0846782ad",
  "source": {
    "blob": "d21a74c402bfe8a6ce3049a22c3a88e7020dd9e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant0128d31d6f8493b7f59e45384a1d5a8882552e3c90d64003acdea0b38fde109b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:136a1696dc835ff0846782ada7e35dde2e6910b7052dc0b269c0d380e30fe213",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant0128d31d6f8493b7f59e45384a1d5a8882552e3c90d64003acdea0b38fde109b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69617a52e6aeee445234d95a5532a0e62d0568d8c3bec588cf11fa45df0c5db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivOfTensorIsoUnit (m n : M) (h₁ : m ⊗ n ≅ 𝟙_ M) (h₂ : n ⊗ m ≅ 𝟙_ M)
    (H : (h₁.hom ⊗ 𝟙 m) ≫ (λ_ m).hom = (α_ m n m).hom ≫ (𝟙 m ⊗ h₂.hom) ≫ (ρ_ m).hom) : C ≌ C
    where
  functor := F.obj m
  inverse := F.obj n
  unitIso := (unitOfTensorIsoUnit F m n h₁).symm
  counitIso := unitOfTensorIsoUnit F n m h₂
  functor_unitIso_comp := by
    intro X
    dsimp
    simp only [μ_naturalityᵣ_assoc, μ_naturalityₗ_assoc, ε_inv_app_obj, Category.assoc,
      obj_μ_inv_app, Functor.map_comp, μ_inv_hom_app_assoc, obj_ε_app,
      unitOfTensorIsoUnit_inv_app]
    simp [← NatTrans.comp_app, ← F.toFunctor.map_comp, ← H, -Functor.map_comp]
#align category_theory.equiv_of_tensor_iso_unit CategoryTheory.equivOfTensorIsoUnit

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant0128d31d6f8493b7f59e45384a1d5a8882552e3c90d64003acdea0b38fde109b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant0128d31d6f8493b7f59e45384a1d5a8882552e3c90d64003acdea0b38fde109b.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d21a74c402bfe8a6ce3049a22c3a88e7020dd9e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
