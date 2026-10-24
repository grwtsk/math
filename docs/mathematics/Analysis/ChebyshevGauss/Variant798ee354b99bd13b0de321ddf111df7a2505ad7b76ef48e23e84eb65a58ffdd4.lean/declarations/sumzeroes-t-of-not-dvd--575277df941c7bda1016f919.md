# sumZeroes_T_of_not_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8c30a90-80e7-d45c-4783-10dc9e45deb5",
  "kind": "theorem",
  "lexical_name": "sumZeroes_T_of_not_dvd",
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
  "slug": "sumzeroes-t-of-not-dvd--575277df941c7bda1016f919",
  "source": {
    "blob": "f869b880aa9d5c6e2858410bad54b3e07bc8ad22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 93,
    "path": "GRWTSK/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:575277df941c7bda1016f9197e6f9cd86ccabf55c8e7ae6e63606d9bda48f8aa",
  "verification": {
    "reference": "docs/verification/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8c30a90-80e7-d45c-4783-10dc9e45deb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumZeroes_T_of_not_dvd {n : ℕ} {k : ℤ} (hk : ¬ (2 * n : ℤ) ∣ k) :
    sumZeroes n (T ℝ k) = 0 := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [sumZeroes]
  suffices ∑ i ∈ range n, 2 * cos (k * ((2 * i + 1) / (2 * n) * π)) = 0 by
    rw [sumZeroes, mul_eq_zero_iff_left (by aesop)]
    rw [← mul_sum, mul_eq_zero_iff_left (by norm_num)] at this
    simpa [T_real_cos]
  suffices (∑ i ∈ range n, 2 * cos (k * ((2 * i + 1) / (2 * n) * π)) : ℂ) = 0 by norm_cast at this ⊢
  suffices ∑ i ∈ range n, 2 * Complex.cos (k * ((2 * i + 1) / (2 * n) * π)) = 0 by aesop
  simp_rw [Complex.two_cos, ← neg_mul, ← Int.cast_neg]
  have : (-1 : ℂ) ^ (-k) = (-1) ^ k := by rw [← Int.cast_negOnePow, ← Int.cast_negOnePow]; simp
  rw [sum_add_distrib, sum_exp hn hk, sum_exp hn (by aesop),
    Int.cast_neg, neg_div, neg_mul, neg_mul, Complex.exp_neg,
    neg_div, neg_mul, neg_mul, Complex.exp_neg, this, ← add_mul, mul_eq_zero_of_left]
  set z := exp (k / (2 * n) * π * I) with hz
  have hz₂ : exp (k / n * π * I) = z ^ 2 := by rw [hz, ← Complex.exp_nat_mul]; grind
  rw [hz₂, ← inv_pow z 2]
  field [show z ≠ 0 by grind [Complex.exp_ne_zero],
    show (z ^ 2 - 1 ≠ 0) ∧ (1 - z ^ 2 ≠ 0) by grind [exp_sub_one_ne_zero]]

/-- The integral of a polynomial of degree `< 2 * n` with respect to the weight function
  `√(1 - x ^ 2)⁻¹` supported on `[-1, 1]` is equal to `π` times the average of its values
  on the points `cos ((2 * i + 1) / (2 * n) * π)` for `0 ≤ i < n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f869b880aa9d5c6e2858410bad54b3e07bc8ad22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
