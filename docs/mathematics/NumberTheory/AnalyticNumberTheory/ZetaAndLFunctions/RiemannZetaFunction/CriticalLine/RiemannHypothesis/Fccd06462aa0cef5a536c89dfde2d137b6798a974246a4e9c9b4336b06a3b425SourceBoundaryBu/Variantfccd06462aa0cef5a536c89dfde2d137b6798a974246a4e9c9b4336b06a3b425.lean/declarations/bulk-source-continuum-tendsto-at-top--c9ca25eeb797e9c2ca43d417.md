# bulk_source_continuum_tendsto_at_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8104950bf521b2e036a8f272ebc0d497e98374b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:438f7d33-e585-c99e-e849-0b383d2bf4af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4213712-7962-ba7a-f8f9-3eec9eeaca5b",
  "kind": "theorem",
  "lexical_name": "bulk_source_continuum_tendsto_at_top",
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
  "slug": "bulk-source-continuum-tendsto-at-top--c9ca25eeb797e9c2ca43d417",
  "source": {
    "blob": "8104950bf521b2e036a8f272ebc0d497e98374b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425SourceBoundaryBu/Variantfccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9ca25eeb797e9c2ca43d417b0dfbebb6fb80edf4a430f8ae0dd37d7b4b7f84c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425SourceBoundaryBu/Variantfccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4213712-7962-ba7a-f8f9-3eec9eeaca5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bulk_source_continuum_tendsto_at_top : Tendsto bulkSourceContinuum atTop atTop := by
  rcases bulk_source_continuum_growth with ⟨c, R, hc, _, hbound⟩
  have hlim : Tendsto (fun A : ℝ ↦ c * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop hc
  apply tendsto_atTop_mono' atTop _ hlim
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

end
end FormalResearch.RiemannHypothesis.SourceBoundaryLayer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425SourceBoundaryBu/Variantfccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425SourceBoundaryBu/Variantfccd06462aa0cef5a536c89dfde2d137b6798a974246a4e9c9b4336b06a3b425.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8104950bf521b2e036a8f272ebc0d497e98374b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
