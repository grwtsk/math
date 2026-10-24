# mkMetric_mono_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee2549f2-cb66-be26-c7d5-776e6fa819dd",
  "kind": "theorem",
  "lexical_name": "mkMetric_mono_smul",
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
  "slug": "mkmetric-mono-smul--86ef194f848797aea4eaf568",
  "source": {
    "blob": "53256e89e379be77f46fd241327ac4308c66161e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 347,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86ef194f848797aea4eaf5683787450a3326ba5b5da735ac95d91fe49ece63aa",
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

Occurrence: `result:ee2549f2-cb66-be26-c7d5-776e6fa819dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkMetric_mono_smul {m₁ m₂ : ℝ≥0∞ → ℝ≥0∞} {c : ℝ≥0∞} (hc : c ≠ ∞) (h0 : c ≠ 0)
    (hle : m₁ ≤ᶠ[𝓝[≥] 0] c • m₂) : (mkMetric m₁ : OuterMeasure X) ≤ c • mkMetric m₂ := by
  classical
  rcases (mem_nhdsWithin_Ici_iff_exists_Ico_subset' zero_lt_one).1 hle with ⟨r, hr0, hr⟩
  refine' fun s =>
    le_of_tendsto_of_tendsto (mkMetric'.tendsto_pre _ s)
      (ENNReal.Tendsto.const_mul (mkMetric'.tendsto_pre _ s) (Or.inr hc))
      (mem_of_superset (Ioo_mem_nhdsWithin_Ioi ⟨le_rfl, hr0⟩) fun r' hr' => _)
  simp only [mem_setOf_eq, mkMetric'.pre, RingHom.id_apply]
  rw [← smul_eq_mul, ← smul_apply, smul_boundedBy hc]
  refine' le_boundedBy.2 (fun t => (boundedBy_le _).trans _) _
  simp only [smul_eq_mul, Pi.smul_apply, extend, iInf_eq_if]
  split_ifs with ht
  · apply hr
    exact ⟨zero_le _, ht.trans_lt hr'.2⟩
  · simp [h0]
#align measure_theory.outer_measure.mk_metric_mono_smul MeasureTheory.OuterMeasure.mkMetric_mono_smul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53256e89e379be77f46fd241327ac4308c66161e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
