# card_nonuniformWitness_sdiff_biUnion_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9769d3bcb634dc5777328da55c569754f66d5e76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93431d10-9bd5-5a5f-8b51-639c0893b495",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ea46d4c-bdb6-c4f8-a743-f70e29bd66e2",
  "kind": "theorem",
  "lexical_name": "card_nonuniformWitness_sdiff_biUnion_star",
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
  "slug": "card-nonuniformwitness-sdiff-biunion-star--2592026e3dbabb5009512c7a",
  "source": {
    "blob": "9769d3bcb634dc5777328da55c569754f66d5e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2592026e3dbabb5009512c7a9b5d0715abec11ab687bf374966028d136d492ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ea46d4c-bdb6-c4f8-a743-f70e29bd66e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_nonuniformWitness_sdiff_biUnion_star (hV : V ∈ P.parts) (hUV : U ≠ V)
    (h₂ : ¬G.IsUniform ε U V) :
    #(G.nonuniformWitness ε U V \ (star hP G ε hU V).biUnion id) ≤ 2 ^ (#P.parts - 1) * m := by
  have hX : G.nonuniformWitness ε U V ∈ P.nonuniformWitnesses G ε U :=
    nonuniformWitness_mem_nonuniformWitnesses h₂ hV hUV
  have q : G.nonuniformWitness ε U V \ (star hP G ε hU V).biUnion id ⊆
      {B ∈ (atomise U <| P.nonuniformWitnesses G ε U).parts |
        B ⊆ G.nonuniformWitness ε U V ∧ B.Nonempty}.biUnion
        fun B => B \ {A ∈ (chunk hP G ε hU).parts | A ⊆ B}.biUnion id := by
    intro x hx
    rw [← biUnion_filter_atomise hX (G.nonuniformWitness_subset h₂), star, mem_sdiff,
      mem_biUnion] at hx
    simp only [not_exists, mem_biUnion, and_imp, exists_prop, mem_filter,
      not_and, mem_sdiff, id, mem_sdiff] at hx ⊢
    obtain ⟨⟨B, hB₁, hB₂⟩, hx⟩ := hx
    exact ⟨B, hB₁, hB₂, fun A hA AB => hx A hA <| AB.trans hB₁.2.1⟩
  apply (card_le_card q).trans (card_biUnion_le.trans _)
  trans ∑ B ∈ (atomise U <| P.nonuniformWitnesses G ε U).parts with
    B ⊆ G.nonuniformWitness ε U V ∧ B.Nonempty, m
  · suffices ∀ B ∈ (atomise U <| P.nonuniformWitnesses G ε U).parts,
        #(B \ {A ∈ (chunk hP G ε hU).parts | A ⊆ B}.biUnion id) ≤ m by
      exact sum_le_sum fun B hB => this B <| filter_subset _ _ hB
    intro B hB
    unfold chunk
    split_ifs with h₁
    · convert card_parts_equitabilise_subset_le _ (card_aux₁ h₁) hB
    · convert card_parts_equitabilise_subset_le _ (card_aux₂ hP hU h₁) hB
  rw [sum_const]
  refine mul_le_mul_right' ?_ _
  have t := card_filter_atomise_le_two_pow (s := U) hX
  refine t.trans (pow_right_mono₀ (by norm_num) <| tsub_le_tsub_right ?_ _)
  exact card_image_le.trans (card_le_card <| filter_subset _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6f348dca6bcbbd41184056dbea3a8ea4845f959ca45ec085263dfb0af3237d03.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9769d3bcb634dc5777328da55c569754f66d5e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
