# binaryCofan_isColimit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d6df630-a94c-e56f-6b8f-ec12aee97df4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24641a8c-8d64-578a-94e9-abf599a3446c",
  "kind": "theorem",
  "lexical_name": "binaryCofan_isColimit_iff",
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
  "slug": "binarycofan-iscolimit-iff--2399804cee880613dce95167",
  "source": {
    "blob": "eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2399804cee880613dce951670ca81976f862861b5ee88695f658b9f3c9ef5d57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24641a8c-8d64-578a-94e9-abf599a3446c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryCofan_isColimit_iff {X Y : TopCat} (c : BinaryCofan X Y) :
    Nonempty (IsColimit c) ↔
      IsOpenEmbedding c.inl ∧ IsOpenEmbedding c.inr ∧ IsCompl (range c.inl) (range c.inr) := by
  classical
    constructor
    · rintro ⟨h⟩
      rw [← show _ = c.inl from
          h.comp_coconePointUniqueUpToIso_inv (binaryCofanIsColimit X Y) ⟨WalkingPair.left⟩,
        ← show _ = c.inr from
          h.comp_coconePointUniqueUpToIso_inv (binaryCofanIsColimit X Y) ⟨WalkingPair.right⟩]
      dsimp
      refine ⟨(homeoOfIso <| h.coconePointUniqueUpToIso
        (binaryCofanIsColimit X Y)).symm.isOpenEmbedding.comp .inl,
          (homeoOfIso <| h.coconePointUniqueUpToIso
            (binaryCofanIsColimit X Y)).symm.isOpenEmbedding.comp .inr, ?_⟩
      rw [Set.range_comp, ← eq_compl_iff_isCompl]
      conv_rhs => rw [Set.range_comp]
      erw [← Set.image_compl_eq (homeoOfIso <| h.coconePointUniqueUpToIso
            (binaryCofanIsColimit X Y)).symm.bijective, Set.compl_range_inr, Set.image_comp]
    · rintro ⟨h₁, h₂, h₃⟩
      have : ∀ x, x ∈ Set.range c.inl ∨ x ∈ Set.range c.inr := by
        rw [eq_compl_iff_isCompl.mpr h₃.symm]
        exact fun _ => or_not
      refine ⟨BinaryCofan.IsColimit.mk _ ?_ ?_ ?_ ?_⟩
      · intro T f g
        refine ofHom (ContinuousMap.mk ?_ ?_)
        · exact fun x =>
            if h : x ∈ Set.range c.inl then f ((Equiv.ofInjective _ h₁.injective).symm ⟨x, h⟩)
            else g ((Equiv.ofInjective _ h₂.injective).symm ⟨x, (this x).resolve_left h⟩)
        rw [continuous_iff_continuousAt]
        intro x
        by_cases h : x ∈ Set.range c.inl
        · revert h x
          apply (IsOpen.continuousOn_iff _).mp
          · rw [continuousOn_iff_continuous_restrict]
            convert_to Continuous (f ∘ h₁.isEmbedding.toHomeomorph.symm)
            · ext ⟨x, hx⟩
              exact dif_pos hx
            continuity
          · exact h₁.isOpen_range
        · revert h x
          apply (IsOpen.continuousOn_iff _).mp
          · rw [continuousOn_iff_continuous_restrict]
            have : ∀ a, a ∉ Set.range c.inl → a ∈ Set.range c.inr := by
              rintro a (h : a ∈ (Set.range c.inl)ᶜ)
              rwa [eq_compl_iff_isCompl.mpr h₃.symm]
            convert_to Continuous
                (g ∘ h₂.isEmbedding.toHomeomorph.symm ∘ Subtype.map _ this)
            · ext ⟨x, hx⟩
              exact dif_neg hx
            apply Continuous.comp
            · exact g.hom.continuous_toFun
            · apply Continuous.comp
              · continuity
              · rw [IsEmbedding.subtypeVal.isInducing.continuous_iff]
                exact continuous_subtype_val
          · change IsOpen (Set.range c.inl)ᶜ
            rw [← eq_compl_iff_isCompl.mpr h₃.symm]
            exact h₂.isOpen_range
      · intro T f g
        ext x
        dsimp
        rw [dif_pos]
        conv_lhs => rw [Equiv.ofInjective_symm_apply]
      · intro T f g
        ext x
        dsimp
        rw [dif_neg]
        · exact congr_arg g (Equiv.ofInjective_symm_apply _ _)
        · rintro ⟨y, e⟩
          have : c.inr x ∈ Set.range c.inl ⊓ Set.range c.inr := ⟨⟨_, e⟩, ⟨_, rfl⟩⟩
          rwa [disjoint_iff.mp h₃.1] at this
      · rintro T _ _ m rfl rfl
        ext x
        change m x = dite _ _ _
        split_ifs <;> exact congr_arg _ (Equiv.apply_ofInjective_symm _ ⟨_, _⟩).symm

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
