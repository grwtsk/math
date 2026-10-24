# exists_eq_const_mul_intervalIntegral_of_nonneg_of_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f76854f395101a58b1e7548f09b17ebf3b6928",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff790bb3-1975-35a2-c6e3-ee19de4e34df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:919184d1-b651-f651-1a78-205daee471a8",
  "kind": "theorem",
  "lexical_name": "exists_eq_const_mul_intervalIntegral_of_nonneg_of_antitoneOn",
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
  "slug": "exists-eq-const-mul-intervalintegral-of-nonneg-of-antitoneon--958077b85f583b58a095d954",
  "source": {
    "blob": "83f76854f395101a58b1e7548f09b17ebf3b6928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:958077b85f583b58a095d954344f91cc0d1846eac7da53891652f636bd15e319",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:919184d1-b651-f651-1a78-205daee471a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_const_mul_intervalIntegral_of_nonneg_of_antitoneOn
    (hab : a ≤ b) (hf : 0 ≤ f b) (hf_mon : AntitoneOn f (Icc a b))
    (hg : IntervalIntegrable g volume a b) :
    ∃ ξ ∈ Icc a b, ∫ x in a..b, f x * g x = f a * ∫ x in a..ξ, g x := by
  -- The first step is to write `f x` as layercake integral and use Fubini.
  have hsub : Ι a b ⊆ Icc a b := uIcc_of_le hab ▸ uIoc_subset_uIcc
  have hf_nonneg x (hx : x ∈ Icc a b) : 0 ≤ f x := hf.trans (hf_mon.mapsTo_Icc hx).1
  let H := fun r ↦ ∫ x in a..b, ({x | r ≤ f x}.indicator g) x
  -- The region under the graph of `f` is null measurable because `f` is antitone
  have hmeas : NullMeasurableSet {p : ℝ × ℝ | p.2 ≤ f p.1}
      ((volume.restrict (uIoc a b)).prod (volume.restrict (uIoc 0 (f a)))) :=
    nullMeasurableSet_le measurable_snd.aemeasurable
      (aemeasurable_restrict_of_antitoneOn measurableSet_uIoc (hf_mon.mono hsub)).comp_fst
  have : IsFiniteMeasure (volume.restrict (uIoc 0 (f a))) := Real.isFiniteMeasure_restrict_Ioc _ _
  have h_int : Integrable ({p : ℝ × ℝ | p.2 ≤ f p.1}.indicator fun p ↦ g p.1)
      ((volume.restrict (uIoc a b)).prod (volume.restrict (uIoc 0 (f a)))) :=
    (hg.def'.comp_fst _).indicator₀ hmeas
  -- Layer cake representation of `f x * g x`, valid for every `x` in the interval
  have hlayer (x : ℝ) (hx : x ∈ Ι a b) :
      f x * g x = ∫ r in 0..f a, ({y | r ≤ f y}.indicator g) x := by
    have hfx : f x ∈ Icc 0 (f a) :=
      ⟨hf_nonneg x (hsub hx), (hf_mon.mapsTo_Icc (hsub hx)).2⟩
    simpa [Set.indicator_apply] using
      (intervalIntegral.integral_indicator (μ := volume) (f := fun _ ↦ g x) hfx).symm
  have hfub : ∫ x in a..b, f x * g x = ∫ r in 0..f a, H r := by
    rw [intervalIntegral.integral_congr_ae_restrict
      (ae_restrict_of_forall_mem measurableSet_uIoc hlayer)]
    refine intervalIntegral_intervalIntegral_swap ?_
    rw [IntegrableOn, Measure.volume_eq_prod ℝ ℝ, ← Measure.prod_restrict]
    exact h_int
  -- The case `f a = 0` is trivial because then `f` is zero on the whole interval
  rcases (hf_nonneg a ⟨le_rfl, hab⟩).eq_or_lt with hfa | hfa
  · exact ⟨a, ⟨le_rfl, hab⟩, by simpa [hfa.symm] using hfub⟩
  -- We will use the intermediate value theorem on the following function
  let G := fun x ↦ ∫ t in a..x, g t
  have hGcont := uIcc_of_le hab ▸ continuousOn_primitive_interval' hg left_mem_uIcc
  obtain ⟨ξmin, hξmin, hmin⟩ := isCompact_Icc.exists_isMinOn (nonempty_Icc.2 hab) hGcont
  obtain ⟨ξmax, hξmax, hmax⟩ := isCompact_Icc.exists_isMaxOn (nonempty_Icc.2 hab) hGcont
  have hH_int : IntervalIntegrable H volume 0 (f a) := by
    rw [intervalIntegrable_iff, IntegrableOn]
    simp_rw [H, intervalIntegral_eq_integral_uIoc]
    exact (h_int.swap.integral_prod_left).const_mul _
  -- Since `f` is nonincreasing, the superlevel sets are intervals and `H r` is in the range of `G`.
  have hH_bounds r (hr : r ∈ Icc 0 (f a)) : G ξmin ≤ H r ∧ H r ≤ G ξmax := by
    let S := {x | x ∈ Icc a b ∧ r ≤ f x}
    have hS := isLUB_csSup (s := S) ⟨a, ⟨⟨le_rfl, hab⟩, hr.2⟩⟩ ⟨b, fun _ h ↦ h.1.2⟩
    have hc : sSup S ∈ Icc a b :=
      ⟨hS.1 ⟨⟨le_rfl, hab⟩, hr.2⟩, hS.2 fun _ h ↦ h.1.2⟩
    -- We use a.e. here because `f` may have a jump discontinuity at the interval endpoint `sSup S`
    have hc_eq : ∀ᵐ x ∂volume.restrict (Ι a b), (r ≤ f x ↔ x ≤ sSup S) := by
      filter_upwards [Measure.ae_ne _ _, ae_restrict_mem measurableSet_uIoc] with x hxne hxI
      have hxIcc := hsub hxI
      constructor <;> intro hx
      · exact hS.1 ⟨hxIcc, hx⟩
      · obtain ⟨y, hy, hxy⟩ := (lt_isLUB_iff hS).1 (lt_of_le_of_ne hx hxne)
        exact hy.2.trans (hf_mon hxIcc hy.1 hxy.le)
    simpa only [show H r = G (sSup S) from
      (intervalIntegral.integral_congr_ae_restrict <|
        indicator_ae_eq_of_ae_eq_set (hc_eq.mono fun _ ↦ propext)).trans
        (intervalIntegral.integral_indicator hc)] using ⟨hmin hc, hmax hc⟩
  -- Finally, integrate over `r`, divide by `f a` and apply the intermediate value theorem
  have hy_mem : (∫ x in a..b, f x * g x) / f a ∈ Icc (G ξmin) (G ξmax) := by
    rw [mem_Icc, le_div_iff₀ hfa, div_le_iff₀ hfa, hfub]
    constructor
    · simpa [mul_comm] using intervalIntegral.integral_mono_on hfa.le
        intervalIntegrable_const hH_int fun r hr ↦ (hH_bounds r hr).1
    · simpa [mul_comm] using intervalIntegral.integral_mono_on hfa.le hH_int
        intervalIntegrable_const fun r hr ↦ (hH_bounds r hr).2
  obtain ⟨ξ, hξ, hGξ⟩ := (isPreconnected_Icc.intermediate_value hξmin hξmax hGcont) hy_mem
  exact ⟨ξ, hξ, by grind⟩

/-- **Second mean value theorem for interval integrals** with a nonnegative monotone weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant1484b7ccc39f7ff724c768a4426044781cc00384b9f721ff6a3da2bdc1afa575.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f76854f395101a58b1e7548f09b17ebf3b6928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
