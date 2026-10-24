# head_recovery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3c07781-be7f-963e-6ba3-514bb089bbf3",
  "kind": "theorem",
  "lexical_name": "head_recovery",
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
  "slug": "head-recovery--0507ae4a258dc67b283f0bc9",
  "source": {
    "blob": "3352818ed1234b402b8c152910efcc64cf67b80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0507ae4a258dc67b283f0bc926abb77a5fb5339a196b72eb5083c986bb1cfd76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3c07781-be7f-963e-6ba3-514bb089bbf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_recovery (A : ℝ) (hA : 91 ≤ A) :
    actualXiHead A + actualXiHeadJ / 2 =
      ∫ y in 2..7, physicalXiDensity y * (minusCorrelationWeight A (Real.log y) + 1 / 2) := by
  unfold actualXiHead actualXiHeadJ
  rw [← intervalIntegral.integral_div,
    ← intervalIntegral.integral_add (actual_head_intervalIntegrable A hA)
      (physicalXiDensity_head_intervalIntegrable.div_const 2)]
  apply intervalIntegral.integral_congr
  intro y _
  unfold actualTransformedXiBlockDensity physicalXiDensity minusCorrelationWeight
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3352818ed1234b402b8c152910efcc64cf67b80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
