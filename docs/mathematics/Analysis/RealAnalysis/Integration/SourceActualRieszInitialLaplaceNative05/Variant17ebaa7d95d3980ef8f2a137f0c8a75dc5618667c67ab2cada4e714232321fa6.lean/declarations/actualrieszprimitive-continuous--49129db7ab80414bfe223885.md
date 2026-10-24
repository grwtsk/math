# actualRieszPrimitive_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d07b801-8594-5e57-c055-b244064b1045",
  "kind": "theorem",
  "lexical_name": "actualRieszPrimitive_continuous",
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
  "slug": "actualrieszprimitive-continuous--49129db7ab80414bfe223885",
  "source": {
    "blob": "20d42b9105e453321330d46696196e5999cf8b8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 309,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49129db7ab80414bfe22388507379310203b734c01e186f9bee8588e8e65f9d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d07b801-8594-5e57-c055-b244064b1045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualRieszPrimitive_continuous : Continuous actualMangoldtRieszPrimitive := by
  apply continuous_iff_continuousAt.mpr
  intro t
  let b := t + 1
  have hc : Continuous (fun r : ℝ =>
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
          max 0 (r - Real.log n)) - actualRieszContinuousRamp r) := by
    unfold actualRieszContinuousRamp
    fun_prop
  have he : actualMangoldtRieszPrimitive =ᶠ[𝓝 t] (fun r : ℝ =>
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
          max 0 (r - Real.log n)) - actualRieszContinuousRamp r) := by
    filter_upwards [eventually_lt_nhds (by dsimp [b]; linarith : t < b)] with r hr
    exact actualMangoldtRieszPrimitive_eq_fixed_ramps hr.le
  exact hc.continuousAt.congr he.symm

/-- The complete literal atom sum has genuine initial L1, before any integral exchange. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20d42b9105e453321330d46696196e5999cf8b8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
