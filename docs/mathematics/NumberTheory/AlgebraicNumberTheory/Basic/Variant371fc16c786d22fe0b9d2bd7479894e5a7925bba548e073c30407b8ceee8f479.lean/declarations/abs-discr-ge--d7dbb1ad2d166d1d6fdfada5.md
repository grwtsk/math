# abs_discr_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f83fb5fba5dee44f0ade06ada565799589a4e1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2805cbb-0cbc-e8d7-5eae-dc348a700dac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b6f8a2f-0441-a0a6-9b98-f2ae0c2fb0d9",
  "kind": "theorem",
  "lexical_name": "abs_discr_ge",
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
  "slug": "abs-discr-ge--d7dbb1ad2d166d1d6fdfada5",
  "source": {
    "blob": "5f83fb5fba5dee44f0ade06ada565799589a4e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 242,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7dbb1ad2d166d1d6fdfada5c8d75bd0e65b47bd824b74dae41b00e4ff27e074",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b6f8a2f-0441-a0a6-9b98-f2ae0c2fb0d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_discr_ge (h : 1 < finrank ℚ K) :
    (4 / 9 : ℝ) * (3 * π / 4) ^ finrank ℚ K ≤ |discr K| := by
  refine le_trans ?_ (abs_discr_ge' K)
  -- The sequence `a n` is a lower bound for `|discr K|`. We prove below by induction a uniform
  -- lower bound for this sequence from which we deduce the result.
  rw [mul_comm 2 _]
  let a : ℕ → ℝ := fun n => (n : ℝ) ^ (n * 2) / ((4 / π) ^ n * (n.factorial : ℝ) ^ 2)
  suffices ∀ n, 2 ≤ n → (4 / 9 : ℝ) * (3 * π / 4) ^ n ≤ a n by
    refine le_trans (this (finrank ℚ K) h) ?_
    simp only [a]
    gcongr
    · exact (one_le_div Real.pi_pos).2 Real.pi_le_four
    · rw [← card_add_two_mul_card_eq_rank, mul_comm]
      exact Nat.le_add_left _ _
  intro n hn
  induction n, hn using Nat.le_induction with
  | base => exact le_of_eq <| by simp [a, Nat.factorial_two]; field
  | succ m _ h_m =>
      suffices (3 : ℝ) ≤ (1 + 1 / m : ℝ) ^ (2 * m) by
        convert_to _ ≤ (a m) * (1 + 1 / m : ℝ) ^ (2 * m) / (4 / π)
        · simp_rw [a, add_mul, one_mul, pow_succ, Nat.factorial_succ]
          field_simp
          simp [field, div_pow]
          ring
        · rw [_root_.le_div_iff₀ (by positivity), pow_succ]
          convert! (mul_le_mul h_m this (by positivity) (by positivity)) using 1
          field
      refine le_trans (le_of_eq (by simp [field]; norm_num)) (one_add_mul_le_pow ?_ (2 * m))
      exact le_trans (by norm_num : (-2 : ℝ) ≤ 0) (by positivity)

/-- **Hermite-Minkowski Theorem**. A nontrivial number field has discriminant greater than `2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f83fb5fba5dee44f0ade06ada565799589a4e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
