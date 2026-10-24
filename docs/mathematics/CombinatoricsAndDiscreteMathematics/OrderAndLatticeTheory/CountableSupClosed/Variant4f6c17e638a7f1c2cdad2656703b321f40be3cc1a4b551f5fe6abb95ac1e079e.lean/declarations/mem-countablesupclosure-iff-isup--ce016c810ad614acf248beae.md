# mem_countableSupClosure_iff_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a45dd6b280ea039ae5b4a66b87f60f2598302e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d2c3985-a62c-11dd-7eeb-aee61ff4acd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:043fe1fd-1d6c-f040-15da-4d7296dd97da",
  "kind": "lemma",
  "lexical_name": "mem_countableSupClosure_iff_iSup",
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
  "slug": "mem-countablesupclosure-iff-isup--ce016c810ad614acf248beae",
  "source": {
    "blob": "0a45dd6b280ea039ae5b4a66b87f60f2598302e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce016c810ad614acf248beaea13236720c63a94e9211122b6e1100bca6f0ab36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:043fe1fd-1d6c-f040-15da-4d7296dd97da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_countableSupClosure_iff_iSup [CompleteLattice α] :
    a ∈ countableSupClosure s ↔ ∃ (t : ℕ → α), (∀ n, t n ∈ s) ∧ ⨆ n, t n = a := by
  suffices countableSupClosure s = {a | ∃ (t : ℕ → α), (∀ n, t n ∈ s) ∧ ⨆ n, t n = a} by simp [this]
  have h_csc : CountableSupClosed {a | ∃ (t : ℕ → α), (∀ n, t n ∈ s) ∧ ⨆ n, t n = a} := by
    refine .of_iSup_mem fun A hA ↦ ?_
    choose B hB hB_eq using hA
    refine ⟨fun n ↦ B (Nat.unpair n).1 (Nat.unpair n).2, fun _ ↦ hB _ _, ?_⟩
    simp [iSup_unpair, ← hB_eq]
  refine le_antisymm (countableSupClosure_min ?_ h_csc) ?_
  · exact fun a ha ↦ ⟨fun _ ↦ a, by simp [ha]⟩
  · rintro _ ⟨u, hus, rfl⟩
    exact countableSupClosed_countableSupClosure.iSup_mem fun n ↦ subset_countableSupClosure (hus n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a45dd6b280ea039ae5b4a66b87f60f2598302e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
