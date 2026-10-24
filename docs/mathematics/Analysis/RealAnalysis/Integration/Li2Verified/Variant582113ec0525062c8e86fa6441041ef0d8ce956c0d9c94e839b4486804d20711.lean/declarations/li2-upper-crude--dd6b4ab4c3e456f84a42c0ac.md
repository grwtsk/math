# li2_upper_crude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0bfb953-f354-1f3e-7149-451bf2b340c1",
  "kind": "theorem",
  "lexical_name": "li2_upper_crude",
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
  "slug": "li2-upper-crude--dd6b4ab4c3e456f84a42c0ac",
  "source": {
    "blob": "c9106be74b741fa31457f5a3764c19c97fe53c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd6b4ab4c3e456f84a42c0ace26875df52f8ae5cdac80ab22d58471f07336848",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0bfb953-f354-1f3e-7149-451bf2b340c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_upper_crude : li2 ≤ 2 := by
  have hInt : IntervalIntegrable g volume (0:ℝ) 1 := by
    -- Integrable on Ioo by boundedness, then lift to interval integrable.
    have hmeas : Measurable g := by
      have hlog1p : Measurable fun t : ℝ => Real.log (1 + t) :=
        Real.measurable_log.comp (measurable_const.add measurable_id)
      have hlog1m : Measurable fun t : ℝ => Real.log (1 - t) :=
        Real.measurable_log.comp (measurable_const.sub measurable_id)
      have hlog1p_inv : Measurable fun t : ℝ => (Real.log (1 + t))⁻¹ := hlog1p.inv
      have hlog1m_inv : Measurable fun t : ℝ => (Real.log (1 - t))⁻¹ := hlog1m.inv
      unfold g
      unfold symmetricLogCombination
      simpa [one_div] using hlog1p_inv.add hlog1m_inv
    have hInt_Ioo : IntegrableOn g (Set.Ioo (0:ℝ) 1) volume := by
      apply Measure.integrableOn_of_bounded
      · exact measure_Ioo_lt_top.ne
      · exact hmeas.aestronglyMeasurable
      · refine (ae_restrict_iff' measurableSet_Ioo).2 ?_
        exact ae_of_all _ (fun t ht =>
          by
            have hpos := g_pos t ht.1 ht.2
            have hle := g_le_two t ht.1 ht.2
            have habs : |g t| = g t := abs_of_pos hpos
            simpa [Real.norm_eq_abs, habs] using hle)
    have hab : (0:ℝ) ≤ 1 := by norm_num
    exact (intervalIntegrable_iff_integrableOn_Ioo_of_le (μ:=volume) (f:=g) hab).2 hInt_Ioo
  have hInt_const : IntervalIntegrable (fun _ : ℝ => (2:ℝ)) volume (0:ℝ) 1 :=
    intervalIntegrable_const
  have hab : (0:ℝ) ≤ 1 := by norm_num
  have hmono : ∀ t ∈ Set.Ioo (0:ℝ) 1, g t ≤ (2:ℝ) := by
    intro t ht
    exact g_le_two t ht.1 ht.2
  have hle :=
    intervalIntegral.integral_mono_on_of_le_Ioo (μ:=volume) (a:=0) (b:=1)
      (f:=g) (g:=fun _ : ℝ => (2:ℝ)) (hab:=hab) (hf:=hInt) (hg:=hInt_const) hmono
  -- Evaluate the constant integral.
  have hconst : (∫ t in (0:ℝ)..1, (2:ℝ)) = 2 := by
    simp [intervalIntegral.integral_const]
  simpa [li2, hconst] using hle

/-! ### Lower Bound: li(2) > 0 -/

/-- g(t) > 0 for small positive t (since g → 1 as t → 0⁺). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9106be74b741fa31457f5a3764c19c97fe53c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
