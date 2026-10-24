# tendsto_limUnder_of_hasDerivAt_of_integrableOn_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f429d326-3e97-c79f-1caf-1fa18146f9a5",
  "kind": "theorem",
  "lexical_name": "tendsto_limUnder_of_hasDerivAt_of_integrableOn_Ioi",
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
  "slug": "tendsto-limunder-of-hasderivat-of-integrableon-ioi--7f835c1219850443d3e70794",
  "source": {
    "blob": "a228878c46fab1445c32059592ea0ad71528f2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 719,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f835c1219850443d3e7079472b53ec01a6bba1fe79c8fc974f0f295f7e6e6f4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f429d326-3e97-c79f-1caf-1fa18146f9a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_limUnder_of_hasDerivAt_of_integrableOn_Ioi [CompleteSpace E]
    (hderiv : ∀ x ∈ Ioi a, HasDerivAt f (f' x) x) (f'int : IntegrableOn f' (Ioi a)) :
    Tendsto f atTop (𝓝 (limUnder atTop f)) := by
  suffices ∃ a, Tendsto f atTop (𝓝 a) from tendsto_nhds_limUnder this
  suffices CauchySeq f from cauchySeq_tendsto_of_complete this
  apply Metric.cauchySeq_iff'.2 (fun ε εpos ↦ ?_)
  have A : ∀ᶠ (n : ℕ) in atTop, ∫ (x : ℝ) in Ici ↑n, ‖f' x‖ < ε := by
    have L : Tendsto (fun (n : ℕ) ↦ ∫ x in Ici (n : ℝ), ‖f' x‖) atTop
        (𝓝 (∫ x in ⋂ (n : ℕ), Ici (n : ℝ), ‖f' x‖)) := by
      apply tendsto_setIntegral_of_antitone (fun n ↦ measurableSet_Ici)
      · intro m n hmn
        exact Ici_subset_Ici.2 (Nat.cast_le.mpr hmn)
      · rcases exists_nat_gt a with ⟨n, hn⟩
        exact ⟨n, IntegrableOn.mono_set f'int.norm (Ici_subset_Ioi.2 hn)⟩
    have B : ⋂ (n : ℕ), Ici (n : ℝ) = ∅ := by
      apply eq_empty_of_forall_notMem (fun x ↦ ?_)
      simpa only [mem_iInter, mem_Ici, not_forall, not_le] using exists_nat_gt x
    simp only [B, Measure.restrict_empty, integral_zero_measure] at L
    exact (tendsto_order.1 L).2 _ εpos
  have B : ∀ᶠ (n : ℕ) in atTop, a < n := by
    rcases exists_nat_gt a with ⟨n, hn⟩
    filter_upwards [Ioi_mem_atTop n] with m (hm : n < m) using hn.trans (Nat.cast_lt.mpr hm)
  rcases (A.and B).exists with ⟨N, hN, h'N⟩
  refine ⟨N, fun x hx ↦ ?_⟩
  calc
  dist (f x) (f ↑N)
    = ‖f x - f N‖ := dist_eq_norm _ _
  _ = ‖∫ t in Ioc ↑N x, f' t‖ := by
      rw [← intervalIntegral.integral_of_le hx, intervalIntegral.integral_eq_sub_of_hasDerivAt]
      · intro y hy
        simp only [hx, uIcc_of_le, mem_Icc] at hy
        exact hderiv _ (h'N.trans_le hy.1)
      · rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hx]
        exact f'int.mono_set (Ioc_subset_Ioi_self.trans (Ioi_subset_Ioi h'N.le))
  _ ≤ ∫ t in Ioc ↑N x, ‖f' t‖ := norm_integral_le_integral_norm fun a ↦ f' a
  _ ≤ ∫ t in Ici ↑N, ‖f' t‖ := by
      apply setIntegral_mono_set
      · apply IntegrableOn.mono_set f'int.norm (Ici_subset_Ioi.2 h'N)
      · filter_upwards with x using norm_nonneg _
      · exact (Ioc_subset_Ioi_self.trans Ioi_subset_Ici_self).eventuallySubset
  _ < ε := hN

open UniformSpace in
/-- If a function and its derivative are integrable on `(a, +∞)`, then the function tends to zero
at `+∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a228878c46fab1445c32059592ea0ad71528f2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
