# shiftFunctorComm_hom_app_comp_shift_shiftFunctorAdd_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b48cb4bc6a7eba81754185d7c8a96159e7c7d288",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 636,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0a65b6d-3a07-1047-0089-af6e6669c795",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e715a49f-0465-5b74-7698-26acd98bbc4c",
  "kind": "lemma",
  "lexical_name": "shiftFunctorComm_hom_app_comp_shift_shiftFunctorAdd_hom_app",
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
  "slug": "shiftfunctorcomm-hom-app-comp-shift-shiftfunctoradd-hom-app--e1a596e9932ba4be28d95726",
  "source": {
    "blob": "b48cb4bc6a7eba81754185d7c8a96159e7c7d288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 636,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1a596e9932ba4be28d9572622f178b78f18eb7fbf333a99b93c77480b92ca62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e715a49f-0465-5b74-7698-26acd98bbc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftFunctorComm_hom_app_comp_shift_shiftFunctorAdd_hom_app (m₁ m₂ m₃ : A) (X : C) :
    (shiftFunctorComm C m₁ (m₂ + m₃)).hom.app X ≫
    ((shiftFunctorAdd C m₂ m₃).hom.app X)⟦m₁⟧' =
  (shiftFunctorAdd C m₂ m₃).hom.app (X⟦m₁⟧) ≫
    ((shiftFunctorComm C m₁ m₂).hom.app X)⟦m₃⟧' ≫
    (shiftFunctorComm C m₁ m₃).hom.app (X⟦m₂⟧) := by
  rw [← cancel_mono ((shiftFunctorComm C m₁ m₃).inv.app (X⟦m₂⟧)),
    ← cancel_mono (((shiftFunctorComm C m₁ m₂).inv.app X)⟦m₃⟧')]
  simp only [Category.assoc, Iso.hom_inv_id_app]
  dsimp
  simp only [Category.id_comp, ← Functor.map_comp, Iso.hom_inv_id_app]
  dsimp
  simp only [Functor.map_id, Category.comp_id,
    shiftFunctorComm_eq C _ _ _ rfl, ← shiftFunctorAdd'_eq_shiftFunctorAdd]
  dsimp
  simp only [Category.assoc, Iso.hom_inv_id_app_assoc, Iso.inv_hom_id_app_assoc,
    ← Functor.map_comp,
    shiftFunctorAdd'_assoc_hom_app_assoc m₂ m₃ m₁ (m₂ + m₃) (m₁ + m₃) (m₁ + (m₂ + m₃)) rfl
      (add_comm m₃ m₁) (add_comm _ m₁) X,
    ← shiftFunctorAdd'_assoc_hom_app_assoc m₂ m₁ m₃ (m₁ + m₂) (m₁ + m₃)
      (m₁ + (m₂ + m₃)) (add_comm _ _) rfl (by rw [add_comm m₂ m₁, add_assoc]) X,
    shiftFunctorAdd'_assoc_hom_app m₁ m₂ m₃
      (m₁ + m₂) (m₂ + m₃) (m₁ + (m₂ + m₃)) rfl rfl (add_assoc _ _ _) X]

end AddCommMonoid

namespace Functor.FullyFaithful

variable {D : Type*} [Category D] [AddMonoid A] [HasShift D A]
variable {F : C ⥤ D} (hF : F.FullyFaithful)
variable (s : A → C ⥤ C) (i : ∀ i, s i ⋙ F ≅ F ⋙ shiftFunctor D i)

namespace hasShift

/-- auxiliary definition for `FullyFaithful.hasShift` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b48cb4bc6a7eba81754185d7c8a96159e7c7d288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
