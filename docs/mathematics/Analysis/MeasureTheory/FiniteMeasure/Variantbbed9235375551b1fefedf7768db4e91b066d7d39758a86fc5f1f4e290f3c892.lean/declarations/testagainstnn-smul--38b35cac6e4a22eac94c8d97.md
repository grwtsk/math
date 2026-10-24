# testAgainstNN_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31019cddd14b223580fba902eb3cc3381a358fdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f0df1b4-626e-cd92-ed8e-6c23dd06bd02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:822bc9db-9ebd-9cf7-1bcd-67f5908a92dd",
  "kind": "theorem",
  "lexical_name": "testAgainstNN_smul",
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
  "slug": "testagainstnn-smul--38b35cac6e4a22eac94c8d97",
  "source": {
    "blob": "31019cddd14b223580fba902eb3cc3381a358fdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 390,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b35cac6e4a22eac94c8d97e5ce0fe29f012a146a4a19d86e63d0a38965f8b7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:822bc9db-9ebd-9cf7-1bcd-67f5908a92dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testAgainstNN_smul [IsScalarTower R ℝ≥0 ℝ≥0] [PseudoMetricSpace R] [Zero R]
    [BoundedSMul R ℝ≥0] (μ : FiniteMeasure Ω) (c : R) (f : Ω →ᵇ ℝ≥0) :
    μ.testAgainstNN (c • f) = c • μ.testAgainstNN f := by
  simp only [← ENNReal.coe_eq_coe, BoundedContinuousFunction.coe_smul, testAgainstNN_coe_eq,
    ENNReal.coe_smul]
  simp_rw [← smul_one_smul ℝ≥0∞ c (f _ : ℝ≥0∞), ← smul_one_smul ℝ≥0∞ c (lintegral _ _ : ℝ≥0∞),
    smul_eq_mul]
  exact
    @lintegral_const_mul _ _ (μ : Measure Ω) (c • (1 : ℝ≥0∞)) _
      (BoundedContinuousFunction.NNReal.coe_ennreal_comp_measurable f)
#align measure_theory.finite_measure.test_against_nn_smul MeasureTheory.FiniteMeasure.testAgainstNN_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31019cddd14b223580fba902eb3cc3381a358fdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
