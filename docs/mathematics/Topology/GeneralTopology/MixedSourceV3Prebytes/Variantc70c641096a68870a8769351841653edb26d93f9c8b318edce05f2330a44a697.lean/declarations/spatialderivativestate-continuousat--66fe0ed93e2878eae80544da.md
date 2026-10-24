# spatialDerivativeState_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90e1bd8b-4cf0-aa86-b85d-c356389b8db0",
  "kind": "theorem",
  "lexical_name": "spatialDerivativeState_continuousAt",
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
  "slug": "spatialderivativestate-continuousat--66fe0ed93e2878eae80544da",
  "source": {
    "blob": "12a2bc5e21ce55716f5f3206fa699e5086afe932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 191,
    "path": "GRWTSK/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantc70c641096a68870a8769351841653edb26d93f9c8b318edce05f2330a44a697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66fe0ed93e2878eae80544da7c6cba8bda5152e31437fc03761bebf1bc2cf304",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantc70c641096a68870a8769351841653edb26d93f9c8b318edce05f2330a44a697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e1bd8b-4cf0-aa86-b85d-c356389b8db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivativeState_continuousAt {A : ℝ} (hA : 0 < A) :
    ContinuousAt spatialDerivativeState A := by
  have hc := (spatialDerivative_differenceIntegral_continuousOn hA).continuousAt
    (Ioo_mem_nhds (by linarith : A / 2 < A) (by linarith : A < 2 * A))
  have ht : Tendsto (fun B : ℝ =>
      ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2) (nhds A) (nhds 0) := by
    simpa using hc.tendsto
  have heq : (fun B : ℝ => ‖spatialDerivativeState B - spatialDerivativeState A‖ ^ 2) =ᶠ[nhds A]
      (fun B : ℝ => ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2) := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    exact spatialDerivativeState_norm_sub_sq hA hB
  have ht2 : Tendsto (fun B : ℝ => ‖spatialDerivativeState B - spatialDerivativeState A‖ ^ 2)
      (nhds A) (nhds 0) := ht.congr' heq.symm
  have htn : Tendsto (fun B : ℝ => ‖spatialDerivativeState B - spatialDerivativeState A‖)
      (nhds A) (nhds 0) := by
    have hs := Real.continuous_sqrt.continuousAt.tendsto.comp ht2
    simpa only [Function.comp_def, Real.sqrt_sq (norm_nonneg _), Real.sqrt_zero] using hs
  exact tendsto_iff_norm_sub_tendsto_zero.2 htn

/-- Norm continuity of q'_A on the full positive-scale domain; no assertion at the zero extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantc70c641096a68870a8769351841653edb26d93f9c8b318edce05f2330a44a697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantc70c641096a68870a8769351841653edb26d93f9c8b318edce05f2330a44a697.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a2bc5e21ce55716f5f3206fa699e5086afe932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
