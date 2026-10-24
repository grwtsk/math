# intervalIntegrable_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3e5d5c1f337f986283b15ea47e13be53ce49435",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c5030e7-96d2-e930-d473-005f76826692",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:515b812b-aed0-6081-d70e-35b6f82d72a0",
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
  "slug": "intervalintegrable-cpow--edded683897a11784a453ff4",
  "source": {
    "blob": "f3e5d5c1f337f986283b15ea47e13be53ce49435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edded683897a11784a453ff419c2f3031b3818141e94eb14b1a0655346aff9b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:515b812b-aed0-6081-d70e-35b6f82d72a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_cpow {r : ℂ} (h : 0 ≤ r.re ∨ (0 : ℝ) ∉ [[a, b]]) :
    IntervalIntegrable (fun x : ℝ => (x : ℂ) ^ r) μ a b := by
  by_cases h2 : (0 : ℝ) ∉ [[a, b]]
  · -- Easy case #1: 0 ∉ [a, b] -- use continuity.
    refine (continuousOn_of_forall_continuousAt fun x hx => ?_).intervalIntegrable
    exact Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr <| ne_of_mem_of_not_mem hx h2)
  rw [eq_false h2, or_false] at h
  rcases lt_or_eq_of_le h with (h' | h')
  · -- Easy case #2: 0 < re r -- again use continuity
    exact (Complex.continuous_ofReal_cpow_const h').intervalIntegrable _ _
  -- Now the hard case: re r = 0 and 0 is in the interval.
  refine (IntervalIntegrable.intervalIntegrable_norm_iff ?_).mp ?_
  · refine (measurable_of_continuousOn_compl_singleton (0 : ℝ) ?_).aestronglyMeasurable
    exact continuousOn_of_forall_continuousAt fun x hx =>
      Complex.continuousAt_ofReal_cpow_const x r (Or.inr hx)
  -- reduce to case of integral over `[0, c]`
  suffices ∀ c : ℝ, IntervalIntegrable (fun x : ℝ => ‖(x : ℂ) ^ r‖) μ 0 c from
    (this a).symm.trans (this b)
  intro c
  rcases le_or_gt 0 c with (hc | hc)
  · -- case `0 ≤ c`: integrand is identically 1
    have : IntervalIntegrable (fun _ => 1 : ℝ → ℝ) μ 0 c := intervalIntegrable_const
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hc] at this ⊢
    refine IntegrableOn.congr_fun this (fun x hx => ?_) measurableSet_Ioc
    rw [Complex.norm_cpow_eq_rpow_re_of_pos hx.1, ← h', rpow_zero]
  · -- case `c < 0`: integrand is identically constant, *except* at `x = 0` if `r ≠ 0`.
    apply IntervalIntegrable.symm
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hc.le]
    rw [← Ioo_union_right hc, integrableOn_union, and_comm]; constructor
    · exact integrableOn_singleton (by simp) <|
        isFiniteMeasureOnCompacts_of_isLocallyFiniteMeasure.lt_top_of_isCompact isCompact_singleton
    · have : ∀ x : ℝ, x ∈ Ioo c 0 → ‖Complex.exp (↑π * Complex.I * r)‖ = ‖(x : ℂ) ^ r‖ := by
        intro x hx
        rw [Complex.ofReal_cpow_of_nonpos hx.2.le, norm_mul, ← Complex.ofReal_neg,
          Complex.norm_cpow_eq_rpow_re_of_pos (neg_pos.mpr hx.2), ← h',
          rpow_zero, one_mul]
      refine IntegrableOn.congr_fun ?_ this measurableSet_Ioo
      rw [integrableOn_const_iff]
      right
      refine (measure_mono Set.Ioo_subset_Icc_self).trans_lt ?_
      exact isFiniteMeasureOnCompacts_of_isLocallyFiniteMeasure.lt_top_of_isCompact isCompact_Icc

/-- See `intervalIntegrable_cpow` for a version applying to any locally finite measure, but with a
stronger hypothesis on `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantb248d1325448e406419c98ddf43b6b415f3c5d62086077a6b766a632ea632cb5.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e5d5c1f337f986283b15ea47e13be53ce49435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
