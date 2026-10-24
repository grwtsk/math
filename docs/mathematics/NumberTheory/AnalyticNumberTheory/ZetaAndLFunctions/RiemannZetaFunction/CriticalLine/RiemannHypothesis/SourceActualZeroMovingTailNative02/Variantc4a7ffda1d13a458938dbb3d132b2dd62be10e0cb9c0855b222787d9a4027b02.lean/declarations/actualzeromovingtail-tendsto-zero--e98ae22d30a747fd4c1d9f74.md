# actualZeroMovingTail_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c290e98d-5e62-7be9-0a9f-166563f1b47f",
  "kind": "theorem",
  "lexical_name": "actualZeroMovingTail_tendsto_zero",
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
  "slug": "actualzeromovingtail-tendsto-zero--e98ae22d30a747fd4c1d9f74",
  "source": {
    "blob": "b4d8d5b72665ee229be187f361784100b8d386a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98ae22d30a747fd4c1d9f74d0561c9dac361bf5ddcaed102a3a6535d3955d03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c290e98d-5e62-7be9-0a9f-166563f1b47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroMovingTail_tendsto_zero (c : ℝ) (hc : 1 < c) :
    Tendsto (fun A : ℝ => actualZeroHeightTail A (actualBumpMovingHeight A c))
      atTop (nhds 0) := by
  obtain ⟨A0, hA0, hb⟩ := actualZeroMovingTail_norm_bound
  let D : ℝ := 2 * actualZeroTailWeightConstant * A0 * ((2 * c - 1) / 5 + 2)
  have hz : Tendsto (fun A : ℝ => D / A ^ 8) atTop (nhds 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  apply squeeze_zero_norm' _ hz
  filter_upwards [eventually_ge_atTop (actualZeroMovingRadius c)] with A hA
  exact (hb c A hc hA).trans (envelope_le_inverse_eighth A0 c A hA0 hc
    ((le_max_left _ _).trans hA))

/-- The exact full actual zero value differs from its actual finite growing head by that tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d8d5b72665ee229be187f361784100b8d386a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
