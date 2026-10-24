import SourceUpperSupport
import FormalResearch.RiemannHypothesis.SourceComparison.JointBoundaryTransport

/-!
Exact upper-row Möbius inversion at the original source scale. The full strict
support is proved before reindexing; the resulting Q identity retains the smaller
core and the complete signed upper square. No lower bound is asserted. The same
support argument does not permit iteration with the cutoff replaced by N/2.
-/

set_option autoImplicit false
namespace UpperRowInversionScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open scoped ArithmeticFunction.zeta
noncomputable section

/-- Every padded inner term vanishes under the original finite support hypothesis. -/
theorem finite_inner_padding (N B j : ℕ) (F : ℕ → ℝ) (hNB : N ≤ B) (hj : 1 ≤ j)
    (hF : ∀ n, N < n → F n = 0) :
    (∑ k ∈ Icc 1 B, F (j * k)) = ∑ k ∈ Icc 1 N, F (j * k) := by
  symm
  apply sum_subset
  · intro k hk
    exact mem_Icc.mpr ⟨(mem_Icc.mp hk).1, (mem_Icc.mp hk).2.trans hNB⟩
  · intro k hk hout
    have hkN : N < k := by
      by_contra h
      exact hout (mem_Icc.mpr ⟨(mem_Icc.mp hk).1, Nat.le_of_not_lt h⟩)
    apply hF
    exact hkN.trans_le (Nat.le_mul_of_pos_left k hj)

/-- Finite Möbius inversion of a complete upper product sum uses no sign estimate. -/
theorem finite_moebius_upper_inversion (N B : ℕ) (F : ℕ → ℝ)
    (hN : 1 ≤ N) (hNB : N ≤ B) (hF : ∀ n, N < n → F n = 0) :
    (∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
      ∑ k ∈ Icc 1 B, F (j * k)) = F 1 := by
  have hs := FiniteDirichletTransport.weighted_convolution
    (ArithmeticFunction.moebius : ArithmeticFunction ℝ) ζ N F hF
  rw [ArithmeticFunction.coe_moebius_mul_coe_zeta] at hs
  have hr : (∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius : ArithmeticFunction ℝ) i *
      ∑ j ∈ Icc 1 N, (ζ : ArithmeticFunction ℝ) j * F (i * j)) =
      ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) *
        ∑ j ∈ Icc 1 N, F (i * j) := by
    apply sum_congr rfl
    intro i _
    simp only [ArithmeticFunction.intCoe_apply]
    congr 1
    apply sum_congr rfl
    intro j hj
    have hj0 : j ≠ 0 := by have := (mem_Icc.mp hj).1; omega
    simp [ArithmeticFunction.natCoe_apply, ArithmeticFunction.zeta_apply_ne hj0]
  rw [hr] at hs
  calc
    _ = ∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
        ∑ k ∈ Icc 1 N, F (j * k) := by
      apply sum_congr rfl
      intro j hj
      rw [finite_inner_padding N B j F hNB (mem_Icc.mp hj).1 hF]
    _ = ∑ n ∈ Icc 1 N, (1 : ArithmeticFunction ℝ) n * F n := hs.symm
    _ = _ := by simp [ArithmeticFunction.one_apply, hN]

/-- The upper-row support threshold uses the strict floor endpoint, including integer scales. -/
theorem upper_row_product_threshold (A : ℝ) (i n : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hn : ⌊Real.exp A⌋₊ < n) :
    Real.exp (2 * A) ≤ 2 * ((i * n : ℕ) : ℝ) := by
  let N := ⌊Real.exp A⌋₊
  have hi2 : N + 1 ≤ 2 * i := by dsimp [N]; omega
  have hn1 : N + 1 ≤ n := by dsimp [N]; omega
  have hprod : (N + 1) ^ 2 ≤ 2 * (i * n) := by
    nlinarith [Nat.mul_le_mul hi2 hn1]
  have hp : ((N : ℝ) + 1) ^ 2 ≤ 2 * ((i * n : ℕ) : ℝ) := by
    exact_mod_cast hprod
  have hf : Real.exp A < (N : ℝ) + 1 := Nat.lt_floor_add_one (Real.exp A)
  have hx : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [two_mul, Real.exp_add, pow_two]
  rw [hx]
  nlinarith [Real.exp_pos A]

/-- The actual source sampling kernel vanishes outside the complete upper row. -/
theorem source_upper_row_support (A : ℝ) (i n : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hn : ⌊Real.exp A⌋₊ < n) :
    SourceSampling.sourceSamplingKernel A ((i * n : ℕ) : ℝ) = 0 := by
  apply SourceUpperSupportScratch.sourceSamplingKernel_zero_of_two_mul_ge A _
  · exact_mod_cast (Nat.mul_pos (show 0 < i by omega) (show 0 < n by omega))
  · exact upper_row_product_threshold A i n hi hn

/-- Complete upper rows cancel by finite Möbius inversion with the actual strict source support. -/
theorem source_upper_row_inversion (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) :
    (∑ j ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
      ThetaKernelTransport.thetaKernel A (i * j)) = SourceSampling.sourceSamplingKernel A i := by
  let N := ⌊Real.exp A⌋₊
  let B := ⌊Real.exp (2 * A)⌋₊
  let F : ℕ → ℝ := fun n ↦ SourceSampling.sourceSamplingKernel A ((i * n : ℕ) : ℝ)
  have hN : 1 ≤ N := by
    apply (Nat.le_floor_iff (Real.exp_pos A).le).mpr
    simpa only [Nat.cast_one] using (Real.one_le_exp_iff.mpr (by linarith : 0 ≤ A))
  have hNB : N ≤ B := Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith))
  have hF : ∀ n, N < n → F n = 0 := fun n hn ↦ source_upper_row_support A i n hi hn
  calc
    _ = ∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
        ∑ k ∈ Icc 1 B, F (j * k) := by
      apply sum_congr rfl
      intro j hj
      have hj1 := (mem_Icc.mp hj).1
      rw [ThetaKernelTransport.thetaKernel_eq_sum_sourceSamplingKernel A (i * j)
        (Nat.mul_pos (show 1 ≤ i by omega) hj1)]
      congr 1
      apply sum_congr rfl
      intro k _
      simp only [F, Nat.mul_assoc]
    _ = F 1 := finite_moebius_upper_inversion N B F hN hNB hF
    _ = _ := by simp only [F, Nat.mul_one]

/-- The original closed lower core and strict-upper complement partition the positive cutoff. -/
theorem positive_sum_split (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    (∑ i ∈ Icc 1 N, F i) = (∑ i ∈ Icc 1 M, F i) + ∑ i ∈ Ioc M N, F i := by
  have hl : (Icc 1 N).filter (fun i ↦ i ≤ M) = Icc 1 M := by
    ext i
    simp only [mem_filter, mem_Icc]
    omega
  have hh : (Icc 1 N).filter (fun i ↦ ¬i ≤ M) = Ioc M N := by
    ext i
    simp only [mem_filter, mem_Icc, mem_Ioc]
    omega
  have hs := sum_filter_add_sum_filter_not (Icc 1 N) (fun i ↦ i ≤ M) F
  rw [hl, hh] at hs
  exact hs.symm

/-- The exact signed product rectangle splits in its first original coordinate. -/
theorem rectangle_cutoff_split (N M : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    JointBoundaryTransport.rectangle (Icc 1 N) T F =
      JointBoundaryTransport.rectangle (Icc 1 M) T F +
      JointBoundaryTransport.rectangle (Ioc M N) T F :=
  positive_sum_split N M _ hMN

/-- Symmetry preserves the complete upper row and subtracts its upper square exactly once. -/
theorem rectangle_core_upper_identity (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    JointBoundaryTransport.rectangle (Icc 1 N) (Icc 1 N) F =
      JointBoundaryTransport.rectangle (Icc 1 M) (Icc 1 M) F +
      2 * JointBoundaryTransport.rectangle (Ioc M N) (Icc 1 N) F -
      JointBoundaryTransport.rectangle (Ioc M N) (Ioc M N) F := by
  have h1 := rectangle_cutoff_split N M (Icc 1 N) F hMN
  have h2 := rectangle_cutoff_split N M (Icc 1 M) F hMN
  have h3 := rectangle_cutoff_split N M (Ioc M N) F hMN
  rw [JointBoundaryTransport.rectangle_symm (Icc 1 N) (Icc 1 M)] at h2
  rw [JointBoundaryTransport.rectangle_symm (Icc 1 N) (Ioc M N),
    JointBoundaryTransport.rectangle_symm (Icc 1 M) (Ioc M N)] at h3
  linarith

/-- Summing the checked complete upper-row inversion retains every original outer Möbius sign. -/
theorem source_upper_rectangle_eq_linear (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (Icc 1 ⌊Real.exp A⌋₊)
      (ThetaKernelTransport.thetaKernel A) =
      ∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i := by
  unfold JointBoundaryTransport.rectangle
  apply sum_congr rfl
  intro i hi
  simp_rw [mul_assoc]
  rw [← mul_sum, source_upper_row_inversion A i hA (mem_Ioc.mp hi).1]

/-- Every product in the upper square has only the first outer sampling channel. -/
theorem upper_square_product_threshold (A : ℝ) (i j : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hj : ⌊Real.exp A⌋₊ / 2 < j) :
    Real.exp (2 * A) ≤ 4 * ((i * j : ℕ) : ℝ) := by
  let N := ⌊Real.exp A⌋₊
  have hi2 : N + 1 ≤ 2 * i := by dsimp [N]; omega
  have hj2 : N + 1 ≤ 2 * j := by dsimp [N]; omega
  have hprod : (N + 1) ^ 2 ≤ 4 * (i * j) := by
    nlinarith [Nat.mul_le_mul hi2 hj2]
  have hp : ((N : ℝ) + 1) ^ 2 ≤ 4 * ((i * j : ℕ) : ℝ) := by exact_mod_cast hprod
  have hf : Real.exp A < (N : ℝ) + 1 := Nat.lt_floor_add_one (Real.exp A)
  have hx : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [two_mul, Real.exp_add, pow_two]
  rw [hx]
  nlinarith [Real.exp_pos A]

/-- The entire upper square keeps the actual Φ kernel with both strict surviving channels. -/
theorem source_upper_square_eq_sampling (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (ThetaKernelTransport.thetaKernel A) =
      JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) := by
  unfold JointBoundaryTransport.rectangle
  apply sum_congr rfl
  intro i hi
  apply sum_congr rfl
  intro j hj
  rw [SourceUpperSupportScratch.thetaKernel_eq_sourceSamplingKernel A (i * j) hA
    (Nat.mul_pos (show 1 ≤ i by have := (mem_Ioc.mp hi).1; omega)
      (show 1 ≤ j by have := (mem_Ioc.mp hj).1; omega))
    (upper_square_product_threshold A i j (mem_Ioc.mp hi).1 (mem_Ioc.mp hj).1)]

/-- The unchanged source Q retains its smaller core and subtracts the complete upper Φ square. -/
theorem sourceQuadraticValue_core_upper (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) := by
  rw [sourceQuadraticValue,
    ThetaKernelTransport.source_prime_decomposition_theta A hA]
  change archimedeanValue _ A -
    2 * (2 * (∑ i ∈ Icc 1 ⌊Real.exp A⌋₊,
      (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) -
      JointBoundaryTransport.rectangle (Icc 1 ⌊Real.exp A⌋₊) (Icc 1 ⌊Real.exp A⌋₊)
        (ThetaKernelTransport.thetaKernel A)) = _
  rw [positive_sum_split ⌊Real.exp A⌋₊ (⌊Real.exp A⌋₊ / 2) _ (Nat.div_le_self _ _),
    rectangle_core_upper_identity ⌊Real.exp A⌋₊ (⌊Real.exp A⌋₊ / 2) _ (Nat.div_le_self _ _),
    source_upper_rectangle_eq_linear A hA, source_upper_square_eq_sampling A hA]
  ring

/-- The exact rank-one part of the smaller source core is nonnegative without RH. -/
theorem core_rankOne_nonneg (A : ℝ) (M : ℕ) :
    0 ≤ CorrelationSecondMoment.sourceRankOneCoefficient A *
      (∑ i ∈ Icc 1 M, (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 := by
  exact mul_nonneg (CorrelationSecondMoment.sourceRankOneCoefficient_nonneg A) (sq_nonneg _)

/-- Rank-one extraction retains the positive core term and both remaining complete signed terms. -/
theorem sourceQuadraticValue_core_rankOne (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
        (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
          (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaRemainder.thetaRemainder A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) := by
  rw [sourceQuadraticValue_core_upper A hA]
  have he := ThetaRemainder.quadratic_sum_eq A (⌊Real.exp A⌋₊ / 2)
  change JointBoundaryTransport.rectangle
    (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
    (ThetaKernelTransport.thetaKernel A) = _ at he
  rw [he]
  change _ - _ + 2 * (_ + JointBoundaryTransport.rectangle
    (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
    (ThetaRemainder.thetaRemainder A)) - _ = _
  ring

end
end UpperRowInversionScratch
