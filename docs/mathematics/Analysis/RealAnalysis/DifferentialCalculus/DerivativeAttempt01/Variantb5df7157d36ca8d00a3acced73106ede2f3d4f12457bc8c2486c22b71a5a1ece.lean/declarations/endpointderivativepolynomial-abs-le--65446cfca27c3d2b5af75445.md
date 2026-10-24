# endpointDerivativePolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9abfa20-8b37-2c54-e708-5471aab9f2d5",
  "kind": "theorem",
  "lexical_name": "endpointDerivativePolynomial_abs_le",
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
  "slug": "endpointderivativepolynomial-abs-le--65446cfca27c3d2b5af75445",
  "source": {
    "blob": "db99d3b4c084a9e0ff62baaba89f17b018f389c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantb5df7157d36ca8d00a3acced73106ede2f3d4f12457bc8c2486c22b71a5a1ece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65446cfca27c3d2b5af7544503e05e1b089fa08927c7444f88d5c6c842e2ff1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantb5df7157d36ca8d00a3acced73106ede2f3d4f12457bc8c2486c22b71a5a1ece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9abfa20-8b37-2c54-e708-5471aab9f2d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointDerivativePolynomial_abs_le (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    |endpointDerivativePolynomial A r| ≤ 1280 * r + 16 * r ^ 3 := by
  have hA0 : 0 < A := by linarith
  have hq0 : 0 ≤ r / A := div_nonneg hr hA0.le
  have hq2 : r / A ≤ 2 := (div_le_iff₀ hA0).2 hrA
  have hv : |2 - r / A| ≤ 2 := by rw [abs_le]; constructor <;> linarith
  have hs : |1 - r / A| ≤ 1 := by rw [abs_le]; constructor <;> linarith
  have hv2 : (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hs2 : (1 - r / A) ^ 2 ≤ 1 := by nlinarith
  have hc : |7 * (1 - r / A) ^ 2 - 1| ≤ 6 := by
    rw [abs_le]
    constructor <;> nlinarith [sq_nonneg (1 - r / A)]
  have hi : |8 * (7 * (1 - r / A) ^ 2 - 1) -
      r ^ 2 * (2 - r / A) ^ 2 / 4| ≤ 48 + r ^ 2 := by
    calc
      _ ≤ |8 * (7 * (1 - r / A) ^ 2 - 1)| +
        |r ^ 2 * (2 - r / A) ^ 2 / 4| := abs_sub _ _
      _ = 8 * |7 * (1 - r / A) ^ 2 - 1| +
        r ^ 2 * (2 - r / A) ^ 2 / 4 := by
          rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 8),
            abs_of_nonneg (by positivity)]
      _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_left hv2 (sq_nonneg r)]
  have hrv : |r * (2 - r / A) * (1 - r / A)| ≤ 2 * r := by
    rw [abs_mul, abs_mul, abs_of_nonneg hr]
    exact (mul_le_mul_of_nonneg_left
      (mul_le_mul hv hs (abs_nonneg _) (by norm_num)) hr).trans_eq (by ring)
  have hj : |-112 * (1 - r / A) / A -
      r * (2 - r / A) * (1 - r / A)| ≤ 112 / A + 2 * r := by
    calc
      _ ≤ |-112 * (1 - r / A) / A| +
        |r * (2 - r / A) * (1 - r / A)| := abs_sub _ _
      _ = 112 * |1 - r / A| / A +
        |r * (2 - r / A) * (1 - r / A)| := by
          rw [abs_div, abs_mul, abs_of_pos hA0]
          norm_num
      _ ≤ _ := add_le_add
        (div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hs (by norm_num)) hA0.le) hrv
  have hg : r ^ 2 * (2 - r / A) ^ 2 ≤ 4 * r ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_left hv2 (sq_nonneg r)]
  have hrr : r ^ 2 / A ≤ 2 * r := by
    rw [div_le_iff₀ hA0]
    nlinarith [mul_le_mul_of_nonneg_left hrA hr]
  unfold endpointDerivativePolynomial
  calc
    _ ≤ |4 * r * (2 - r / A) * (1 - r / A)| *
        |8 * (7 * (1 - r / A) ^ 2 - 1) - r ^ 2 * (2 - r / A) ^ 2 / 4| +
      |r ^ 2 * (2 - r / A) ^ 2| *
        |-112 * (1 - r / A) / A - r * (2 - r / A) * (1 - r / A)| := by
          exact (abs_add _ _).trans_eq (by rw [abs_mul, abs_mul])
    _ ≤ 8 * r * (48 + r ^ 2) + 4 * r ^ 2 * (112 / A + 2 * r) := by
      apply add_le_add
      · apply mul_le_mul _ hi (abs_nonneg _) (by positivity)
        have := mul_le_mul_of_nonneg_left hrv (show (0 : ℝ) ≤ 4 by norm_num)
        simpa only [← abs_mul, abs_of_nonneg (show (0 : ℝ) ≤ 4 by norm_num),
          mul_assoc] using this
      · apply mul_le_mul _ hj (abs_nonneg _) (by positivity)
        simpa only [abs_of_nonneg (show 0 ≤ r ^ 2 * (2 - r / A) ^ 2 by positivity)] using hg
    _ ≤ _ := by
      have := mul_le_mul_of_nonneg_left hrr (show (0 : ℝ) ≤ 448 by norm_num)
      nlinarith

/-- The exact finite overlap remains valid after differentiating the first factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantb5df7157d36ca8d00a3acced73106ede2f3d4f12457bc8c2486c22b71a5a1ece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeAttempt01/Variantb5df7157d36ca8d00a3acced73106ede2f3d4f12457bc8c2486c22b71a5a1ece.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db99d3b4c084a9e0ff62baaba89f17b018f389c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
