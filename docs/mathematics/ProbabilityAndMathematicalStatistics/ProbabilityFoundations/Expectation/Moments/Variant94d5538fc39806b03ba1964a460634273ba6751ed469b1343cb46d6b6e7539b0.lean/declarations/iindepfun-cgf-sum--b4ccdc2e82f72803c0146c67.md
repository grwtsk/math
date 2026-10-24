# iIndepFun.cgf_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20d33136-9600-1d8e-dd60-0063bc8ef945",
  "kind": "theorem",
  "lexical_name": "iIndepFun.cgf_sum",
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
  "slug": "iindepfun-cgf-sum--b4ccdc2e82f72803c0146c67",
  "source": {
    "blob": "bfba042214f23c4bd8832590455bad1f95489b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 325,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ccdc2e82f72803c0146c67d0aaf4f0a7df862f8edd6fc4abc63c8eaaf4ff20",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20d33136-9600-1d8e-dd60-0063bc8ef945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.cgf_sum [IsProbabilityMeasure μ] {X : ι → Ω → ℝ}
    (h_indep : iIndepFun (fun i => inferInstance) X μ) (h_meas : ∀ i, Measurable (X i))
    {s : Finset ι} (h_int : ∀ i ∈ s, Integrable (fun ω => exp (t * X i ω)) μ) :
    cgf (∑ i in s, X i) μ t = ∑ i in s, cgf (X i) μ t := by
  simp_rw [cgf]
  rw [← log_prod _ _ fun j hj => ?_]
  · rw [h_indep.mgf_sum h_meas]
  · exact (mgf_pos (h_int j hj)).ne'
set_option linter.uppercaseLean3 false in
#align probability_theory.Indep_fun.cgf_sum ProbabilityTheory.iIndepFun.cgf_sum

/-- **Chernoff bound** on the upper tail of a real random variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfba042214f23c4bd8832590455bad1f95489b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
