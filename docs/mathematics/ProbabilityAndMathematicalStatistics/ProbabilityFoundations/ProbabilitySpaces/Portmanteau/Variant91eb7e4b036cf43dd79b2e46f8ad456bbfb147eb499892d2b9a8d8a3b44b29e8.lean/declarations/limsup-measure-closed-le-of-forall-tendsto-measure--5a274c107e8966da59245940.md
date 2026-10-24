# limsup_measure_closed_le_of_forall_tendsto_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a9169d7-c6aa-81ac-ff2e-dc41e6a08c00",
  "kind": "lemma",
  "lexical_name": "limsup_measure_closed_le_of_forall_tendsto_measure",
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
  "slug": "limsup-measure-closed-le-of-forall-tendsto-measure--5a274c107e8966da59245940",
  "source": {
    "blob": "239be2dfad1189f9f5eb45f346e635f2dfbd5930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 500,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a274c107e8966da59245940d56f756d9d7afa87ccdc5fbbdcd63696402be01e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a9169d7-c6aa-81ac-ff2e-dc41e6a08c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_measure_closed_le_of_forall_tendsto_measure
    {Ω ι : Type*} {L : Filter ι} [NeBot L]
    [MeasurableSpace Ω] [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω]
    {μ : Measure Ω} [IsFiniteMeasure μ] {μs : ι → Measure Ω}
    (h : ∀ {E : Set Ω}, MeasurableSet E → μ (frontier E) = 0 →
            Tendsto (fun i ↦ μs i E) L (𝓝 (μ E)))
    (F : Set Ω) (F_closed : IsClosed F) :
    L.limsup (fun i ↦ μs i F) ≤ μ F := by
  have ex := exists_null_frontiers_thickening μ F
  let rs := Classical.choose ex
  have rs_lim : Tendsto rs atTop (𝓝 0) := (Classical.choose_spec ex).1
  have rs_pos : ∀ n, 0 < rs n := fun n ↦ ((Classical.choose_spec ex).2 n).1
  have rs_null : ∀ n, μ (frontier (Metric.thickening (rs n) F)) = 0 :=
    fun n ↦ ((Classical.choose_spec ex).2 n).2
  have Fthicks_open : ∀ n, IsOpen (Metric.thickening (rs n) F) :=
    fun n ↦ Metric.isOpen_thickening
  have key := fun (n : ℕ) ↦ h (Fthicks_open n).measurableSet (rs_null n)
  apply ENNReal.le_of_forall_pos_le_add
  intros ε ε_pos μF_finite
  have keyB := tendsto_measure_cthickening_of_isClosed (μ := μ) (s := F)
                ⟨1, ⟨by simp only [gt_iff_lt, zero_lt_one], measure_ne_top _ _⟩⟩ F_closed
  have nhd : Iio (μ F + ε) ∈ 𝓝 (μ F) := by
    apply Iio_mem_nhds
    exact ENNReal.lt_add_right μF_finite.ne (ENNReal.coe_pos.mpr ε_pos).ne'
  specialize rs_lim (keyB nhd)
  simp only [mem_map, mem_atTop_sets, ge_iff_le, mem_preimage, mem_Iio] at rs_lim
  obtain ⟨m, hm⟩ := rs_lim
  have aux' := fun i ↦ measure_mono (μ := μs i) (Metric.self_subset_thickening (rs_pos m) F)
  have aux : (fun i ↦ (μs i F)) ≤ᶠ[L] (fun i ↦ μs i (Metric.thickening (rs m) F)) :=
    eventually_of_forall aux'
  refine (limsup_le_limsup aux).trans ?_
  rw [Tendsto.limsup_eq (key m)]
  apply (measure_mono (Metric.thickening_subset_cthickening (rs m) F)).trans (hm m rfl.le).le

/-- One implication of the portmanteau theorem:
Assuming that for all Borel sets E whose boundary ∂E carries no probability mass under a
candidate limit probability measure μ we have convergence of the measures μsᵢ(E) to μ(E),
then for all open sets G we have the limsup condition μ(G) ≤ liminf μsᵢ(G). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `239be2dfad1189f9f5eb45f346e635f2dfbd5930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
