# one_sub_eps_mul_card_nonuniformWitness_le_card_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe82b5b7f503465ea2496096f7f8af51b174624c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b9b8ecc-c752-d5f7-4d8a-051a9bc4bc8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a220db8-38ef-7bca-f647-f934da7a48b9",
  "kind": "theorem",
  "lexical_name": "one_sub_eps_mul_card_nonuniformWitness_le_card_star",
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
  "slug": "one-sub-eps-mul-card-nonuniformwitness-le-card-star--73fa721516f1d5da65b33513",
  "source": {
    "blob": "fe82b5b7f503465ea2496096f7f8af51b174624c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73fa721516f1d5da65b335139712fae7a21a16b4385fb5e28dced93bae9658fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a220db8-38ef-7bca-f647-f934da7a48b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem one_sub_eps_mul_card_nonuniformWitness_le_card_star (hV : V ∈ P.parts)
    (hUV : U ≠ V) (hunif : ¬G.IsUniform ε U V) (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5)
    (hε₁ : ε ≤ 1) :
    (1 - ε / 10) * (G.nonuniformWitness ε U V).card ≤ ((star hP G ε hU V).biUnion id).card := by
  have hP₁ : 0 < P.parts.card := Finset.card_pos.2 ⟨_, hU⟩
  have : (↑2 ^ P.parts.card : ℝ) * m / (U.card * ε) ≤ ε / 10 := by
    rw [← div_div, div_le_iff']
    swap
    sz_positivity
    refine' le_of_mul_le_mul_left _ (pow_pos zero_lt_two P.parts.card)
    calc
      ↑2 ^ P.parts.card * ((↑2 ^ P.parts.card * m : ℝ) / U.card) =
          ((2 : ℝ) * 2) ^ P.parts.card * m / U.card := by
        rw [mul_pow, ← mul_div_assoc, mul_assoc]
      _ = ↑4 ^ P.parts.card * m / U.card := by norm_num
      _ ≤ 1 := (div_le_one_of_le (pow_mul_m_le_card_part hP hU) (cast_nonneg _))
      _ ≤ ↑2 ^ P.parts.card * ε ^ 2 / 10 := by
        refine' (one_le_sq_iff <| by positivity).1 _
        rw [div_pow, mul_pow, pow_right_comm, ← pow_mul ε,
          one_le_div (sq_pos_of_ne_zero (10 : ℝ) <| by norm_num)]
        calc
          (↑10 ^ 2) = 100 := by norm_num
          _ ≤ ↑4 ^ P.parts.card * ε ^ 5 := hPε
          _ ≤ ↑4 ^ P.parts.card * ε ^ 4 :=
            (mul_le_mul_of_nonneg_left (pow_le_pow_of_le_one (by sz_positivity) hε₁ <| le_succ _)
              (by positivity))
          _ = (↑2 ^ 2) ^ P.parts.card * ε ^ (2 * 2) := by norm_num
      _ = ↑2 ^ P.parts.card * (ε * (ε / 10)) := by rw [mul_div_assoc, sq, mul_div_assoc]
  calc
    (↑1 - ε / 10) * (G.nonuniformWitness ε U V).card ≤
        (↑1 - ↑2 ^ P.parts.card * m / (U.card * ε)) * (G.nonuniformWitness ε U V).card :=
      mul_le_mul_of_nonneg_right (sub_le_sub_left this _) (cast_nonneg _)
    _ = (G.nonuniformWitness ε U V).card -
        ↑2 ^ P.parts.card * m / (U.card * ε) * (G.nonuniformWitness ε U V).card := by
      rw [sub_mul, one_mul]
    _ ≤ (G.nonuniformWitness ε U V).card - ↑2 ^ (P.parts.card - 1) * m := by
      refine' sub_le_sub_left _ _
      have : (2 : ℝ) ^ P.parts.card = ↑2 ^ (P.parts.card - 1) * 2 := by
        rw [← _root_.pow_succ', tsub_add_cancel_of_le (succ_le_iff.2 hP₁)]
      rw [← mul_div_right_comm, this, mul_right_comm _ (2 : ℝ), mul_assoc, le_div_iff]
      refine' mul_le_mul_of_nonneg_left _ (by positivity)
      exact (G.le_card_nonuniformWitness hunif).trans
        (le_mul_of_one_le_left (cast_nonneg _) one_le_two)
      have := Finset.card_pos.mpr (P.nonempty_of_mem_parts hU)
      sz_positivity
    _ ≤ ((star hP G ε hU V).biUnion id).card := by
      rw [sub_le_comm, ←
        cast_sub (card_le_of_subset <| biUnion_star_subset_nonuniformWitness hP G ε hU V), ←
        card_sdiff (biUnion_star_subset_nonuniformWitness hP G ε hU V)]
      exact_mod_cast card_nonuniformWitness_sdiff_biUnion_star hV hUV hunif

/-! ### `chunk` -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe82b5b7f503465ea2496096f7f8af51b174624c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
