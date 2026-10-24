# endpointDerivativePolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a4cc828829723f373fff78412023fbb15d98c4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5abbfcb4-538b-a5d0-8c04-28a0b03a8c45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05009ebc-4756-73fb-3a3b-292354292202",
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
  "slug": "endpointderivativepolynomial-abs-le--02162519aa8dc73f862a3079",
  "source": {
    "blob": "8a4cc828829723f373fff78412023fbb15d98c4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02162519aa8dc73f862a30799c390f12652d10117bdef505b145c439e30954ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05009ebc-4756-73fb-3a3b-292354292202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–132.

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
          rw [abs_mul, show |(8 : ℝ)| = 8 by norm_num,
            abs_of_nonneg (show 0 ≤ r ^ 2 * (2 - r / A) ^ 2 / 4 by positivity)]
      _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_left hv2 (sq_nonneg r)]
  have hrv : |r * (2 - r / A) * (1 - r / A)| ≤ 2 * r := by
    rw [abs_mul, abs_mul, abs_of_nonneg hr]
    rw [mul_assoc]
    calc
      _ ≤ r * (2 * 1) := mul_le_mul_of_nonneg_left
        (mul_le_mul hv hs (abs_nonneg _) (by norm_num)) hr
      _ = 2 * r := by ring
  have hj : |-112 * (1 - r / A) / A -
      r * (2 - r / A) * (1 - r / A)| ≤ 112 / A + 2 * r := by
    calc
      _ ≤ |-112 * (1 - r / A) / A| +
        |r * (2 - r / A) * (1 - r / A)| := abs_sub _ _
      _ = 112 * |1 - r / A| / A +
        |r * (2 - r / A) * (1 - r / A)| := by
          rw [abs_div, abs_mul, abs_of_pos hA0]
          norm_num
      _ ≤ _ := by
        simpa only [mul_one] using add_le_add
          (div_le_div_of_nonneg_right
            (mul_le_mul_of_nonneg_left hs (show (0 : ℝ) ≤ 112 by norm_num)) hA0.le) hrv
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
          exact (abs_add_le _ _).trans_eq (by simp only [abs_mul])
    _ ≤ 8 * r * (48 + r ^ 2) + 4 * r ^ 2 * (112 / A + 2 * r) := by
      apply add_le_add
      · apply mul_le_mul _ hi (abs_nonneg _) (by positivity)
        have := mul_le_mul_of_nonneg_left hrv (show (0 : ℝ) ≤ 4 by norm_num)
        rw [show 4 * r * (2 - r / A) * (1 - r / A) =
          4 * (r * (2 - r / A) * (1 - r / A)) by ring,
          abs_mul, show |(4 : ℝ)| = 4 by norm_num]
        calc
          _ ≤ 4 * (2 * r) := this
          _ = 8 * r := by ring
      · apply mul_le_mul _ hj (abs_nonneg _) (by positivity)
        simpa only [abs_of_nonneg (show 0 ≤ r ^ 2 * (2 - r / A) ^ 2 by positivity)] using hg
    _ = 384 * r + 16 * r ^ 3 + 448 * (r ^ 2 / A) := by ring
    _ ≤ _ := by
      have := mul_le_mul_of_nonneg_left hrr (show (0 : ℝ) ≤ 448 by norm_num)
      linarith

/-- The exact finite overlap remains valid after differentiating the first factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variantd0f0dd4f769606ef5d73dc88bf8e467de35dbf80a72e194e94047102c72f6d6f.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a4cc828829723f373fff78412023fbb15d98c4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
