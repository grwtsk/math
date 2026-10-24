# LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13dd829fa36d658b96bb84a96f721b30c9ce6ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31b993e3-5ea3-4194-4116-ce595d22835f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfee9bb2-ba33-2e16-283f-70c434e3b213",
  "kind": "theorem",
  "lexical_name": "LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃",
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
  "slug": "lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--862675aece94590bdd037858",
  "source": {
    "blob": "13dd829fa36d658b96bb84a96f721b30c9ce6ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 256,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:862675aece94590bdd037858e0c70d66e51fd3565563758e6f57f6b64c2cf911",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfee9bb2-ba33-2e16-283f-70c434e3b213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃
    (hlim : Tendsto (fun n : ℕ ↦ (∑ k ∈ Icc 1 n, f k) / n) atTop (𝓝 l))
    (hfS : ∀ s : ℝ, 1 < s → LSeriesSummable f s) {ε : ℝ} (hε : ε > 0) :
    ∃ C ≥ 0, (fun s : ℝ ↦ ‖(s - 1) * LSeries f s - s * l‖) ≤ᶠ[𝓝[>] 1]
      fun s ↦ (s - 1) * s * C + s * ε := by
  obtain ⟨T, hT₁, hT⟩ := (eventually_forall_ge_atTop.mpr
    (LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₁
      hlim hε)).frequently.forall_exists_of_atTop 1
  let S : ℝ → ℂ := fun t ↦ ∑ k ∈ Icc 1 ⌊t⌋₊, f k
  let C := ∫ t in Set.Ioc 1 T, ‖S t - l * t‖ * t ^ (-1 - 1 : ℝ)
  have hC : 0 ≤ C := by
    refine setIntegral_nonneg_ae measurableSet_Ioc (univ_mem' fun t ht ↦ ?_)
    exact mul_nonneg (norm_nonneg _) <| Real.rpow_nonneg (zero_le_one.trans ht.1.le) _
  refine ⟨C, hC, ?_⟩
  filter_upwards [eventually_mem_nhdsWithin] with s hs
  rw [Set.mem_Ioi] at hs
  have hs' : 0 ≤ (s - 1) * s := mul_nonneg (sub_nonneg.mpr hs.le) (zero_le_one.trans hs.le)
  have h₀ : LocallyIntegrableOn (fun t ↦ S t - l * t) (Set.Ici 1) := by
    refine .sub ?_ <| ContinuousOn.locallyIntegrableOn (by fun_prop) measurableSet_Ici
    simpa using locallyIntegrableOn_mul_sum_Icc f zero_le_one (locallyIntegrableOn_const 1)
  have h₁ : IntegrableOn (fun t ↦ ‖S t - l * t‖ * t ^ (-s - 1)) (Set.Ici 1) :=
    lemma₂ hs h₀ fun t ht ↦ (hT t ht).le
  have h₂ : IntegrableOn (fun t : ℝ ↦ ‖S t - l * t‖ * (t ^ ((-1 : ℝ) - 1))) (Set.Ioc 1 T) := by
    refine ((h₀.norm.mul_continuousOn ?_ isLocallyClosed_Ici).integrableOn_compact_subset
      Set.Icc_subset_Ici_self isCompact_Icc).mono_set Set.Ioc_subset_Icc_self
    exact fun t ht ↦ (Real.continuousAt_rpow_const _ _
      <| Or.inl (zero_lt_one.trans_le ht).ne').continuousWithinAt
  have h₃ : (s - 1) * ∫ (t : ℝ) in Set.Ioi 1, (t : ℂ) ^ (-s : ℂ) = 1 := by
    rw [integral_Ioi_cpow_of_lt (by rwa [neg_re, neg_lt_neg_iff]) zero_lt_one, ofReal_one,
      one_cpow, show -(s : ℂ) + 1 = -(s - 1) by ring, neg_div_neg_eq, mul_div_cancel₀]
    exact (sub_ne_zero.trans ofReal_ne_one).mpr hs.ne'
  let Cs := ∫ t in Set.Ioc 1 T, ‖S t - l * t‖ * t ^ (-s - 1)
  have h₄ : Cs ≤ C := by
    refine setIntegral_mono_on ?_ h₂ measurableSet_Ioc fun t ht ↦ ?_
    · exact h₁.mono_set <| Set.Ioc_subset_Ioi_self.trans Set.Ioi_subset_Ici_self
    · gcongr
      exact ht.1.le
  calc
    -- First, we replace `s * l` by `(s - 1) * s` times the integral of `l * t ^ (-s)` using `h₃`
    -- and replace `LSeries f s` by its integral representation.
    _ = ‖((s - 1) * s * ∫ t in Set.Ioi 1, S t * ↑t ^ (-(s : ℂ) - 1)) -
          l * s * ((s - 1) * ∫ (t : ℝ) in Set.Ioi 1, ↑t ^ (-(s : ℂ)))‖ := by
      rw [h₃, mul_one, mul_comm l, LSeries_eq_mul_integral _ zero_le_one (by rwa [ofReal_re])
        (hfS _ hs), neg_add', mul_assoc]
      exact isBigO_atTop_natCast_rpow_of_tendsto_div_rpow (a := l) (by simpa using hlim)
    _ = ‖(s - 1) * s * ∫ t in Set.Ioi 1, (S t * (t : ℂ) ^ (-s - 1 : ℂ) - l * t ^ (-s : ℂ))‖ := by
      rw [integral_sub, integral_const_mul]
      · congr; ring
      · exact (lemma₁ hlim hs).mono_set Set.Ioi_subset_Ici_self
      · exact (integrableOn_Ioi_cpow_of_lt
          (by rwa [neg_re, ofReal_re, neg_lt_neg_iff]) zero_lt_one).const_mul _
    _ = ‖(s - 1) * s * ∫ t in Set.Ioi 1, (S t - l * t) * (t : ℂ) ^ (-s - 1 : ℂ)‖ := by
      congr 2
      refine setIntegral_congr_fun measurableSet_Ioi fun t ht ↦ ?_
      replace ht : (t : ℂ) ≠ 0 := ne_zero_of_one_lt_re ht
      rw [sub_mul, cpow_sub _ _ ht, cpow_one, mul_assoc, mul_div_cancel₀ _ ht]
    _ ≤ (s - 1) * s * ∫ t in Set.Ioi 1, ‖(S t - l * ↑t) * ↑t ^ (-s - 1 : ℂ)‖ := by
      rw [norm_mul, show ((s : ℂ) - 1) * s = ((s - 1) * s : ℝ) by simp, norm_real,
        Real.norm_of_nonneg hs']
      exact mul_le_mul_of_nonneg_left (norm_integral_le_integral_norm _) hs'
    -- Next, step is to bound the integral of `‖S t - l * t‖ * t ^ (-s - 1)`.
    _ = (s - 1) * s * ∫ t in Set.Ioi 1, ‖S t - l * t‖ * t ^ (-s - 1) := by
      congr 1
      refine setIntegral_congr_fun measurableSet_Ioi fun t ht ↦ ?_
      replace ht : 0 ≤ t := zero_le_one.trans ht.le
      rw [norm_mul, show (-(s : ℂ) - 1) = (-s - 1 : ℝ) by simp, ← ofReal_cpow ht, norm_real,
        Real.norm_of_nonneg (Real.rpow_nonneg ht _)]
    -- For that, we cut the integral in two parts using `T` as the cutting point.
    _ = (s - 1) * s * (Cs + ∫ t in Set.Ioi T, ‖S t - l * t‖ * t ^ (-s - 1)) := by
      rw [← Set.Ioc_union_Ioi_eq_Ioi hT₁, setIntegral_union Set.Ioc_disjoint_Ioi_same
        measurableSet_Ioi]
      · exact h₁.mono_set <| Set.Ioc_subset_Ioi_self.trans Set.Ioi_subset_Ici_self
      · exact h₁.mono_set <| Set.Ioi_subset_Ici_self.trans <| Set.Ici_subset_Ici.mpr hT₁
    -- The first part can be bounded by `C` using `h₄`.
    _ ≤ (s - 1) * s * C + s * ((s - 1) * ∫ t in Set.Ioi T, ‖S t - l * t‖ * t ^ (-s - 1)) := by
      rw [mul_add, ← mul_assoc, mul_comm s]
      gcongr
    -- The second part is bounded using `LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₂`
    -- since `‖S t - l t‖ ≤ ε * t` for all `t ≥ T`.
    _ ≤ (s - 1) * s * C + s * ε := by
      gcongr
      exact LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₂ h₀ hε hs hT₁
        fun t ht ↦ (hT t ht.le).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13dd829fa36d658b96bb84a96f721b30c9ce6ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
