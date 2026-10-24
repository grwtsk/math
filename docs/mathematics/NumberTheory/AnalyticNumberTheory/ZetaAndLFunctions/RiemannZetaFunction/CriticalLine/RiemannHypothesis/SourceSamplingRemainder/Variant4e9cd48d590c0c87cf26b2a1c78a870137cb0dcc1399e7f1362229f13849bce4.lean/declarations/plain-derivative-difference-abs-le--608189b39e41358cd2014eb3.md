# plain_derivative_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a60b79767177e2a916d820ba6b4d63163d91412e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7719c591-b682-20e4-dca4-ea21a918dbc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94b098ca-bb62-17b9-d472-f9df155b211e",
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
  "slug": "plain-derivative-difference-abs-le--608189b39e41358cd2014eb3",
  "source": {
    "blob": "a60b79767177e2a916d820ba6b4d63163d91412e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:608189b39e41358cd2014eb3e053fe43ddb07824fe753f10984453dd8f755745",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94b098ca-bb62-17b9-d472-f9df155b211e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–100.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a60b79767177e2a916d820ba6b4d63163d91412e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
