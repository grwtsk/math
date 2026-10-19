import FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion
import Mathlib.Data.Nat.Log

set_option autoImplicit false

namespace OddUpperRowDyadicScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section

/-- The full original column cutoff is retained after removing the prime-two factor. -/
def oddColumnRow (A : ℝ) (i : ℕ) : ℝ :=
  ∑ j ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
    (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j)

/-- The full odd row vanishes only under the actual complete-kernel support condition. -/
theorem oddColumnRow_zero (A : ℝ) (i : ℕ) (hi : 1 ≤ i)
    (hcut : Real.exp (2*A) ≤ 2*(i:ℝ)) : oddColumnRow A i = 0 := by
  unfold oddColumnRow
  apply sum_eq_zero
  intro j hj
  have hj1 := (mem_Icc.mp (mem_filter.mp hj).1).1
  rw [SourceUpperSupport.thetaKernel_zero_of_two_mul_ge A (i*j)
    (Nat.mul_pos hi hj1) ?_, mul_zero]
  have hmul : i ≤ i*j := Nat.le_mul_of_pos_right i hj1
  have hr : (i:ℝ) ≤ (i*j:ℕ) := by exact_mod_cast hmul
  linarith

/-- Odd half-cutoff padding is exact for an upper row; every added complete kernel is zero. -/
theorem oddColumnRow_half_padding (A : ℝ) (i : ℕ)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*(2*j))) =
        oddColumnRow A (2*i) := by
  unfold oddColumnRow
  have harg (j : ℕ) : i*(2*j)=(2*i)*j := by ring
  simp_rw [harg]
  apply sum_subset
  · intro j hj
    obtain ⟨hjI,hjc⟩ := mem_filter.mp hj
    exact mem_filter.mpr ⟨mem_Icc.mpr
      ⟨(mem_Icc.mp hjI).1,(mem_Icc.mp hjI).2.trans (Nat.div_le_self _ _)⟩,hjc⟩
  · intro j hj hout
    have hjI := mem_Icc.mp (mem_filter.mp hj).1
    have hjhi : ⌊Real.exp A⌋₊/2 < j := by
      by_contra h
      exact hout (mem_filter.mpr ⟨mem_Icc.mpr ⟨hjI.1,by omega⟩,(mem_filter.mp hj).2⟩)
    have ht := UpperRowInversion.upper_square_product_threshold A i j hi hjhi
    have hi0 : 0 < i := by omega
    rw [SourceUpperSupport.thetaKernel_zero_of_two_mul_ge A ((2*i)*j)
      (Nat.mul_pos (Nat.mul_pos (by omega) hi0) hjI.1) ?_,mul_zero]
    convert ht using 1
    push_cast
    ring

/-- Finite prime-two removal leaves the exact difference of two full odd rows. -/
theorem oddColumnRow_two_difference (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i - oddColumnRow A (2*i) = SourceSampling.sourceSamplingKernel A i := by
  have h := TwoInsertionBoundary.moebius_sum_two_split ⌊Real.exp A⌋₊
    (fun j ↦ ThetaKernelTransport.thetaKernel A (i*j))
  rw [UpperRowInversion.source_upper_row_inversion A i hA hi,
    oddColumnRow_half_padding A i hi] at h
  exact h.symm

/-- Every original intermediate row stays above the same source half-cutoff. -/
theorem dyadic_upper_row (A : ℝ) (i k : ℕ) (hi : ⌊Real.exp A⌋₊/2 < i) :
    ⌊Real.exp A⌋₊/2 < 2^k*i := by
  have hp : 1 ≤ 2^k := Nat.one_le_pow k 2 (by omega)
  nlinarith

/-- Telescoping retains the exact dyadic tail row before its support is used. -/
theorem oddColumnRow_telescope (A : ℝ) (i K : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      (∑ k ∈ range K, SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) +
        oddColumnRow A (2^K*i) := by
  induction K with
  | zero => simp
  | succ K ih =>
    have hr := oddColumnRow_two_difference A (2^K*i) hA (dyadic_upper_row A i K hi)
    have ha : 2*(2^K*i)=2^(K+1)*i := by rw [pow_succ]; ring
    rw [ha] at hr
    rw [sum_range_succ]
    linarith

/-- A fully specified ceiling-log cutoff proves vanishing of the last odd row. -/
theorem oddColumnRow_dyadic_tail_zero (A : ℝ) (i : ℕ) (hi : 1 ≤ i) :
    oddColumnRow A (2^(Nat.clog 2 ⌈Real.exp (2*A)⌉₊)*i)=0 := by
  apply oddColumnRow_zero A _
  · have hp := Nat.one_le_pow (Nat.clog 2 ⌈Real.exp (2*A)⌉₊) 2 (by omega)
    nlinarith
  · have hp := Nat.le_pow_clog (by omega : 1<2) ⌈Real.exp (2*A)⌉₊
    have hpR : (⌈Real.exp (2*A)⌉₊:ℝ) ≤ ((2^(Nat.clog 2 ⌈Real.exp (2*A)⌉₊):ℕ):ℝ) := by
      exact_mod_cast hp
    have hx : Real.exp (2*A) ≤ (⌈Real.exp (2*A)⌉₊:ℝ) := Nat.le_ceil _
    have hiR : (1:ℝ) ≤ i := by exact_mod_cast hi
    push_cast
    push_cast at hpR
    nlinarith [(show (0:ℝ) ≤ (i:ℝ) from Nat.cast_nonneg i), (pow_nonneg (by norm_num : (0:ℝ)≤2)
      (Nat.clog 2 ⌈Real.exp (2*A)⌉₊))]

/-- A complete signed odd row becomes a finite sum of actual dyadic source channels. -/
theorem oddColumnRow_eq_dyadic (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      ∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ) := by
  rw [oddColumnRow_telescope A i _ hA hi,
    oddColumnRow_dyadic_tail_zero A i (by omega),add_zero]

/-- The number of retained dyadic source channels is at most an explicit linear-scale ceiling. -/
theorem dyadicCutoff_le (A : ℝ) :
    Nat.clog 2 ⌈Real.exp (2*A)⌉₊ ≤ ⌈2*A / Real.log 2⌉₊ := by
  apply (Nat.clog_le_iff_le_pow (by omega : 1<2)).mpr
  apply Nat.ceil_le.mpr
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hc : 2*A / Real.log 2 ≤ (⌈2*A / Real.log 2⌉₊:ℝ) := Nat.le_ceil _
  have hx : 2*A ≤ (⌈2*A / Real.log 2⌉₊:ℝ)*Real.log 2 := (div_le_iff₀ hl).mp hc
  have he := Real.exp_le_exp.mpr hx
  rw [Real.exp_nat_mul, Real.exp_log (by norm_num)] at he
  exact_mod_cast he

/-- A finite odd-column sum retains its strict lower and closed upper boundary pieces. -/
theorem positive_odd_sum_split (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    (∑ j ∈ (Icc 1 N).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*F j) =
      (∑ j ∈ (Icc 1 M).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j) +
      ∑ j ∈ (Ioc M N).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j := by
  simpa only [sum_filter] using UpperRowInversion.positive_sum_split N M
    (fun j ↦ if Nat.Coprime j 2 then (ArithmeticFunction.moebius j : ℝ)*F j else 0) hMN

private theorem odd_upper_interval_theta_eq_sampling (A : ℝ) (i L U : ℕ)
    (hA : 1 ≤ A) (hi : ⌊Real.exp A⌋₊/2 < i) (hL : ⌊Real.exp A⌋₊/2 ≤ L) :
    (∑ j ∈ (Ioc L U).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j)) =
      ∑ j ∈ (Ioc L U).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ) := by
  apply sum_congr rfl
  intro j hj
  have hjhi : ⌊Real.exp A⌋₊/2 < j := hL.trans_lt (mem_Ioc.mp (mem_filter.mp hj).1).1
  rw [SourceUpperSupport.thetaKernel_eq_sourceSamplingKernel A (i*j) hA
    (Nat.mul_pos (by omega) (by omega))
    (UpperRowInversion.upper_square_product_threshold A i j hi hjhi)]

/-- A clipped odd upper row retains the full lower-column kernel and every omitted upper term. -/
theorem clipped_odd_upper_row_eq (A : ℝ) (i J : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) (hMJ : ⌊Real.exp A⌋₊/2 ≤ J) (hJN : J ≤ ⌊Real.exp A⌋₊) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) J).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      (∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j)) -
      ∑ j ∈ (Ioc J ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ) := by
  have hN := positive_odd_sum_split ⌊Real.exp A⌋₊ J
    (fun j ↦ ThetaKernelTransport.thetaKernel A (i*j)) hJN
  have hJ := positive_odd_sum_split J (⌊Real.exp A⌋₊/2)
    (fun j ↦ ThetaKernelTransport.thetaKernel A (i*j)) hMJ
  rw [odd_upper_interval_theta_eq_sampling A i J ⌊Real.exp A⌋₊ hA hi hMJ] at hN
  rw [odd_upper_interval_theta_eq_sampling A i (⌊Real.exp A⌋₊/2) J hA hi le_rfl] at hJ
  have hD := oddColumnRow_eq_dyadic A i hA hi
  unfold oddColumnRow at hD
  linarith

/-- The complete odd upper row still retains its exact lower-column contribution. -/
theorem full_odd_upper_row_eq (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      ∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) := by
  simpa using clipped_odd_upper_row_eq A i ⌊Real.exp A⌋₊ hA hi (Nat.div_le_self _ _) le_rfl

end
end OddUpperRowDyadicScratch
