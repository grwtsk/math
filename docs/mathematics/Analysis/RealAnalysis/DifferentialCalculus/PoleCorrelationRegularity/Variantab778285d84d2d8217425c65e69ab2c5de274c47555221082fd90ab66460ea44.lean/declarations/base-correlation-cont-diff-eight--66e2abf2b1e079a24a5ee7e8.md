# base_correlation_cont_diff_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "053421702157bb97913dc8b71487be4576a46bb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:692f5fe2-d8a4-3619-3db1-c9291519ee7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:481ccfa6-7beb-bada-a891-47aa449aa855",
  "kind": "theorem",
  "lexical_name": "base_correlation_cont_diff_eight",
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
  "slug": "base-correlation-cont-diff-eight--66e2abf2b1e079a24a5ee7e8",
  "source": {
    "blob": "053421702157bb97913dc8b71487be4576a46bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66e2abf2b1e079a24a5ee7e8c161953bba65c425fe808ef513002f9641e185ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:481ccfa6-7beb-bada-a891-47aa449aa855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem base_correlation_cont_diff_eight (A : ℝ) :
    ContDiff ℝ 8 (PoleDifferentialCorrelation.baseCorrelation A) := by
  have hc : Continuous bumpDensity :=
    (Complex.continuous_normSq.comp (sourceFourier_continuous source_bump_integrable)).div_const _
  have hd (u : ℝ) : 0 ≤ bumpDensity u := by
    simpa [bumpMomentDensity] using bump_moment_density_nonneg 0 u
  have hi : Integrable bumpDensity := by
    convert bump_moment_density_integrable 0 (by norm_num) using 1
    funext u
    simp [bumpMomentDensity]
  have hm : Integrable (fun u : ℝ ↦ ‖u‖ ^ 8 * ‖bumpDensity u‖) := by
    convert bump_eighth_moment_integrable using 1
    funext u
    simp only [Real.norm_eq_abs, abs_of_nonneg (hd u), bumpMomentDensity, ← abs_pow]
    rw [abs_of_nonneg (by positivity : 0 ≤ u ^ 8)]
  have h := (cosine_integral_cont_diff bumpDensity 8 hi hc hm).comp
    (by fun_prop : ContDiff ℝ (8 : ℕ) (fun t : ℝ ↦ t / A))
  convert h using 1 <;> try rfl
  funext t
  simp [PoleDifferentialCorrelation.baseCorrelation, fixedKernel, bumpMomentDensity]

end
end FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053421702157bb97913dc8b71487be4576a46bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
