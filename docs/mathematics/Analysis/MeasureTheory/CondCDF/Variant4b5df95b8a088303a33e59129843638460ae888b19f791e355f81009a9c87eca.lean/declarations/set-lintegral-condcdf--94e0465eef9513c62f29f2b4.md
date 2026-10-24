# set_lintegral_condCdf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c789b112-2a86-ecc9-79ac-8a52c5d4950b",
  "kind": "theorem",
  "lexical_name": "set_lintegral_condCdf",
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
  "slug": "set-lintegral-condcdf--94e0465eef9513c62f29f2b4",
  "source": {
    "blob": "8ff22f63535d2a22bb2c37e21aea83df0babac79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 884,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94e0465eef9513c62f29f2b457a58d6a4968b3507ad51c6ac8a29a394bb3401b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c789b112-2a86-ecc9-79ac-8a52c5d4950b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 884–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_condCdf (ρ : Measure (α × ℝ)) [IsFiniteMeasure ρ] (x : ℝ) {s : Set α}
    (hs : MeasurableSet s) : ∫⁻ a in s, ENNReal.ofReal (condCdf ρ a x) ∂ρ.fst = ρ (s ×ˢ Iic x) := by
  -- We have the result for `x : ℚ` thanks to `set_lintegral_cond_cdf_rat`. We use the equality
  -- `cond_cdf ρ a x = ⨅ r : {r' : ℚ // x < r'}, cond_cdf ρ a r` and a monotone convergence
  -- argument to extend it to the reals.
  by_cases hρ_zero : ρ.fst.restrict s = 0
  · rw [hρ_zero, lintegral_zero_measure]
    refine' le_antisymm (zero_le _) _
    calc
      ρ (s ×ˢ Iic x) ≤ ρ (Prod.fst ⁻¹' s) := measure_mono (prod_subset_preimage_fst s (Iic x))
      _ = ρ.fst s := by rw [Measure.fst_apply hs]
      _ = ρ.fst.restrict s univ := by rw [Measure.restrict_apply_univ]
      _ = 0 := by simp only [hρ_zero, Measure.coe_zero, Pi.zero_apply]
  have h :
    ∫⁻ a in s, ENNReal.ofReal (condCdf ρ a x) ∂ρ.fst =
      ∫⁻ a in s, ENNReal.ofReal (⨅ r : { r' : ℚ // x < r' }, condCdf ρ a r) ∂ρ.fst := by
    congr with a : 1
    rw [← (condCdf ρ a).iInf_rat_gt_eq x]
  have h_nonempty : Nonempty { r' : ℚ // x < ↑r' } := by
    obtain ⟨r, hrx⟩ := exists_rat_gt x
    exact ⟨⟨r, hrx⟩⟩
  rw [h]
  simp_rw [ENNReal.ofReal_cinfi]
  have h_coe : ∀ b : { r' : ℚ // x < ↑r' }, (b : ℝ) = ((b : ℚ) : ℝ) := fun _ => by congr
  rw [lintegral_iInf_directed_of_measurable hρ_zero fun q : { r' : ℚ // x < ↑r' } =>
      (measurable_condCdf ρ q).ennreal_ofReal]
  rotate_left
  · intro b
    rw [set_lintegral_condCdf_rat ρ _ hs]
    exact measure_ne_top ρ _
  · refine' Monotone.directed_ge fun i j hij a => ENNReal.ofReal_le_ofReal ((condCdf ρ a).mono _)
    rw [h_coe, h_coe]
    exact_mod_cast hij
  simp_rw [set_lintegral_condCdf_rat ρ _ hs]
  rw [← measure_iInter_eq_iInf]
  · rw [← prod_iInter]
    congr with y
    simp only [mem_iInter, mem_Iic, Subtype.forall, Subtype.coe_mk]
    exact ⟨le_of_forall_lt_rat_imp_le, fun hyx q hq => hyx.trans hq.le⟩
  · exact fun i => hs.prod measurableSet_Iic
  · refine' Monotone.directed_ge fun i j hij => _
    refine' prod_subset_prod_iff.mpr (Or.inl ⟨subset_rfl, Iic_subset_Iic.mpr _⟩)
    exact_mod_cast hij
  · exact ⟨h_nonempty.some, measure_ne_top _ _⟩
#align probability_theory.set_lintegral_cond_cdf ProbabilityTheory.set_lintegral_condCdf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean#L884).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ff22f63535d2a22bb2c37e21aea83df0babac79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
