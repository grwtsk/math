# IsPushout.isVanKampen_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:977a22e2-87f2-05a9-a04d-9749fe96f329",
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
  "slug": "ispushout-isvankampen-inl--5eb219c964d8c7152b8e5e16",
  "source": {
    "blob": "740a925edc2384e31d13dc643bdf05f289d3a752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eb219c964d8c7152b8e5e167730d11453d95a7754a2e944045efd498b00899c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:977a22e2-87f2-05a9-a04d-9749fe96f329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPushout.isVanKampen_inl {W E X Z : C} (c : BinaryCofan W E) [FinitaryExtensive C]
    [HasPullbacks C] (hc : IsColimit c) (f : W ⟶ X) (h : X ⟶ Z) (i : c.pt ⟶ Z)
    (H : IsPushout f c.inl h i) : H.IsVanKampen := by
  obtain ⟨hc₁⟩ := (is_coprod_iff_isPushout c hc H.1).mpr H
  introv W' hf hg hh hi w
  obtain ⟨hc₂⟩ := ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen c hc)
    (BinaryCofan.mk _ (pullback.fst _ _)) _ _ _ hg.w.symm pullback.condition.symm).mpr
    ⟨hg, IsPullback.of_hasPullback αY c.inr⟩
  refine (is_coprod_iff_isPushout _ hc₂ w).symm.trans ?_
  refine ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen _ hc₁)
    (BinaryCofan.mk _ _) (pullback.snd _ _) _ _ ?_ hh.w.symm).trans ?_
  · dsimp; rw [← pullback.condition_assoc, Category.assoc, hi.w]
  constructor
  · rintro ⟨hc₃, hc₄⟩
    refine ⟨hc₄, ?_⟩
    let Y'' := pullback αZ i
    let cmp : Y' ⟶ Y'' := pullback.lift i' αY hi.w
    have e₁ : (g' ≫ cmp) ≫ pullback.snd _ _ = αW ≫ c.inl := by
      rw [Category.assoc, pullback.lift_snd, hg.w]
    have e₂ : (pullback.fst _ _ ≫ cmp : pullback αY c.inr ⟶ _) ≫ pullback.snd _ _ =
        pullback.snd _ _ ≫ c.inr := by
      rw [Category.assoc, pullback.lift_snd, pullback.condition]
    obtain ⟨hc₄⟩ := ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen c hc)
      (BinaryCofan.mk _ _) αW _ _ e₁.symm e₂.symm).mpr <| by
        constructor
        · apply IsPullback.of_right _ e₁ (IsPullback.of_hasPullback _ _)
          rw [Category.assoc, pullback.lift_fst, ← H.w, ← w.w]; exact hf.paste_horiz hc₄
        · apply IsPullback.of_right _ e₂ (IsPullback.of_hasPullback _ _)
          rw [Category.assoc, pullback.lift_fst]; exact hc₃
    rw [← Category.id_comp αZ, ← show cmp ≫ pullback.snd _ _ = αY from pullback.lift_snd _ _ _]
    apply IsPullback.paste_vert _ (IsPullback.of_hasPullback αZ i)
    have : cmp = (hc₂.coconePointUniqueUpToIso hc₄).hom := by
      apply BinaryCofan.IsColimit.hom_ext hc₂
      exacts [(hc₂.comp_coconePointUniqueUpToIso_hom hc₄ ⟨WalkingPair.left⟩).symm,
        (hc₂.comp_coconePointUniqueUpToIso_hom hc₄ ⟨WalkingPair.right⟩).symm]
    rw [this]
    exact IsPullback.of_vert_isIso ⟨by rw [← this, Category.comp_id, pullback.lift_fst]⟩
  · rintro ⟨hc₃, hc₄⟩
    exact ⟨(IsPullback.of_hasPullback αY c.inr).paste_horiz hc₄, hc₃⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `740a925edc2384e31d13dc643bdf05f289d3a752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
