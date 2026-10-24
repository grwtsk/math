# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbola.Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9828b34de7f2f3b8c0121a9a50a1c208474ff83d` · SHA-256 `99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint

set_option autoImplicit false
namespace UpperBoundaryHyperbolaScratch
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

/-- The exact closed square-root cutoff inside the unchanged original upper interval. -/
def upperSmallIndices (N : ℕ) (x : ℝ) : Finset ℕ :=
  (Ioc (N / 2) N).filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x)

/-- Signed upper Möbius sum at the closed square-root cutoff. -/
def upperSmallSum (N : ℕ) (x : ℝ) : ℝ :=
  ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ)

/-- The triangular hyperbola contribution retains each complete admissible upper row. -/
def upperHyperbola (N : ℕ) (x : ℝ) : ℝ :=
  ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ) *
    ∑ j ∈ (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x),
      (ArithmeticFunction.moebius j : ℝ)

theorem mem_upperSmallIndices_iff (N i : ℕ) (x : ℝ) :
    i ∈ upperSmallIndices N x ↔ N / 2 < i ∧ i ≤ N ∧ (i : ℝ) ^ 2 ≤ x := by
  simp only [upperSmallIndices, mem_filter, mem_Ioc]
  tauto

/-- Both equality endpoints are retained in the natural floor of the real square root. -/
theorem upperSmallIndices_eq_sqrt_cutoff (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallIndices N x = Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊) := by
  ext i
  rw [mem_upperSmallIndices_iff]
  simp only [mem_Ioc, le_min_iff]
  rw [Nat.le_floor_iff (Real.sqrt_nonneg x), Real.le_sqrt (Nat.cast_nonneg i) hx]

private theorem hyperbola_pair (a b u v x : ℝ) (ha0 : 0 ≤ a) (hb0 : 0 ≤ b) :
    (if a * b ≤ x then u * v else 0) =
      (if a ^ 2 ≤ x then if a * b ≤ x then u * v else 0 else 0) +
      (if b ^ 2 ≤ x then if a * b ≤ x then u * v else 0 else 0) -
      (if a ^ 2 ≤ x then if b ^ 2 ≤ x then u * v else 0 else 0) := by
  by_cases ha : a ^ 2 ≤ x <;> by_cases hb : b ^ 2 ≤ x
  · have hp : a * b ≤ x := by nlinarith [sq_nonneg (a - b)]
    simp [ha, hb, hp]
  · simp [ha, hb]
  · simp [ha, hb]
  · have hp : ¬a * b ≤ x := by
      intro h
      rcases le_total a b with hab | hba
      · nlinarith [mul_le_mul_of_nonneg_left hab ha0]
      · nlinarith [mul_le_mul_of_nonneg_left hba hb0]
    simp [ha, hb, hp]

private theorem finite_hyperbola (S : Finset ℕ) (w : ℕ → ℝ) (x : ℝ) :
    (∑ i ∈ S, ∑ j ∈ S, if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0) =
      2 * (∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i *
        ∑ j ∈ S.filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x), w j) -
      (∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i) ^ 2 := by
  classical
  let L : ℝ := ∑ i ∈ S, ∑ j ∈ S,
    if (i : ℝ) ^ 2 ≤ x then
      if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0 else 0
  let R : ℝ := ∑ i ∈ S, ∑ j ∈ S,
    if (j : ℝ) ^ 2 ≤ x then
      if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0 else 0
  let D : ℝ := ∑ i ∈ S, ∑ j ∈ S,
    if (i : ℝ) ^ 2 ≤ x then if (j : ℝ) ^ 2 ≤ x then w i * w j else 0 else 0
  have hs : (∑ i ∈ S, ∑ j ∈ S,
      if ((i * j : ℕ) : ℝ) ≤ x then w i * w j else 0) = L + R - D := by
    dsimp only [L, R, D]
    simp only [← sum_add_distrib, ← sum_sub_distrib]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    simpa only [Nat.cast_mul] using
      hyperbola_pair i j (w i) (w j) x (Nat.cast_nonneg i) (Nat.cast_nonneg j)
  have hRL : R = L := by
    dsimp only [R, L]
    rw [sum_comm]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    simp only [Nat.mul_comm j i, mul_comm (w j) (w i)]
  have hL : L = ∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i *
      ∑ j ∈ S.filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x), w j := by
    dsimp only [L]
    rw [sum_filter]
    apply sum_congr rfl
    intro i _
    rw [sum_ite_irrel]
    split_ifs with hi
    · rw [sum_filter, mul_sum]
      apply sum_congr rfl
      intro j _
      split_ifs <;> simp
    · simp
  have hD : D = (∑ i ∈ S.filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x), w i) ^ 2 := by
    dsimp only [D]
    rw [sum_filter, pow_two, sum_mul_sum]
    apply sum_congr rfl
    intro i _
    apply sum_congr rfl
    intro j _
    split_ifs <;> simp_all
  rw [hs, hRL, hL, hD]
  ring

/-- Exact signed hyperbola decomposition of every ordered original upper product. -/
theorem upperProductSummatory_eq_hyperbola (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * upperHyperbola N x - upperSmallSum N x ^ 2 := by
  rw [UpperBoundaryAbel.upperProductSummatory_eq_rectangle_cutoff N x hx]
  exact finite_hyperbola (Ioc (N / 2) N) (fun i ↦ (ArithmeticFunction.moebius i : ℝ)) x

/-- The removed square is nonnegative before multiplication by any derivative kernel. -/
theorem upperSmallSum_square_nonneg (N : ℕ) (x : ℝ) :
    0 ≤ upperSmallSum N x ^ 2 := sq_nonneg _

/-- The inner closed product cutoff is exactly division by its positive original row index. -/
theorem upperRowIndices_eq_div_cutoff (N i : ℕ) (x : ℝ) (hx : 0 ≤ x) (hi : 0 < i) :
    (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x) =
      Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊) := by
  have hi0 : (0 : ℝ) < i := by exact_mod_cast hi
  ext j
  simp only [mem_filter, mem_Ioc, le_min_iff]
  rw [Nat.le_floor_iff (div_nonneg hx hi0.le), le_div_iff₀ hi0]
  push_cast
  rw [mul_comm (j : ℝ) (i : ℝ)]
  tauto

/-- Literal finite hyperbola rows with both natural floor cutoffs explicit. -/
theorem upperHyperbola_eq_floor_sum (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ) := by
  unfold upperHyperbola
  rw [upperSmallIndices_eq_sqrt_cutoff N x hx]
  apply sum_congr rfl
  intro i hi
  rw [upperRowIndices_eq_div_cutoff N i x hx (by have := (mem_Ioc.mp hi).1; omega)]

/-- The diagonal Möbius sum uses the identical closed square-root endpoint. -/
theorem upperSmallSum_eq_floor_sum (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallSum N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊), (ArithmeticFunction.moebius i : ℝ) := by
  rw [upperSmallSum, upperSmallIndices_eq_sqrt_cutoff N x hx]

/-- Both hyperbola rows and the subtracted square retain all original floor endpoints. -/
theorem upperProductSummatory_eq_floor_hyperbola (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ)) -
      (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ)) ^ 2 := by
  rw [upperProductSummatory_eq_hyperbola N x hx, upperHyperbola_eq_floor_sum N x hx,
    upperSmallSum_eq_floor_sum N x hx]

/-- The finite cutoff Möbius sum is measurable despite its closed jump points. -/
theorem upperSmallSum_measurable (N : ℕ) : Measurable (upperSmallSum N) := by
  unfold upperSmallSum upperSmallIndices
  simp_rw [sum_filter]
  apply Finset.measurable_sum
  intro i _
  exact measurable_const.piecewise measurableSet_Ici measurable_const

/-- A finite absolute-weight bound is used only to establish genuine integrability. -/
theorem upperSmallSum_abs_le (N : ℕ) (x : ℝ) :
    |upperSmallSum N x| ≤
      ∑ i ∈ Ioc (N / 2) N, |(ArithmeticFunction.moebius i : ℝ)| := by
  unfold upperSmallSum upperSmallIndices
  rw [sum_filter]
  apply (abs_sum_le_sum_abs _ _).trans
  apply sum_le_sum
  intro i _
  split_ifs <;> simp [abs_nonneg]

/-- Multiplication by the finite square preserves integrability on the actual interval. -/
theorem upperSmallSum_square_mul_integrableOn (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperSmallSum N x ^ 2 * g x) (Set.Icc a b) := by
  let W : ℝ := ∑ i ∈ Ioc (N / 2) N, |(ArithmeticFunction.moebius i : ℝ)|
  apply hg.bdd_mul ((upperSmallSum_measurable N).pow_const 2).aestronglyMeasurable
    (c := W ^ 2)
  filter_upwards [] with x
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  have hs : |upperSmallSum N x| ≤ W := upperSmallSum_abs_le N x
  have hW : 0 ≤ W := sum_nonneg (fun _ _ ↦ abs_nonneg _)
  have hp := mul_nonneg (sub_nonneg.mpr hs)
    (add_nonneg hW (abs_nonneg (upperSmallSum N x)))
  nlinarith [sq_abs (upperSmallSum N x)]

/-- The complete signed triangular contribution is integrable before its integral is split. -/
theorem upperHyperbola_mul_integrableOn (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperHyperbola N x * g x) (Set.Icc a b) := by
  have hB := UpperBoundaryAbel.upperProductSummatory_mul_integrableOn N g a b ha hg
  have hS := upperSmallSum_square_mul_integrableOn N g a b hg
  have hh : IntegrableOn
      (fun x ↦ (UpperBoundaryAbel.upperProductSummatory N x * g x +
        upperSmallSum N x ^ 2 * g x) / 2) (Set.Icc a b) := (hB.add hS).div_const 2
  apply hh.congr_fun _ measurableSet_Icc
  intro x hx
  have he := upperProductSummatory_eq_hyperbola N x (ha.trans hx.1)
  dsimp only
  rw [he]
  ring

/-- Abel's signed integral splits only after both hyperbola pieces are genuinely integrable. -/
theorem upperProduct_integral_eq_hyperbola (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b) (hg : IntegrableOn g (Set.Icc a b)) :
    (∫ x in a..b, UpperBoundaryAbel.upperProductSummatory N x * g x) =
      2 * (∫ x in a..b, upperHyperbola N x * g x) -
        ∫ x in a..b, upperSmallSum N x ^ 2 * g x := by
  have hH : IntervalIntegrable (fun x ↦ upperHyperbola N x * g x) volume a b :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hab).mpr
      (upperHyperbola_mul_integrableOn N g a b ha hg)
  have hS : IntervalIntegrable (fun x ↦ upperSmallSum N x ^ 2 * g x) volume a b :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hab).mpr
      (upperSmallSum_square_mul_integrableOn N g a b hg)
  calc
    _ = ∫ x in a..b, 2 * (upperHyperbola N x * g x) - upperSmallSum N x ^ 2 * g x := by
      apply intervalIntegral.integral_congr_ae
      filter_upwards [] with x hx
      rw [Set.uIoc_of_le hab] at hx
      rw [upperProductSummatory_eq_hyperbola N x (ha.trans (le_of_lt hx.1))]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_sub (hH.const_mul 2) hS,
        intervalIntegral.integral_const_mul]

/-- Genuine integrability of the original triangular source derivative pairing. -/
theorem source_hyperbola_derivative_integrableOn (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  upperHyperbola_mul_integrableOn _ _ _ _ (by norm_num)
    (MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA (by norm_num))

/-- Genuine integrability of the retained source derivative times the finite square. -/
theorem source_square_derivative_integrableOn (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  upperSmallSum_square_mul_integrableOn _ _ _ _
    (MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA (by norm_num))

/-- The unchanged source core, triangular pairing and exact square retain the original Q. -/
theorem sourceQuadraticValue_eq_hyperbola_integrals (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) -
        2 * ∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
          deriv (SourceSampling.sourceSamplingKernel A) x := by
  rw [UpperBoundaryJoint.sourceQuadraticValue_eq_core_add_integral A hA,
    upperProduct_integral_eq_hyperbola _ _ 1 _ (by norm_num)
      (Real.one_le_exp_iff.mpr (by linarith))
      (MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA (by norm_num))]
  ring

end
end UpperBoundaryHyperbolaScratch
```
