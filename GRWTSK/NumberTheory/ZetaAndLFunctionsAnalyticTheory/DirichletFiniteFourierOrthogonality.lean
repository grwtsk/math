/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite Fourier results by David Loeffler retain upstream authorship and licenses. -/
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual full-residue kernel orthogonality for finite Parseval.
The scalar norm consumer retains its exact Parseval mass hypothesis;
that hypothesis is not silently declared supplied by this file.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletFiniteFourierOrthogonality
open ZMod AddChar
variable (N : ℕ) [NeZero N]

theorem standard_kernel_sum (a : ZMod N) :
    (∑ k : ZMod N, stdAddChar (a * k)) = if a = 0 then (N : ℂ) else 0 := by
  split_ifs with h
  · simp only [h, zero_mul, map_zero_eq_one, Finset.sum_const,
      Finset.card_univ, ZMod.card, nsmul_eq_mul, mul_one]
  · exact sum_eq_zero_of_ne_one (isPrimitive_stdAddChar N h)

/-- Cancel an actual positive full source mass after Parseval is supplied. -/
theorem gauss_norm_sq_of_parseval_mass (tau : ℂ) (mass : ℝ)
    (hmass : 0 < mass) (hparseval : ‖tau‖ ^ 2 * mass = (N : ℝ) * mass) :
    ‖tau‖ ^ 2 = (N : ℝ) := by
  nlinarith

theorem gauss_norm_of_parseval_mass (tau : ℂ) (mass : ℝ)
    (hmass : 0 < mass) (hparseval : ‖tau‖ ^ 2 * mass = (N : ℝ) * mass) :
    ‖tau‖ = Real.sqrt (N : ℝ) := by
  have hs := gauss_norm_sq_of_parseval_mass N tau mass hmass hparseval
  have hn : 0 ≤ (N : ℝ) := Nat.cast_nonneg N
  have hr := Real.sq_sqrt hn
  have ht := norm_nonneg tau
  have hrt := Real.sqrt_nonneg (N : ℝ)
  nlinarith

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletFiniteFourierOrthogonality
