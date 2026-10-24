# lieSpan_range_union_eq_top_of_mem_rootSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5d6741e842c374db062571fb8ee2eb4b34ce935",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:922d5d49-8961-a3d2-d66c-2cf3e4b5fe9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbf30b91-528b-7626-0b46-f357c554e006",
  "kind": "lemma",
  "lexical_name": "lieSpan_range_union_eq_top_of_mem_rootSpace",
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
  "slug": "liespan-range-union-eq-top-of-mem-rootspace--29cf0f32f3b99ea35dc62160",
  "source": {
    "blob": "a5d6741e842c374db062571fb8ee2eb4b34ce935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 153,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29cf0f32f3b99ea35dc6216001841ad3b80cd3490d80cbbe264f587fcde90ca9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf30b91-528b-7626-0b46-f357c554e006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lieSpan_range_union_eq_top_of_mem_rootSpace [IsKilling K L] (b : (rootSystem H).Base)
    (e f : b.support → L)
    (ef_sl2 : ∀ α : b.support, IsSl2Triple ((rootSystem H).coroot α : L) (e α) (f α))
    (e_mem :  ∀ α : b.support, e α ∈ rootSpace H α)
    (f_mem :  ∀ α : b.support, f α ∈ rootSpace H (-↑α)) :
    lieSpan K L (range e ∪ range f) = ⊤ := by
  set S := lieSpan K L (range e ∪ range f) with S_def
  have e_mem_S (i : b.support) : e i ∈ S := subset_lieSpan (mem_union_left _ ⟨i, rfl⟩)
  have f_mem_S (i : b.support) : f i ∈ S := subset_lieSpan (mem_union_right _ ⟨i, rfl⟩)
  suffices ∀ α : H.root, rootSpace H α ≤ S.toSubmodule by
    replace this (α : Weight K H L) (hα : α.IsNonZero) : rootSpace H α ≤ S.toSubmodule :=
      this ⟨α, by simpa⟩
    rw [eq_top_iff, ← toSubmodule_le_toSubmodule, top_toSubmodule,
      ← LieSubmodule.top_toSubmodule (L := H), ← cartan_sup_iSup_rootSpace_eq_top H]
    have H_le : H ≤ S := by
      nth_rw 1 [cartan_eq_lieSpan b, lieSpan_le]
      rintro - ⟨i, rfl⟩
      simpa only [← (ef_sl2 i).lie_e_f, SetLike.mem_coe] using lie_mem _ (e_mem_S i) (f_mem_S i)
    simpa [H_le]
  suffices h : ∀ α : H.root,
    rootSpace H α ≤ S.toSubmodule ∧ rootSpace H (-α : Weight K H L) ≤ S.toSubmodule by grind
  refine fun α ↦ b.induction_add (p := fun α ↦
    rootSpace H α ≤ S.toSubmodule ∧ rootSpace H (-α : Weight K H L) ≤ S.toSubmodule) α ?_ ?_ ?_
  · rintro β hβ
    simpa [rootSystem_reflectionPerm_self_eq_neg] using hβ.symm
  · rintro β hβ
    set β' : b.support := ⟨β, hβ⟩
    have hβp : β.val.IsNonZero := H.isNonZero_coe_root β
    have hβn : (-β.val).IsNonZero := by simpa [Weight.isNonZero_neg] using H.isNonZero_coe_root β
    simpa only [Weight.coe_coe,
      toSubmodule_rootSpace_eq_span _ hβp (e β') (ef_sl2 β').e_ne_zero (e_mem β'),
      toSubmodule_rootSpace_eq_span _ hβn (f β') (ef_sl2 β').f_ne_zero (f_mem β'),
      Submodule.span_singleton_le_iff_mem, mem_toSubmodule] using ⟨e_mem_S β', f_mem_S β'⟩
  · rintro i j k hk ⟨hip, hin⟩ hj
    constructor
    · have h_ne_bot : rootSpace H ((rootSystem H).root j + (rootSystem H).root i) ≠ ⊥ := by
        convert (k : Weight K H L).genWeightSpace_ne_bot
        rw [← LinearMap.coe_add, add_comm, ← hk, rootSystem_root_apply, Weight.coe_coe]
      obtain ⟨x, hx, hlie⟩ := exists_mem_rootSpace_lie_ne_zero'
        (H.isNonZero_coe_root j) h_ne_bot (e_mem ⟨j, hj⟩) (ef_sl2 ⟨j, hj⟩).e_ne_zero
      have hmem : ⁅e ⟨j, hj⟩, x⁆ ∈ rootSpace H ((rootSystem H).root k) := by
        rw [hk, add_comm]
        exact mapsTo_toEnd_genWeightSpace_add_of_mem_rootSpace K L H L _ _ (e_mem ⟨j, hj⟩) hx
      simpa [toSubmodule_rootSpace_eq_span _ (H.isNonZero_coe_root k) _ hlie hmem] using
        lie_mem S (e_mem_S ⟨j, hj⟩) (hip hx)
    · replace hk : ⇑k.val = ⇑i.val + ⇑j.val := by ext x; simpa using DFunLike.congr_fun hk x
      replace hk : (⇑(-i).val + ⇑(-j).val) = ⇑(-k).val := by simp [hk, -neg_add_rev, neg_add]
      have h_ne_bot : rootSpace H (⇑(-j).val + ⇑(-i).val) ≠ ⊥ := by
        rw [add_comm, hk]; exact (-k).val.genWeightSpace_ne_bot
      obtain ⟨x, hx, hlie⟩ := exists_mem_rootSpace_lie_ne_zero'
        (H.isNonZero_coe_root (-j)) h_ne_bot (f_mem ⟨j, hj⟩) (ef_sl2 ⟨j, hj⟩).f_ne_zero
      have hmem : ⁅f ⟨j, hj⟩, x⁆ ∈ rootSpace H ⇑(-k).val := by
        rw [← hk, add_comm]
        exact mapsTo_toEnd_genWeightSpace_add_of_mem_rootSpace K L H L _ _ (f_mem ⟨j, hj⟩) hx
      simpa [toSubmodule_rootSpace_eq_span _ (H.isNonZero_coe_root (-k)) _ hlie hmem,
        ← val_neg_root] using lie_mem S (f_mem_S ⟨j, hj⟩) (hin hx)

open RootPairing in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d6741e842c374db062571fb8ee2eb4b34ce935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
