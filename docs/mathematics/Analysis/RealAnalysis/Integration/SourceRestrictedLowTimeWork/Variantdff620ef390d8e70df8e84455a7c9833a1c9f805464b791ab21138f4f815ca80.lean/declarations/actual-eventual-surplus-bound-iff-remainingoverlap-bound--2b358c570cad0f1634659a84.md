# actual_eventual_surplus_bound_iff_remainingOverlap_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a21d8c8e-bb8a-6206-f01a-eefb73ea86a8",
  "kind": "theorem",
  "lexical_name": "actual_eventual_surplus_bound_iff_remainingOverlap_bound",
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
  "slug": "actual-eventual-surplus-bound-iff-remainingoverlap-bound--2b358c570cad0f1634659a84",
  "source": {
    "blob": "ebb6dc470fa9cd478358b053e8ff6be1c5ba786a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 592,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b358c570cad0f1634659a84e52d8aef6ec11041e3083de1d97e1e487ae799e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a21d8c8e-bb8a-6206-f01a-eefb73ea86a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_eventual_surplus_bound_iff_remainingOverlap_bound :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A ≤ D) ↔
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      remainingOverlapBalance A ≤ D) := by
  have hC : 0 ≤ 45 * (Real.log 4 + 4 + Real.log 2) := by
    exact mul_nonneg (by norm_num) mangoldt_error_budget_pos.le
  constructor
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D + 45 * (Real.log 4 + 4 + Real.log 2), by positivity, R, hR, ?_⟩
    intro A hA
    exact (remainingOverlap_le_actual_surplus_add_margin (hR.trans hA)).trans
      (by linarith [htail A hA])
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D + 45 * (Real.log 4 + 4 + Real.log 2), by positivity, R, hR, ?_⟩
    intro A hA
    exact (actual_surplus_le_remainingOverlap_add_margin (hR.trans hA)).trans
      (by linarith [htail A hA])

end
end FormalResearch.RiemannHypothesis.SourceRestrictedLowTimeWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb6dc470fa9cd478358b053e8ff6be1c5ba786a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
