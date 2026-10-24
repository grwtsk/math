# isTightMeasureSet_of_isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d814bbb4-0493-97d7-e805-4585a66aac39",
  "kind": "theorem",
  "lexical_name": "isTightMeasureSet_of_isCompact_closure",
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
  "slug": "istightmeasureset-of-iscompact-closure--7927aa43d4a85c461e11cad5",
  "source": {
    "blob": "caeefca8ede961defa13ae3cd7890c0e421d203e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 642,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7927aa43d4a85c461e11cad5c3a730395d0163705664d67717f5ad0156b1dcbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d814bbb4-0493-97d7-e805-4585a66aac39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTightMeasureSet_of_isCompact_closure (hcomp : IsCompact (closure S)) :
    IsTightMeasureSet {((μ : ProbabilityMeasure 𝓧) : Measure 𝓧) | μ ∈ S} := by
  rw [isTightMeasureSet_iff_exists_isCompact_measure_compl_le]
  rcases isEmpty_or_nonempty 𝓧 with hempty | hnonempty
  · rw [← univ_eq_empty_iff] at hempty
    exact fun ε εpos ↦ ⟨∅, isCompact_empty, by simp [hempty]⟩
  obtain ⟨D, hD⟩ := exists_dense_seq 𝓧
  obtain ⟨u, hu_anti, hu_pos, hu⟩ : ∃ u, StrictAnti u ∧ (∀ n, 0 < u n) ∧ Tendsto u atTop (𝓝 0) :=
    exists_seq_strictAnti_tendsto (0 : ℝ)
  have hcov (m : ℕ) : ⋃ i, ball (D i) (u m) = univ := by
    rw [denseRange_iff] at hD
    ext p
    exact ⟨fun a ↦ trivial, fun _ ↦ mem_iUnion.mpr <| hD p (u m) (hu_pos m)⟩
  intro ε εpos
  rcases lt_or_ge 1 ε with hεbound | hεbound
  · refine ⟨∅, isCompact_empty, fun μ hμ ↦ ?_⟩
    simp only [mem_ofPred_eq] at hμ
    obtain ⟨μ', hμ', rfl⟩ := hμ
    rw [compl_empty, measure_univ]
    exact le_of_lt hεbound
  have byclaim (m : ℕ) : ∃ k, ∀ μ ∈ S, 1 - (ε * 2 ^ (-m : ℤ) : ℝ≥0∞) <
      μ (⋃ i ≤ k, ball (D i) (u m)) := by
    refine exists_measure_iUnion_gt_of_isCompact_closure
      (fun i ↦ ball (D i) (u m)) (fun _ ↦ isOpen_ball) (hcov m) hcomp (ε * 2 ^ (-m : ℤ)) ?_ ?_
    · simpa using ⟨εpos, (ENNReal.zpow_pos (by simp) (by simp) (-↑m))⟩
    · exact Left.mul_le_one hεbound <| zpow_le_one_of_nonpos (by linarith) (by simp)
  choose! km hbound using byclaim
  -- This is a set we can construct to show tightness
  let bigK := ⋂ m, ⋃ (i ≤ km (m + 1)), closure (ball (D i) (u m))
  have bigcalc (μ : ProbabilityMeasure 𝓧) (hs : μ ∈ S) : μ.toMeasure bigKᶜ ≤ ε := calc
    μ.toMeasure bigKᶜ
    _ = μ.toMeasure (⋃ m, (⋃ (i ≤ km (m + 1)), closure (ball (D i) (u m)))ᶜ) := by simp [bigK]
    _ ≤ ∑' m, μ.toMeasure (⋃ (i ≤ km (m + 1)), closure (ball (D i) (u m)))ᶜ :=
      measure_iUnion_le _
    _ = ∑' m, (1 - μ.toMeasure (⋃ (i ≤ km (m + 1)), closure (ball (D i) (u m)))) := by
      congr! with m; rw [measure_compl (by measurability) (by simp)]; simp
    _ ≤ (∑' (m : ℕ), (ε : ℝ≥0∞) * 2 ^ (-(m + 1) : ℤ)) := by
      refine ENNReal.tsum_le_tsum fun m ↦ tsub_le_iff_tsub_le.mp ?_
      replace hbound := (hbound (m + 1) μ hs).le
      simp_all only [neg_add_rev, Int.reduceNeg, tsub_le_iff_right, Nat.cast_add, Nat.cast_one,
          ← coe_ofNat, ← ProbabilityMeasure.ennreal_coeFn_eq_coeFn_toMeasure]
      grw [hbound]
      gcongr with i hi
      grw [← subset_closure (s := ball (D i) (u m)), ball_subset_ball]
      exact hu_anti.antitone (by grind)
    _ = ε := by
      rw [ENNReal.tsum_mul_left]
      nth_rw 2 [← mul_one (a := ε)]
      congr
      ring_nf
      exact tsum_two_zpow_neg_add_one
  -- Final proof
  refine ⟨bigK, ?_, by simpa⟩
  -- Compactness first
  refine TotallyBounded.isCompact_of_isClosed ?_ ?_
  --Totally bounded
  · refine Metric.totallyBounded_iff.mpr fun δ δpos ↦ ?_
    have ⟨δ_inv, hδ_inv⟩ : ∃ x, u x < δ := (Tendsto.eventually_lt_const δpos hu).exists
    refine ⟨D '' .Iic (km (δ_inv + 1)), (Set.finite_Iic _).image _, ?_⟩
    -- t should be image under D of the set of numbers less than km of δ_inv
    simp only [mem_image, iUnion_exists, biUnion_and', iUnion_iUnion_eq_right, bigK]
    calc
        ⋂ m, ⋃ i ≤ km (m + 1), closure (ball (D i) (u m))
    _ ⊆ ⋃ i ≤ km (δ_inv + 1), closure (ball (D i) (u δ_inv)) := iInter_subset ..
    _ ⊆ ⋃ i ≤ km (δ_inv + 1), ball (D i) δ := by
        gcongr
        exact closure_ball_subset_closedBall.trans <| closedBall_subset_ball <| hδ_inv
  -- Closedness
  · simp_rw [bigK, ← Set.mem_Iic]
    exact isClosed_iInter fun n =>
      Finite.isClosed_biUnion (finite_Iic _) (fun _ _ ↦ isClosed_closure)

end MeasureTheory -- namespace

end Backward
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caeefca8ede961defa13ae3cd7890c0e421d203e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
