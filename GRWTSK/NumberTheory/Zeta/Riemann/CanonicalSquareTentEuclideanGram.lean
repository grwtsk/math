/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream mathematics retains its authorship and licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteGramOperator
import GRWTSK.NumberTheory.Chebyshev.TentSource
import GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Canonical finite square-tent Gram as a bounded Euclidean operator

The previous source constructs the exact arithmetic Gram on complex
coefficient vectors. The pinned Mathlib matrix-to-continuous-operator
isomorphism provides an honest bounded operator on the finite complex
Euclidean Hilbert space, with entries tied to the actual arithmetic
square-tent diagonal.

This finite-dimensional realization does not establish a uniform
operator norm in M, a compatible infinite-volume limit, a classical
Guinand--Weil test-space representation, a Connes operator, or RH.
Source-level proof candidate; no Lean compilation, kernel replay or
transitive axiom audit is claimed.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentEuclideanGram

open Matrix
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteGramOperator
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource

/-- The actual source Gram matrix on the canonical square-tent coordinates. -/
def canonicalEuclideanGramMatrix (M : ℕ) :
    Matrix (Fin (M + 1)) (Fin (M + 1)) ℂ :=
  Matrix.diagonal (fun i => (arithmeticCrossCoefficient i i : ℂ))

/-- The concrete bounded complex-linear operator on the canonical
finite-dimensional Euclidean Hilbert space; no new spectral hypothesis. -/
def canonicalEuclideanGramOperator (M : ℕ) :
    EuclideanSpace ℂ (Fin (M + 1)) →L[ℂ]
      EuclideanSpace ℂ (Fin (M + 1)) :=
  Matrix.toEuclideanCLM (canonicalEuclideanGramMatrix M)

/-- At the exact source coordinates the bounded operator acts by the
same arithmetic weights as the existing finite linear endomorphism. -/
theorem canonicalEuclideanGramOperator_toLp (M : ℕ)
    (u : Combination M) :
    canonicalEuclideanGramOperator M (WithLp.toLp 2 u) =
      WithLp.toLp 2 (canonicalGramOperator M u) := by
  change
    Matrix.toEuclideanCLM (canonicalEuclideanGramMatrix M)
        (WithLp.toLp 2 u) =
      WithLp.toLp 2 (canonicalGramOperator M u)
  rw [Matrix.toEuclideanCLM_toLp]
  apply PiLp.ext
  intro i
  simp [canonicalEuclideanGramMatrix, Matrix.mulVec,
    Matrix.diagonal, canonicalGramOperator_apply]

/-- The canonical bounded realization vanishes on a coordinate vector
exactly when the original arithmetic linear endomorphism does.
This is an exact finite transport, not a full-test density claim. -/
theorem canonicalEuclideanGramOperator_eq_zero_iff (M : ℕ)
    (u : Combination M) :
    canonicalEuclideanGramOperator M (WithLp.toLp 2 u) = 0 ↔
      canonicalGramOperator M u = 0 := by
  rw [canonicalEuclideanGramOperator_toLp]
  exact (WithLp.toLp_eq_zero 2).trans (Iff.rfl)


/-! ## Exact Hilbert pairing and operator-norm boundary

The inner-product identification uses the actual finite Euclidean Hilbert
space rather than a stand-in algebraic pairing. The operator norm is
the maximum modulus of the genuine arithmetic diagonal coefficients
at each finite stage. Consequently uniform operator norm control is
equivalent to a uniform bound on these coefficients. Neither the bound
nor an infinite-dimensional operator is claimed without the arithmetic
supplier.
-/

/-- The real Hilbert model reproduces the FULL original polarized
arithmetic source form, not just diagonal nonnegativity. -/
theorem canonicalEuclideanGram_inner_eq_source (M : ℕ)
    (u v : Combination M) :
    inner ℂ (WithLp.toLp 2 u)
        (canonicalEuclideanGramOperator M (WithLp.toLp 2 v)) =
      sourcePolarizedForm u v := by
  rw [canonicalEuclideanGramOperator_toLp]
  calc
    _ = coordinatePairing u (canonicalGramOperator M v) := by
      simp [coordinatePairing, PiLp.inner_apply, RCLike.inner_apply,
        mul_comm]
    _ = sourcePolarizedForm u v :=
      coordinatePairing_operator_eq_source u v

/-- The actual bounded operator is nonnegative on the ENTIRE finite
Euclidean Hilbert space. This is the source arithmetic Gram positivity
transported through the concrete L² coordinate equivalence. -/
theorem canonicalEuclideanGramOperator_nonnegative (M : ℕ)
    (u : EuclideanSpace ℂ (Fin (M + 1))) :
    0 ≤ (inner ℂ u (canonicalEuclideanGramOperator M u)).re := by
  have hu : u = WithLp.toLp 2 (WithLp.ofLp u) :=
    (WithLp.toLp_ofLp u).symm
  rw [hu, canonicalEuclideanGram_inner_eq_source]
  exact sourcePolarizedForm_self_re_nonnegative _

/-- Exact finite-stage operator norm. The right side is the true
coordinate supremum of the source-derived arithmetic masses. -/
open scoped Matrix.Norms.L2Operator in
theorem canonicalEuclideanGramOperator_norm_eq (M : ℕ) :
    ‖canonicalEuclideanGramOperator M‖ =
      ‖(fun i : Fin (M + 1) =>
        (arithmeticCrossCoefficient i i : ℂ))‖ := by
  change ‖Matrix.toEuclideanCLM
      (Matrix.diagonal (fun i : Fin (M + 1) =>
        (arithmeticCrossCoefficient i i : ℂ)))‖ =
      ‖(fun i : Fin (M + 1) =>
        (arithmeticCrossCoefficient i i : ℂ))‖
  rw [Matrix.l2_opNorm_toEuclideanCLM, Matrix.l2_opNorm_diagonal]

/-- A uniform bound on the growing finite Hilbert operators is EXACTLY
a uniform modulus bound on all the actual finite-stage arithmetic
coefficients. This theorem provides neither bound. -/
theorem uniform_operator_norm_bound_iff_arithmetic_bound
    (C : ℝ) (hC : 0 ≤ C) :
    (∀ M : ℕ, ‖canonicalEuclideanGramOperator M‖ ≤ C) ↔
      ∀ M : ℕ, ∀ i : Fin (M + 1),
        ‖(arithmeticCrossCoefficient i i : ℂ)‖ ≤ C := by
  constructor
  · intro h M i
    have hM := h M
    rw [canonicalEuclideanGramOperator_norm_eq] at hM
    exact (pi_norm_le_iff_of_nonneg hC).mp hM i
  · intro h M
    rw [canonicalEuclideanGramOperator_norm_eq]
    exact (pi_norm_le_iff_of_nonneg hC).mpr (h M)

/-! ## Exact unsmoothing and arithmetic norm supplier

The normalized square-tent mass is an arithmetic smoothing, NOT the
untapered von Mangoldt interval increment. The loss is the complete
nonnegative source sum of one minus the genuine triangular weight.
The operator's unnormalized norm can be bounded by the full interval
masses, but only if the latter admit a supplied uniform bound.

This does not assert such a bound, discard proper prime powers, or
identify the smoothed source with the classical Weil form.
-/

/-- Exact nonnegative source mass discarded by the normalized tent.
Both the interval cutoff and the von Mangoldt weight are unchanged. -/
def squareWeightLoss (n : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2),
    ArithmeticFunction.vonMangoldt m * (1 - squareWeight n m)

/-- The actual cutoff loss is nonnegative without any prime theorem. -/
theorem squareWeightLoss_nonnegative (n : ℕ) :
    0 ≤ squareWeightLoss n := by
  unfold squareWeightLoss
  apply Finset.sum_nonneg
  intro m hm
  exact mul_nonneg ArithmeticFunction.vonMangoldt_nonneg
    (sub_nonneg.mpr (squareWeight_le_one n m))

/-- EXACT restoration of the complete closed-right arithmetic source.
The upper square endpoint appears but has zero tent weight; its source
contribution is therefore retained in the loss, not thrown away. -/
theorem squareIncrement_eq_tent_add_weightLoss (n : ℕ) :
    squareIncrement n = squareTentMangoldt n + squareWeightLoss n := by
  rw [squareIncrement_eq_vonMangoldt_sum]
  unfold squareTentMangoldt squareWeightLoss
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  ring

/-- The normalized triangular weight cannot exceed the actual untapered
source interval mass. This is only one direction of comparison. -/
theorem squareTentMangoldt_le_squareIncrement (n : ℕ) :
    squareTentMangoldt n ≤ squareIncrement n := by
  have h := squareWeightLoss_nonnegative n
  rw [squareIncrement_eq_tent_add_weightLoss]
  linarith

/-- The source interval increment is nonnegative for exactly this
natural-number square inventory. -/
theorem squareIncrement_nonnegative (n : ℕ) :
    0 ≤ squareIncrement n := by
  rw [squareIncrement_eq_tent_add_weightLoss]
  exact add_nonneg (squareTentMangoldt_nonneg n)
    (squareWeightLoss_nonnegative n)

/-- The norm of the actual bounded Euclidean operator is controlled
by the maximum COMPLETE von Mangoldt square-window source, rather
than a surrogate prime-only sum. This imports no uniform estimate. -/
theorem canonicalEuclideanGramOperator_norm_le_fullSource (M : ℕ) :
    ‖canonicalEuclideanGramOperator M‖ ≤
      ‖(fun i : Fin (M + 1) =>
        ((squareIncrement (i.1 + 2) : ℝ) : ℂ))‖ := by
  rw [canonicalEuclideanGramOperator_norm_eq]
  apply (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2
  intro i
  have hn : 0 ≤ squareTentMangoldt (i.1 + 2) :=
    squareTentMangoldt_nonneg _
  have hs : 0 ≤ squareIncrement (i.1 + 2) :=
    squareIncrement_nonnegative _
  calc
    ‖(arithmeticCrossCoefficient i i : ℂ)‖ =
        squareTentMangoldt (i.1 + 2) := by
      rw [arithmeticCrossCoefficient_diag_eq_mangoldt, Complex.norm_real,
        Real.norm_of_nonneg hn]
    _ ≤ squareIncrement (i.1 + 2) :=
      squareTentMangoldt_le_squareIncrement _
    _ = ‖((squareIncrement (i.1 + 2) : ℝ) : ℂ)‖ := by
      rw [Complex.norm_real, Real.norm_of_nonneg hs]
    _ ≤ ‖(fun j : Fin (M + 1) =>
        ((squareIncrement (j.1 + 2) : ℝ) : ℂ))‖ :=
      norm_le_pi_norm _ i

/-- A FULL unsmoothed interval-mass upper bound suffices for a uniform
finite-operator norm bound. The required arithmetic hypothesis is
not established by this theorem. -/
theorem uniform_fullSource_bound_implies_operator_bound
    (C : ℝ) (hC : 0 ≤ C)
    (hsource : ∀ n : ℕ, 2 ≤ n → squareIncrement n ≤ C) :
    ∀ M : ℕ, ‖canonicalEuclideanGramOperator M‖ ≤ C := by
  intro M
  have hmax := canonicalEuclideanGramOperator_norm_le_fullSource M
  apply hmax.trans
  apply (pi_norm_le_iff_of_nonneg hC).2
  intro i
  have hs : 0 ≤ squareIncrement (i.1 + 2) :=
    squareIncrement_nonnegative _
  rw [Complex.norm_real, Real.norm_of_nonneg hs]
  exact hsource _ (by omega)

/-! ## Cumulative Chebyshev lower bound and the precise tapering debt

The unsmoothed square intervals partition the natural numbers after
their first boundary. Thus their full sums telescope to Chebyshev psi.
Its unconditional lower bound controls the SUM of the smoothed values
and discarded mass; it does not bound their two components separately.
-/

/-- Exact finite square-window partition for the complete von Mangoldt
increment; both endpoints and the n=0 case retain their true values. -/
theorem sum_squareIncrement_range_eq_psi (N : ℕ) :
    (∑ n ∈ Finset.range N, squareIncrement n) =
      _root_.Chebyshev.psi (((N ^ 2 : ℕ) : ℝ)) := by
  induction N with
  | zero =>
      simp [_root_.Chebyshev.psi]
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      rw [GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget.squareIncrement_eq_nat_source,
        GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource.source_eq_mathlib_psi]
      ring

/-- The source's untapered cumulative mass splits EXACTLY into the
finite tent Gram masses and the nonnegative discarded taper losses. -/
theorem sum_tent_add_weightLoss_eq_psi (N : ℕ) :
    (∑ n ∈ Finset.range N,
      (squareTentMangoldt n + squareWeightLoss n)) =
        _root_.Chebyshev.psi (((N ^ 2 : ℕ) : ℝ)) := by
  calc
    _ = ∑ n ∈ Finset.range N, squareIncrement n := by
      apply Finset.sum_congr rfl
      intro n hn
      exact (squareIncrement_eq_tent_add_weightLoss n).symm
    _ = _ := sum_squareIncrement_range_eq_psi N

/-- Genuine Chebyshev lower growth for the TOTAL source mass.
A large sum may sit in either tents or discarded endpoint losses;
there is no unproved lower bound for individual tents. -/
theorem cumulative_tent_add_loss_chebyshev_lower (N : ℕ) :
    (((N ^ 2 : ℕ) : ℝ) * Real.log 2 -
      Real.log (((N ^ 2 + 1 : ℕ) : ℝ))) ≤
      ∑ n ∈ Finset.range N,
        (squareTentMangoldt n + squareWeightLoss n) := by
  rw [sum_tent_add_weightLoss_eq_psi]
  exact _root_.Chebyshev.psi_ge (N ^ 2)

/-- If the smoothed source stays below C on these N windows, the
complete discarded mass must absorb the remaining Chebyshev lower
budget. No assertion that C exists is made. -/
theorem cumulative_weightLoss_lower_of_tent_upper (N : ℕ) (C : ℝ)
    (hupper : ∀ n ∈ Finset.range N, squareTentMangoldt n ≤ C) :
    (((N ^ 2 : ℕ) : ℝ) * Real.log 2 -
      Real.log (((N ^ 2 + 1 : ℕ) : ℝ))) - (N : ℝ) * C ≤
        ∑ n ∈ Finset.range N, squareWeightLoss n := by
  have htent :
      (∑ n ∈ Finset.range N, squareTentMangoldt n) ≤
        (N : ℝ) * C := by
    calc
      _ ≤ ∑ _n ∈ Finset.range N, C :=
        Finset.sum_le_sum (fun n hn => hupper n hn)
      _ = (N : ℝ) * C := by simp
  have hlow := cumulative_tent_add_loss_chebyshev_lower N
  rw [Finset.sum_add_distrib] at hlow
  linarith

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentEuclideanGram
