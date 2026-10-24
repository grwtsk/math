# actual_correlation_contDiff_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "997d0c81fed1b80d7c1917f8ac315ccfa795775a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fdd7f7e-0b58-5652-5c2d-f29bfe71abae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f53dafcf-c7b3-fc92-b414-68009f427537",
  "kind": "theorem",
  "lexical_name": "actual_correlation_contDiff_four",
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
  "slug": "actual-correlation-contdiff-four--7c7d539e8266286f923942fe",
  "source": {
    "blob": "997d0c81fed1b80d7c1917f8ac315ccfa795775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 24,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c7d539e8266286f923942fe49d64b2c52559d3b3bce5a295d2dd6517bc84e69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f53dafcf-c7b3-fc92-b414-68009f427537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_contDiff_four (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 4 (sourceCorrelation explicitSecondDerivative A) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have h2 : Differentiable ℝ (deriv (deriv C)) :=
    fun t => (actual_correlation_third_derivative A hA t).differentiableAt
  have h3 : Differentiable ℝ (deriv (deriv (deriv C))) :=
    fun t => (actual_correlation_fourth_derivative A hA t).differentiableAt
  have hc2 : ContDiff ℝ 1 (deriv (deriv C)) :=
    contDiff_one_iff_deriv.mpr ⟨h2, h3.continuous⟩
  have he : deriv (deriv (deriv (deriv C))) = actualSecondProfileCorrelation A :=
    funext fun t => actual_correlation_fourth_derivative_eq A hA t
  have hc3 : ContDiff ℝ 1 (deriv (deriv (deriv C))) :=
    contDiff_one_iff_deriv.mpr
      ⟨h3, by rw [he]; exact actualSecondProfileCorrelation_continuous A hA⟩
  have hC3 : ContDiff ℝ 3 C := by
    apply (contDiff_nat_succ_iff_contDiff_one_iteratedDeriv (n := 2)).mpr
    exact ⟨sourceCorrelation_contDiff_two hA,
      by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hc2⟩
  apply (contDiff_nat_succ_iff_contDiff_one_iteratedDeriv (n := 3)).mpr
  exact ⟨hC3, by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hc3⟩

/-- The standard iterated derivative has the same actual profile correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/58b3d35eb3a5ff094aadActualFourthCorrelationCalibration/Variant58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `997d0c81fed1b80d7c1917f8ac315ccfa795775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
