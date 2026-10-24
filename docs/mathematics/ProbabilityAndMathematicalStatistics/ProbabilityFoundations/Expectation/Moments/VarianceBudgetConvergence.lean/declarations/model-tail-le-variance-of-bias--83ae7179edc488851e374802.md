# model_tail_le_variance_of_bias

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:889ac425-bdba-5e24-627b-54865413f669",
  "kind": "theorem",
  "lexical_name": "model_tail_le_variance_of_bias",
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
  "slug": "model-tail-le-variance-of-bias--83ae7179edc488851e374802",
  "source": {
    "blob": "742824137da63aee8e62dbeae335baa34a6892ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 12,
    "path": "GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83ae7179edc488851e374802e4ab4c4b3d0eea5ac07aa7e1940c05541e057cca",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/VarianceBudgetConvergence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:889ac425-bdba-5e24-627b-54865413f669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_tail_le_variance_of_bias (Y : Ω → ℝ) (model bias ε : ℝ)
    (hY : MemLp Y 2 μ) (hbias : |μ[Y] - model| ≤ bias) (hε : bias < ε) :
    μ {ω | ε ≤ |Y ω - model|} ≤
      ENNReal.ofReal (Var[Y; μ] / (ε - bias) ^ 2) := by
  have inclusion : {ω | ε ≤ |Y ω - model|} ⊆ {ω | ε - bias ≤ |Y ω - μ[Y]|} := by
    intro ω hω
    change ε ≤ |Y ω - model| at hω
    change ε - bias ≤ |Y ω - μ[Y]|
    have ht : |Y ω - model| ≤ |Y ω - μ[Y]| + |μ[Y] - model| := by
      simpa using abs_add_le (Y ω - μ[Y]) (μ[Y] - model)
    linarith
  exact (measure_mono inclusion).trans (meas_ge_le_variance_div_sq hY (sub_pos.mpr hε))

/-- Actual variance-budget decay implies expectation-centered convergence in probability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/VarianceBudgetConvergence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `742824137da63aee8e62dbeae335baa34a6892ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
