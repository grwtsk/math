# card_nonuniformWitness_sdiff_biUnion_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a9688fe-d0b1-e8ed-62c5-d7b07cb5f2cb",
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
  "slug": "card-nonuniformwitness-sdiff-biunion-star--113b61755bedd36206bdb00e",
  "source": {
    "blob": "1d3640818920e6fa027bbee864ca5e7737da8fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:113b61755bedd36206bdb00e06bbea0f7ae11d1815633aec431395908abb5095",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a9688fe-d0b1-e8ed-62c5-d7b07cb5f2cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–128.

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
    simp only [not_exists, mem_biUnion, and_imp, mem_filter,
      not_and, mem_sdiff, id, mem_sdiff] at hx ⊢
    obtain ⟨⟨B, hB₁, hB₂⟩, hx⟩ := hx
    exact ⟨B, hB₁, hB₂, fun A hA AB => hx A hA <| AB.trans hB₁.2.1⟩
  apply (card_le_card q).trans (card_biUnion_le.trans _)
  trans ∑ B ∈ (atomise U <| P.nonuniformWitnesses G ε U).parts with
    B ⊆ G.nonuniformWitness ε U V ∧ B.Nonempty, m
  · suffices ∀ B ∈ (atomise U <| P.nonuniformWitnesses G ε U).parts,
        #(B \ {A ∈ (chunk hP G ε hU).parts | A ⊆ B}.biUnion id) ≤ m by
      gcongr with B hB
      exact this B <| filter_subset _ _ hB
    intro B hB
    unfold chunk
    split_ifs with h₁
    · convert! card_parts_equitabilise_subset_le _ (card_aux₁ h₁) hB
    · convert! card_parts_equitabilise_subset_le _ (card_aux₂ hP hU h₁) hB
  grw [sum_const, smul_eq_mul, card_filter_atomise_le_two_pow (s := U) hX,
    Finpartition.card_nonuniformWitnesses_le, filter_subset]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3640818920e6fa027bbee864ca5e7737da8fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
