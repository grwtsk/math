# positiveWeightedTestMoment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc0301b7-9dc2-a518-85cb-dee5fa3375b1",
  "kind": "theorem",
  "lexical_name": "positiveWeightedTestMoment_integrable",
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
  "slug": "positiveweightedtestmoment-integrable--613cbf51b63d6cd6d8224e9a",
  "source": {
    "blob": "7f4574fa3955517ff332132612a36683cf6e89a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:613cbf51b63d6cd6d8224e9acc8ac9a921d29f7b3f82a00adf770e47e192054f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc0301b7-9dc2-a518-85cb-dee5fa3375b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveWeightedTestMoment_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (positiveWeightedTestMoment A) := by
  have hc :
      Continuous
        (fun x : ℝ =>
          (x * Real.exp (x / 2)) *
            normalizedTest explicitSecondDerivative A x) := by
    have hc := normalizedTest_continuous_all A
    fun_prop
  have hs :
      HasCompactSupport
        (fun x : ℝ =>
          (x * Real.exp (x / 2)) *
            normalizedTest explicitSecondDerivative A x) :=
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left
  unfold positiveWeightedTestMoment positiveWeightedTest
  simpa only [mul_assoc] using
    hc.integrable_of_hasCompactSupport hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4574fa3955517ff332132612a36683cf6e89a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
