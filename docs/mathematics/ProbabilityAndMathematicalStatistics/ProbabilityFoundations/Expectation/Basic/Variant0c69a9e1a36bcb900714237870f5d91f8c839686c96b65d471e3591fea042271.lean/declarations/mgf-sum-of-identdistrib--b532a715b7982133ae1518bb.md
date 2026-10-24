# mgf_sum_of_identDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5438d3c6889d2d6588734b359836af66d9787bfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c69a9e1a36bcb900714237870f5d91f8c839686c96b65d471e3591fea042271.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0c8be82-b3cc-701d-dda5-a80a670e497c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dcc312a-2b06-5616-87a3-6a6a7a055226",
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
  "slug": "mgf-sum-of-identdistrib--b532a715b7982133ae1518bb",
  "source": {
    "blob": "5438d3c6889d2d6588734b359836af66d9787bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 379,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant0c69a9e1a36bcb900714237870f5d91f8c839686c96b65d471e3591fea042271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b532a715b7982133ae1518bbb3d391602b0b94ab1b9a764c6fe59565d32b5ff9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant0c69a9e1a36bcb900714237870f5d91f8c839686c96b65d471e3591fea042271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dcc312a-2b06-5616-87a3-6a6a7a055226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–392.

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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant0c69a9e1a36bcb900714237870f5d91f8c839686c96b65d471e3591fea042271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant0c69a9e1a36bcb900714237870f5d91f8c839686c96b65d471e3591fea042271.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5438d3c6889d2d6588734b359836af66d9787bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
