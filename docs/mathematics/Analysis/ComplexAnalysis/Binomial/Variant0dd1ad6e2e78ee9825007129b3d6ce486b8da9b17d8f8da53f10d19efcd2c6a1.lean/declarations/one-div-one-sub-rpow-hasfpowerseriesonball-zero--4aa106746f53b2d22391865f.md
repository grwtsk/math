# one_div_one_sub_rpow_hasFPowerSeriesOnBall_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fde95f8f3d29f910c8a6fa05fe09da5b568e44a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4433907d-8425-2152-d3df-786233d01722",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e383bae2-995b-5e89-8751-a5b8697e0b07",
  "kind": "theorem",
  "lexical_name": "one_div_one_sub_rpow_hasFPowerSeriesOnBall_zero",
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
  "slug": "one-div-one-sub-rpow-hasfpowerseriesonball-zero--4aa106746f53b2d22391865f",
  "source": {
    "blob": "fde95f8f3d29f910c8a6fa05fe09da5b568e44a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 248,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aa106746f53b2d22391865fc4ebfb7b8293b485f637dc89895001e514d43c5b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e383bae2-995b-5e89-8751-a5b8697e0b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_div_one_sub_rpow_hasFPowerSeriesOnBall_zero (a : ℝ) :
    HasFPowerSeriesOnBall (fun x ↦ 1 / (1 - x) ^ a)
      (.ofScalars ℝ fun n ↦ Ring.choose (a + n - 1) n) 0 1 := by
  have := (Complex.one_div_one_sub_cpow_hasFPowerSeriesOnBall_zero a).restrictScalars (𝕜 := ℝ)
  rw [← Complex.ofRealCLM.map_zero] at this
  convert (Complex.reCLM.comp_hasFPowerSeriesOnBall this.compContinuousLinearMap).congr ?_
  · ext n
    simp only [ContinuousLinearMap.compFormalMultilinearSeries_apply,
      ContinuousLinearMap.compContinuousMultilinearMap_coe, Function.comp_apply,
      FormalMultilinearSeries.compContinuousLinearMap_apply]
    simp
    norm_cast
  · simp
  · intro x hx
    have : |x| < 1 := by simpa [enorm_eq_nnnorm] using! hx
    have : 0 ≤ 1 - x := by grind
    simp [-Complex.inv_re, ← Complex.ofReal_one, ← Complex.ofReal_sub, ← Complex.ofReal_cpow this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde95f8f3d29f910c8a6fa05fe09da5b568e44a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
