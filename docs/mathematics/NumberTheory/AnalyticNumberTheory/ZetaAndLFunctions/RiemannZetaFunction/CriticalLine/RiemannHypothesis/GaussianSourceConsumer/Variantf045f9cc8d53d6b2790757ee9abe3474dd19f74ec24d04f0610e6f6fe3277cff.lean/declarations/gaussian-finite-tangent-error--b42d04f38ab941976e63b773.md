# gaussian_finite_tangent_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d4a01b1-02a3-b1d6-e293-de93daf11428",
  "kind": "theorem",
  "lexical_name": "gaussian_finite_tangent_error",
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
  "slug": "gaussian-finite-tangent-error--b42d04f38ab941976e63b773",
  "source": {
    "blob": "027f112f7dbbcd5eacfc9a49b479fbea07d29e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b42d04f38ab941976e63b7733c17dacd339681fe8c4cd62f093b0fdb06aff19f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d4a01b1-02a3-b1d6-e293-de93daf11428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (v : ℝ≥0) (N : ℕ) :
    |SourceKapitzaSquareShell.finiteCompensatedReadout A N -
      ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (smoothedCorrelation (gaussianReal 0 v) A
          (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            smoothedSlope (gaussianReal 0 v) A
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| ≤
      SourceKapitzaSquareShell.tangentErrorConstant / A ^ 2 +
        ((5 / (2 * A ^ 2)) * (v : ℝ)) *
          (∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
        ((5 / A ^ 2) * Real.sqrt (v : ℝ)) *
          ∑ n ∈ Finset.Icc 2 N,
            |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
              |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| := by
  have h := finite_tangent_smoothed_error (gaussianReal 0 v) hA N
    (GaussianCenteredMoments.integrable_id v)
    (GaussianCenteredMoments.integral_id_zero v)
    (GaussianCenteredMoments.integrable_square v)
  rw [GaussianCenteredMoments.integral_square v] at h
  refine h.trans (add_le_add le_rfl ?_)
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (GaussianCenteredMoments.integral_abs_le_sqrt v) (by positivity))
    (Finset.sum_nonneg (fun n hn => mul_nonneg (abs_nonneg _) (abs_nonneg _)))


end FormalResearch.RiemannHypothesis.GaussianSourceConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `027f112f7dbbcd5eacfc9a49b479fbea07d29e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
