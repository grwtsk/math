# endpoint_zero_polynomial_window_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bac71361-8046-4c9a-4ca6-29581812ab80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:536148b3-d90e-9c54-2bd6-87a89ad9e555",
  "kind": "theorem",
  "lexical_name": "endpoint_zero_polynomial_window_lower_bound",
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
  "slug": "endpoint-zero-polynomial-window-lower-bound--2ccef1d5c93e038ba1fd06aa",
  "source": {
    "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 395,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ccef1d5c93e038ba1fd06aac50842a5a7f1b91ae2d5fd10a94443ab4dcad851",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536148b3-d90e-9c54-2bd6-87a89ad9e555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_zero_polynomial_window_lower_bound :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → ∀ y ∈ Icc (1 : ℝ) 2,
      (64 / 315 : ℝ) ≤ endpointPolynomialZero (y / A) := by
  have hc : Continuous endpointPolynomialZero := by unfold endpointPolynomialZero; fun_prop
  have he : ∀ᶠ s : ℝ in nhds 0, (64 / 315 : ℝ) < endpointPolynomialZero s :=
    hc.continuousAt.tendsto.eventually (eventually_gt_nhds (by norm_num [endpointPolynomialZero]))
  rcases Metric.eventually_nhds_iff.mp he with ⟨δ, hδ, hnear⟩
  refine ⟨max 1 (4 / δ), le_max_left _ _, ?_⟩
  intro A hA y hy
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA1
  have hAL : 4 / δ ≤ A := (le_max_right _ _).trans hA
  have hmul : 4 ≤ A * δ := (div_le_iff₀ hδ).mp hAL
  have hs0 : 0 ≤ y / A := div_nonneg (by linarith [hy.1]) (le_of_lt hpos)
  have hsδ : y / A < δ := (div_lt_iff₀ hpos).2 (by nlinarith [hy.2])
  apply le_of_lt
  apply hnear
  simpa only [Real.dist_eq, sub_zero, abs_of_nonneg hs0] using hsδ

/-- A fixed positive boundary window forces actual bulk continuum growth.
This uses a lower bound on one fixed window, not a limit over the expanding interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f406cd3d13fdc40d5b5030c936f15615749492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
