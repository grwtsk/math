/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Data.Nat.Totient
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! # Euler factors of the squared finite-time scattering amplitudes -/
namespace GRWTSK.NumberTheory.XiCuspScatteringEuler

/-- The trace weight at the front indexed by n. -/
noncomputable def weight (n : ℕ) : ℂ := ((n.totient : ℂ) / n)^2

theorem weight_mul {a b : ℕ} (h : a.Coprime b) : weight (a*b) = weight a * weight b := by
  unfold weight
  rw [Nat.totient_mul h]
  push_cast
  ring

theorem weight_prime_power {p : ℕ} (hp : p.Prime) (k : ℕ) :
    weight (p^(k+1)) = (1 - 1/(p:ℂ))^2 := by
  unfold weight
  rw [Nat.totient_prime_pow_succ hp]
  have hn : (p:ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  push_cast [Nat.cast_sub hp.one_le]
  rw [pow_succ]
  field_simp
  ring

/-- Summing the full local powers gives a simple numerator modifying the
zeta Euler factor, including the constant coefficient one. -/
theorem prime_euler_factor {p : ℕ} (hp : p.Prime) {z : ℂ} (hz : ‖z‖ < 1) :
    1 + (∑' k : ℕ, weight (p^(k+1))*z^(k+1)) =
      (1-(2/(p:ℂ)-1/(p:ℂ)^2)*z)/(1-z) := by
  have hn : (p:ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  have hz' : z ≠ 1 := by intro he; simp [he] at hz
  simp_rw [weight_prime_power hp, pow_succ z, ← mul_assoc]
  rw [tsum_mul_right, tsum_mul_left, tsum_geometric_of_norm_lt_one hz]
  field_simp [sub_ne_zero.mpr (Ne.symm hz')]
  ring

end GRWTSK.NumberTheory.XiCuspScatteringEuler
