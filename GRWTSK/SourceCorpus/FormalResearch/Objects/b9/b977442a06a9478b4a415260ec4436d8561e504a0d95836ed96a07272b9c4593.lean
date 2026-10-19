import FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion
import FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport

set_option autoImplicit false
namespace UpperBoundaryAbelScratch
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section

/-- Signed coefficient of an exact product in the complete original upper square. -/
def upperProductCoefficient (N n : ℕ) : ℝ :=
  ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
    if i * j = n then
      (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0

/-- Closed-right cumulative product coefficients, with all original Möbius signs. -/
def upperProductSummatory (N : ℕ) (x : ℝ) : ℝ :=
  ∑ n ∈ Icc 1 ⌊x⌋₊, upperProductCoefficient N n

theorem upperProductCoefficient_zero (N : ℕ) : upperProductCoefficient N 0 = 0 := by
  unfold upperProductCoefficient
  apply sum_eq_zero
  intro i hi
  apply sum_eq_zero
  intro j hj
  have hi0 : i ≠ 0 := by have := (mem_Ioc.mp hi).1; omega
  have hj0 : j ≠ 0 := by have := (mem_Ioc.mp hj).1; omega
  simp [Nat.mul_ne_zero hi0 hj0]

theorem upperProductCoefficient_one (N : ℕ) (hN : 2 ≤ N) :
    upperProductCoefficient N 1 = 0 := by
  unfold upperProductCoefficient
  apply sum_eq_zero
  intro i hi
  apply sum_eq_zero
  intro j hj
  have hi2 : 2 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hij : i * j ≠ 1 := by
    intro h
    have := (mul_eq_one.mp h).1
    omega
  simp [hij]

theorem upperProductSummatory_one (N : ℕ) (hN : 2 ≤ N) :
    upperProductSummatory N 1 = 0 := by
  simp [upperProductSummatory, upperProductCoefficient_one N hN]

/-- Product fibers retain all ordered pairs and use only a proven finite upper bound. -/
theorem upper_rectangle_eq_weighted_product_sum (N B : ℕ) (F : ℕ → ℝ)
    (hB : N * N ≤ B) :
    JointBoundaryTransport.rectangle (Ioc (N / 2) N) (Ioc (N / 2) N) F =
      ∑ n ∈ Icc 1 B, upperProductCoefficient N n * F n := by
  unfold upperProductCoefficient JointBoundaryTransport.rectangle
  simp_rw [sum_mul]
  symm
  rw [sum_comm]
  apply sum_congr rfl
  intro i hi
  rw [sum_comm]
  apply sum_congr rfl
  intro j hj
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hj1 : 1 ≤ j := by have := (mem_Ioc.mp hj).1; omega
  have hp : i * j ∈ Icc 1 B := mem_Icc.mpr
    ⟨by nlinarith,
      (Nat.mul_le_mul (mem_Ioc.mp hi).2 (mem_Ioc.mp hj).2).trans hB⟩
  simp only [ite_mul, zero_mul]
  simp [eq_comm, hp]

/-- The signed summatory function is literally the complete product cutoff. -/
theorem upperProductSummatory_eq_rectangle_cutoff (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperProductSummatory N x =
      ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
        if ((i * j : ℕ) : ℝ) ≤ x then
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 := by
  unfold upperProductSummatory upperProductCoefficient
  rw [sum_comm]
  apply sum_congr rfl
  intro i hi
  rw [sum_comm]
  apply sum_congr rfl
  intro j hj
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hj1 : 1 ≤ j := by have := (mem_Ioc.mp hj).1; omega
  have hp : 1 ≤ i * j := by nlinarith
  simp [eq_comm, mem_Icc, hp, Nat.le_floor_iff hx]

private theorem upperProductSummatory_eq_zero_sum (N : ℕ) (x : ℝ) :
    upperProductSummatory N x = ∑ n ∈ Icc 0 ⌊x⌋₊, upperProductCoefficient N n := by
  apply sum_subset
  · intro n hn
    exact mem_Icc.mpr ⟨Nat.zero_le _, (mem_Icc.mp hn).2⟩
  · intro n hn hnot
    have hn0 : n = 0 := by
      have hnle := (mem_Icc.mp hn).2
      by_contra h
      exact hnot (mem_Icc.mpr ⟨by omega, hnle⟩)
    simp [hn0, upperProductCoefficient_zero]

/-- Genuine integrability is established before the signed cumulative expression is integrated. -/
theorem upperProductSummatory_mul_integrableOn (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperProductSummatory N x * g x) (Set.Icc a b) := by
  simpa only [upperProductSummatory, mul_comm] using
    (integrableOn_mul_sum_Icc (upperProductCoefficient N) (m := 1) ha hg)

/-- Exact finite Abel identity, retaining both endpoint atoms before source specialization. -/
theorem upperProduct_sum_eq_abel (N : ℕ) (f : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b)
    (hd : ∀ x ∈ Set.Icc a b, DifferentiableAt ℝ f x)
    (hi : IntegrableOn (deriv f) (Set.Icc a b)) :
    (∑ n ∈ Ioc ⌊a⌋₊ ⌊b⌋₊, upperProductCoefficient N n * f n) =
      upperProductSummatory N b * f b - upperProductSummatory N a * f a -
        ∫ x in a..b, upperProductSummatory N x * deriv f x := by
  have h := sum_mul_eq_sub_sub_integral_mul (upperProductCoefficient N) ha hab hd hi
  simpa only [← upperProductSummatory_eq_zero_sum, mul_comm,
    intervalIntegral.integral_of_le hab] using h

/-- The product-fiber Abel identity at an endpoint where the actual kernel vanishes. -/
theorem upper_rectangle_eq_abel (N : ℕ) (f : ℝ → ℝ) (b : ℝ)
    (hN : 2 ≤ N) (hb : 1 ≤ b) (hB : N * N ≤ ⌊b⌋₊)
    (hd : ∀ x ∈ Set.Icc 1 b, DifferentiableAt ℝ f x)
    (hi : IntegrableOn (deriv f) (Set.Icc 1 b)) (hz : f b = 0) :
    JointBoundaryTransport.rectangle (Ioc (N / 2) N) (Ioc (N / 2) N)
      (fun n ↦ f n) = -∫ x in 1..b, upperProductSummatory N x * deriv f x := by
  rw [upper_rectangle_eq_weighted_product_sum N ⌊b⌋₊ _ hB]
  have hs : (∑ n ∈ Ioc 1 ⌊b⌋₊, upperProductCoefficient N n * f n) =
      ∑ n ∈ Icc 1 ⌊b⌋₊, upperProductCoefficient N n * f n := by
    apply sum_subset
    · intro n hn
      exact mem_Icc.mpr ⟨by have := (mem_Ioc.mp hn).1; omega, (mem_Ioc.mp hn).2⟩
    · intro n hn hnot
      have hn1 : n = 1 := by
        have := mem_Icc.mp hn
        simp only [mem_Ioc] at hnot
        omega
      simp [hn1, upperProductCoefficient_one N hN]
  have hab := upperProduct_sum_eq_abel N f 1 b (by norm_num) hb hd hi
  rw [Nat.floor_one, hs, hz, mul_zero, upperProductSummatory_one N hN,
    zero_mul, sub_zero, zero_sub] at hab
  exact hab

private theorem source_index_two (A : ℝ) (hA : 1 ≤ A) : 2 ≤ ⌊Real.exp A⌋₊ := by
  apply (Nat.le_floor_iff (Real.exp_pos A).le).mpr
  norm_num
  linarith [Real.add_one_le_exp A]

private theorem source_square_cutoff (A : ℝ) :
    ⌊Real.exp A⌋₊ * ⌊Real.exp A⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ := by
  apply (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr
  have hN := Nat.floor_le (Real.exp_pos A).le
  have hN0 : 0 ≤ (⌊Real.exp A⌋₊ : ℝ) := Nat.cast_nonneg _
  have he : Real.exp (2 * A) = Real.exp A * Real.exp A := by
    rw [two_mul, Real.exp_add]
  push_cast
  rw [he]
  nlinarith [Real.exp_pos A]

/-- Integrability of the actual signed cumulative boundary times the actual derivative. -/
theorem source_upper_boundary_integrableOn (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperProductSummatory ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  upperProductSummatory_mul_integrableOn _ _ _ _ (by norm_num)
    (MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA (by norm_num))

/-- The same original signed boundary is genuinely interval integrable. -/
theorem source_upper_boundary_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable
      (fun x ↦ upperProductSummatory ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      volume 1 (Real.exp (2 * A)) := by
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le ?_).mpr
    (source_upper_boundary_integrableOn A hA)
  exact Real.one_le_exp_iff.mpr (by linarith)

/-- Exact full source boundary transport; no norm or positivity replacement is made. -/
theorem source_upper_boundary_eq_abel (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (fun n ↦ SourceSampling.sourceSamplingKernel A n) =
      -∫ x in 1..Real.exp (2 * A), upperProductSummatory ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x := by
  apply upper_rectangle_eq_abel _ _ _ (source_index_two A hA)
    (Real.one_le_exp_iff.mpr (by linarith)) (source_square_cutoff A)
  · intro x hx
    exact (SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt A x hA
      (lt_of_lt_of_le (by norm_num) hx.1)).differentiableAt
  · exact MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA (by norm_num)
  · exact MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (Real.exp_pos _) le_rfl

end
end UpperBoundaryAbelScratch
