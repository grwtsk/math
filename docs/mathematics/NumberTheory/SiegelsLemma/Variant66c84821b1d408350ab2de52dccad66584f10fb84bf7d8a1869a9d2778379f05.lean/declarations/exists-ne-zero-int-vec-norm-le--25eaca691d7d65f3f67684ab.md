# exists_ne_zero_int_vec_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b768dc8-1035-5fdc-f5af-0a32f3630840",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4aba523c-fc9a-5606-35f6-57afa7a177a0",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_int_vec_norm_le",
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
  "slug": "exists-ne-zero-int-vec-norm-le--25eaca691d7d65f3f67684ab",
  "source": {
    "blob": "5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 176,
    "path": "GRWTSK/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25eaca691d7d65f3f67684ab59648e374f6861304a861d742ba922a06f655058",
  "verification": {
    "reference": "docs/verification/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aba523c-fc9a-5606-35f6-57afa7a177a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_int_vec_norm_le
    (hn : Fintype.card α < Fintype.card β) (hm : 0 < Fintype.card α) : ∃ t : β → ℤ, t ≠ 0 ∧
    A *ᵥ t = 0 ∧ ‖t‖ ≤ (n * max 1 ‖A‖) ^ ((m : ℝ) / (n - m)) := by
  classical
  -- Pigeonhole
  rcases Finset.exists_ne_map_eq_of_card_lt_of_maps_to
    (card_S_lt_card_T A hn hm) (image_T_subset_S A)
    with ⟨x, hxT, y, hyT, hneq, hfeq⟩
  -- Proofs that x - y ≠ 0 and x - y is a solution
  refine ⟨x - y, sub_ne_zero.mpr hneq, by simp only [mulVec_sub, sub_eq_zero, hfeq], ?_⟩
  -- Inequality
  have n_mul_norm_A_pow_e_nonneg : 0 ≤ (n * max 1 ‖A‖) ^ e := by positivity
  rw [← norm_replicateCol (ι := Unit), norm_le_iff n_mul_norm_A_pow_e_nonneg]
  intro i j
  simp only [replicateCol_apply, Pi.sub_apply]
  rw [Int.norm_eq_abs, ← Int.cast_abs]
  refine le_trans ?_ (Nat.floor_le n_mul_norm_A_pow_e_nonneg)
  norm_cast
  rw [abs_le]
  rw [Finset.mem_Icc] at hxT hyT
  constructor
  · simp only [neg_le_sub_iff_le_add]
    apply le_trans (hyT.2 i)
    norm_cast
    simp only [le_add_iff_nonneg_left]
    exact hxT.1 i
  · simp only [tsub_le_iff_right]
    apply le_trans (hxT.2 i)
    norm_cast
    simp only [le_add_iff_nonneg_right]
    exact hyT.1 i


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
