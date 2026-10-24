# binaryCofan_isColimit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49c6249845f29829fac76e9824b6b43dce1ba8f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8477fdd1-99bb-a3bd-895f-4a1a549a2415",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97360c6d-982a-a404-ff68-5a4a30350d85",
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
  "slug": "binarycofan-iscolimit-iff--534092bfb239fb09d838d664",
  "source": {
    "blob": "49c6249845f29829fac76e9824b6b43dce1ba8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:534092bfb239fb09d838d66462cd23315591d1440f4659050be8eace50bd0a62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97360c6d-982a-a404-ff68-5a4a30350d85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryCofan_isColimit_iff {X Y : TopCat} (c : BinaryCofan X Y) :
    Nonempty (IsColimit c) ↔
      OpenEmbedding c.inl ∧ OpenEmbedding c.inr ∧ IsCompl (Set.range c.inl) (Set.range c.inr) := by
  classical
    constructor
    · rintro ⟨h⟩
      rw [← show _ = c.inl from
          h.comp_coconePointUniqueUpToIso_inv (binaryCofanIsColimit X Y) ⟨WalkingPair.left⟩,
        ← show _ = c.inr from
          h.comp_coconePointUniqueUpToIso_inv (binaryCofanIsColimit X Y) ⟨WalkingPair.right⟩]
      dsimp
      refine' ⟨(homeoOfIso <| h.coconePointUniqueUpToIso
        (binaryCofanIsColimit X Y)).symm.openEmbedding.comp openEmbedding_inl,
          (homeoOfIso <| h.coconePointUniqueUpToIso
            (binaryCofanIsColimit X Y)).symm.openEmbedding.comp openEmbedding_inr, _⟩
      erw [Set.range_comp, ← eq_compl_iff_isCompl, coe_comp, coe_comp, Set.range_comp _ Sum.inr,
        ← Set.image_compl_eq (homeoOfIso <| h.coconePointUniqueUpToIso
            (binaryCofanIsColimit X Y)).symm.bijective, Set.compl_range_inr, Set.image_comp]
      aesop
    · rintro ⟨h₁, h₂, h₃⟩
      have : ∀ x, x ∈ Set.range c.inl ∨ x ∈ Set.range c.inr := by
        rw [eq_compl_iff_isCompl.mpr h₃.symm]
        exact fun _ => or_not
      refine' ⟨BinaryCofan.IsColimit.mk _ _ _ _ _⟩
      · intro T f g
        refine' ContinuousMap.mk _ _
        · exact fun x =>
            if h : x ∈ Set.range c.inl then f ((Equiv.ofInjective _ h₁.inj).symm ⟨x, h⟩)
            else g ((Equiv.ofInjective _ h₂.inj).symm ⟨x, (this x).resolve_left h⟩)
        rw [continuous_iff_continuousAt]
        intro x
        by_cases x ∈ Set.range c.inl
        · revert h x
          apply (IsOpen.continuousOn_iff _).mp
          · rw [continuousOn_iff_continuous_restrict]
            convert_to Continuous (f ∘ (Homeomorph.ofEmbedding _ h₁.toEmbedding).symm)
            · ext ⟨x, hx⟩
              exact dif_pos hx
            apply Continuous.comp
            · exact f.continuous_toFun
            · continuity
          · exact h₁.open_range
        · revert h x
          apply (IsOpen.continuousOn_iff _).mp
          · rw [continuousOn_iff_continuous_restrict]
            have : ∀ a, a ∉ Set.range c.inl → a ∈ Set.range c.inr := by
              rintro a (h : a ∈ (Set.range c.inl)ᶜ)
              rwa [eq_compl_iff_isCompl.mpr h₃.symm]
            convert_to Continuous
                (g ∘ (Homeomorph.ofEmbedding _ h₂.toEmbedding).symm ∘ Subtype.map _ this)
            · ext ⟨x, hx⟩
              exact dif_neg hx
            apply Continuous.comp
            · exact g.continuous_toFun
            · apply Continuous.comp
              · continuity
              · rw [embedding_subtype_val.toInducing.continuous_iff]
                exact continuous_subtype_val
          · change IsOpen (Set.range c.inl)ᶜ
            rw [← eq_compl_iff_isCompl.mpr h₃.symm]
            exact h₂.open_range
      · intro T f g
        ext x
        refine' (dif_pos _).trans _
        · exact ⟨x, rfl⟩
        · dsimp; conv_lhs => erw [Equiv.ofInjective_symm_apply]
      · intro T f g
        ext x
        refine' (dif_neg _).trans _
        · rintro ⟨y, e⟩
          have : c.inr x ∈ Set.range c.inl ⊓ Set.range c.inr := ⟨⟨_, e⟩, ⟨_, rfl⟩⟩
          rwa [disjoint_iff.mp h₃.1] at this
        · exact congr_arg g (Equiv.ofInjective_symm_apply _ _)
      · rintro T _ _ m rfl rfl
        ext x
        change m x = dite _ _ _
        split_ifs <;> exact congr_arg _ (Equiv.apply_ofInjective_symm _ ⟨_, _⟩).symm
#align Top.binary_cofan_is_colimit_iff TopCat.binaryCofan_isColimit_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c6249845f29829fac76e9824b6b43dce1ba8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
