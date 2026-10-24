# log_derivative_difference_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c555e55d-7ac8-28e4-f61b-c84c7bb7c7c6",
  "kind": "theorem",
  "lexical_name": "log_derivative_difference_abs_le_tail",
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
  "slug": "log-derivative-difference-abs-le-tail--bc58bec54d020fbe02680b9c",
  "source": {
    "blob": "586c016114706d80eff6afbcc3344d08ca816c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc58bec54d020fbe02680b9ca045304ee891d129d499fd19bba16e94b1e4420d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c555e55d-7ac8-28e4-f61b-c84c7bb7c7c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_derivative_difference_abs_le_tail {Q A k u : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (logProfile A k) u - logModelDerivative A k u| ≤
      tailEnergyCoefficient Q / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4) := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR : |correlationTaylorRemainder A (Real.log k) (Real.log u)| ≤
      tailEnergyCoefficient Q / A ^ 2 * (Real.log u) ^ 2 / 2 := by
    exact sourceCorrelation_linear_taylor_bound_tail hQ hQA (Real.log k) (Real.log u)
  have hd := sourceCorrelation_deriv_increment_bound_tail hQ hQA (Real.log k) (Real.log u)
  have hy : |1 - Real.log u / 2| ≤ 1 + |Real.log u| / 2 := by
    simpa only [abs_one, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log u / 2)
  rw [log_derivative_difference hA hk hu, abs_mul, abs_of_nonneg hweight]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |correlationTaylorRemainder A (Real.log k) (Real.log u)| +
          |Real.log u| *
            |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
              deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)|) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_mul] using abs_add_le
        ((1 - Real.log u / 2) * correlationTaylorRemainder A (Real.log k) (Real.log u))
        (Real.log u *
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + |Real.log u| / 2) *
          (tailEnergyCoefficient Q / A ^ 2 * (Real.log u) ^ 2 / 2) +
          |Real.log u| * (tailEnergyCoefficient Q / A ^ 2 * |Real.log u|)) := by
      gcongr
    _ = _ := by rw [← sq_abs (Real.log u)]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586c016114706d80eff6afbcc3344d08ca816c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
