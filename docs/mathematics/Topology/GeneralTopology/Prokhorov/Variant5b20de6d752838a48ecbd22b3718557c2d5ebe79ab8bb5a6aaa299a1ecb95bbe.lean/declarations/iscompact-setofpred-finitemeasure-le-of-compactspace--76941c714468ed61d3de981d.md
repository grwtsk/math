# isCompact_setOfPred_finiteMeasure_le_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56114b5d-6419-c2f1-2093-e02c361808e8",
  "kind": "theorem",
  "lexical_name": "isCompact_setOfPred_finiteMeasure_le_of_compactSpace",
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
  "slug": "iscompact-setofpred-finitemeasure-le-of-compactspace--76941c714468ed61d3de981d",
  "source": {
    "blob": "caeefca8ede961defa13ae3cd7890c0e421d203e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76941c714468ed61d3de981d42ad5d16be7241e7fa208837bc6ac2a8a5a973a8",
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

Occurrence: `result:56114b5d-6419-c2f1-2093-e02c361808e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_setOfPred_finiteMeasure_le_of_compactSpace [CompactSpace E] (C : ℝ≥0) :
    IsCompact {μ : FiniteMeasure E | μ.mass ≤ C} := by
  /- To prove the compactness, we will show that any sequence has a converging subsequence, in
  ultrafilters terms as things are not second countable. The integral against any bounded continuous
  function has a limit along the ultrafilter, by compactness of real intervals and the mass control.
  The limit is a monotone linear form. By the Riesz-Markov-Kakutani theorem, it comes from a
  measure. This measure is finite, of mass at most `C`. It provides the desired limit
  for the ultrafilter. -/
  apply isCompact_iff_ultrafilter_le_nhds'.2 (fun f hf ↦ ?_)
  have L (g : C_c(E, ℝ)) :
      ∃ x ∈ Icc (-C * ‖g.toBoundedContinuousFunction‖) (C * ‖g.toBoundedContinuousFunction‖),
      Tendsto (fun (μ : FiniteMeasure E) ↦ ∫ x, g x ∂μ) f (𝓝 x) := by
    simp only [Tendsto, ← Ultrafilter.coe_map]
    apply IsCompact.ultrafilter_le_nhds' isCompact_Icc
    simp only [neg_mul, Ultrafilter.mem_map]
    filter_upwards [hf] with μ hμ
    simp only [mem_preimage, mem_Icc]
    refine ⟨?_, ?_⟩
    · calc - (C * ‖g.toBoundedContinuousFunction‖)
      _ ≤ ∫ (x : E), - ‖g.toBoundedContinuousFunction‖ ∂μ := by
        simp only [integral_const, smul_eq_mul, mul_neg, neg_le_neg_iff]
        gcongr
        exact hμ
      _ ≤ ∫ x, g x ∂μ := by
        gcongr
        · simp
        · exact g.continuous.integrable_of_hasCompactSupport g.hasCompactSupport
        · intro x
          apply neg_le_of_abs_le
          exact g.toBoundedContinuousFunction.norm_coe_le_norm x
    · calc ∫ x, g x ∂μ
      _ ≤ ∫ (x : E), ‖g.toBoundedContinuousFunction‖ ∂μ := by
        gcongr
        · exact g.continuous.integrable_of_hasCompactSupport g.hasCompactSupport
        · simp
        · intro x
          apply le_of_abs_le
          exact g.toBoundedContinuousFunction.norm_coe_le_norm x
      _ ≤ C * ‖g.toBoundedContinuousFunction‖ := by
        simp only [integral_const, smul_eq_mul]
        gcongr
        exact hμ
  choose Λ h₀Λ hΛ using L
  let Λ' : C_c(E, ℝ) →ₚ[ℝ] ℝ :=
  { toFun := Λ
    map_add' g g' := by
      have : Tendsto (fun (μ : FiniteMeasure E) ↦ ∫ x, g x + g' x ∂μ) f (𝓝 (Λ g + Λ g')) := by
        convert! (hΛ g).add (hΛ g')
        rw [integral_add]
        · exact g.continuous.integrable_of_hasCompactSupport g.hasCompactSupport
        · exact g'.continuous.integrable_of_hasCompactSupport g'.hasCompactSupport
      exact tendsto_nhds_unique (hΛ (g + g')) this
    map_smul' c g := by
      have : Tendsto (fun (μ : FiniteMeasure E) ↦ ∫ x, c • g x ∂μ) f (𝓝 (c • Λ g)) := by
        convert! (hΛ g).const_smul c
        rw [integral_smul]
      exact tendsto_nhds_unique (hΛ (c • g)) this
    monotone' g g' hgg' := by
      apply le_of_tendsto_of_tendsto' (hΛ g) (hΛ g') (fun μ ↦ ?_)
      apply integral_mono _ _ hgg'
      · exact g.continuous.integrable_of_hasCompactSupport g.hasCompactSupport
      · exact g'.continuous.integrable_of_hasCompactSupport g'.hasCompactSupport }
  let μlim := RealRMK.rieszMeasure Λ'
  have μlim_le : μlim univ ≤ ENNReal.ofReal C := by
    let o : C_c(E, ℝ) :=
    { toFun := 1
      hasCompactSupport' := HasCompactSupport.of_compactSpace 1 }
    have : μlim univ ≤ ENNReal.ofReal (Λ' o) := RealRMK.rieszMeasure_le_of_eq_one Λ'
      (fun x ↦ by simp [o]) isCompact_univ (fun x ↦ by simp [o])
    apply this.trans
    gcongr
    apply le_of_tendsto (hΛ o)
    filter_upwards [hf] with μ hμ using by simpa [o] using! hμ
  let μlim' : FiniteMeasure E := ⟨μlim, ⟨μlim_le.trans_lt (by simp)⟩⟩
  refine ⟨μlim', ?_, ?_⟩
  · simp only [mem_ofPred_eq, FiniteMeasure.mk_apply, μlim', FiniteMeasure.mass]
    rw [show C = (ENNReal.ofReal ↑C).toNNReal by simp]
    exact ENNReal.toNNReal_mono (by simp) μlim_le
  change Tendsto id f (𝓝 μlim')
  apply FiniteMeasure.tendsto_of_forall_integral_tendsto (fun g ↦ ?_)
  let g' : C_c(E, ℝ) :=
  { toFun := g
    hasCompactSupport' := HasCompactSupport.of_compactSpace _ }
  convert! hΛ g'
  change ∫ (x : E), g' x ∂μlim' = Λ g'
  simp only [FiniteMeasure.toMeasure_mk, RealRMK.integral_rieszMeasure, μlim', μlim]
  rfl

@[deprecated (since := "2026-07-09")]
alias isCompact_setOf_finiteMeasure_le_of_compactSpace :=
  isCompact_setOfPred_finiteMeasure_le_of_compactSpace

variable (E) in
/-- In a compact space, the set of finite measures with mass `C` is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caeefca8ede961defa13ae3cd7890c0e421d203e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
