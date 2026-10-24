# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdmissionFragment.Variant26ff35788512f3e7c727a98f869463a75bb59310ee59e3803f32f2df8e8a5a0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aac444bda31b7aea7e496a11926fe7efe127afde` · SHA-256 `5439c911af13df64895bdc1beec5979fe47642cbeb3c89316b7c25578f90a51b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SamplePrefixEq.Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SamplePrefixEq.Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b","mathematical_subject":"Analysis.Integration","original_sha256":"b6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/FixedKernelAdmissionFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.Analysis.RealAnalysis.Integration.SamplePrefixEq.Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b

namespace FixedKernelAdmissionScratch

open MeasureTheory Set Real Filter Finset
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernelScratch FixedKernelMomentScratch

noncomputable section

private theorem sample_prefix_eq (t : ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range N, logSample t (n + 1)) =
      ∑ n ∈ Finset.Icc 1 N, logSample t n := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, Finset.sum_Icc_succ_top (by omega), ih]
      simp only [Nat.cast_add, Nat.cast_one]

/-- The exact source moment and signed sampling error give genuine exponential decay. -/
theorem fixedKernel_abs_le (t : ℝ) (ht : 2 ≤ t) :
    |fixedKernel t| ≤ Real.exp ((1 - t) / 2) * derivativeBudget := by
  let N : ℕ := ⌊Real.exp t⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  have hNr : Real.exp t ≤ (N : ℝ) := by
    exact_mod_cast (Nat.lt_floor_add_one (Real.exp t)).le
  have hbound := SamplingError.abs_sum_sub_integral_Ioi_le (logSample t) N hN
    (fun x hx => (logSample_hasDerivAt t x (by linarith [hx.1])).differentiableAt)
    (logSample_integrableOn t) (logSample_deriv_integrableOn t)
    (fun x hx => logSample_zero_of_exp_le t x
      ((Real.exp_pos t).trans_le (hNr.trans hx)) (hNr.trans hx))
  rw [logSample_integral_zero t ht, sub_zero, ← sample_prefix_eq,
    ← fixedKernel_eq_sum t N hNr] at hbound
  exact hbound.trans (logSample_variation_le t)

private theorem tail_majorant_integrable :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Set.Ioi 2) := by
  have hi := (exp_neg_integrableOn_Ioi 2 (b := 1 / 2) (by norm_num)).const_mul
    (Real.exp (1 / 2) * derivativeBudget)
  change Integrable (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget)
    (volume.restrict (Set.Ioi 2))
  convert hi using 1
  funext t
  rw [show (1 - t) / 2 = (1 / 2 : ℝ) + -(1 / 2) * t by ring, Real.exp_add]
  ring

/-- The measurable tail of the fixed source kernel is absolutely integrable. -/
theorem fixedKernel_integrableOn_tail : IntegrableOn fixedKernel (Set.Ioi 2) := by
  refine tail_majorant_integrable.mono'
    fixedKernel_measurable.aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  simpa only [Real.norm_eq_abs] using fixedKernel_abs_le t ht.le

/-- The original causal half-line integral combines the finite initial interval and the tail. -/
theorem fixedKernel_integrableOn_Ioi : IntegrableOn fixedKernel (Set.Ioi 0) := by
  apply ((fixedKernel_integrableOn_Icc 0 2).union fixedKernel_integrableOn_tail).mono_set
  intro t ht
  by_cases h : t ≤ 2
  · exact Or.inl ⟨ht.le, h⟩
  · exact Or.inr (lt_of_not_ge h)

/-- The actual zero extension is genuinely integrable on the whole real axis. -/
theorem fixedKernel_integrable : Integrable fixedKernel := by
  have hzero : IntegrableOn fixedKernel (Set.Iic 0) := by
    have hz : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Set.Iic 0) :=
      integrable_zero ℝ ℝ (volume.restrict (Set.Iic 0))
    exact hz.congr_fun (fun t ht => (fixedKernel_zero_of_nonpos t ht).symm) measurableSet_Iic
  have hi := hzero.union fixedKernel_integrableOn_Ioi
  simpa only [Set.Iic_union_Ioi, integrableOn_univ] using hi


private theorem fixedKernel_square_integrableOn_Icc (a b : ℝ) :
    IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Icc a b) := by
  let N : ℕ := ⌊Real.exp b⌋₊ + 1
  have hv := (normalizedTest_contDiff 1 (by norm_num)).continuous
  have hc : Continuous (fun t : ℝ => ∑ n ∈ Finset.range N, logSample t (n + 1)) := by
    apply continuous_finsetSum
    intro n _
    exact continuous_const.mul (hv.comp
      ((continuous_id.sub continuous_const).sub continuous_const))
  apply (hc.pow 2).integrableOn_Icc.congr_fun _ measurableSet_Icc
  intro t ht
  have hN : Real.exp t ≤ (N : ℝ) :=
    (Real.exp_le_exp.mpr ht.2).trans (by exact_mod_cast (Nat.lt_floor_add_one (Real.exp b)).le)
  change (∑ n ∈ Finset.range N, logSample t (n + 1)) ^ 2 = fixedKernel t ^ 2
  rw [fixedKernel_eq_sum t N hN]

private theorem fixedKernel_square_integrableOn_tail :
    IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Ioi 2) := by
  have hmaj : IntegrableOn (fun t : ℝ => Real.exp (1 - t) * derivativeBudget ^ 2)
      (Set.Ioi 2) := by
    have hi := (exp_neg_integrableOn_Ioi 2 (b := 1) (by norm_num)).const_mul
      (Real.exp 1 * derivativeBudget ^ 2)
    change Integrable _ (volume.restrict (Set.Ioi 2))
    convert hi using 1
    funext t
    rw [show 1 - t = 1 + -(1 : ℝ) * t by ring, Real.exp_add]
    ring
  refine hmaj.mono' (fixedKernel_measurable.pow_const 2).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  calc
    fixedKernel t ^ 2 = |fixedKernel t| ^ 2 := (sq_abs _).symm
    _ ≤ (Real.exp ((1 - t) / 2) * derivativeBudget) ^ 2 :=
      pow_le_pow_left₀ (abs_nonneg _) (fixedKernel_abs_le t ht.le) 2
    _ = Real.exp (1 - t) * derivativeBudget ^ 2 := by
      rw [mul_pow, ← Real.exp_nat_mul]
      congr 2
      norm_num
      ring

/-- The unchanged source kernel has a genuine square integral on the whole real axis. -/
theorem fixedKernel_square_integrable : Integrable (fun t => fixedKernel t ^ 2) := by
  have hpos : IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Ioi 0) := by
    apply ((fixedKernel_square_integrableOn_Icc 0 2).union
      fixedKernel_square_integrableOn_tail).mono_set
    intro t ht
    by_cases h : t ≤ 2
    · exact Or.inl ⟨ht.le, h⟩
    · exact Or.inr (lt_of_not_ge h)
  have hzero : IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Iic 0) := by
    have hz : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Set.Iic 0) :=
      integrable_zero ℝ ℝ (volume.restrict (Set.Iic 0))
    apply hz.congr_fun _ measurableSet_Iic
    intro t ht
    change 0 = fixedKernel t ^ 2
    rw [fixedKernel_zero_of_nonpos t ht, zero_pow (by norm_num : (2 : ℕ) ≠ 0)]
  simpa only [Set.Iic_union_Ioi, integrableOn_univ] using hzero.union hpos

/-- The actual kernel is admitted to L², with no formal norm integral shortcut. -/
theorem fixedKernel_memLp_two : MemLp fixedKernel 2 volume :=
  (memLp_two_iff_integrable_sq fixedKernel_measurable.aestronglyMeasurable).2
    fixedKernel_square_integrable

end
end FixedKernelAdmissionScratch
```
