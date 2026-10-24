# isTriangulated_rightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d8e8b78-8dac-a8a1-6143-14e003417d5d",
  "kind": "lemma",
  "lexical_name": "isTriangulated_rightAdjoint",
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
  "slug": "istriangulated-rightadjoint--2e9c5cc101e14f245ce9c2fd",
  "source": {
    "blob": "4ea0cb02b8d3ad7869da22c09ee5c73c37ba3ae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e9c5cc101e14f245ce9c2fdc5015dfc725ee9f08133bf10cd68567270ce14cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8e8b78-8dac-a8a1-6143-14e003417d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_rightAdjoint [F.IsTriangulated] : G.IsTriangulated where
  map_distinguished T hT := by
    have : G.Additive := adj.right_adjoint_additive
    obtain ⟨Z, f, g, mem⟩ := distinguished_cocone_triangle (G.map T.mor₁)
    obtain ⟨h, ⟨h₁, h₂⟩⟩ := complete_distinguished_triangle_morphism _ _
      (F.map_distinguished _ mem) hT (adj.counit.app T.obj₁) (adj.counit.app T.obj₂) (by simp)
    dsimp at h h₁ h₂ ⊢
    have h₁' : f ≫ adj.unit.app Z ≫ G.map h = G.map T.mor₂ := by
      simpa [homEquiv_apply] using DFunLike.congr_arg (adj.homEquiv _ _) h₁
    have h₂' : g ≫ (G.commShiftIso (1 : ℤ)).inv.app T.obj₁ =
        adj.homEquiv _ _ h ≫ G.map T.mor₃ := by
      apply (adj.homEquiv _ _).symm.injective
      simp only [Functor.comp_obj, homEquiv_counit, Functor.id_obj, Functor.map_comp, assoc,
        homEquiv_unit, counit_naturality, counit_naturality_assoc, left_triangle_components_assoc,
        ← h₂, adj.shift_counit_app, Iso.hom_inv_id_app_assoc]
    rw [assoc] at h₂
    have : Mono (adj.homEquiv _ _ h) := by
      rw [mono_iff_cancel_zero]
      intro _ φ hφ
      obtain ⟨ψ, rfl⟩ := Triangle.coyoneda_exact₃ _ mem φ (by
        dsimp
        simp only [homEquiv_unit, Functor.comp_obj] at hφ
        rw [← cancel_mono ((G.commShiftIso (1 : ℤ)).inv.app T.obj₁), assoc, h₂', zero_comp,
          homEquiv_unit, assoc, reassoc_of% hφ, zero_comp])
      dsimp at ψ hφ ⊢
      obtain ⟨α, hα⟩ := T.coyoneda_exact₂ hT ((adj.homEquiv _ _).symm ψ)
        ((adj.homEquiv _ _).injective (by simpa [homEquiv_counit, homEquiv_unit, ← h₁'] using hφ))
      have eq := DFunLike.congr_arg (adj.homEquiv _ _ ) hα
      simp only [homEquiv_counit, Functor.id_obj, homEquiv_unit, comp_id,
        Functor.map_comp, unit_naturality_assoc, right_triangle_components] at eq
      have eq' := comp_distTriang_mor_zero₁₂ _ mem
      dsimp at eq eq'
      rw [eq, assoc, assoc, eq', comp_zero, comp_zero]
    have := isIso_of_yoneda_map_bijective (adj.homEquiv _ _ h) (fun Y => by
      constructor
      · intro φ₁ φ₂ hφ
        rw [← cancel_mono (adj.homEquiv _ _ h)]
        exact hφ
      · intro φ
        obtain ⟨ψ, hψ⟩ := Triangle.coyoneda_exact₁ _ mem (φ ≫ G.map T.mor₃ ≫
          (G.commShiftIso (1 : ℤ)).hom.app T.obj₁) (by
            dsimp
            rw [assoc, assoc, ← G.commShiftIso_hom_naturality, ← G.map_comp_assoc,
              comp_distTriang_mor_zero₃₁ _ hT, G.map_zero, zero_comp, comp_zero])
        dsimp at ψ hψ
        obtain ⟨α, hα⟩ : ∃ α, α = φ - ψ ≫ adj.homEquiv _ _ h := ⟨_, rfl⟩
        have hα₀ : α ≫ G.map T.mor₃ = 0 := by
          rw [hα, sub_comp, ← cancel_mono ((Functor.commShiftIso G (1 : ℤ)).hom.app T.obj₁),
            assoc, sub_comp, assoc, assoc, hψ, zero_comp, sub_eq_zero,
            ← cancel_mono ((Functor.commShiftIso G (1 : ℤ)).inv.app T.obj₁), assoc,
            assoc, assoc, assoc, h₂', Iso.hom_inv_id_app, comp_id]
        suffices ∃ (β : Y ⟶ Z), β ≫ adj.homEquiv _ _ h = α by
          obtain ⟨β, hβ⟩ := this
          refine ⟨ψ + β, ?_⟩
          dsimp
          rw [add_comp, hβ, hα, add_sub_cancel]
        obtain ⟨β, hβ⟩ := T.coyoneda_exact₃ hT ((adj.homEquiv _ _).symm α)
          ((adj.homEquiv _ _).injective (by simpa [homEquiv_unit, homEquiv_counit] using hα₀))
        refine ⟨adj.homEquiv _ _ β ≫ f, ?_⟩
        simpa [homEquiv_unit, h₁'] using congr_arg (adj.homEquiv _ _).toFun hβ.symm)
    refine isomorphic_distinguished _ mem _ (Iso.symm ?_)
    refine Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) (asIso (adj.homEquiv Z T.obj₃ h)) ?_ ?_ ?_
    · dsimp
      simp
    · apply (adj.homEquiv _ _).symm.injective
      dsimp
      simp only [homEquiv_unit, homEquiv_counit, Functor.map_comp, assoc,
        counit_naturality, left_triangle_components_assoc, h₁, id_comp]
    · dsimp
      rw [Functor.map_id, comp_id, homEquiv_unit, assoc, ← G.map_comp_assoc, ← h₂,
        Functor.map_comp, Functor.map_comp, assoc, unit_naturality_assoc, assoc,
        Functor.commShiftIso_hom_naturality, ← adj.shift_unit_app_assoc,
        ← Functor.map_comp, right_triangle_components, Functor.map_id, comp_id]

include adj in
open Pretriangulated.Opposite Functor in
/--
The left adjoint of a triangulated functor is triangulated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd761a823b0899059f133f0811688702c552e122c22384f965d0ae294f150d689.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ea0cb02b8d3ad7869da22c09ee5c73c37ba3ae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
