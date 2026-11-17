/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPhysicalHalfCorrelation

/-!
# Half-energy allowance for omitted later primes in the 95-prime Weil return

Until the radius reaches log 503, all later prime powers shift by at least
the radius. The two supported arguments in the correlation then lie in
opposite halves, up to endpoints. The physical half-correlation theorem
bounds the translated product integral by half the total L² energy.
We keep the norm of the actual inverse-character factor term by term.

The bound concerns omission of later prime terms, with the original
conductor, parity, archimedean integral, and both pole weights retained.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur OddRootProjection CharacterWindow SourcePrimeCorrelation WeilPhysicalHalfCorrelation

variable {q : ℕ}

theorem laterPower_log_ge {A : ℝ} {n : ℕ} (hn : n ∈ laterPowers A) :
    Real.log 503 ≤ Real.log (n : ℝ) := by
  have base := (Finset.mem_filter.mp hn).2
  have npos : 2 ≤ n := by
    have active := (Finset.mem_filter.mp (Finset.mem_filter.mp hn).1).1
    exact (Finset.mem_filter.mp active).2.1
  have bound : 503 ≤ n := base.trans (Nat.minFac_le (by omega))
  exact Real.log_le_log (by norm_num) (by exact_mod_cast bound)

/-- Character-sensitive later-prime budget for the original compact tests. -/
theorem abs_later_readout_le_half_energy (A : ℝ) (χ : DirichletCharacter ℂ q)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A)
    (radius : A ≤ Real.log 503) :
    |primeReadout (laterPowers A) (primeAtom χ (fun n => correlation f (Real.log n)))| ≤
      (∑ n ∈ laterPowers A, primeWeight n * ‖χ n‖) * energy f := by
  have hsupport : ∀ t : ℝ, t ∉ Icc (-A) A → f t = 0 := by
    intro t outside
    by_contra nonzero
    exact outside (support (subset_tsupport _ nonzero))
  unfold primeReadout
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ n ∈ laterPowers A, |(primeAtom χ (fun n => correlation f (Real.log n)) n).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ n ∈ laterPowers A, (primeWeight n * ‖χ n‖) * (energy f / 2) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      calc
        _ ≤ ‖primeAtom χ (fun n => correlation f (Real.log n)) n‖ :=
          Complex.abs_re_le_norm _
        _ = (primeWeight n * ‖χ n‖) * ‖correlation f (Real.log n)‖ := by
          rw [primeAtom, norm_mul, Complex.norm_real, Real.norm_eq_abs,
            abs_of_nonneg (primeWeight_nonneg _), norm_mul, Complex.norm_conj, mul_assoc]
        _ ≤ _ := mul_le_mul_of_nonneg_left
          (norm_correlation_le_half_energy_of_support hf A _ (radius.trans (laterPower_log_ge hn)) hsupport)
          (mul_nonneg (primeWeight_nonneg _) (norm_nonneg _))
    _ = _ := by rw [← Finset.sum_mul]; ring

/-- Two-sided allowance for inexact retained atoms and deleted later powers.
The first-window error is still measured against the exact signed atoms. -/
theorem abs_firstOnly_error_le_half_energy (χ : DirichletCharacter ℂ q) (A : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A)
    (radius : A ≤ Real.log 503) (observed : ℕ → ℂ) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    |primeReadout (firstPowers A) observed - signedWindowValue χ A f -
      primeReadout (laterPowers A) a| ≤
      2 * (∑ n ∈ firstPowers A, ‖observed n - a n‖) +
      (∑ n ∈ laterPowers A, primeWeight n * ‖(χ⁻¹) n‖) * energy f := by
  intro a
  calc
    _ ≤ |primeReadout (firstPowers A) observed - signedWindowValue χ A f| +
        |primeReadout (laterPowers A) a| := abs_sub _ _
    _ ≤ _ := add_le_add (abs_primeReadout_sub_le _ _ _)
      (abs_later_readout_le_half_energy A χ⁻¹ hf support radius)

/-- Immediately above the first window, the whole deleted inventory is
the single prime 503. The next prime is excluded even at the endpoint. -/
theorem laterPowers_eq_singleton_503 {A : ℝ}
    (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    laterPowers A = {503} := by
  ext n
  rw [Finset.mem_singleton]
  constructor
  · intro hn
    obtain ⟨p, m, hp, hm, rfl⟩ :=
      (isPrimePow_nat_iff _).1 (Finset.mem_filter.mp (Finset.mem_filter.mp hn).1).2
    obtain ⟨base, lt⟩ := (pow_mem_laterPowers_iff hp hm).1 hn
    have small : p ^ m < 509 := by exact_mod_cast lt.trans_le hi
    have exponent : m = 1 := by
      by_contra notOne
      have sq := Nat.pow_le_pow_right hp.pos (show 2 ≤ m by omega)
      have lower : 503 ^ 2 ≤ p ^ 2 := Nat.pow_le_pow_left base 2
      omega
    subst m
    simp only [pow_one] at small ⊢
    interval_cases p <;> norm_num at *
  · rintro rfl
    simpa using (pow_mem_laterPowers_iff (by norm_num : Nat.Prime 503)
      (by decide : 0 < (1 : ℕ))).2 ⟨le_rfl, by simpa using lo⟩

/-- In the singleton interval the signed error of an exact first-window
report is the negative of the original inverse-character atom at 503. -/
theorem physicalValue_sub_exactFirstOnly_at_503
    (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    physicalValue χ A f -
        (windowValue χ A f (signedWindowValue χ A f) + ((2 * (a 503).re : ℝ) : ℂ)) =
      ((-(2 * (a 503).re) : ℝ) : ℂ) := by
  simpa [laterPowers_eq_singleton_503 lo hi, primeReadout] using
    physicalValue_sub_firstOnly χ A f (signedWindowValue χ A f)

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
