# LevyProkhorov.continuous_equiv_probabilityMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4390742-1063-513c-a53a-9497522af224",
  "kind": "lemma",
  "lexical_name": "LevyProkhorov.continuous_equiv_probabilityMeasure",
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
  "slug": "levyprokhorov-continuous-equiv-probabilitymeasure--f0e99c434cc31a8254137e86",
  "source": {
    "blob": "122cb03ed4e30f9bd309bbab3335759e5d4091df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 429,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0e99c434cc31a8254137e8667e4543c050d0d0fb7891e7a66ab3f3d52b88d89",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4390742-1063-513c-a53a-9497522af224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LevyProkhorov.continuous_equiv_probabilityMeasure :
    Continuous (LevyProkhorov.equiv (α := ProbabilityMeasure Ω)) := by
  refine SeqContinuous.continuous ?_
  intro μs ν hμs
  set P := LevyProkhorov.equiv _ ν -- more palatable notation
  set Ps := fun n ↦ LevyProkhorov.equiv _ (μs n) -- more palatable notation
  rw [ProbabilityMeasure.tendsto_iff_forall_integral_tendsto]
  refine fun f ↦ tendsto_integral_of_forall_limsup_integral_le_integral ?_ f
  intro f f_nn
  by_cases f_zero : ‖f‖ = 0
  · simp only [norm_eq_zero] at f_zero
    simp [f_zero, limsup_const]
  have norm_f_pos : 0 < ‖f‖ := lt_of_le_of_ne (norm_nonneg _) (fun a => f_zero a.symm)
  apply _root_.le_of_forall_pos_le_add
  intro δ δ_pos
  apply limsup_le_of_le ?_
  · obtain ⟨εs, ⟨_, ⟨εs_pos, εs_lim⟩⟩⟩ := exists_seq_strictAnti_tendsto (0 : ℝ)
    have ε_of_room := Tendsto.add (tendsto_iff_dist_tendsto_zero.mp hμs) εs_lim
    have ε_of_room' : Tendsto (fun n ↦ dist (μs n) ν + εs n) atTop (𝓝[>] 0) := by
      rw [tendsto_nhdsWithin_iff]
      refine ⟨by simpa using ε_of_room, Eventually.of_forall fun n ↦ ?_⟩
      · rw [mem_Ioi]
        linarith [εs_pos n, dist_nonneg (x := μs n) (y := ν)]
    rw [add_zero] at ε_of_room
    have key := (tendsto_integral_meas_thickening_le f (A := Ioc 0 ‖f‖) (by simp) P).comp ε_of_room'
    have aux : ∀ (z : ℝ), Iio (z + δ/2) ∈ 𝓝 z := fun z ↦ Iio_mem_nhds (by linarith)
    filter_upwards [key (aux _), ε_of_room <| Iio_mem_nhds <| half_pos <|
                      mul_pos (inv_pos.mpr norm_f_pos) δ_pos]
      with n hn hn'
    simp only [mem_preimage, mem_Iio] at *
    specialize εs_pos n
    have bound := BoundedContinuousFunction.integral_le_of_levyProkhorovEDist_lt
                    (Ps n) P (ε := dist (μs n) ν + εs n) ?_ ?_ f ?_
    · refine bound.trans ?_
      apply (add_le_add_right hn.le _).trans
      rw [BoundedContinuousFunction.integral_eq_integral_meas_le]
      · rw [add_assoc, mul_comm]
        gcongr
        calc
          δ / 2 + ‖f‖ * (dist (μs n) ν + εs n)
          _ ≤ δ / 2 + ‖f‖ * (‖f‖⁻¹ * δ / 2) := by gcongr
          _ = δ := by field_simp; ring
      · exact Eventually.of_forall f_nn
    · positivity
    · rw [ENNReal.ofReal_add (by positivity) (by positivity), ← add_zero (levyProkhorovEDist _ _)]
      apply ENNReal.add_lt_add_of_le_of_lt (levyProkhorovEDist_ne_top _ _)
            (le_of_eq ?_) (ofReal_pos.mpr εs_pos)
      rw [LevyProkhorov.dist_def, levyProkhorovDist, ofReal_toReal (levyProkhorovEDist_ne_top _ _)]
      rfl
    · exact Eventually.of_forall f_nn
  · simp only [IsCoboundedUnder, IsCobounded, eventually_map, eventually_atTop,
               forall_exists_index]
    refine ⟨0, fun a i hia ↦ le_trans (integral_nonneg f_nn) (hia i le_rfl)⟩

/-- The topology of the Lévy-Prokhorov metric is at least as fine as the topology of convergence in
distribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122cb03ed4e30f9bd309bbab3335759e5d4091df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
