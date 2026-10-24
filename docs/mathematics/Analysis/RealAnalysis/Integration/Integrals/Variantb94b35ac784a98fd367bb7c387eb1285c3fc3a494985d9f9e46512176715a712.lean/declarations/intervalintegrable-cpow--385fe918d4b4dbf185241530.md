# intervalIntegrable_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd248215-d011-c469-a5d4-b418fc923d19",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_cpow",
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
  "slug": "intervalintegrable-cpow--385fe918d4b4dbf185241530",
  "source": {
    "blob": "f6216c9d48603150583ae8056356cb9e25ed4246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:385fe918d4b4dbf1852415304cae8c65b777038b32b60cdc4a5413909d828176",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd248215-d011-c469-a5d4-b418fc923d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_cpow {r : ℂ} (h : 0 ≤ r.re ∨ (0 : ℝ) ∉ [[a, b]]) :
    IntervalIntegrable (fun x : ℝ => (x : ℂ) ^ r) μ a b := by
  by_cases h2 : (0 : ℝ) ∉ [[a, b]]
  · -- Easy case #1: 0 ∉ [a, b] -- use continuity.
    refine' (ContinuousAt.continuousOn fun x hx => _).intervalIntegrable
    exact Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr <| ne_of_mem_of_not_mem hx h2)
  rw [eq_false h2, or_false_iff] at h
  rcases lt_or_eq_of_le h with (h' | h')
  · -- Easy case #2: 0 < re r -- again use continuity
    exact (Complex.continuous_ofReal_cpow_const h').intervalIntegrable _ _
  -- Now the hard case: re r = 0 and 0 is in the interval.
  refine' (IntervalIntegrable.intervalIntegrable_norm_iff _).mp _
  · refine' (measurable_of_continuousOn_compl_singleton (0 : ℝ) _).aestronglyMeasurable
    exact ContinuousAt.continuousOn fun x hx =>
      Complex.continuousAt_ofReal_cpow_const x r (Or.inr hx)
  -- reduce to case of integral over `[0, c]`
  suffices : ∀ c : ℝ, IntervalIntegrable (fun x : ℝ => ‖(x:ℂ) ^ r‖) μ 0 c
  exact (this a).symm.trans (this b)
  intro c
  rcases le_or_lt 0 c with (hc | hc)
  · -- case `0 ≤ c`: integrand is identically 1
    have : IntervalIntegrable (fun _ => 1 : ℝ → ℝ) μ 0 c := intervalIntegrable_const
    rw [intervalIntegrable_iff_integrable_Ioc_of_le hc] at this ⊢
    refine' IntegrableOn.congr_fun this (fun x hx => _) measurableSet_Ioc
    dsimp only
    rw [Complex.norm_eq_abs, Complex.abs_cpow_eq_rpow_re_of_pos hx.1, ← h', rpow_zero]
  · -- case `c < 0`: integrand is identically constant, *except* at `x = 0` if `r ≠ 0`.
    apply IntervalIntegrable.symm
    rw [intervalIntegrable_iff_integrable_Ioc_of_le hc.le]
    have : Ioc c 0 = Ioo c 0 ∪ {(0 : ℝ)} := by
      rw [← Ioo_union_Icc_eq_Ioc hc (le_refl 0), ← Icc_def]
      simp_rw [← le_antisymm_iff, setOf_eq_eq_singleton']
    rw [this, integrableOn_union, and_comm]; constructor
    · refine' integrableOn_singleton_iff.mpr (Or.inr _)
      exact isFiniteMeasureOnCompacts_of_isLocallyFiniteMeasure.lt_top_of_isCompact
        isCompact_singleton
    · have : ∀ x : ℝ, x ∈ Ioo c 0 → ‖Complex.exp (↑π * Complex.I * r)‖ = ‖(x : ℂ) ^ r‖ := by
        intro x hx
        rw [Complex.ofReal_cpow_of_nonpos hx.2.le, norm_mul, ← Complex.ofReal_neg,
          Complex.norm_eq_abs (_ ^ _), Complex.abs_cpow_eq_rpow_re_of_pos (neg_pos.mpr hx.2), ← h',
          rpow_zero, one_mul]
      refine' IntegrableOn.congr_fun _ this measurableSet_Ioo
      rw [integrableOn_const]
      refine' Or.inr ((measure_mono Set.Ioo_subset_Icc_self).trans_lt _)
      exact isFiniteMeasureOnCompacts_of_isLocallyFiniteMeasure.lt_top_of_isCompact isCompact_Icc
#align interval_integral.interval_integrable_cpow intervalIntegral.intervalIntegrable_cpow

/-- See `intervalIntegrable_cpow` for a version applying to any locally finite measure, but with a
stronger hypothesis on `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6216c9d48603150583ae8056356cb9e25ed4246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
