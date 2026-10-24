# iteratedDifference_two_moments_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02a95e5b-dad5-3ae3-b249-4e535027b518",
  "kind": "theorem",
  "lexical_name": "iteratedDifference_two_moments_zero",
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
  "slug": "iterateddifference-two-moments-zero--f1d1db84ce3941c7a07ad843",
  "source": {
    "blob": "7e1969d3c754b4c2f1c3205b90c2a61e25240308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 462,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1d1db84ce3941c7a07ad84317a254357cabd48a79586fe10b790ff2de39ac34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02a95e5b-dad5-3ae3-b249-4e535027b518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDifference_two_moments_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * iteratedDifference A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * iteratedDifference A t) = 0 := by
  have hc := correlationDifference_contDiff A hA
  have hs := correlationDifference_hasCompactSupport A hA
  have hz := difference_two_moments_zero A hA
  have hzd := compact_derivative_two_moments_zero _ hc hs hz.1 hz.2
  have hi0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * correlationDifference A t) := by
    simpa only [one_div_mul_eq_div] using (difference_moments_integrable A (1 / 2) hA).1
  have hi1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * correlationDifference A t) := by
    simpa only [one_div_mul_eq_div] using (difference_moments_integrable A (1 / 2) hA).2
  have hid0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * deriv (correlationDifference A) t) :=
    ((continuous_id.div_const 2).rexp.mul hc.continuous_deriv_one).integrable_of_hasCompactSupport
      hs.deriv.mul_left
  have hid1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * deriv (correlationDifference A) t) :=
    ((continuous_id.mul (continuous_id.div_const 2).rexp).mul
      hc.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  constructor
  · simp only [iteratedDifference, mul_sub, ← mul_div_assoc]
    rw [integral_sub hid0 (hi0.div_const 2), integral_div, hz.1, hzd.1]
    ring
  · simp only [iteratedDifference, mul_sub, ← mul_div_assoc]
    rw [integral_sub hid1 (hi1.div_const 2), integral_div, hz.2, hzd.2]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e1969d3c754b4c2f1c3205b90c2a61e25240308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
