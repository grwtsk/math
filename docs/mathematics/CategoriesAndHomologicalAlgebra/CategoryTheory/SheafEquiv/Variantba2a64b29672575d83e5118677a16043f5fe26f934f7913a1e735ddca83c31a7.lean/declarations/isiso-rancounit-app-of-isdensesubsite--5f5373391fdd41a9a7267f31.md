# isIso_ranCounit_app_of_isDenseSubsite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6259e859-8fa5-783f-f505-51db3c90986a",
  "kind": "lemma",
  "lexical_name": "isIso_ranCounit_app_of_isDenseSubsite",
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
  "slug": "isiso-rancounit-app-of-isdensesubsite--5f5373391fdd41a9a7267f31",
  "source": {
    "blob": "40fe5d45929255c6f4473bb27d4334e220d2bde1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f5373391fdd41a9a7267f310f23ebeab0b7b8d84c76f2784970213c0494fa28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6259e859-8fa5-783f-f505-51db3c90986a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_ranCounit_app_of_isDenseSubsite (Y : Sheaf J A) (U X) :
    IsIso ((yoneda.map ((G.op.ranCounit.app Y.val).app (op U))).app (op X)) := by
  rw [isIso_iff_bijective]
  constructor
  · intro f₁ f₂ e
    apply (isPointwiseRightKanExtensionRanCounit G.op Y.1 (.op (G.obj U))).hom_ext
    rintro ⟨⟨⟨⟩⟩, ⟨W⟩, g⟩
    obtain ⟨g, rfl⟩ : ∃ g' : G.obj W ⟶ G.obj U, g = g'.op := ⟨g.unop, rfl⟩
    apply (Y.2 X _ (IsDenseSubsite.imageSieve_mem J K G g)).isSeparatedFor.ext
    dsimp
    rintro V iVW ⟨iVU, e'⟩
    have := congr($e ≫ Y.1.map iVU.op)
    simp only [comp_obj, yoneda_map_app, Category.assoc, coyoneda_obj_obj, comp_map,
      coyoneda_obj_map, ← NatTrans.naturality, op_obj, op_map, Quiver.Hom.unop_op, ← map_comp_assoc,
      ← op_comp, ← e'] at this ⊢
    erw [← NatTrans.naturality] at this
    exact this
  · intro f
    have (X Y Z) (f : X ⟶ Y) (g : G.obj Y ⟶ G.obj Z) (hf : G.imageSieve g f) : Exists _ := hf
    choose l hl using this
    let c : Limits.Cone (StructuredArrow.proj (op (G.obj U)) G.op ⋙ Y.val) := by
      refine ⟨X, ⟨fun g ↦ ?_, ?_⟩⟩
      · refine Y.2.amalgamate ⟨_, IsDenseSubsite.imageSieve_mem J K G g.hom.unop⟩
          (fun I ↦ f ≫ Y.1.map (l _ _ _ _ _ I.hf).op) fun I₁ I₂ r ↦ ?_
        apply (Y.2 X _ (IsDenseSubsite.equalizer_mem J K G (r.g₁ ≫ l _ _ _ _ _ I₁.hf)
          (r.g₂ ≫ l _ _ _ _ _ I₂.hf) ?_)).isSeparatedFor.ext fun V iUV (hiUV : _ = _) ↦ ?_
        · simp only [const_obj_obj, op_obj, map_comp, hl]
          simp only [← map_comp_assoc, r.w]
        · simp [← map_comp, ← op_comp, hiUV]
      · dsimp
        rintro ⟨⟨⟨⟩⟩, ⟨W₁⟩, g₁⟩ ⟨⟨⟨⟩⟩, ⟨W₂⟩, g₂⟩ ⟨⟨⟨⟨⟩⟩⟩, i, hi⟩
        dsimp at g₁ g₂ i hi
        -- See issue https://github.com/leanprover-community/mathlib4/pull/15781 for tracking performance regressions of `rintro` as here
        have h : g₂ = g₁ ≫ (G.map i.unop).op := by simpa only [Category.id_comp] using hi
        rcases h with ⟨rfl⟩
        have h : ∃ g' : G.obj W₁ ⟶ G.obj U, g₁ = g'.op := ⟨g₁.unop, rfl⟩
        rcases h with ⟨g, rfl⟩
        have h : ∃ i' : W₂ ⟶ W₁, i = i'.op := ⟨i.unop, rfl⟩
        rcases h with ⟨i, rfl⟩
        simp only [const_obj_obj, id_obj, comp_obj, StructuredArrow.proj_obj, const_obj_map, op_obj,
          unop_comp, Quiver.Hom.unop_op, Category.id_comp, comp_map, StructuredArrow.proj_map]
        apply Y.2.hom_ext ⟨_, IsDenseSubsite.imageSieve_mem J K G (G.map i ≫ g)⟩
        intro I
        simp only [Presheaf.IsSheaf.amalgamate_map, Category.assoc, ← Functor.map_comp, ← op_comp]
        let I' : GrothendieckTopology.Cover.Arrow ⟨_, IsDenseSubsite.imageSieve_mem J K G g⟩ :=
          ⟨_, I.f ≫ i, ⟨l _ _ _ _ _ I.hf, by simp [hl]⟩⟩
        refine Eq.trans ?_ (Y.2.amalgamate_map _ _ _ I').symm
        apply (Y.2 X _ (IsDenseSubsite.equalizer_mem J K G (l _ _ _ _ _ I.hf)
          (l _ _ _ _ _ I'.hf) (by simp [I', hl]))).isSeparatedFor.ext
            fun V iUV (hiUV : _ = _) ↦ ?_
        simp [I', ← Functor.map_comp, ← op_comp, hiUV]
    refine ⟨(isPointwiseRightKanExtensionRanCounit G.op Y.1 (.op (G.obj U))).lift c, ?_⟩
    · have := (isPointwiseRightKanExtensionRanCounit G.op Y.1 (.op (G.obj U))).fac c (.mk (𝟙 _))
      simp only [id_obj, comp_obj, StructuredArrow.proj_obj, StructuredArrow.mk_right,
        RightExtension.coneAt_pt, RightExtension.mk_left, RightExtension.coneAt_π_app,
        const_obj_obj, op_obj, StructuredArrow.mk_hom_eq_self, map_id, whiskeringLeft_obj_obj,
        RightExtension.mk_hom, Category.id_comp, StructuredArrow.mk_left, unop_id] at this
      simp only [c, id_obj, yoneda_map_app, this]
      apply Y.2.hom_ext ⟨_, IsDenseSubsite.imageSieve_mem J K G (𝟙 (G.obj U))⟩ _ _ fun I ↦ ?_
      apply (Y.2 X _ (IsDenseSubsite.equalizer_mem J K G (l _ _ _ _ _ I.hf)
        I.f (by simp [hl]))).isSeparatedFor.ext fun V iUV (hiUV : _ = _) ↦ ?_
      simp [← Functor.map_comp, ← op_comp, hiUV]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variantba2a64b29672575d83e5118677a16043f5fe26f934f7913a1e735ddca83c31a7.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fe5d45929255c6f4473bb27d4334e220d2bde1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
