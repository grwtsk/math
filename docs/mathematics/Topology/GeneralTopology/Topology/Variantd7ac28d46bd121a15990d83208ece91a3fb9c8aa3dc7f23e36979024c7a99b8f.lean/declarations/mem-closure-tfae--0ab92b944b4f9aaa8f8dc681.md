# mem_closure_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7adb1015fe6f6bede211aaf15c14d53269e4a95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eea7dc3-fc34-4c0a-9eb2-a722eb7405bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07dd5cb8-ce8a-ac30-a0ac-f1db9e2836f5",
  "kind": "theorem",
  "lexical_name": "mem_closure_tfae",
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
  "slug": "mem-closure-tfae--0ab92b944b4f9aaa8f8dc681",
  "source": {
    "blob": "a7adb1015fe6f6bede211aaf15c14d53269e4a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ab92b944b4f9aaa8f8dc681c3a0f68a4699b086beb4c82709d28c99a884f48d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07dd5cb8-ce8a-ac30-a0ac-f1db9e2836f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_tfae (a : Ordinal.{u}) (s : Set Ordinal) :
    TFAE [a ∈ closure s,
      a ∈ closure (s ∩ Iic a),
      (s ∩ Iic a).Nonempty ∧ sSup (s ∩ Iic a) = a,
      ∃ t, t ⊆ s ∧ t.Nonempty ∧ BddAbove t ∧ sSup t = a,
      ∃ (ι : Type u), Nonempty ι ∧ ∃ f : ι → Ordinal, (∀ i, f i ∈ s) ∧ ⨆ i, f i = a] := by
  tfae_have 1 → 2 := by
    simpa only [mem_closure_iff_nhdsWithin_neBot, inter_comm s, nhdsWithin_inter',
      SuccOrder.nhdsLE_eq_nhds] using! id
  tfae_have 2 → 3
  | h => by
    rcases (s ∩ Iic a).eq_empty_or_nonempty with he | hne
    · simp [he] at h
    · refine ⟨hne, (isLUB_of_mem_closure ?_ h).csSup_eq hne⟩
      exact fun x hx => hx.2
  tfae_have 3 → 4
  | h => ⟨_, inter_subset_left, h.1, bddAbove_Iic.mono inter_subset_right, h.2⟩
  tfae_have 4 → 5 := by
    rintro ⟨t, ht, ht₀, ht₁, rfl⟩
    rw [bddAbove_iff_small] at ht₁
    refine ⟨Shrink t, ?_, Subtype.val ∘ (equivShrink _).symm, ?_, ?_⟩
    · have := ht₀.to_subtype
      exact (equivShrink _).symm.nonempty
    · simpa [← (equivShrink t).forall_congr_left (p := (·.1 ∈ s))]
    · simp [(equivShrink t).symm.iSup_comp, ← sSup_eq_iSup']
  tfae_have 5 → 1 := by
    rintro ⟨ι, hne, f, hfs, rfl⟩
    exact closure_mono (range_subset_iff.2 hfs) <| csSup_mem_closure (range_nonempty f)
      bddAbove_of_small
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7adb1015fe6f6bede211aaf15c14d53269e4a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
