# HasFPowerSeriesWithinAt.hasStrictFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd737a2c-fd94-7651-fce2-e8a0cbdbb297",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinAt.hasStrictFDerivWithinAt",
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
  "slug": "hasfpowerserieswithinat-hasstrictfderivwithinat--e7664bacadea78db84afbc2e",
  "source": {
    "blob": "a2a1b62436fc49c1e81f0064db010828b4774ac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7664bacadea78db84afbc2e984e1c54cd163ac6168af7f6c9c3c1bb0d58411f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd737a2c-fd94-7651-fce2-e8a0cbdbb297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesWithinAt.hasStrictFDerivWithinAt (h : HasFPowerSeriesWithinAt f p s x) :
    (fun y ↦ f y.1 - f y.2 - (continuousMultilinearCurryFin1 𝕜 E F (p 1)) (y.1 - y.2))
      =o[𝓝[insert x s ×ˢ insert x s] (x, x)] fun y ↦ y.1 - y.2 := by
  refine h.isBigO_image_sub_norm_mul_norm_sub.trans_isLittleO (IsLittleO.of_norm_right ?_)
  refine isLittleO_iff_exists_eq_mul.2 ⟨fun y => ‖y - (x, x)‖, ?_, EventuallyEq.rfl⟩
  apply Tendsto.mono_left _ nhdsWithin_le_nhds
  refine (continuous_id.fun_sub continuous_const).norm.tendsto' _ _ ?_
  rw [_root_.id, sub_self, norm_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a1b62436fc49c1e81f0064db010828b4774ac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
