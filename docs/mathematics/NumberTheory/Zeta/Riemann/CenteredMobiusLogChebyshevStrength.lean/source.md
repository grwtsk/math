# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevStrength

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eafcd52f6aafba2d79b9135933381a05272e3fea` · SHA-256 `fae598d7d8a2c5895a37135b54f88ad6866c4bf811d28580147af4f52e2675aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
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

/-- A global envelope supplies the dyadic-prefix premise by subtraction.
Use eta/2 globally so the factor from m<=2X is harmless. -/
theorem prefixMangoldt_of_globalChebyshev
    (hglobal : GlobalChebyshevSquareRootPlusEpsilonBound) :
    AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound := by
  intro η hη
  let δ := η / 2
  have hδ : 0 < δ := by dsimp [δ]; linarith
  obtain ⟨C, hC, x0, hb⟩ := hglobal δ hδ
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
  have hXone : (1 : ℝ) ≤ dyadicScale j := by
    exact_mod_cast (by have := historicalDyadicScale_ge_two j; omega)
  have hmle : (m : ℝ) ≤ 2 * dyadicScale j := by
    exact_mod_cast (Finset.mem_Icc.mp hm).2
  have hpowm :
      Real.rpow (m : ℝ) (1 + δ) ≤
        4 * Real.rpow (dyadicScale j : ℝ) (1 + η) := by
    have hmono :
        Real.rpow (m : ℝ) (1 + δ) ≤
          Real.rpow (2 * dyadicScale j : ℝ) (1 + δ) := by
      gcongr
      linarith
    have hsplit :
        Real.rpow (2 * dyadicScale j : ℝ) (1 + δ) =
          Real.rpow (2 : ℝ) (1 + δ) *
            Real.rpow (dyadicScale j : ℝ) (1 + δ) := by
      rw [Real.mul_rpow (by positivity) (by positivity)]
    -- For large eta, the requested target exponent is generous; replay may
    -- split eta<=2 and eta>2 to bound the fixed factor cleanly.
    rw [hsplit] at hmono
    have hxexp :
        Real.rpow (dyadicScale j : ℝ) (1 + δ) ≤
          Real.rpow (dyadicScale j : ℝ) (1 + η) :=
      Real.rpow_le_rpow_of_exponent_le hXone (by dsimp [δ]; linarith)
    have h2 : Real.rpow (2 : ℝ) (1 + δ) ≤
        4 * Real.rpow (dyadicScale j : ℝ) (η / 2) := by
      -- dyadicScale j >= 2 absorbs the eta-dependent factor.
      have hbase : (2 : ℝ) ≤ dyadicScale j := by exact_mod_cast historicalDyadicScale_ge_two j
      rw [show 1 + δ = 1 + η / 2 by rfl, Real.rpow_add (by positivity)]
      norm_num
      gcongr
    nlinarith [Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ dyadicScale j) (1 + η)]
  have hpowX :
      Real.rpow (dyadicScale j : ℝ) (1 + δ) ≤
        Real.rpow (dyadicScale j : ℝ) (1 + η) :=
    Real.rpow_le_rpow_of_exponent_le hXone (by dsimp [δ]; linarith)
  have habs :
      (chebyshevPsiError m - chebyshevPsiError (dyadicScale j))^2 ≤
        2 * chebyshevPsiError m ^ 2 +
        2 * chebyshevPsiError (dyadicScale j) ^ 2 := by
    nlinarith [sq_nonneg (chebyshevPsiError m + chebyshevPsiError (dyadicScale j))]
  nlinarith

end GRWTSK.RiemannHypothesis
```
