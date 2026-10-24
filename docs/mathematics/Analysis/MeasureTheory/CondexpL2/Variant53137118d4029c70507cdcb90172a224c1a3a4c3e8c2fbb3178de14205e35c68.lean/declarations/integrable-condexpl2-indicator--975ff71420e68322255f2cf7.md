# integrable_condExpL2_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b833d6d1-4ab3-d4e6-dfd5-05a877f25af7",
  "kind": "theorem",
  "lexical_name": "integrable_condExpL2_indicator",
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
  "slug": "integrable-condexpl2-indicator--975ff71420e68322255f2cf7",
  "source": {
    "blob": "96a900cf434d68b2e8dbaf77a9a36cb726b92f85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 342,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:975ff71420e68322255f2cf7cf9de2059967e96344072f168a8189f51254d3a4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b833d6d1-4ab3-d4e6-dfd5-05a877f25af7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_condExpL2_indicator (hm : m ≤ m0) [SigmaFinite (μ.trim hm)]
    (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (x : E') :
    Integrable (ε := E') (condExpL2 E' 𝕜 hm (indicatorConstLp 2 hs hμs x)) μ := by
  refine integrable_of_forall_fin_meas_le' hm (μ s * ‖x‖₊)
    (ENNReal.mul_lt_top hμs.lt_top ENNReal.coe_lt_top) ?_ ?_
  · exact Lp.aestronglyMeasurable _
  · refine fun t ht hμt =>
      (setLIntegral_nnnorm_condExpL2_indicator_le hm hs hμs x ht hμt).trans ?_
    gcongr
    apply Set.inter_subset_left

end CondexpL2Indicator

section CondexpIndSMul

variable [NormedSpace ℝ G] {hm : m ≤ m0}

/-- Conditional expectation of the indicator of a measurable set with finite measure, in L2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a900cf434d68b2e8dbaf77a9a36cb726b92f85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
