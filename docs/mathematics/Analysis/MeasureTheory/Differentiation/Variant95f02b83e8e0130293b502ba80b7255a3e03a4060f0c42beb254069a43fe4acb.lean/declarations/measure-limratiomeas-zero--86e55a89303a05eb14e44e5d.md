# measure_limRatioMeas_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd492f57-9953-8664-b641-aecb8cee1f57",
  "kind": "theorem",
  "lexical_name": "measure_limRatioMeas_zero",
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
  "slug": "measure-limratiomeas-zero--86e55a89303a05eb14e44e5d",
  "source": {
    "blob": "cc26e1e64d5bf06020ca5e385d7ee270325dc58b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 526,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86e55a89303a05eb14e44e5da59523f5a5c270ef32b2cda7a313932e4ef4985b",
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

Occurrence: `result:dd492f57-9953-8664-b641-aecb8cee1f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_limRatioMeas_zero : ρ {x | v.limRatioMeas hρ x = 0} = 0 := by
  refine' null_of_locally_null _ fun x _ => _
  obtain ⟨o, xo, o_open, μo⟩ : ∃ o : Set α, x ∈ o ∧ IsOpen o ∧ μ o < ∞ :=
    Measure.exists_isOpen_measure_lt_top μ x
  let s := {x : α | v.limRatioMeas hρ x = 0} ∩ o
  refine' ⟨s, inter_mem_nhdsWithin _ (o_open.mem_nhds xo), le_antisymm _ bot_le⟩
  have μs : μ s ≠ ∞ := ((measure_mono (inter_subset_right _ _)).trans_lt μo).ne
  have A : ∀ q : ℝ≥0, 0 < q → ρ s ≤ q * μ s := by
    intro q hq
    apply v.measure_le_mul_of_subset_limRatioMeas_lt hρ
    intro y hy
    have : v.limRatioMeas hρ y = 0 := hy.1
    simp only [this, mem_setOf_eq, hq, ENNReal.coe_pos]
  have B : Tendsto (fun q : ℝ≥0 => (q : ℝ≥0∞) * μ s) (𝓝[>] (0 : ℝ≥0)) (𝓝 ((0 : ℝ≥0) * μ s)) := by
    apply ENNReal.Tendsto.mul_const _ (Or.inr μs)
    rw [ENNReal.tendsto_coe]
    exact nhdsWithin_le_nhds
  simp only [zero_mul, ENNReal.coe_zero] at B
  apply ge_of_tendsto B
  filter_upwards [self_mem_nhdsWithin] using A
#align vitali_family.measure_lim_ratio_meas_zero VitaliFamily.measure_limRatioMeas_zero

/-- As an intermediate step to show that `μ.withDensity (v.limRatioMeas hρ) = ρ`, we show here
that `μ.withDensity (v.limRatioMeas hρ) ≤ t^2 ρ` for any `t > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc26e1e64d5bf06020ca5e385d7ee270325dc58b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
