# integral_mconv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f36ae2987fc81975e9166f90a1135a7ffcaed8f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4bb5310-2dac-b466-fdf0-cc624b4d57c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27ad4d33-6f62-8aeb-8df1-3d47b6e988a7",
  "kind": "lemma",
  "lexical_name": "integral_mconv",
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
  "slug": "integral-mconv--65d8279e881e3806d852c10a",
  "source": {
    "blob": "f36ae2987fc81975e9166f90a1135a7ffcaed8f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralConvolution/Variant39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65d8279e881e3806d852c10a39edfb5036604f444d56114a91f0444c9d5643ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralConvolution/Variant39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27ad4d33-6f62-8aeb-8df1-3d47b6e988a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_mconv [NormedSpace ℝ F] [SFinite μ] [SFinite ν] (hf : Integrable f (μ ∗ ν)) :
    ∫ x, f x ∂(μ ∗ ν) = ∫ x, ∫ y, f (x * y) ∂ν ∂μ := by
  unfold Measure.mconv
  rw [integral_map (by fun_prop) hf.1, integral_prod]
  exact (integrable_map_measure hf.1 (by fun_prop)).mp hf

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralConvolution/Variant39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralConvolution/Variant39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f36ae2987fc81975e9166f90a1135a7ffcaed8f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
