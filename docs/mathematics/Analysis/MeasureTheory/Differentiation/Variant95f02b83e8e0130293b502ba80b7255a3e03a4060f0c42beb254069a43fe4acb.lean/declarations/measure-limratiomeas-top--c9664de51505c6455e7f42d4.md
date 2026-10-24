# measure_limRatioMeas_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ced3935-6f47-e193-1f37-b151187495af",
  "kind": "theorem",
  "lexical_name": "measure_limRatioMeas_top",
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
  "slug": "measure-limratiomeas-top--c9664de51505c6455e7f42d4",
  "source": {
    "blob": "cc26e1e64d5bf06020ca5e385d7ee270325dc58b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 501,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9664de51505c6455e7f42d44231a27b325efae47138e97acc12f6f67d39a20a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ced3935-6f47-e193-1f37-b151187495af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_limRatioMeas_top : μ {x | v.limRatioMeas hρ x = ∞} = 0 := by
  refine' null_of_locally_null _ fun x _ => _
  obtain ⟨o, xo, o_open, μo⟩ : ∃ o : Set α, x ∈ o ∧ IsOpen o ∧ ρ o < ∞ :=
    Measure.exists_isOpen_measure_lt_top ρ x
  let s := {x : α | v.limRatioMeas hρ x = ∞} ∩ o
  refine' ⟨s, inter_mem_nhdsWithin _ (o_open.mem_nhds xo), le_antisymm _ bot_le⟩
  have ρs : ρ s ≠ ∞ := ((measure_mono (inter_subset_right _ _)).trans_lt μo).ne
  have A : ∀ q : ℝ≥0, 1 ≤ q → μ s ≤ (q : ℝ≥0∞)⁻¹ * ρ s := by
    intro q hq
    rw [mul_comm, ← div_eq_mul_inv, ENNReal.le_div_iff_mul_le _ (Or.inr ρs), mul_comm]
    · apply v.mul_measure_le_of_subset_lt_limRatioMeas hρ
      intro y hy
      have : v.limRatioMeas hρ y = ∞ := hy.1
      simp only [this, ENNReal.coe_lt_top, mem_setOf_eq]
    · simp only [(zero_lt_one.trans_le hq).ne', true_or_iff, ENNReal.coe_eq_zero, Ne.def,
        not_false_iff]
  have B : Tendsto (fun q : ℝ≥0 => (q : ℝ≥0∞)⁻¹ * ρ s) atTop (𝓝 (∞⁻¹ * ρ s)) := by
    apply ENNReal.Tendsto.mul_const _ (Or.inr ρs)
    exact ENNReal.tendsto_inv_iff.2 (ENNReal.tendsto_coe_nhds_top.2 tendsto_id)
  simp only [zero_mul, ENNReal.inv_top] at B
  apply ge_of_tendsto B
  exact eventually_atTop.2 ⟨1, A⟩
#align vitali_family.measure_lim_ratio_meas_top VitaliFamily.measure_limRatioMeas_top

/-- The points with `v.limRatioMeas hρ x = 0` have measure `0` for `ρ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc26e1e64d5bf06020ca5e385d7ee270325dc58b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
