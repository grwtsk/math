# bernoulliFourierCoeff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5678224-f0d5-5c1d-2d0a-88972dd2a0d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:653b3323-f71c-d7e8-64e3-01947f8f7b91",
  "kind": "theorem",
  "lexical_name": "bernoulliFourierCoeff_eq",
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
  "slug": "bernoullifouriercoeff-eq--3e7bf49af2a8f577bfdf30a2",
  "source": {
    "blob": "771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 119,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e7bf49af2a8f577bfdf30a2acd99f91b5af3e9b41c5b60d491fb20ba93d72c5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:653b3323-f71c-d7e8-64e3-01947f8f7b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulliFourierCoeff_eq {k : ℕ} (hk : k ≠ 0) (n : ℤ) :
    bernoulliFourierCoeff k n = -k ! / (2 * π * I * n) ^ k := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · rw [bernoulliFourierCoeff_zero hk, Int.cast_zero, mul_zero, zero_pow hk,
      div_zero]
  refine Nat.le_induction ?_ (fun k hk h'k => ?_) k (Nat.one_le_iff_ne_zero.mpr hk)
  · rw [bernoulliFourierCoeff_recurrence 1 hn]
    simp only [Nat.cast_one, tsub_self, neg_mul, one_mul, eq_self_iff_true, if_true,
      Nat.factorial_one, pow_one, inv_I, mul_neg]
    rw [bernoulli_zero_fourier_coeff hn, sub_zero, mul_one, div_neg, neg_div]
  · rw [bernoulliFourierCoeff_recurrence (k + 1) hn, Nat.add_sub_cancel k 1]
    split_ifs with h
    · exfalso; exact (ne_of_gt (Nat.lt_succ_iff.mpr hk)) h
    · rw [h'k, Nat.factorial_succ, zero_sub, Nat.cast_mul, pow_add, pow_one, neg_div, mul_neg,
        mul_neg, mul_neg, neg_neg, neg_mul, neg_mul, neg_mul, div_neg]
      field_simp [Int.cast_ne_zero.mpr hn, I_ne_zero]
      ring_nf

end BernoulliFourierCoeffs

section BernoulliPeriodized

/-! In this section we use the above evaluations of the Fourier coefficients of Bernoulli
polynomials, together with the theorem `has_pointwise_sum_fourier_series_of_summable` from Fourier
theory, to obtain an explicit formula for `∑ (n:ℤ), 1 / n ^ k * fourier n x`. -/


/-- The Bernoulli polynomial, extended from `[0, 1)` to the unit circle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
