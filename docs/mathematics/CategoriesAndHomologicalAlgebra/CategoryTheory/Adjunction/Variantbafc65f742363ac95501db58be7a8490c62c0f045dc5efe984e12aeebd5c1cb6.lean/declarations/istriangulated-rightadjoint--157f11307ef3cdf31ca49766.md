# isTriangulated_rightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "071bb814bfd2b4f779f4114ebdf31707d6618f23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bafc65f742363ac95501db58be7a8490c62c0f045dc5efe984e12aeebd5c1cb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b264ff01-d8fb-e1b8-6ccc-13df92eed4ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71eefe05-43c7-4afb-163c-a5dfb88034de",
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
  "slug": "istriangulated-rightadjoint--157f11307ef3cdf31ca49766",
  "source": {
    "blob": "071bb814bfd2b4f779f4114ebdf31707d6618f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbafc65f742363ac95501db58be7a8490c62c0f045dc5efe984e12aeebd5c1cb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:157f11307ef3cdf31ca49766af030486f555dab715674ff739898ff8f45e9ea9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbafc65f742363ac95501db58be7a8490c62c0f045dc5efe984e12aeebd5c1cb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71eefe05-43c7-4afb-163c-a5dfb88034de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–136.

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
      have eq := DFunLike.congr_arg (adj.homEquiv _ _) hα
      simp only [homEquiv_counit, homEquiv_unit, comp_id,
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
    · simp
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
open Pretriangulated.Opposite in
/--
The left adjoint of a triangulated functor is triangulated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbafc65f742363ac95501db58be7a8490c62c0f045dc5efe984e12aeebd5c1cb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbafc65f742363ac95501db58be7a8490c62c0f045dc5efe984e12aeebd5c1cb6.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `071bb814bfd2b4f779f4114ebdf31707d6618f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
