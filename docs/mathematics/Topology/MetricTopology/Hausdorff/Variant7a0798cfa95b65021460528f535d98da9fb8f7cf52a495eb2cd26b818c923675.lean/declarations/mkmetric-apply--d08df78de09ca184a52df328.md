# mkMetric_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce98ddbd-06e6-fc4c-2bc4-107ea59d17f4",
  "kind": "theorem",
  "lexical_name": "mkMetric_apply",
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
  "slug": "mkmetric-apply--d08df78de09ca184a52df328",
  "source": {
    "blob": "53256e89e379be77f46fd241327ac4308c66161e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 512,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08df78de09ca184a52df328559ddcc0c1340c7094946a69d2d09936b2feda3c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce98ddbd-06e6-fc4c-2bc4-107ea59d17f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkMetric_apply (m : ℝ≥0∞ → ℝ≥0∞) (s : Set X) :
    mkMetric m s =
      ⨆ (r : ℝ≥0∞) (_ : 0 < r),
        ⨅ (t : ℕ → Set X) (_ : s ⊆ iUnion t) (_ : ∀ n, diam (t n) ≤ r),
          ∑' n, ⨆ _ : (t n).Nonempty, m (diam (t n)) := by
  classical
  -- We mostly unfold the definitions but we need to switch the order of `∑'` and `⨅`
  simp only [← OuterMeasure.coe_mkMetric, OuterMeasure.mkMetric, OuterMeasure.mkMetric',
    OuterMeasure.iSup_apply, OuterMeasure.mkMetric'.pre, OuterMeasure.boundedBy_apply, extend]
  refine'
    surjective_id.iSup_congr (fun r => r) fun r =>
      iSup_congr_Prop Iff.rfl fun _ =>
        surjective_id.iInf_congr _ fun t => iInf_congr_Prop Iff.rfl fun ht => _
  dsimp
  by_cases htr : ∀ n, diam (t n) ≤ r
  · rw [iInf_eq_if, if_pos htr]
    congr 1 with n : 1
    simp only [iInf_eq_if, htr n, id, if_true, iSup_and']
  · rw [iInf_eq_if, if_neg htr]
    push_neg at htr; rcases htr with ⟨n, hn⟩
    refine' ENNReal.tsum_eq_top_of_eq_top ⟨n, _⟩
    rw [iSup_eq_if, if_pos, iInf_eq_if, if_neg]
    exact hn.not_le
    rcases diam_pos_iff.1 ((zero_le r).trans_lt hn) with ⟨x, hx, -⟩
    exact ⟨x, hx⟩
#align measure_theory.measure.mk_metric_apply MeasureTheory.Measure.mkMetric_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53256e89e379be77f46fd241327ac4308c66161e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
