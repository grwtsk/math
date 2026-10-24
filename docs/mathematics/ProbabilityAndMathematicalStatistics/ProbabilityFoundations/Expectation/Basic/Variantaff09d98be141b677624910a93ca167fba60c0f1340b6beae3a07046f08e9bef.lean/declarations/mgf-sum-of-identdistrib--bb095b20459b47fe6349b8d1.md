# mgf_sum_of_identDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40729b60-3f51-ebf9-fd52-1d5a2ebff205",
  "kind": "theorem",
  "lexical_name": "mgf_sum_of_identDistrib",
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
  "slug": "mgf-sum-of-identdistrib--bb095b20459b47fe6349b8d1",
  "source": {
    "blob": "2b83bf9f6135d20de6cace523778bdbd9c0bdf4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 387,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb095b20459b47fe6349b8d14c02b7eb46613b0010d8decace0c9568586c313d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40729b60-3f51-ebf9-fd52-1d5a2ebff205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mgf_sum_of_identDistrib
    {X : ι → Ω → ℝ}
    {s : Finset ι} {j : ι}
    (h_meas : ∀ i, Measurable (X i))
    (h_indep : iIndepFun X μ)
    (hident : ∀ i ∈ s, ∀ j ∈ s, IdentDistrib (X i) (X j) μ μ)
    (hj : j ∈ s) (t : ℝ) : mgf (∑ i ∈ s, X i) μ t = mgf (X j) μ t ^ #s := by
  rw [h_indep.mgf_sum h_meas]
  exact Finset.prod_eq_pow_card fun i hi =>
    mgf_congr_of_identDistrib (X i) (X j) (hident i hi j hj) t

section Chernoff

/-- **Chernoff bound** on the upper tail of a real random variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantaff09d98be141b677624910a93ca167fba60c0f1340b6beae3a07046f08e9bef.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b83bf9f6135d20de6cace523778bdbd9c0bdf4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
