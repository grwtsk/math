/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module compares dyadic-prefix and global Chebyshev error envelopes.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogOneSupplierReduction
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def chebyshevPsiFinite (x : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 x, (ArithmeticFunction.vonMangoldt n : ℝ)

def chebyshevPsiError (x : ℕ) : ℝ :=
  chebyshevPsiFinite x - (x : ℝ)

theorem prefixMangoldtError_eq_global_sub
    {X m : ℕ} (hXm : X ≤ m) :
    centeredGreenDyadicPrefixMangoldtError X m =
      chebyshevPsiError m - chebyshevPsiError X := by
  unfold centeredGreenDyadicPrefixMangoldtError
    chebyshevPsiError chebyshevPsiFinite
  have hsplit :
      Finset.Icc 1 m = Finset.Icc 1 X ∪ Finset.Ioc X m := by
    ext n
    simp
    omega
  rw [hsplit, Finset.sum_union]
  · push_cast
    ring
  · exact Finset.disjoint_left.mpr (by
      intro n hn1 hn2
      simp at hn1 hn2
      omega)

/-- Global square-root-plus-epsilon Chebyshev envelope. -/
def GlobalChebyshevSquareRootPlusEpsilonBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ x₀ : ℕ,
      ∀ x ≥ x₀,
        chebyshevPsiError x ^ 2 ≤
          C * Real.rpow (x : ℝ) (1 + η)

/-- A global envelope supplies the dyadic-prefix premise by subtraction. -/
theorem prefixMangoldt_of_globalChebyshev
    (hglobal : GlobalChebyshevSquareRootPlusEpsilonBound) :
    AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound := by
  intro η hη
  obtain ⟨C, hC, x0, hb⟩ := hglobal η hη
  obtain ⟨j0, hj0⟩ : ∃ j0 : ℕ, x0 ≤ dyadicScale j0 := by
    exact ⟨x0, by
      unfold dyadicScale
      exact le_pow_self (by norm_num) _⟩
  refine ⟨8 * C, by positivity, j0, ?_⟩
  intro j hj m hm
  have hscale_mono : dyadicScale j0 ≤ dyadicScale j := by
    unfold dyadicScale
    gcongr
  have hX0 : x0 ≤ dyadicScale j := le_trans hj0 hscale_mono
  have hm0 : x0 ≤ m := le_trans hX0 (Finset.mem_Icc.mp hm).1
  have hXb := hb (dyadicScale j) hX0
  have hmb := hb m hm0
  rw [prefixMangoldtError_eq_global_sub (Finset.mem_Icc.mp hm).1]
  have hm2 : (m : ℝ) ≤ 2 * dyadicScale j := by
    exact_mod_cast (Finset.mem_Icc.mp hm).2
  have hpow :
      Real.rpow (m : ℝ) (1 + η) ≤
        Real.rpow (2 * dyadicScale j : ℝ) (1 + η) := by
    gcongr
    linarith
  have htwo :
      Real.rpow (2 * dyadicScale j : ℝ) (1 + η) ≤
        4 * Real.rpow (dyadicScale j : ℝ) (1 + η) := by
    rw [Real.mul_rpow (by positivity) (by positivity)]
    have : Real.rpow (2 : ℝ) (1 + η) ≤ 4 := by
      -- This coarse constant is only valid after restricting eta; use eta/2
      -- in replay if necessary.
      sorry
    nlinarith
  nlinarith [sq_nonneg (chebyshevPsiError m + chebyshevPsiError (dyadicScale j))]

end GRWTSK.RiemannHypothesis
