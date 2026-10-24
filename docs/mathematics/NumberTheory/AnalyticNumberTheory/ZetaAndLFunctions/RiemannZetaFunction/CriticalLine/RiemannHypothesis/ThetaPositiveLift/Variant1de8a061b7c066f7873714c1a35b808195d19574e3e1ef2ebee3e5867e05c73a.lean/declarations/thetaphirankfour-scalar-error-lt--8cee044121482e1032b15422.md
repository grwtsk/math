# thetaPhiRankFour_scalar_error_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d23cfd7-4a6e-9555-91d0-e1cb7935a3a6",
  "kind": "theorem",
  "lexical_name": "thetaPhiRankFour_scalar_error_lt",
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
  "slug": "thetaphirankfour-scalar-error-lt--8cee044121482e1032b15422",
  "source": {
    "blob": "7715a65ed23e6e48213dd9fa4f474501737ac431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cee044121482e1032b1542212e9d7f7827529465280e0ae6cb80a5c21b6cfd2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d23cfd7-4a6e-9555-91d0-e1cb7935a3a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiRankFour_scalar_error_lt
    {A : ℝ} (hA : 12 ≤ A) :
    A ^ 10 *
        thetaPhiRankFourPerturbationPolynomial (Real.exp (-3 * A)) <
      201326592 * 369 := by
  have hz := thetaRankFour_exp_neg_three_le hA
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hz2 :
      Real.exp (-3 * A) ^ 2 ≤ (1 / 20 ^ 12 : ℝ) ^ 2 :=
    pow_le_pow_left₀ hz0 hz 2
  have hz3 :
      Real.exp (-3 * A) ^ 3 ≤ (1 / 20 ^ 12 : ℝ) ^ 3 :=
    pow_le_pow_left₀ hz0 hz 3
  have hterm2 :
      2242106519174774784 * Real.exp (-3 * A) < 1000 := by
    calc
      _ ≤ 2242106519174774784 * (1 / 20 ^ 12 : ℝ) :=
        mul_le_mul_of_nonneg_left hz (by norm_num)
      _ < 1000 := by norm_num
  have hterm3 :
      1561848350772088012800 * Real.exp (-3 * A) ^ 2 < 1 := by
    calc
      _ ≤ 1561848350772088012800 * (1 / 20 ^ 12 : ℝ) ^ 2 :=
        mul_le_mul_of_nonneg_left hz2 (by norm_num)
      _ < 1 := by norm_num
  have hterm4 :
      113336795588871485128704 * Real.exp (-3 * A) ^ 3 < 1 := by
    calc
      _ ≤ 113336795588871485128704 * (1 / 20 ^ 12 : ℝ) ^ 3 :=
        mul_le_mul_of_nonneg_left hz3 (by norm_num)
      _ < 1 := by norm_num
  have hbracket :
      372373664563200 +
        2242106519174774784 * Real.exp (-3 * A) +
        1561848350772088012800 * Real.exp (-3 * A) ^ 2 +
        113336795588871485128704 * Real.exp (-3 * A) ^ 3 <
      400000000000000 := by
    nlinarith
  have hfirst :
      A ^ 10 * Real.exp (-3 * A) < 1 / 10000 := by
    calc
      _ ≤ 12 ^ 10 / 20 ^ 12 :=
        thetaRankFour_tenth_power_exp_bound hA
      _ < 1 / 10000 := by norm_num
  have hbracket0 :
      0 <
        372373664563200 +
          2242106519174774784 * Real.exp (-3 * A) +
          1561848350772088012800 * Real.exp (-3 * A) ^ 2 +
          113336795588871485128704 * Real.exp (-3 * A) ^ 3 := by
    positivity
  calc
    A ^ 10 *
        thetaPhiRankFourPerturbationPolynomial (Real.exp (-3 * A)) =
      (A ^ 10 * Real.exp (-3 * A)) *
        (372373664563200 +
          2242106519174774784 * Real.exp (-3 * A) +
          1561848350772088012800 * Real.exp (-3 * A) ^ 2 +
          113336795588871485128704 * Real.exp (-3 * A) ^ 3) := by
        unfold thetaPhiRankFourPerturbationPolynomial
        ring
    _ < (1 / 10000 : ℝ) * 400000000000000 := by
      exact mul_lt_mul hfirst hbracket.le hbracket0 (by norm_num)
    _ < 201326592 * 369 := by norm_num

/-- The explicit scalar bound beats the dominant determinant budget for every
A >= 12. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7715a65ed23e6e48213dd9fa4f474501737ac431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
