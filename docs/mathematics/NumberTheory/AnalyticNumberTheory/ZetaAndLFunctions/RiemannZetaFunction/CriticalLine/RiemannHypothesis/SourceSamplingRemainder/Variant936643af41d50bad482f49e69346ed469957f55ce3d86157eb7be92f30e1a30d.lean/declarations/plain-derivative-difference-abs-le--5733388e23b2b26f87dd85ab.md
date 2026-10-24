# plain_derivative_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d06f8b0-bd3f-f7ed-007a-bbc284514fd5",
  "kind": "theorem",
  "lexical_name": "plain_derivative_difference_abs_le",
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
  "slug": "plain-derivative-difference-abs-le--5733388e23b2b26f87dd85ab",
  "source": {
    "blob": "15e55ac8aa897632ba22db483b9a1ffab8ed9b4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5733388e23b2b26f87dd85ab6226f5250649321bb0e47cf024e227b93f0b17ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d06f8b0-bd3f-f7ed-007a-bbc284514fd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plain_derivative_difference_abs_le {A k u : ℝ} (hA : 1 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (plainProfile A k) u - plainModelDerivative A k u| ≤
      (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        (|Real.log u| + (Real.log u) ^ 2 / 4) := by
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  rw [plain_derivative_difference hA hk hu, abs_mul, abs_of_nonneg hweight]
  have hR := correlationTaylorRemainder_abs_le hA (Real.log k) (Real.log u)
  have hd := sourceCorrelation_deriv_increment_bound hA (Real.log k) (Real.log u)
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)| +
          |correlationTaylorRemainder A (Real.log k) (Real.log u)| / 2) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
        abs_sub
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k))
          (correlationTaylorRemainder A (Real.log k) (Real.log u) / 2)
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (162826 / (7623 * A ^ 2) * |Real.log u| +
          (162826 / (7623 * A ^ 2) * (Real.log u) ^ 2 / 2) / 2) := by
      gcongr
    _ = _ := by ring

/-- Curvature bounds the logarithmic derivative error without discarding negative logarithms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15e55ac8aa897632ba22db483b9a1ffab8ed9b4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
