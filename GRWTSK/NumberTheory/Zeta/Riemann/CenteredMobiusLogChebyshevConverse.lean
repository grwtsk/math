/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module drafts the converse dyadic-prefix to global Chebyshev envelope.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevStrength
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Error at a dyadic scale. -/
def dyadicChebyshevError (j : ℕ) : ℝ :=
  chebyshevPsiError (dyadicScale j)

theorem dyadicChebyshevError_increment
    (j : ℕ) :
    dyadicChebyshevError (j + 1) - dyadicChebyshevError j =
      centeredGreenDyadicPrefixMangoldtError
        (dyadicScale j) (2 * dyadicScale j) := by
  unfold dyadicChebyshevError
  rw [← prefixMangoldtError_eq_global_sub]
  · congr 2
    unfold dyadicScale
    ring
  · omega

/-- Finite telescoping of dyadic error increments. -/
theorem dyadicChebyshevError_eq_base_add_sum
    (j0 j : ℕ) (h : j0 ≤ j) :
    dyadicChebyshevError j =
      dyadicChebyshevError j0 +
      ∑ r ∈ Finset.Ico j0 j,
        centeredGreenDyadicPrefixMangoldtError
          (dyadicScale r) (2 * dyadicScale r) := by
  induction j, h using Nat.le_induction with
  | base => simp
  | succ j hj ih =>
      rw [dyadicChebyshevError_increment]
      rw [Finset.sum_Ico_succ_top hj]
      linarith

/-- Geometric domination of accumulated dyadic square-root errors. -/
theorem abs_dyadicChebyshevError_le_of_prefix
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j0 : ℕ,
      ∀ j ≥ j0,
        |dyadicChebyshevError j| ≤
          C * Real.rpow (dyadicScale j : ℝ) ((1 + η) / 2) := by
  obtain ⟨K, hK, j0, hb⟩ := hprefix η hη
  let A : ℝ := Real.sqrt K
  let B : ℝ := |dyadicChebyshevError j0|
  refine ⟨B + 4 * A, by positivity, j0, ?_⟩
  intro j hj
  rw [dyadicChebyshevError_eq_base_add_sum j0 j hj]
  have hinc : ∀ r ∈ Finset.Ico j0 j,
      |centeredGreenDyadicPrefixMangoldtError
          (dyadicScale r) (2 * dyadicScale r)| ≤
        A * Real.rpow (dyadicScale r : ℝ) ((1 + η) / 2) := by
    intro r hr
    have hrj0 := (Finset.mem_Ico.mp hr).1
    have hs := hb r hrj0 (2 * dyadicScale r) (by simp)
    have hK0 : 0 ≤ K := hK
    have hrpow0 :
        0 ≤ Real.rpow (dyadicScale r : ℝ) (1 + η) := by positivity
    have hA2 : A^2 = K := by
      dsimp [A]
      exact Real.sq_sqrt hK0
    have hpowsq :
        (Real.rpow (dyadicScale r : ℝ) ((1 + η) / 2))^2 =
          Real.rpow (dyadicScale r : ℝ) (1 + η) := by
      rw [← Real.rpow_mul (by positivity : (0 : ℝ) ≤ dyadicScale r)]
      congr 1
      ring
    nlinarith [sq_abs
      (centeredGreenDyadicPrefixMangoldtError
        (dyadicScale r) (2 * dyadicScale r))]
  calc
    |dyadicChebyshevError j0 +
      ∑ r ∈ Finset.Ico j0 j,
        centeredGreenDyadicPrefixMangoldtError
          (dyadicScale r) (2 * dyadicScale r)| ≤
      B + ∑ r ∈ Finset.Ico j0 j,
        A * Real.rpow (dyadicScale r : ℝ) ((1 + η) / 2) := by
      exact (abs_add_le _ _).trans
        (add_le_add_left
          ((abs_sum_le_sum_abs _ _).trans
            (Finset.sum_le_sum (fun r hr => hinc r hr))) B)
    _ ≤ (B + 4 * A) *
        Real.rpow (dyadicScale j : ℝ) ((1 + η) / 2) := by
      -- Geometric series in powers 2^((1+eta)/2), dominated by its last term.
      have hgeom :
          ∑ r ∈ Finset.Ico j0 j,
            Real.rpow (dyadicScale r : ℝ) ((1 + η) / 2) ≤
          4 * Real.rpow (dyadicScale j : ℝ) ((1 + η) / 2) := by
        -- replay may replace this with a standard geometric-sum lemma.
        unfold dyadicScale
        sorry
      have hpowone :
          1 ≤ Real.rpow (dyadicScale j : ℝ) ((1 + η) / 2) := by
        apply Real.one_le_rpow
        · exact_mod_cast historicalDyadicScale_ge_two j
        · linarith
      nlinarith

end GRWTSK.RiemannHypothesis
