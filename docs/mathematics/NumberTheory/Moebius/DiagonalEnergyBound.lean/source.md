# Complete source: GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90a542761e2027420766f5d406882cea10c27c8d` · SHA-256 `1e1af235734b14ac9abf14c3508aa366d7c67fdb2ce208ce43604bcc166a1a1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
The literal diagonal has an unconditional quadratic bound. Consequently the
literal ordered signed P04 bound is equivalent to polynomial total energy.
Neither direction asserts that either polynomial bound has been proved.
-/

noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace PPNCP04

theorem atom_upper_bound (n : ℕ) (u : ℝ) :
    atom n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  by_cases hu : Real.log (n : ℝ) ≤ u
  · simp only [atom, if_pos hu]
    linarith [Real.exp_pos (-u / 2)]
  · simp only [atom, if_neg hu]
    positivity

theorem atom_square_bound (n : ℕ) (hn : 0 < n) (u : ℝ) :
    atom n u * atom n u ≤ 4 * (n : ℝ)⁻¹ := by
  have hl := atom_nonneg hn u
  have hu := atom_upper_bound n u
  have hs : atom n u ^ 2 ≤ (2 * (Real.sqrt (n : ℝ))⁻¹) ^ 2 := by
    have hz : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ := by positivity
    nlinarith
  have he : (2 * (Real.sqrt (n : ℝ))⁻¹) ^ 2 = 4 * (n : ℝ)⁻¹ := by
    rw [mul_pow, inv_pow, Real.sq_sqrt (Nat.cast_nonneg n)]
    norm_num
  simpa only [pow_two, he] using hs

theorem gram_diagonal_bound (T : ℝ) (hT : 0 ≤ T) (n : ℕ) (hn : 0 < n) :
    gram T n n ≤ 4 * T * (n : ℝ)⁻¹ := by
  have hi : IntegrableOn (fun u => atom n u * atom n u) (Icc 0 T) :=
    ((atom_continuous hn).mul (atom_continuous hn)).integrableOn_Icc
  have hc : IntegrableOn (fun _u : ℝ => 4 * (n : ℝ)⁻¹) (Icc 0 T) :=
    continuous_const.integrableOn_Icc
  calc
    gram T n n ≤ ∫ _u in Icc 0 T, 4 * (n : ℝ)⁻¹ :=
      setIntegral_mono_on hi hc measurableSet_Icc (fun u _ => atom_square_bound n hn u)
    _ = 4 * T * (n : ℝ)⁻¹ := by
      rw [setIntegral_const, Real.volume_real_Icc_of_le hT]
      simp
      ring

theorem realMoebius_square_le_one (n : ℕ) : realMoebius n ^ 2 ≤ 1 := by
  rcases ArithmeticFunction.moebius_eq_or n with h | h | h <;> simp [realMoebius, h]

theorem inventory_reciprocal_sum_bound (T : ℝ) (hT : 0 ≤ T) :
    (∑ n ∈ integerInventory T, (n : ℝ)⁻¹) ≤ 1 + T := by
  have he : 1 ≤ Real.exp T := by simpa using Real.exp_le_exp.mpr hT
  have h := harmonic_floor_le_one_add_log (Real.exp T) he
  simpa only [integerInventory, harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv,
    Rat.cast_natCast, Real.log_exp] using h

/-- D(T) ≤ 4T(1+T), uniformly for every real T ≥ 0. -/
theorem diagonal_quadratic_bound (T : ℝ) (hT : 0 ≤ T) :
    diagonal T ≤ 4 * T * (1 + T) := by
  calc
    diagonal T ≤ ∑ n ∈ integerInventory T, 4 * T * (n : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro n hn
      have hnpos : 0 < n := (mem_integerInventory.mp hn).1
      exact (mul_le_of_le_one_left (gram_diagonal_nonneg T n)
        (realMoebius_square_le_one n)).trans (gram_diagonal_bound T hT n hnpos)
    _ = 4 * T * ∑ n ∈ integerInventory T, (n : ℝ)⁻¹ := by rw [Finset.mul_sum]
    _ ≤ 4 * T * (1 + T) :=
      mul_le_mul_of_nonneg_left (inventory_reciprocal_sum_bound T hT) (by positivity)

theorem diagonal_polynomial_bound : PolynomialBound diagonal := by
  refine ⟨4, 2, by norm_num, by norm_num, ?_⟩
  intro T hT
  have hd := diagonal_quadratic_bound T hT
  have hsq : 4 * T * (1 + T) ≤ 4 * (1 + T) ^ (2 : ℕ) := by nlinarith
  exact hd.trans (by simpa using hsq)

/-- The diagonal bound completes the reverse implication without sign erasure. -/
theorem P04_implies_energy_polynomial (h : P04) : PolynomialBound energy := by
  obtain ⟨C, r, hC, hr, hX⟩ := h
  refine ⟨C + 4, r + 2, by linarith, by linarith, ?_⟩
  intro T hT
  have hb : 1 ≤ 1 + T := by linarith
  have hxpow : (1 + T) ^ r ≤ (1 + T) ^ (r + 2) :=
    Real.rpow_le_rpow_of_exponent_le hb (by linarith)
  have hdpow : (1 + T) ^ (2 : ℕ) ≤ (1 + T) ^ (r + 2) := by
    have hp := Real.rpow_le_rpow_of_exponent_le hb (show (2 : ℝ) ≤ r + 2 by linarith)
    simpa using hp
  have hd : diagonal T ≤ 4 * (1 + T) ^ (r + 2) := by
    apply (diagonal_quadratic_bound T hT).trans
    have hsq : 4 * T * (1 + T) ≤ 4 * (1 + T) ^ (2 : ℕ) := by nlinarith
    exact hsq.trans (mul_le_mul_of_nonneg_left hdpow (by norm_num))
  have hx : crossEnergy T ≤ C * (1 + T) ^ (r + 2) :=
    (hX T hT).trans (mul_le_mul_of_nonneg_left hxpow hC)
  rw [energy_eq_diagonal_add_cross]
  calc
    diagonal T + crossEnergy T ≤ 4 * (1 + T) ^ (r + 2) + C * (1 + T) ^ (r + 2) :=
      add_le_add hd hx
    _ = (C + 4) * (1 + T) ^ (r + 2) := by ring

theorem P04_iff_energy_polynomial : P04 ↔ PolynomialBound energy :=
  ⟨P04_implies_energy_polynomial, energy_polynomial_implies_P04⟩

end PPNCP04

#print axioms PPNCP04.diagonal_quadratic_bound
#print axioms PPNCP04.P04_iff_energy_polynomial
```
