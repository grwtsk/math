# hasSum_integral_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:951bbd90-39db-8a69-fac0-db3921a8a9cb",
  "kind": "theorem",
  "lexical_name": "hasSum_integral_measure",
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
  "slug": "hassum-integral-measure--6fbea710a4a8cbb4236ecd5a",
  "source": {
    "blob": "c106e503fa9c417660c266949e0ac67b7dc6f042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1527,
    "line": 1506,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fbea710a4a8cbb4236ecd5acb09e521d38eb21363fee1fb9ec362702ab94908",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:951bbd90-39db-8a69-fac0-db3921a8a9cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1506–1527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_integral_measure {ι} {m : MeasurableSpace α} {f : α → G} {μ : ι → Measure α}
    (hf : Integrable f (Measure.sum μ)) :
    HasSum (fun i => ∫ a, f a ∂μ i) (∫ a, f a ∂Measure.sum μ) := by
  have hfi : ∀ i, Integrable f (μ i) := fun i => hf.mono_measure (Measure.le_sum _ _)
  simp only [HasSum, ← integral_finset_sum_measure fun i _ => hfi i]
  refine' Metric.nhds_basis_ball.tendsto_right_iff.mpr fun ε ε0 => _
  lift ε to ℝ≥0 using ε0.le
  have hf_lt : (∫⁻ x, ‖f x‖₊ ∂Measure.sum μ) < ∞ := hf.2
  have hmem : ∀ᶠ y in 𝓝 (∫⁻ x, ‖f x‖₊ ∂Measure.sum μ), (∫⁻ x, ‖f x‖₊ ∂Measure.sum μ) < y + ε := by
    refine' tendsto_id.add tendsto_const_nhds (lt_mem_nhds (α := ℝ≥0∞) <| ENNReal.lt_add_right _ _)
    exacts [hf_lt.ne, ENNReal.coe_ne_zero.2 (NNReal.coe_ne_zero.1 ε0.ne')]
  refine' ((hasSum_lintegral_measure (fun x => ‖f x‖₊) μ).eventually hmem).mono fun s hs => _
  obtain ⟨ν, hν⟩ : ∃ ν, (∑ i in s, μ i) + ν = Measure.sum μ := by
    refine' ⟨Measure.sum fun i : ↥(sᶜ : Set ι) => μ i, _⟩
    simpa only [← Measure.sum_coe_finset] using Measure.sum_add_sum_compl (s : Set ι) μ
  rw [Metric.mem_ball, ← coe_nndist, NNReal.coe_lt_coe, ← ENNReal.coe_lt_coe, ← hν]
  rw [← hν, integrable_add_measure] at hf
  refine' (nndist_integral_add_measure_le_lintegral hf.1 hf.2).trans_lt _
  rw [← hν, lintegral_add_measure, lintegral_finset_sum_measure] at hs
  exact lt_of_add_lt_add_left hs
#align measure_theory.has_sum_integral_measure MeasureTheory.hasSum_integral_measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean#L1506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c106e503fa9c417660c266949e0ac67b7dc6f042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
