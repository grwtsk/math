# measure_limRatioMeas_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14b94bd7-4e00-2112-0586-2dda1491d76d",
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
  "slug": "measure-limratiomeas-top--102854b9d69df93d5d6b12ed",
  "source": {
    "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 480,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:102854b9d69df93d5d6b12edd2d7b5433c620be2c7b5c402278241b5d58e0744",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14b94bd7-4e00-2112-0586-2dda1491d76d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_limRatioMeas_top : μ {x | v.limRatioMeas hρ x = ∞} = 0 := by
  refine measure_null_of_locally_null _ fun x _ => ?_
  obtain ⟨o, xo, o_open, μo⟩ : ∃ o : Set α, x ∈ o ∧ IsOpen o ∧ ρ o < ∞ :=
    Measure.exists_isOpen_measure_lt_top ρ x
  let s := {x : α | v.limRatioMeas hρ x = ∞} ∩ o
  refine ⟨s, inter_mem_nhdsWithin _ (o_open.mem_nhds xo), le_antisymm ?_ bot_le⟩
  have ρs : ρ s ≠ ∞ := ((measure_mono inter_subset_right).trans_lt μo).ne
  have A : ∀ q : ℝ≥0, 1 ≤ q → μ s ≤ (q : ℝ≥0∞)⁻¹ * ρ s := by
    intro q hq
    rw [mul_comm, ← div_eq_mul_inv, ENNReal.le_div_iff_mul_le _ (Or.inr ρs), mul_comm]
    · apply v.mul_measure_le_of_subset_lt_limRatioMeas hρ
      intro y hy
      have : v.limRatioMeas hρ y = ∞ := hy.1
      simp only [this, ENNReal.coe_lt_top, mem_setOf_eq]
    · simp only [(zero_lt_one.trans_le hq).ne', true_or, ENNReal.coe_eq_zero, Ne,
        not_false_iff]
  have B : Tendsto (fun q : ℝ≥0 => (q : ℝ≥0∞)⁻¹ * ρ s) atTop (𝓝 (∞⁻¹ * ρ s)) := by
    apply ENNReal.Tendsto.mul_const _ (Or.inr ρs)
    exact ENNReal.tendsto_inv_iff.2 (ENNReal.tendsto_coe_nhds_top.2 tendsto_id)
  simp only [zero_mul, ENNReal.inv_top] at B
  apply ge_of_tendsto B
  exact eventually_atTop.2 ⟨1, A⟩

/-- The points with `v.limRatioMeas hρ x = 0` have measure `0` for `ρ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
