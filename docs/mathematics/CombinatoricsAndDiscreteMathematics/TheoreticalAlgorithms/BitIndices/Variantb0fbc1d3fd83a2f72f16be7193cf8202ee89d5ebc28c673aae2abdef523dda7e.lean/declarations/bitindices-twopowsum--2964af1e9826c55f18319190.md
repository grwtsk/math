# bitIndices_twoPowsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8ce7e216a3f4c50b7e4a4b9020e22bf581e6ac4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4823c6c5-9906-1484-3ff2-6e1dde50aba8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8864cb13-dd66-8be6-9e2c-a4cee69905f4",
  "kind": "theorem",
  "lexical_name": "bitIndices_twoPowsum",
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
  "slug": "bitindices-twopowsum--2964af1e9826c55f18319190",
  "source": {
    "blob": "f8ce7e216a3f4c50b7e4a4b9020e22bf581e6ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2964af1e9826c55f1831919073f49f0bfc5d6432eed4cddd54b2635dae33e201",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8864cb13-dd66-8be6-9e2c-a4cee69905f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitIndices_twoPowsum {L : List ℕ} (hL : List.Sorted (· < ·) L) :
    (L.map (fun i ↦ 2^i)).sum.bitIndices = L := by
  cases L with | nil => simp | cons a L =>
  obtain ⟨haL, hL⟩ := sorted_cons.1 hL
  simp_rw [Nat.lt_iff_add_one_le] at haL
  have h' : ∃ (L₀ : List ℕ), L₀.Sorted (· < ·) ∧ L = L₀.map (· + a + 1) := by
    refine ⟨L.map (· - (a+1)), ?_, ?_⟩
    · rwa [Sorted, pairwise_map, Pairwise.and_mem,
        Pairwise.iff (S := fun x y ↦ x ∈ L ∧ y ∈ L ∧ x < y), ← Pairwise.and_mem]
      simp only [and_congr_right_iff]
      exact fun x y hx _ ↦ by rw [tsub_lt_tsub_iff_right (haL _ hx)]
    have h' : ∀ x ∈ L, ((fun x ↦ x + a + 1) ∘ (fun x ↦ x - (a + 1))) x = x := fun x hx ↦ by
      simp only [add_assoc, Function.comp_apply]; rw [tsub_add_cancel_of_le (haL _ hx)]
    simp [List.map_congr_left h']
  obtain ⟨L₀, hL₀, rfl⟩ := h'
  have _ : L₀.length < (a :: (L₀.map (· + a + 1))).length := by simp
  have hrw : (2^·) ∘ (· + a + 1) = fun i ↦ 2^a * (2 * 2^i) := by
    ext x; simp only [Function.comp_apply, pow_add, pow_one]; ac_rfl
  simp only [List.map_cons, List.map_map, List.sum_map_mul_left, List.sum_cons, hrw]
  nth_rw 1 [← mul_one (a := 2^a)]
  rw [← mul_add, bitIndices_two_pow_mul, add_comm, bitIndices_two_mul_add_one,
    bitIndices_twoPowsum hL₀]
  simp [add_comm (a := 1), add_assoc]
termination_by L.length

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variantb0fbc1d3fd83a2f72f16be7193cf8202ee89d5ebc28c673aae2abdef523dda7e.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ce7e216a3f4c50b7e4a4b9020e22bf581e6ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
