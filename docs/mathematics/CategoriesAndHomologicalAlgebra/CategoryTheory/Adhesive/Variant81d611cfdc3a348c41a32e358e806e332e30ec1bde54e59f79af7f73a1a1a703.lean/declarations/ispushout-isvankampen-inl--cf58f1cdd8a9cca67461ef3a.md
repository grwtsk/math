# IsPushout.isVanKampen_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "359481872780845c029f738342224ea56b3781a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5f87e17-fb46-b6b0-4062-10d0e2e97f86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d73eccc9-c9c8-4d6c-2aea-7fb88fe08736",
  "kind": "theorem",
  "lexical_name": "IsPushout.isVanKampen_inl",
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
  "slug": "ispushout-isvankampen-inl--cf58f1cdd8a9cca67461ef3a",
  "source": {
    "blob": "359481872780845c029f738342224ea56b3781a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf58f1cdd8a9cca67461ef3a9794088d218e499dee0ede833115d27c61a52601",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d73eccc9-c9c8-4d6c-2aea-7fb88fe08736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPushout.isVanKampen_inl {W E X Z : C} (c : BinaryCofan W E) [FinitaryExtensive C]
    [HasPullbacks C] (hc : IsColimit c) (f : W ⟶ X) (h : X ⟶ Z) (i : c.pt ⟶ Z)
    (H : IsPushout f c.inl h i) : H.IsVanKampen := by
  obtain ⟨hc₁⟩ := (is_coprod_iff_isPushout c hc H.1).mpr H
  introv W' hf hg hh hi w
  obtain ⟨hc₂⟩ := ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen c hc)
    (BinaryCofan.mk _ pullback.fst) _ _ _ hg.w.symm pullback.condition.symm).mpr
    ⟨hg, IsPullback.of_hasPullback αY c.inr⟩
  refine' (is_coprod_iff_isPushout _ hc₂ w).symm.trans _
  refine' ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen _ hc₁)
    (BinaryCofan.mk _ _) pullback.snd _ _ _ hh.w.symm).trans _
  · dsimp; rw [← pullback.condition_assoc, Category.assoc, hi.w]
  constructor
  · rintro ⟨hc₃, hc₄⟩
    refine' ⟨hc₄, _⟩
    let Y'' := pullback αZ i
    let cmp : Y' ⟶ Y'' := pullback.lift i' αY hi.w
    have e₁ : (g' ≫ cmp) ≫ pullback.snd = αW ≫ c.inl := by
      rw [Category.assoc, pullback.lift_snd, hg.w]
    have e₂ : (pullback.fst ≫ cmp : pullback αY c.inr ⟶ _) ≫ pullback.snd = pullback.snd ≫ c.inr :=
      by rw [Category.assoc, pullback.lift_snd, pullback.condition]
    obtain ⟨hc₄⟩ := ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen c hc)
      (BinaryCofan.mk _ _) αW _ _ e₁.symm e₂.symm).mpr <| by
        constructor
        · apply IsPullback.of_right _ e₁ (IsPullback.of_hasPullback _ _)
          rw [Category.assoc, pullback.lift_fst, ← H.w, ← w.w]; exact hf.paste_horiz hc₄
        · apply IsPullback.of_right _ e₂ (IsPullback.of_hasPullback _ _)
          rw [Category.assoc, pullback.lift_fst]; exact hc₃
    · rw [← Category.id_comp αZ, ← show cmp ≫ pullback.snd = αY from pullback.lift_snd _ _ _]
      apply IsPullback.paste_vert _ (IsPullback.of_hasPullback αZ i)
      have : cmp = (hc₂.coconePointUniqueUpToIso hc₄).hom := by
        apply BinaryCofan.IsColimit.hom_ext hc₂
        exacts [(hc₂.comp_coconePointUniqueUpToIso_hom hc₄ ⟨WalkingPair.left⟩).symm,
          (hc₂.comp_coconePointUniqueUpToIso_hom hc₄ ⟨WalkingPair.right⟩).symm]
      rw [this]
      exact IsPullback.of_vert_isIso ⟨by rw [← this, Category.comp_id, pullback.lift_fst]⟩
  · rintro ⟨hc₃, hc₄⟩
    exact ⟨(IsPullback.of_hasPullback αY c.inr).paste_horiz hc₄, hc₃⟩
#align category_theory.is_pushout.is_van_kampen_inl CategoryTheory.IsPushout.isVanKampen_inl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359481872780845c029f738342224ea56b3781a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
