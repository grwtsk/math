-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperHyperbolaEqThresholdSum.Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperHyperbolaEqThresholdSum.Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa","mathematical_subject":"Analysis.Integration","original_sha256":"4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperHyperbolaRowTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola


namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperHyperbolaEqThresholdSum.Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa

set_option autoImplicit false
namespace UpperHyperbolaRowTransportScratch
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open UpperBoundaryHyperbola
noncomputable section

/-- Every triangular row contribution switches on at its exact closed product threshold. -/
theorem upperHyperbola_eq_threshold_sum (N : ℕ) (x : ℝ) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
        if ((i * max i j : ℕ) : ℝ) ≤ x then
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 := by
  classical
  unfold upperHyperbola upperSmallIndices
  rw [sum_filter]
  apply sum_congr rfl
  intro i _
  rw [sum_filter, mul_sum]
  have ht (j : ℕ) : (((i * max i j : ℕ) : ℝ) ≤ x) ↔
      (i : ℝ) ^ 2 ≤ x ∧ ((i * j : ℕ) : ℝ) ≤ x := by
    simp only [Nat.cast_mul, Nat.cast_max,
      mul_max_of_nonneg (i : ℝ) (j : ℝ) (Nat.cast_nonneg i), max_le_iff, pow_two]
  by_cases hsi : (i : ℝ) ^ 2 ≤ x
  · simp only [if_pos hsi]
    apply sum_congr rfl
    intro j _
    simp only [ht j, hsi, true_and, mul_ite, mul_zero]
  · simp only [if_neg hsi]
    symm
    apply sum_eq_zero
    intro j _
    simp only [ht j, hsi, false_and, if_false]

/-- The actual threshold lies inside the interval on which the source derivative is integrated. -/
theorem upper_threshold_mem_source_interval (A : ℝ) (i j : ℕ)
    (hi : i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (hj : j ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) :
    ((i * max i j : ℕ) : ℝ) ∈ Set.Icc 1 (Real.exp (2 * A)) := by
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hj1 : 1 ≤ j := by have := (mem_Ioc.mp hj).1; omega
  have ht1 : 1 ≤ i * max i j := by nlinarith [le_max_left i j]
  have htN : i * max i j ≤ ⌊Real.exp A⌋₊ * ⌊Real.exp A⌋₊ :=
    Nat.mul_le_mul (mem_Ioc.mp hi).2 (max_le (mem_Ioc.mp hi).2 (mem_Ioc.mp hj).2)
  have hN := Nat.floor_le (Real.exp_pos A).le
  have hN0 : (0 : ℝ) ≤ ⌊Real.exp A⌋₊ := Nat.cast_nonneg _
  have htN' : ((i * max i j : ℕ) : ℝ) ≤ (⌊Real.exp A⌋₊ : ℝ) ^ 2 := by
    exact_mod_cast (show i * max i j ≤ ⌊Real.exp A⌋₊ ^ 2 by simpa [pow_two] using htN)
  have he : Real.exp (2 * A) = Real.exp A * Real.exp A := by
    rw [two_mul, Real.exp_add]
  refine ⟨by exact_mod_cast ht1, ?_⟩
  rw [he]
  nlinarith [Real.exp_pos A]

/-- A closed tail of an integrable derivative is genuinely integrable, including its endpoint. -/
theorem closed_tail_integrableOn (g : ℝ → ℝ) (a b r : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ if r ≤ x then g x else 0) (Set.Icc a b) := by
  have h : IntegrableOn ((Set.Ici r).indicator g) (Set.Icc a b) :=
    hg.indicator measurableSet_Ici
  apply h.congr_fun _ measurableSet_Icc
  intro x _
  simp only [Set.indicator, Set.mem_Ici]

/-- The closed threshold changes an interval integral only at a null singleton. -/
theorem integral_closed_tail (g : ℝ → ℝ) (a b r : ℝ) (hr : r ∈ Set.Icc a b) :
    (∫ x in a..b, if r ≤ x then g x else 0) = ∫ x in r..b, g x := by
  rw [intervalIntegral.integral_of_le (hr.1.trans hr.2),
    intervalIntegral.integral_of_le hr.2]
  change (∫ x in Set.Ioc a b, (Set.Ici r).indicator g x) = _
  rw [integral_indicator measurableSet_Ici, Measure.restrict_restrict measurableSet_Ici]
  apply setIntegral_congr_set
  filter_upwards [volume.ae_ne r] with x hx
  apply propext
  change (r ≤ x ∧ a < x ∧ x ≤ b) ↔ (r < x ∧ x ≤ b)
  constructor
  · rintro ⟨hrx, _, hxb⟩
    exact ⟨lt_of_le_of_ne hrx (Ne.symm hx), hxb⟩
  · rintro ⟨hrx, hxb⟩
    exact ⟨hrx.le, hr.1.trans_lt hrx, hxb⟩

/-- The actual source derivative integrates from each closed threshold
  to the zero upper endpoint. -/
theorem source_closed_tail_integral (A r : ℝ) (hA : 1 ≤ A)
    (hr : r ∈ Set.Icc 1 (Real.exp (2 * A))) :
    (∫ x in 1..Real.exp (2 * A),
      if r ≤ x then deriv (SourceSampling.sourceSamplingKernel A) x else 0) =
      -SourceSampling.sourceSamplingKernel A r := by
  rw [integral_closed_tail _ 1 _ r hr]
  have hi : IntervalIntegrable (deriv (SourceSampling.sourceSamplingKernel A)) volume
      r (Real.exp (2 * A)) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hr.2).mpr
      (MertensTransport.sourceSamplingKernel_derivative_integrableOn A r _ hA
        (lt_of_lt_of_le (by norm_num) hr.1))
  rw [intervalIntegral.integral_deriv_eq_sub ?_ hi,
    MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (Real.exp_pos _) le_rfl,
    zero_sub]
  intro x hx
  rw [Set.uIcc_of_le hr.2] at hx
  exact (SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt A x hA
    (lt_of_lt_of_le (by norm_num) (hr.1.trans hx.1))).differentiableAt

/-- Each signed closed-threshold source term is interval integrable before finite interchange. -/
theorem source_weighted_tail_intervalIntegrable (A r c : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable
      (fun x ↦ c * (if r ≤ x then deriv (SourceSampling.sourceSamplingKernel A) x else 0))
      volume 1 (Real.exp (2 * A)) := by
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le
    (Real.one_le_exp_iff.mpr (by linarith : 0 ≤ 2 * A))).mpr
  exact (closed_tail_integrableOn _ 1 _ r
    (MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA
      (by norm_num))).const_mul c

/-- Exact finite integral-to-row transport retains every original upper row and column. -/
theorem source_hyperbola_integral_eq_rows (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x) =
      -∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        ∑ j ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
            SourceSampling.sourceSamplingKernel A ((i * max i j : ℕ) : ℝ) := by
  classical
  let H : Finset ℕ := Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊
  let W (i j : ℕ) : ℝ :=
    (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ)
  let f (i j : ℕ) (x : ℝ) : ℝ := W i j *
    (if ((i * max i j : ℕ) : ℝ) ≤ x then
      deriv (SourceSampling.sourceSamplingKernel A) x else 0)
  have hint (i j : ℕ) : IntervalIntegrable (f i j) volume 1 (Real.exp (2 * A)) :=
    source_weighted_tail_intervalIntegrable A _ _ hA
  have hsum (i : ℕ) : IntervalIntegrable
      (fun x ↦ ∑ j ∈ H, f i j x) volume 1 (Real.exp (2 * A)) := by
    have he : (∑ j ∈ H, f i j) = (fun x ↦ ∑ j ∈ H, f i j x) := by
      funext x
      exact Finset.sum_apply x H (f i)
    rw [← he]
    exact IntervalIntegrable.sum H (fun j _ ↦ hint i j)
  have hpoint (x : ℝ) : upperHyperbola ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x = ∑ i ∈ H, ∑ j ∈ H, f i j x := by
    rw [upperHyperbola_eq_threshold_sum]
    simp only [sum_mul]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    dsimp only [f, W]
    split_ifs <;> simp
  have hval (i : ℕ) (hi : i ∈ H) (j : ℕ) (hj : j ∈ H) :
      (∫ x in 1..Real.exp (2 * A), f i j x) =
        -(W i j * SourceSampling.sourceSamplingKernel A ((i * max i j : ℕ) : ℝ)) := by
    dsimp only [f]
    rw [intervalIntegral.integral_const_mul,
      source_closed_tail_integral A _ hA (upper_threshold_mem_source_interval A i j hi hj)]
    ring
  calc
    _ = ∫ x in 1..Real.exp (2 * A), ∑ i ∈ H, ∑ j ∈ H, f i j x := by
      apply intervalIntegral.integral_congr_ae
      filter_upwards [] with x _
      exact hpoint x
    _ = ∑ i ∈ H, ∑ j ∈ H, ∫ x in 1..Real.exp (2 * A), f i j x := by
      rw [intervalIntegral.integral_finsetSum (fun i _ ↦ hsum i)]
      apply sum_congr rfl
      intro i _
      exact intervalIntegral.integral_finsetSum (fun j _ ↦ hint i j)
    _ = ∑ i ∈ H, ∑ j ∈ H,
        -(W i j * SourceSampling.sourceSamplingKernel A ((i * max i j : ℕ) : ℝ)) := by
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      exact hval i hi j hj
    _ = _ := by simp only [sum_neg_distrib, H, W]

/-- The complete weighted row retains its diagonal partial sum and every strictly upper column. -/
theorem full_upper_row_split (N i : ℕ) (F : ℕ → ℝ) (hi : i ∈ Ioc (N / 2) N) :
    (∑ j ∈ Ioc (N / 2) N, (ArithmeticFunction.moebius j : ℝ) * F (i * max i j)) =
      F (i ^ 2) * (∑ j ∈ Ioc (N / 2) i, (ArithmeticFunction.moebius j : ℝ)) +
        ∑ j ∈ Ioc i N, (ArithmeticFunction.moebius j : ℝ) * F (i * j) := by
  classical
  have hl : (Ioc (N / 2) N).filter (fun j : ℕ ↦ j ≤ i) = Ioc (N / 2) i := by
    ext j
    simp only [mem_filter, mem_Ioc]
    have hi' := mem_Ioc.mp hi
    omega
  have hr : (Ioc (N / 2) N).filter (fun j : ℕ ↦ ¬j ≤ i) = Ioc i N := by
    ext j
    simp only [mem_filter, mem_Ioc]
    have hi' := mem_Ioc.mp hi
    omega
  rw [← sum_filter_add_sum_filter_not (Ioc (N / 2) N) (fun j : ℕ ↦ j ≤ i)
    (fun j ↦ (ArithmeticFunction.moebius j : ℝ) * F (i * max i j)), hl, hr]
  congr 1
  · calc
      _ = ∑ j ∈ Ioc (N / 2) i, F (i ^ 2) * (ArithmeticFunction.moebius j : ℝ) := by
        apply sum_congr rfl
        intro j hj
        rw [max_eq_left (mem_Ioc.mp hj).2, ← pow_two]
        ring
      _ = _ := by rw [mul_sum]
  · apply sum_congr rfl
    intro j hj
    rw [max_eq_right (le_of_lt (mem_Ioc.mp hj).1)]

/-- Exact FTC rows split into diagonal partial sums and full upper tails,
  including even columns. -/
theorem source_hyperbola_integral_eq_split_rows (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x) =
      -∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) *
          (SourceSampling.sourceSamplingKernel A ((i ^ 2 : ℕ) : ℝ) *
              (∑ j ∈ Ioc (⌊Real.exp A⌋₊ / 2) i, (ArithmeticFunction.moebius j : ℝ)) +
            ∑ j ∈ Ioc i ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
              SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) := by
  rw [source_hyperbola_integral_eq_rows A hA]
  congr 1
  apply sum_congr rfl
  intro i hi
  simp only [mul_assoc]
  rw [← mul_sum, full_upper_row_split ⌊Real.exp A⌋₊ i
    (fun n ↦ SourceSampling.sourceSamplingKernel A n) hi]

end
end UpperHyperbolaRowTransportScratch
