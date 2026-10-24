import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Tactic
import FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerSource

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SelbergConvolution
open Finset ArithmeticFunction
open scoped ArithmeticFunction.zeta ArithmeticFunction.Moebius
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport
noncomputable section

/-- Multiplication by log is a derivation for Dirichlet convolution, including the zero index. -/
theorem log_pmul_convolution (f g : ArithmeticFunction ℝ) :
    ArithmeticFunction.log.pmul (f * g) =
      (ArithmeticFunction.log.pmul f) * g + f * (ArithmeticFunction.log.pmul g) := by
  ext n
  simp only [pmul_apply, mul_apply, ArithmeticFunction.add_apply, log_apply, mul_sum, ← sum_add_distrib]
  apply sum_congr rfl
  intro q hq
  obtain ⟨hqmul, hn⟩ := Nat.mem_divisorsAntidiagonal.mp hq
  have hq1 : (q.1 : ℝ) ≠ 0 := by
    exact_mod_cast (show q.1 ≠ 0 by intro hz; simp [hz] at hqmul; exact hn hqmul.symm)
  have hq2 : (q.2 : ℝ) ≠ 0 := by
    exact_mod_cast (show q.2 ≠ 0 by intro hz; simp [hz] at hqmul; exact hn hqmul.symm)
  rw [← hqmul, Nat.cast_mul, Real.log_mul hq1 hq2]
  ring

/-- The logarithm times the Dirichlet unit-of-summation is the logarithm itself. -/
theorem log_pmul_zeta :
    ArithmeticFunction.log.pmul (ζ : ArithmeticFunction ℝ) = ArithmeticFunction.log :=
  ArithmeticFunction.pmul_zeta ArithmeticFunction.log

/-- The pointwise logarithmic square has an exact positive-coefficient convolution decomposition. -/
theorem selberg_dirichlet_identity :
    (μ : ArithmeticFunction ℝ) * (ArithmeticFunction.log.pmul ArithmeticFunction.log) =
      ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt +
        ArithmeticFunction.vonMangoldt * ArithmeticFunction.vonMangoldt := by
  have h := log_pmul_convolution ArithmeticFunction.vonMangoldt (ζ : ArithmeticFunction ℝ)
  rw [vonMangoldt_mul_zeta, log_pmul_zeta] at h
  have hfirst : (μ : ArithmeticFunction ℝ) *
      ((ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt) * ζ) =
      ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt := by
    calc
      _ = (ArithmeticFunction.log.pmul ArithmeticFunction.vonMangoldt) *
          ((μ : ArithmeticFunction ℝ) * ζ) := by ring
      _ = _ := by rw [coe_moebius_mul_coe_zeta, mul_one]
  have hsecond : (μ : ArithmeticFunction ℝ) *
      (ArithmeticFunction.vonMangoldt * ArithmeticFunction.log) =
      ArithmeticFunction.vonMangoldt * ArithmeticFunction.vonMangoldt := by
    calc
      _ = ArithmeticFunction.vonMangoldt * ((μ : ArithmeticFunction ℝ) * ArithmeticFunction.log) := by ring
      _ = _ := by rw [moebius_mul_log_eq_vonMangoldt]
  rw [h, mul_add, hfirst, hsecond]

/-- The Selberg coefficient preserves every divisor in the Mangoldt self-convolution. -/
def selbergCoefficient (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n * Real.log (n : ℝ) +
    ∑ d ∈ n.divisors, ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)

/-- The exact coefficient identity is valid even at zero and one. -/
theorem selberg_coefficient_identity (n : ℕ) :
    (∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.log (n / d : ℕ) ^ 2) =
      selbergCoefficient n := by
  have h := congrArg (fun f : ArithmeticFunction ℝ ↦ f n) selberg_dirichlet_identity
  simp only [mul_apply, pmul_apply, ArithmeticFunction.add_apply, log_apply, intCoe_apply] at h
  rw [Nat.sum_divisorsAntidiagonal (fun d m ↦
    (ArithmeticFunction.moebius d : ℝ) * (Real.log (m : ℝ) * Real.log (m : ℝ))),
    Nat.sum_divisorsAntidiagonal (fun d m ↦
      ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt m)] at h
  simpa only [pow_two, selbergCoefficient, mul_comm] using h

/-- Every right-hand coefficient is nonnegative, without a source-kernel positivity premise. -/
theorem selbergCoefficient_nonneg (n : ℕ) : 0 ≤ selbergCoefficient n := by
  unfold selbergCoefficient
  exact add_nonneg (mul_nonneg vonMangoldt_nonneg (Real.log_natCast_nonneg n))
    (sum_nonneg (fun d _ ↦ mul_nonneg vonMangoldt_nonneg vonMangoldt_nonneg))

/-- The zero index has no divisor contribution. -/
theorem selbergCoefficient_zero : selbergCoefficient 0 = 0 := by
  simp [selbergCoefficient]

/-- The unit index has no logarithmic or Mangoldt contribution. -/
theorem selbergCoefficient_one : selbergCoefficient 1 = 0 := by
  simp [selbergCoefficient]

/-- The exact antidiagonal form is available for finite product reindexing. -/
theorem selberg_antidiagonal_identity (n : ℕ) :
    (∑ q ∈ n.divisorsAntidiagonal,
      (ArithmeticFunction.moebius q.1 : ℝ) * Real.log (q.2 : ℝ) ^ 2) = selbergCoefficient n := by
  rw [Nat.sum_divisorsAntidiagonal (fun d m ↦
    (ArithmeticFunction.moebius d : ℝ) * Real.log (m : ℝ) ^ 2)]
  exact selberg_coefficient_identity n

/-- Every closed product cutoff is exactly the literal floor(x/d) cutoff. -/
theorem closed_factor_cutoff_eq (x : ℝ) (d : ℕ) (hd : 1 ≤ d) :
    (Icc 1 ⌊x⌋₊).filter (fun m : ℕ ↦ d * m ∈ Icc 1 ⌊x⌋₊) = Icc 1 ⌊x / (d : ℝ)⌋₊ := by
  rw [Nat.floor_div_natCast]
  ext m
  simp only [mem_filter, mem_Icc]
  constructor
  · rintro ⟨⟨hm, _⟩, _, hprod⟩
    exact ⟨hm, (Nat.le_div_iff_mul_le (by omega : 0 < d)).mpr (by simpa [mul_comm] using hprod)⟩
  · rintro ⟨hm, hmd⟩
    have hprod : d * m ≤ ⌊x⌋₊ := by
      have h := (Nat.le_div_iff_mul_le (by omega : 0 < d)).mp hmd
      simpa [mul_comm] using h
    exact ⟨⟨hm, hmd.trans (Nat.div_le_self _ _)⟩, by nlinarith, hprod⟩

/-- The Möbius/log-square prefix retains both positive ranges and every exact real floor. -/
def selbergPrefix (x : ℝ) : ℝ :=
  ∑ d ∈ Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
    ∑ m ∈ Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2

/-- Exact finite Selberg prefix identity; no infinite rearrangement is used. -/
theorem selberg_prefix_identity (x : ℝ) :
    selbergPrefix x = ∑ n ∈ Icc 1 ⌊x⌋₊, selbergCoefficient n := by
  symm
  calc
    _ = ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ q ∈ n.divisorsAntidiagonal,
        (ArithmeticFunction.moebius q.1 : ℝ) * Real.log (q.2 : ℝ) ^ 2 := by
      apply sum_congr rfl
      intro n _
      exact (selberg_antidiagonal_identity n).symm
    _ = ∑ d ∈ Icc 1 ⌊x⌋₊, ∑ m ∈ Icc 1 ⌊x⌋₊,
        if d * m ∈ Icc 1 ⌊x⌋₊ then
          (ArithmeticFunction.moebius d : ℝ) * Real.log (m : ℝ) ^ 2 else 0 :=
      divisors_sum_eq_filtered_product ⌊x⌋₊ (Icc 1 ⌊x⌋₊) (fun _ h ↦ h)
        (fun q ↦ (ArithmeticFunction.moebius q.1 : ℝ) * Real.log (q.2 : ℝ) ^ 2)
    _ = _ := by
      unfold selbergPrefix
      apply sum_congr rfl
      intro d hd
      rw [← sum_filter, closed_factor_cutoff_eq x d (mem_Icc.mp hd).1, mul_sum]

/-- The entire signed Möbius prefix is nonnegative because the exact coefficients are nonnegative. -/
theorem selbergPrefix_nonneg (x : ℝ) : 0 ≤ selbergPrefix x := by
  rw [selberg_prefix_identity]
  exact sum_nonneg (fun n _ ↦ selbergCoefficient_nonneg n)

/-- The zero real cutoff produces an empty positive prefix. -/
theorem selbergPrefix_zero : selbergPrefix 0 = 0 := by
  norm_num [selbergPrefix]

/-- The unit cutoff is retained and contributes log(1)^2=0. -/
theorem selbergPrefix_one : selbergPrefix 1 = 0 := by
  norm_num [selbergPrefix]

/-- Literal finite divisor version of the requested arithmetic identity. -/
theorem selberg_prefix_expanded (x : ℝ) :
    (∑ d ∈ Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      ∑ m ∈ Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) =
      ∑ n ∈ Icc 1 ⌊x⌋₊,
        (ArithmeticFunction.vonMangoldt n * Real.log (n : ℝ) +
          ∑ d ∈ n.divisors,
            ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) :=
  selberg_prefix_identity x

end
end FormalResearch.RiemannHypothesis.SourceComparison.SelbergConvolution


set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport
open Finset
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SelbergConvolution
noncomputable section

/-- The actual signed source weight after removal of the nonzero logarithmic factor. -/
def selbergSourceWeight (A : ℝ) (n : ℕ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log n) /
    (Real.sqrt (n : ℝ) * Real.log (n : ℝ))

/-- The full Mangoldt self-convolution retains every divisor and the original strict cutoff. -/
def mangoldtConvolutionContribution (A : ℝ) : ℝ :=
  ∑ n ∈ Cutoff.primeIndices A,
    (∑ d ∈ n.divisors,
      ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) *
        selbergSourceWeight A n

/-- An exact identity for each permitted source index; no sign of the correlation is assumed. -/
theorem weighted_selberg_identity (A : ℝ) (n : ℕ) (hn : 2 ≤ n) :
    selbergCoefficient n * selbergSourceWeight A n =
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) +
      (∑ d ∈ n.divisors,
        ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) *
          selbergSourceWeight A n := by
  have hnR : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  have hl : Real.log (n : ℝ) ≠ 0 := (Real.log_pos hnR).ne'
  unfold selbergCoefficient selbergSourceWeight
  field_simp

/-- The Selberg rearrangement is bound to the complete original source sum. -/
theorem primePowerContribution_eq_selberg_difference (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      (∑ n ∈ Cutoff.primeIndices A, selbergCoefficient n * selbergSourceWeight A n) -
        mangoldtConvolutionContribution A := by
  unfold mangoldtConvolutionContribution
  rw [← Finset.sum_sub_distrib]
  change (∑ n ∈ Cutoff.primeIndices A,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log n)) = _
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 : 2 ≤ n := ((Cutoff.mem_primeIndices_iff A n).mp hn).1
  have h := weighted_selberg_identity A n hn2
  linarith

/-- Both signed weighted convolutions remain in the unchanged quadratic source. -/
theorem sourceQuadraticValue_eq_selberg_difference (A : ℝ) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A -
        2 * (∑ n ∈ Cutoff.primeIndices A, selbergCoefficient n * selbergSourceWeight A n) +
        2 * mangoldtConvolutionContribution A := by
  unfold sourceQuadraticValue
  rw [primePowerContribution_eq_selberg_difference]
  ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport
