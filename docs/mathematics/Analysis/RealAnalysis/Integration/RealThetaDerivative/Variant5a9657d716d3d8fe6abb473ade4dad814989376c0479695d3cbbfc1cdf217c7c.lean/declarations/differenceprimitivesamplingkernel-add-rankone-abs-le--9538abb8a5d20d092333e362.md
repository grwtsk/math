# differencePrimitiveSamplingKernel_add_rankOne_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "210055696e275ddf386836e555f3babf972dbc5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78780f74-712c-07c6-2d69-b53b993ef72b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dad453e-e337-f5bb-e0ed-9f16ed37ccb1",
  "kind": "theorem",
  "lexical_name": "differencePrimitiveSamplingKernel_add_rankOne_abs_le",
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
  "slug": "differenceprimitivesamplingkernel-add-rankone-abs-le--9538abb8a5d20d092333e362",
  "source": {
    "blob": "210055696e275ddf386836e555f3babf972dbc5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9538abb8a5d20d092333e362b79fbb6ad13c178049422607903133811de8fdae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dad453e-e337-f5bb-e0ed-9f16ed37ccb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differencePrimitiveSamplingKernel_add_rankOne_abs_le (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 < x) :
    |differencePrimitiveSamplingKernel A x + sourceRankOneCoefficient A / x| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt x := by
  rw [differencePrimitiveSamplingKernel_eq]
  have he : -SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
      sourceSamplingKernel A x + sourceRankOneCoefficient A / x =
      -(SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
        sourceRankOneCoefficient A / x) - sourceSamplingKernel A x := by ring
  rw [he]
  calc
    _ ≤ |SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
        sourceRankOneCoefficient A / x| + |sourceSamplingKernel A x| := by
      simpa only [abs_neg] using abs_sub
        (-(SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
          sourceRankOneCoefficient A / x)) (sourceSamplingKernel A x)
    _ ≤ (16 + 8 * Real.sqrt (65 / 3) / A) / Real.sqrt x +
        (8 + 4 * Real.sqrt (65 / 3) / A) / Real.sqrt x :=
      add_le_add
        (SourcePrimitiveSampling.sourcePrimitiveSamplingKernel_sub_rankOne_abs_le A x hA hx)
        (SourceSampling.sourceSamplingKernel_abs_le A x hA hx)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `210055696e275ddf386836e555f3babf972dbc5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
