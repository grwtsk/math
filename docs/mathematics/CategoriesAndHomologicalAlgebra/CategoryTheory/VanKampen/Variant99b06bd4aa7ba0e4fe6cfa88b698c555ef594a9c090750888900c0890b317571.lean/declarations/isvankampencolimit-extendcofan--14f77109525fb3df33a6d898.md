# isVanKampenColimit_extendCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30fdaa47-52c6-ed05-7caf-1a806b24bb84",
  "kind": "theorem",
  "lexical_name": "isVanKampenColimit_extendCofan",
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
  "slug": "isvankampencolimit-extendcofan--14f77109525fb3df33a6d898",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 613,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f77109525fb3df33a6d8984bda34a8539e12c0f1586f38a62ba43a2353555b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30fdaa47-52c6-ed05-7caf-1a806b24bb84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isVanKampenColimit_extendCofan {n : ℕ} (f : Fin (n + 1) → C)
    {c₁ : Cofan fun i : Fin n ↦ f i.succ} {c₂ : BinaryCofan (f 0) c₁.pt}
    (t₁ : IsVanKampenColimit c₁) (t₂ : IsVanKampenColimit c₂)
    [∀ {Z} (i : Z ⟶ c₂.pt), HasPullback c₂.inr i]
    [HasFiniteCoproducts C] :
    IsVanKampenColimit (extendCofan c₁ c₂) := by
  intro F c α i e hα
  refine ⟨?_, isUniversalColimit_extendCofan f t₁.isUniversal t₂.isUniversal c α i e hα⟩
  intro ⟨Hc⟩ ⟨j⟩
  have t₂' := (@t₂ (pair (F.obj ⟨0⟩) (∐ fun (j : Fin n) ↦ F.obj ⟨j.succ⟩))
    (BinaryCofan.mk (P := c.pt) (c.ι.app _) (Sigma.desc fun b ↦ c.ι.app _))
    (mapPair (α.app _) (Sigma.desc fun b ↦ α.app _ ≫ c₁.inj _)) i ?_ (.of_discrete _)).mp ⟨?_⟩
  rotate_left
  · ext ⟨⟨⟩⟩
    · simpa only [pair_obj_left, Functor.const_obj_obj, pair_obj_right, Discrete.functor_obj,
        NatTrans.comp_app, mapPair_left, BinaryCofan.ι_app_left, BinaryCofan.mk_pt,
        BinaryCofan.mk_inl, Functor.const_map_app, extendCofan_pt,
        extendCofan_ι_app, Fin.cases_zero] using! congr_app e ⟨0⟩
    · dsimp
      ext j
      simpa only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app,
        Category.assoc, extendCofan_pt, Functor.const_obj_obj, NatTrans.comp_app, extendCofan_ι_app,
        Fin.cases_succ, Functor.const_map_app] using! congr_app e ⟨j.succ⟩
  · let F' : Fin (n + 1) → C := F.obj ∘ Discrete.mk
    have : F = Discrete.functor F' := by
      apply Functor.hext
      · exact fun i ↦ rfl
      · rintro ⟨i⟩ ⟨j⟩ ⟨⟨rfl : i = j⟩⟩
        simp [F']
    clear_value F'
    subst this
    apply BinaryCofan.IsColimit.mk _ (fun {T} f₁ f₂ ↦ Hc.desc (Cofan.mk T (Fin.cases f₁
      (fun i ↦ Sigma.ι (fun (j : Fin n) ↦ (Discrete.functor F').obj ⟨j.succ⟩) _ ≫ f₂))))
    · intro T f₁ f₂
      simp only [Discrete.functor_obj, pair_obj_left, BinaryCofan.mk_pt, Functor.const_obj_obj,
        BinaryCofan.mk_inl, IsColimit.fac, Cofan.mk_pt, Cofan.mk_ι_app,
        Fin.cases_zero]
    · intro T f₁ f₂
      simp only [Discrete.functor_obj, pair_obj_right, BinaryCofan.mk_pt, Functor.const_obj_obj,
        BinaryCofan.mk_inr]
      ext j
      simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt,
        Cofan.mk_ι_app, IsColimit.fac, Fin.cases_succ]
    · intro T f₁ f₂ f₃ m₁ m₂
      simp only [Discrete.functor_obj_eq_as, pair_obj_left, BinaryCofan.mk_pt, const_obj_obj,
        BinaryCofan.mk_inl, pair_obj_right, BinaryCofan.mk_inr] at m₁ m₂ ⊢
      refine Hc.uniq (Cofan.mk T (Fin.cases f₁
        (fun i ↦ Sigma.ι (fun (j : Fin n) ↦ (Discrete.functor F').obj ⟨j.succ⟩) _ ≫ f₂))) _ ?_
      intro ⟨j⟩
      simp only [Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app]
      induction j using Fin.inductionOn
      · simp only [Fin.cases_zero, m₁]
      · simp only [← m₂, colimit.ι_desc_assoc, Discrete.functor_obj,
          Cofan.mk_pt, Cofan.mk_ι_app, Fin.cases_succ]
  induction j using Fin.inductionOn with
  | zero => exact t₂' ⟨WalkingPair.left⟩
  | succ j _ =>
    have t₁' := (t₁ (Cofan.mk _ (Sigma.ι fun j : Fin n ↦ F.obj ⟨j.succ⟩)) (Discrete.natTrans
      fun i ↦ α.app _) (Sigma.desc (fun j ↦ α.app _ ≫ c₁.inj _)) ?_
      (.of_discrete _)).mp ⟨coproductIsCoproduct _⟩ ⟨j⟩
    rotate_left
    · ext ⟨j⟩
      dsimp
      rw [colimit.ι_desc]
      rfl
    simpa [Functor.const_obj_obj, Discrete.functor_obj, extendCofan_pt, extendCofan_ι_app,
      Fin.cases_succ, BinaryCofan.mk_pt, colimit.cocone_x, Cofan.mk_pt, Cofan.mk_ι_app,
      BinaryCofan.ι_app_right, BinaryCofan.mk_inr, colimit.ι_desc,
      Discrete.natTrans_app] using! t₁'.paste_horiz (t₂' ⟨WalkingPair.right⟩)

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
