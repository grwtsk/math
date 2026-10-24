# forwardQuantized_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f257be908d780e46e6abdec6283adde2d150c4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ea75d26-e2dc-d73c-43a3-de8f421c9e0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f060a5b-1f6d-44fd-cc3c-ac96f9418c71",
  "kind": "theorem",
  "lexical_name": "forwardQuantized_sound",
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
  "slug": "forwardquantized-sound--2e5d14aa76dc99580362516f",
  "source": {
    "blob": "1f257be908d780e46e6abdec6283adde2d150c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 447,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e5d14aa76dc99580362516f50a62d013c9acd19df9ee29b5f179fcebbcc83d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f060a5b-1f6d-44fd-cc3c-ac96f9418c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardQuantized_sound
    (l_quant : QuantizedLayer)
    (input : AlignedInput)
    -- Dimension hypotheses
    (h_lo_dim : input.lo.size = l_quant.inDim)
    (h_hi_dim : input.hi.size = l_quant.inDim)
    (h_wpos_dim : l_quant.weightsPos.size = l_quant.outDim)
    (h_wneg_dim : l_quant.weightsNeg.size = l_quant.outDim)
    (h_bias_dim : l_quant.bias.size = l_quant.outDim)
    (h_wpos_cols : ∀ r (hr : r < l_quant.outDim), l_quant.weightsPos[r].size = l_quant.inDim)
    (h_wneg_cols : ∀ r (hr : r < l_quant.outDim), l_quant.weightsNeg[r].size = l_quant.inDim)
    -- Positivity invariant (required for split-sign logic)
    (h_pos_nonneg : ∀ r c, r < l_quant.outDim → c < l_quant.inDim →
        0 ≤ (l_quant.weightsPos[r]!)[c]!)
    (h_neg_nonneg : ∀ r c, r < l_quant.outDim → c < l_quant.inDim →
        0 ≤ (l_quant.weightsNeg[r]!)[c]!)
    -- Input bounds validity: lo ≤ hi for each component
    (h_bounds_valid : ∀ k, k < l_quant.inDim → input.lo[k]! ≤ input.hi[k]!)
    -- Already aligned
    (h_aligned : input.exp = l_quant.commonExp) :
    -- Conclusion: Output bounds are valid (lo ≤ hi)
    ∀ idx (_hidx : idx < l_quant.outDim),
      (l_quant.forwardQuantized input).lo[idx]! ≤ (l_quant.forwardQuantized input).hi[idx]! := by

  intro idx hidx
  simp only [forwardQuantized]

  -- Since input is already aligned (h_aligned), shift is 0
  have h_shift_zero : input.exp - l_quant.commonExp = 0 := by omega
  simp only [h_shift_zero]

  -- shiftInt by 0 is identity
  have h_shift_0 : ∀ v : Int, shiftInt v 0 = v := by
    intro v
    simp only [shiftInt]
    split_ifs <;> simp

  -- The shifted arrays equal the input arrays
  have h_l_eq : input.lo.map (shiftInt · 0) = input.lo := by
    ext k
    · simp only [Array.size_map]
    · simp only [Array.getElem_map, h_shift_0]
  have h_u_eq : input.hi.map (shiftInt · 0) = input.hi := by
    ext k
    · simp only [Array.size_map]
    · simp only [Array.getElem_map, h_shift_0]

  simp only [h_l_eq, h_u_eq]

  -- The core insight: output lo uses (wpos·lo - wneg·hi + bias)
  --                   output hi uses (wpos·hi - wneg·lo + bias)
  -- ReLU preserves ordering: max(0, a) ≤ max(0, b) when a ≤ b

  -- Abbreviate for clarity
  let wpos := l_quant.weightsPos
  let wneg := l_quant.weightsNeg
  let lo := input.lo
  let hi := input.hi
  let bias := l_quant.bias

  -- Establish index bounds for all intermediate arrays
  have h_wpos_size : idx < wpos.size := h_wpos_dim ▸ hidx
  have h_wneg_size : idx < wneg.size := h_wneg_dim ▸ hidx
  have h_bias_size : idx < bias.size := h_bias_dim ▸ hidx
  -- Note: lo and hi don't directly relate to idx (they have dimension inDim, not outDim)
  -- We don't need these bounds for the proof

  have h_matmul_wpos_lo : idx < (matVecMulInt wpos lo).size := by simp [matVecMulInt, h_wpos_size]
  have h_matmul_wneg_hi : idx < (matVecMulInt wneg hi).size := by simp [matVecMulInt, h_wneg_size]
  have h_matmul_wpos_hi : idx < (matVecMulInt wpos hi).size := by simp [matVecMulInt, h_wpos_size]
  have h_matmul_wneg_lo : idx < (matVecMulInt wneg lo).size := by simp [matVecMulInt, h_wneg_size]

  have h_sub_lo : idx < (subIntArrays (matVecMulInt wpos lo) (matVecMulInt wneg hi)).size := by
    simp [subIntArrays, h_matmul_wpos_lo, h_matmul_wneg_hi]
  have h_sub_hi : idx < (subIntArrays (matVecMulInt wpos hi) (matVecMulInt wneg lo)).size := by
    simp [subIntArrays, h_matmul_wpos_hi, h_matmul_wneg_lo]

  have h_add_lo : idx < (addIntArrays (subIntArrays (matVecMulInt wpos lo) (matVecMulInt wneg hi)) bias).size := by
    simp [addIntArrays, h_sub_lo, h_bias_size]
  have h_add_hi : idx < (addIntArrays (subIntArrays (matVecMulInt wpos hi) (matVecMulInt wneg lo)) bias).size := by
    simp [addIntArrays, h_sub_hi, h_bias_size]

  -- Use the helper lemmas to simplify the indexing
  rw [reluInt_getElem! _ _ h_add_lo, reluInt_getElem! _ _ h_add_hi]
  rw [addIntArrays_getElem! _ _ _ h_sub_lo h_bias_size, addIntArrays_getElem! _ _ _ h_sub_hi h_bias_size]
  rw [subIntArrays_getElem! _ _ _ h_matmul_wpos_lo h_matmul_wneg_hi]
  rw [subIntArrays_getElem! _ _ _ h_matmul_wpos_hi h_matmul_wneg_lo]
  rw [matVecMulInt_getElem! _ _ _ h_wpos_size, matVecMulInt_getElem! _ _ _ h_wneg_size]
  rw [matVecMulInt_getElem! _ _ _ h_wpos_size, matVecMulInt_getElem! _ _ _ h_wneg_size]

  -- Goal is now: max 0 (dotProductInt wpos[idx]! lo - dotProductInt wneg[idx]! hi + bias[idx]!)
  --            ≤ max 0 (dotProductInt wpos[idx]! hi - dotProductInt wneg[idx]! lo + bias[idx]!)

  -- Size of wpos[idx]! = inDim (when idx in bounds)
  have h_wpos_idx_size : wpos[idx]!.size = l_quant.inDim := by
    rw [Array.getElem!_eq_getD, Array.getD_eq_getElem _ _ h_wpos_size]
    exact h_wpos_cols idx hidx
  have h_wneg_idx_size : wneg[idx]!.size = l_quant.inDim := by
    rw [Array.getElem!_eq_getD, Array.getD_eq_getElem _ _ h_wneg_size]
    exact h_wneg_cols idx hidx

  -- lo and hi have the same size
  have h_lo_hi_size : lo.size = hi.size := by rw [h_lo_dim, h_hi_dim]

  -- Get the monotonicity from dotProductInt_mono_nonneg
  have h_wpos_mono : dotProductInt wpos[idx]! lo ≤ dotProductInt wpos[idx]! hi := by
    apply dotProductInt_mono_nonneg
    · intro i hlo _
      have hi_bound : i < l_quant.inDim := by
        simp only [h_wpos_idx_size] at hlo; omega
      exact h_pos_nonneg idx i hidx hi_bound
    · intro i hlo _
      have hi_bound : i < l_quant.inDim := by
        simp only [h_wpos_idx_size] at hlo; omega
      exact h_bounds_valid i hi_bound
    · simp only [h_lo_hi_size]

  have h_wneg_mono : dotProductInt wneg[idx]! lo ≤ dotProductInt wneg[idx]! hi := by
    apply dotProductInt_mono_nonneg
    · intro i hlo _
      have hi_bound : i < l_quant.inDim := by
        simp only [h_wneg_idx_size] at hlo; omega
      exact h_neg_nonneg idx i hidx hi_bound
    · intro i hlo _
      have hi_bound : i < l_quant.inDim := by
        simp only [h_wneg_idx_size] at hlo; omega
      exact h_bounds_valid i hi_bound
    · simp only [h_lo_hi_size]

  -- The key arithmetic inequality:
  -- wpos·lo - wneg·hi ≤ wpos·hi - wneg·lo
  -- Rearranging: wpos·lo + wneg·lo ≤ wpos·hi + wneg·hi
  have h_ineq : dotProductInt wpos[idx]! lo - dotProductInt wneg[idx]! hi ≤
                dotProductInt wpos[idx]! hi - dotProductInt wneg[idx]! lo := by omega

  -- Adding bias to both sides preserves the inequality
  have h_ineq_bias : dotProductInt wpos[idx]! lo - dotProductInt wneg[idx]! hi + bias[idx]! ≤
                     dotProductInt wpos[idx]! hi - dotProductInt wneg[idx]! lo + bias[idx]! := by omega

  -- max(0, ·) is monotone
  exact max_le_max_left 0 h_ineq_bias

/-- Main soundness theorem: The output interval bounds satisfy lo ≤ hi when
    there exists a real input x in the input interval.

    This version shows that the output interval is non-empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f257be908d780e46e6abdec6283adde2d150c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
