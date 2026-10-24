# bitIndices_sum_map_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31df0943-2742-8c89-54c3-b567473b9e0d",
  "kind": "theorem",
  "lexical_name": "bitIndices_sum_map_two_pow",
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
  "slug": "bitindices-sum-map-two-pow--7e787e5bc5080017f7481fa4",
  "source": {
    "blob": "458439aeb248646218c83c720eff1a55956a00a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e787e5bc5080017f7481fa4ad5ac8c259bc94b5048bfd66a125492bf326a8b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31df0943-2742-8c89-54c3-b567473b9e0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitIndices_sum_map_two_pow {L : List ℕ} (hL : List.SortedLT L) :
    (L.map (fun i ↦ 2 ^ i)).sum.bitIndices = L := by
  cases L with | nil => simp | cons a L =>
  obtain ⟨haL, hL⟩ := pairwise_cons.1 hL.pairwise
  simp_rw [Nat.lt_iff_add_one_le] at haL
  have h' : ∃ (L₀ : List ℕ), L₀.SortedLT ∧ L = L₀.map (· + a + 1) := by
    refine ⟨L.map (· - (a+1)), ?_, ?_⟩
    · rwa [sortedLT_iff_pairwise, pairwise_map, Pairwise.and_mem,
        Pairwise.iff (S := fun x y ↦ x ∈ L ∧ y ∈ L ∧ x < y), ← Pairwise.and_mem]
      simp only [and_congr_right_iff]
      exact fun x y hx _ ↦ by rw [tsub_lt_tsub_iff_right (haL _ hx)]
    have h' : ∀ x ∈ L, ((fun x ↦ x + a + 1) ∘ (fun x ↦ x - (a + 1))) x = x := fun x hx ↦ by
      simp only [add_assoc, Function.comp_apply]; rw [tsub_add_cancel_of_le (haL _ hx)]
    simp [List.map_congr_left h']
  obtain ⟨L₀, hL₀, rfl⟩ := h'
  have hrw : (2 ^ ·) ∘ (· + a + 1) = fun i ↦ 2 ^ a * (2 * 2 ^ i) := by
    ext x; simp only [Function.comp_apply, pow_add, pow_one]; ac_rfl
  simp only [List.map_cons, List.map_map, List.sum_map_mul_left, List.sum_cons, hrw]
  nth_rw 1 [← mul_one (a := 2 ^ a)]
  rw [← mul_add, bitIndices_two_pow_mul, add_comm, bitIndices_two_mul_add_one,
    bitIndices_sum_map_two_pow hL₀]
  simp [add_comm (a := 1), add_assoc]
termination_by L.length

@[deprecated (since := "2026-05-15")] alias bitIndices_twoPowsum := bitIndices_sum_map_two_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `458439aeb248646218c83c720eff1a55956a00a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
