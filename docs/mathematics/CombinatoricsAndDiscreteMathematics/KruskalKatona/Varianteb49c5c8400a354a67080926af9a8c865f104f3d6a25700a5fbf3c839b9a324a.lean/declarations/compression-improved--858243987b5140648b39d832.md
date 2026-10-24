# compression_improved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "823982778b6c949859a1a495a90fa0fd7a2e64d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f2dd733-2f41-2463-c234-824668cb86e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6db070ca-2c7e-0330-f557-0ab15fd26ceb",
  "kind": "lemma",
  "lexical_name": "compression_improved",
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
  "slug": "compression-improved--858243987b5140648b39d832",
  "source": {
    "blob": "823982778b6c949859a1a495a90fa0fd7a2e64d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:858243987b5140648b39d83298722f1ba02f6674347a0df8761ec5963bde6b24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6db070ca-2c7e-0330-f557-0ab15fd26ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma compression_improved (𝒜 : Finset (Finset α)) (h₁ : UsefulCompression U V)
    (h₂ : ∀ ⦃U₁ V₁⦄, UsefulCompression U₁ V₁ → #U₁ < #U → IsCompressed U₁ V₁ 𝒜) :
    #(∂ (𝓒 U V 𝒜)) ≤ #(∂ 𝒜) := by
  obtain ⟨UVd, same_size, hU, hV, max_lt⟩ := h₁
  refine card_shadow_compression_le _ _ fun x Hx ↦ ⟨min' V hV, min'_mem _ _, ?_⟩
  obtain hU' | hU' := eq_or_lt_of_le (succ_le_iff.2 hU.card_pos)
  · rw [← hU'] at same_size
    have : erase U x = ∅ := by rw [← Finset.card_eq_zero, card_erase_of_mem Hx, ← hU']
    have : erase V (min' V hV) = ∅ := by
      rw [← Finset.card_eq_zero, card_erase_of_mem (min'_mem _ _), ← same_size]
    rw [‹erase U x = ∅›, ‹erase V (min' V hV) = ∅›]
    exact isCompressed_self _ _
  refine h₂ ⟨UVd.mono (erase_subset ..) (erase_subset ..), ?_, ?_, ?_, ?_⟩ (card_erase_lt_of_mem Hx)
  · rw [card_erase_of_mem (min'_mem _ _), card_erase_of_mem Hx, same_size]
  · rwa [← card_pos, card_erase_of_mem Hx, tsub_pos_iff_lt]
  · rwa [← Finset.card_pos, card_erase_of_mem (min'_mem _ _), ← same_size, tsub_pos_iff_lt]
  · exact (Finset.max'_subset _ <| erase_subset _ _).trans_lt (max_lt.trans_le <| le_max' _ _ <|
      mem_erase.2 ⟨(min'_lt_max'_of_card _ (by rwa [← same_size])).ne', max'_mem _ _⟩)

/-- If we're compressed by all useful compressions, then we're an initial segment. This is the other
key Kruskal-Katona part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823982778b6c949859a1a495a90fa0fd7a2e64d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
