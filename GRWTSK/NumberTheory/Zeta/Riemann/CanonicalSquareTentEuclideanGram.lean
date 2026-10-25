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

/-! ## Exact first absolute moment of the discarded source

On the actual closed-right square interval the tent is the affine
profile 1 - |m-center|/radius; the expression remains valid at the
right endpoint where the weight is zero. The discarded mass therefore
equals the complete first absolute moment divided by the exact radius.
-/

/-- Geometry of the original normalized tent at every actual integer
in the source inventory, including the closed-right endpoint. -/
theorem squareWeight_eq_one_sub_abs_div_radius
    (n m : ℕ) (hm : m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2)) :
    squareWeight n m =
      1 - |(m : ℝ) - squareCenter n| / squareRadius n := by
  have hb := Finset.mem_Ioc.mp hm
  have hleft : (((n ^ 2 : ℕ) : ℝ)) ≤ (m : ℝ) := by
    exact_mod_cast hb.1.le
  have hright : (m : ℝ) ≤ ((((n + 1) ^ 2 : ℕ) : ℝ)) := by
    exact_mod_cast hb.2
  rw [← center_sub_radius n] at hleft
  rw [← center_add_radius n] at hright
  have habs :
      |(m : ℝ) - squareCenter n| ≤ squareRadius n := by
    apply abs_le.mpr
    constructor <;> linarith
  have hratio :
      0 ≤ 1 - |(m : ℝ) - squareCenter n| / squareRadius n := by
    apply sub_nonneg.mpr
    exact (div_le_one (squareRadius_pos n)).mpr habs
  unfold squareWeight GRWTSK.Analysis.RealAnalysis.TentWeight.tent
  exact max_eq_right hratio

/-- Complete centered absolute first moment of actual von Mangoldt
mass on the same square-interval inventory. The proper prime-power and
upper endpoint contributions are not discarded. -/
def squareAbsoluteMoment (n : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2),
    ArithmeticFunction.vonMangoldt m * |(m : ℝ) - squareCenter n|

/-- First absolute moment is nonnegative. -/
theorem squareAbsoluteMoment_nonnegative (n : ℕ) :
    0 ≤ squareAbsoluteMoment n := by
  unfold squareAbsoluteMoment
  apply Finset.sum_nonneg
  intro m hm
  exact mul_nonneg ArithmeticFunction.vonMangoldt_nonneg (abs_nonneg _)

/-- Exact equality: the loss is the genuine centered first absolute
moment divided by the source radius, not a fitted error allowance. -/
theorem squareWeightLoss_eq_absoluteMoment_div_radius (n : ℕ) :
    squareWeightLoss n = squareAbsoluteMoment n / squareRadius n := by
  unfold squareWeightLoss squareAbsoluteMoment
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro m hm
  rw [squareWeight_eq_one_sub_abs_div_radius n m hm]
  ring

/-- An upper bound on the discarded weight is equivalent, with no
loss of constants, to a centered absolute-moment upper bound. -/
theorem squareWeightLoss_le_iff_absoluteMoment_le
    (n : ℕ) (B : ℝ) :
    squareWeightLoss n ≤ B ↔
      squareAbsoluteMoment n ≤ B * squareRadius n := by
  rw [squareWeightLoss_eq_absoluteMoment_div_radius]
  exact (div_le_iff₀ (squareRadius_pos n))

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

/-- Exact source mass as complete window mass minus its actual
centered first absolute moment. The source center/radius cannot be
replaced with an arbitrary comparison observable. -/
theorem squareTentMangoldt_eq_squareIncrement_sub_absoluteMoment
    (n : ℕ) :
    squareTentMangoldt n =
      squareIncrement n - squareAbsoluteMoment n / squareRadius n := by
  have h := squareIncrement_eq_tent_add_weightLoss n
  rw [squareWeightLoss_eq_absoluteMoment_div_radius] at h
  linarith

/-! ## Coarse unconditional moment budget from Mathlib Chebyshev

The pinned Mathlib Chebyshev upper bound controls the COMPLETE cumulative
von Mangoldt mass at the upper square, hence the actual taper loss.
This bound is quadratic in the square-root window index; it is not
uniform in the stage and provides no fine short-interval asymptotic.
-/

/-- Actual taper loss is bounded by the entire unsmoothed window mass,
since the retained tent mass is nonnegative. -/
theorem squareWeightLoss_le_squareIncrement (n : ℕ) :
    squareWeightLoss n ≤ squareIncrement n := by
  have h := squareIncrement_eq_tent_add_weightLoss n
  linarith [squareTentMangoldt_nonneg n]

/-- An unconditional but coarse bound on the discarded mass using
Mathlib's cumulative Chebyshev inequality. No prime distribution
claim on individual short intervals is introduced. -/
theorem squareWeightLoss_le_chebyshev_quadratic (n : ℕ) :
    squareWeightLoss n ≤
      (Real.log 4 + 4) * ((((n + 1) ^ 2 : ℕ) : ℝ)) := by
  have hwindow : squareIncrement n ≤
      _root_.Chebyshev.psi ((((n + 1) ^ 2 : ℕ) : ℝ)) := by
    rw [GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget.squareIncrement_eq_nat_source]
    simp only [GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource.source_eq_mathlib_psi]
    have hleft := _root_.Chebyshev.psi_nonneg ((((n ^ 2 : ℕ) : ℝ)))
    linarith
  have hglobal := _root_.Chebyshev.psi_le_const_mul_self
    (x := ((((n + 1) ^ 2 : ℕ) : ℝ))) (by positivity)
  exact (squareWeightLoss_le_squareIncrement n).trans
    (hwindow.trans hglobal)

/-- Equivalent first-absolute-moment budget, retaining the full
radius factor and upper-square endpoint contributions. -/
theorem squareAbsoluteMoment_le_chebyshev_quadratic_radius (n : ℕ) :
    squareAbsoluteMoment n ≤
      ((Real.log 4 + 4) * ((((n + 1) ^ 2 : ℕ) : ℝ))) *
        squareRadius n := by
  exact (squareWeightLoss_le_iff_absoluteMoment_le n _).mp
    (squareWeightLoss_le_chebyshev_quadratic n)

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
      rw [GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget.squareIncrement_eq_nat_source]
      simp only [GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource.source_eq_mathlib_psi]
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

/-! ## Exact centered-moment deficit criteria for Gram operators

A large first absolute moment of complete von Mangoldt mass means the
actual triangularly weighted source is small. The two implications below
have exact constants and preserve the positive square radius. In the
canonical finite Euclidean Gram, this gives a direct characterization of
operator norm bounds and of strict injectivity, without introducing any
short-interval theorem or an infinite-volume completion.
-/

/-- The exact pointwise arithmetic obstruction to a bounded tent mass.
The inequality reverses because the centered moment is subtracted. -/
theorem squareTentMangoldt_le_iff_moment_lower
    (n : ℕ) (C : ℝ) :
    squareTentMangoldt n ≤ C ↔
      (squareIncrement n - C) * squareRadius n ≤
        squareAbsoluteMoment n := by
  rw [squareTentMangoldt_eq_squareIncrement_sub_absoluteMoment]
  constructor
  · intro h
    have hdiv :
        squareIncrement n - C ≤
          squareAbsoluteMoment n / squareRadius n := by linarith
    exact (le_div_iff₀ (squareRadius_pos n)).mp hdiv
  · intro h
    have hdiv :
        squareIncrement n - C ≤
          squareAbsoluteMoment n / squareRadius n :=
      (le_div_iff₀ (squareRadius_pos n)).mpr h
    linarith

/-- Positive actual tent mass is equivalent to a strict shortfall of
the genuine centered moment from radius times full interval mass. -/
theorem squareTentMangoldt_pos_iff_moment_strict
    (n : ℕ) :
    0 < squareTentMangoldt n ↔
      squareAbsoluteMoment n <
        squareIncrement n * squareRadius n := by
  rw [squareTentMangoldt_eq_squareIncrement_sub_absoluteMoment]
  constructor
  · intro h
    have hdiv :
        squareAbsoluteMoment n / squareRadius n <
          squareIncrement n := by linarith
    exact (div_lt_iff₀ (squareRadius_pos n)).mp hdiv
  · intro h
    have hdiv :
        squareAbsoluteMoment n / squareRadius n <
          squareIncrement n :=
      (div_lt_iff₀ (squareRadius_pos n)).mpr h
    linarith

/-- EXACT criterion for a bound on the concrete finite Hilbert
operator, with its original stage index i+2. The source remains
the full von Mangoldt mass, including proper prime powers. -/
theorem canonicalEuclideanGramOperator_norm_le_iff_moment_lower
    (M : ℕ) (C : ℝ) (hC : 0 ≤ C) :
    ‖canonicalEuclideanGramOperator M‖ ≤ C ↔
      ∀ i : Fin (M + 1),
        (squareIncrement (i.1 + 2) - C) *
          squareRadius (i.1 + 2) ≤
            squareAbsoluteMoment (i.1 + 2) := by
  rw [canonicalEuclideanGramOperator_norm_eq]
  rw [pi_norm_le_iff_of_nonneg hC]
  constructor
  · intro h i
    apply (squareTentMangoldt_le_iff_moment_lower (i.1 + 2) C).mp
    have hnonneg := squareTentMangoldt_nonneg (i.1 + 2)
    have hbound := h i
    rwa [arithmeticCrossCoefficient_diag_eq_mangoldt,
      Complex.norm_real, Real.norm_of_nonneg hnonneg] at hbound
  · intro h i
    have ht :=
      (squareTentMangoldt_le_iff_moment_lower (i.1 + 2) C).mpr (h i)
    have hnonneg := squareTentMangoldt_nonneg (i.1 + 2)
    simpa only [arithmeticCrossCoefficient_diag_eq_mangoldt,
      Complex.norm_real, Real.norm_of_nonneg hnonneg] using ht

/-- The complete family of finite Euclidean Gram operators is
bounded by C EXACTLY when every genuine source square window n >= 2
has sufficient centered first absolute moment to cancel all but C
of its full interval mass. This theorem does NOT supply such a C. -/
theorem uniform_operator_norm_bound_iff_global_moment_lower
    (C : ℝ) (hC : 0 ≤ C) :
    (∀ M : ℕ, ‖canonicalEuclideanGramOperator M‖ ≤ C) ↔
      ∀ n : ℕ, 2 ≤ n →
        (squareIncrement n - C) * squareRadius n ≤
          squareAbsoluteMoment n := by
  constructor
  · intro h M hM
    have hbound :=
      (canonicalEuclideanGramOperator_norm_le_iff_moment_lower
        (M - 2) C hC).mp (h (M - 2))
    have hidx : M - 2 + 2 = M := by omega
    simpa only [Fin.val_mk, hidx] using
      hbound ⟨M - 2, Nat.lt_succ_self (M - 2)⟩
  · intro h M
    apply (canonicalEuclideanGramOperator_norm_le_iff_moment_lower
      M C hC).mpr
    intro i
    exact h (i.1 + 2) (by omega)

/-- Exact strict first-moment criterion for injectivity of the
SOURCE finite Gram. Neither direction assumes arithmetic positivity
beyond the coefficients already proved nonnegative in the source. -/
theorem canonicalGramOperator_injective_iff_moment_strict (M : ℕ) :
    Function.Injective (canonicalGramOperator M) ↔
      ∀ i : Fin (M + 1),
        squareAbsoluteMoment (i.1 + 2) <
          squareIncrement (i.1 + 2) *
            squareRadius (i.1 + 2) := by
  rw [canonicalGramOperator_injective_iff_square_masses_positive]
  exact forall_congr' (fun i =>
    squareTentMangoldt_pos_iff_moment_strict (i.1 + 2))

/-- The identical strict gap makes the finite continuous Hilbert
operator injective via its exact coordinate realization. This is
not an infinite-dimensional spectral realization. -/
theorem canonicalEuclideanGramOperator_injective_of_moment_strict
    (M : ℕ)
    (hgap : ∀ i : Fin (M + 1),
        squareAbsoluteMoment (i.1 + 2) <
          squareIncrement (i.1 + 2) *
            squareRadius (i.1 + 2)) :
    Function.Injective (canonicalEuclideanGramOperator M) := by
  have hsource :
      Function.Injective (canonicalGramOperator M) :=
    (canonicalGramOperator_injective_iff_moment_strict M).mpr hgap
  intro x y hxy
  have hxy' :
      canonicalEuclideanGramOperator M
          (WithLp.toLp 2 (WithLp.ofLp x)) =
        canonicalEuclideanGramOperator M
          (WithLp.toLp 2 (WithLp.ofLp y)) := by
    simpa only [WithLp.toLp_ofLp] using hxy
  rw [canonicalEuclideanGramOperator_toLp,
    canonicalEuclideanGramOperator_toLp] at hxy'
  exact WithLp.ofLp_injective 2
    (hsource (WithLp.toLp_injective 2 hxy'))

/-! ## Relative centered-moment gap: quantitative supplier interface

A relative deficit from the maximal possible first moment produces
a proportionate lower bound for the actual tapered von Mangoldt mass.
This is a conditional inequality, not a proved distribution estimate.
-/

/-- An explicit relative moment deficit yields an exact positive
fraction of the complete source interval mass. -/
theorem squareTentMangoldt_ge_fraction_of_moment_gap
    (n : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hgap : squareAbsoluteMoment n ≤
      (1 - δ) * squareRadius n * squareIncrement n) :
    δ * squareIncrement n ≤ squareTentMangoldt n := by
  rw [squareTentMangoldt_eq_squareIncrement_sub_absoluteMoment]
  have hr := squareRadius_pos n
  have hdiv : squareAbsoluteMoment n / squareRadius n ≤
      (1 - δ) * squareIncrement n := by
    apply (div_le_iff₀ hr).mpr
    nlinarith [hgap]
  nlinarith

/-- A uniform relative moment deficit and a lower bound on complete
interval mass supply the corresponding finite Gram lower bound. -/
theorem squareTentMangoldt_ge_of_relative_gap_and_source_lower
    (n : ℕ) (δ B : ℝ) (hδ : 0 ≤ δ)
    (hB : B ≤ squareIncrement n)
    (hgap : squareAbsoluteMoment n ≤
      (1 - δ) * squareRadius n * squareIncrement n) :
    δ * B ≤ squareTentMangoldt n := by
  exact (mul_le_mul_of_nonneg_left hB hδ).trans
    (squareTentMangoldt_ge_fraction_of_moment_gap n δ hδ hgap)

/-! ## A certified source witness for a relative moment deficit

Rather than postulating a relative gap, a single actual von Mangoldt
term in the open square window supplies an explicit (possibly small)
gap. This is not a uniform-in-n estimate.
-/

/-- A positive term in the actual square-window inventory forces a
strict first-moment gap, retaining prime powers and both cutoffs. -/
theorem squareAbsoluteMoment_lt_radius_mul_source_of_witness
    (n m : ℕ)
    (hm : m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2))
    (hinside : m < (n + 1) ^ 2)
    (hLambda : 0 < ArithmeticFunction.vonMangoldt m) :
    squareAbsoluteMoment n <
      squareRadius n * squareIncrement n := by
  have hw : 0 < squareWeight n m :=
    (squareWeight_pos_iff n m).mpr
      ⟨(Finset.mem_Ioc.mp hm).1, hinside⟩
  have hterm : 0 < ArithmeticFunction.vonMangoldt m * squareWeight n m :=
    mul_pos hLambda hw
  have hmass : 0 < squareTentMangoldt n := by
    unfold squareTentMangoldt
    exact Finset.sum_pos' (fun k hk =>
      mul_nonneg ArithmeticFunction.vonMangoldt_nonneg
        (squareWeight_nonneg n k)) ⟨m, hm, hterm⟩
  have hgap := (squareTentMangoldt_pos_iff_moment_strict n).mp hmass
  simpa only [mul_comm] using hgap

/-! ## Quantitative contribution of a genuine interior source witness

A single interior positive von Mangoldt term gives an explicit lower
bound on the *absolute* centered-moment deficit. This is not a
uniform relative deficit without additional arithmetic estimates.
-/

/-- Every actual interior witness contributes its own nonnegative
tent-weighted von Mangoldt mass to the total source observable. -/
theorem squareTentMangoldt_ge_witness_term
    (n m : ℕ)
    (hm : m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2)) :
    ArithmeticFunction.vonMangoldt m * squareWeight n m ≤
      squareTentMangoldt n := by
  unfold squareTentMangoldt
  exact Finset.single_le_sum (fun k hk =>
    mul_nonneg ArithmeticFunction.vonMangoldt_nonneg
      (squareWeight_nonneg n k)) hm

/-- The exact centered-moment deficit is at least the positive
witness contribution multiplied by the original square radius. -/
theorem squareMoment_deficit_ge_witness_term
    (n m : ℕ)
    (hm : m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2)) :
    squareRadius n * squareIncrement n - squareAbsoluteMoment n ≥
      squareRadius n *
        (ArithmeticFunction.vonMangoldt m * squareWeight n m) := by
  have hsource := squareTentMangoldt_eq_squareIncrement_sub_absoluteMoment n
  have hw := squareTentMangoldt_ge_witness_term n m hm
  have hr := squareRadius_pos n
  have hscaled := mul_le_mul_of_nonneg_left hw hr.le
  rw [hsource] at hscaled
  have hidentity :
      squareRadius n *
        (squareIncrement n - squareAbsoluteMoment n / squareRadius n) =
      squareRadius n * squareIncrement n - squareAbsoluteMoment n := by
    field_simp [ne_of_gt hr]
  linarith

/-! ## Additive finite witness budgets

A genuine subset of the exact square-window inventory contributes
additively to the tapered von Mangoldt mass. This avoids treating
individual witness lower bounds as independent or double counting.
-/

/-- Every finite subset of the genuine square-window inventory
contributes its full weighted mass to the canonical tent observable. -/
theorem squareTentMangoldt_ge_witness_finset
    (n : ℕ) (S : Finset ℕ)
    (hS : S ⊆ Finset.Ioc (n ^ 2) ((n + 1) ^ 2)) :
    (∑ m ∈ S, ArithmeticFunction.vonMangoldt m * squareWeight n m) ≤
      squareTentMangoldt n := by
  unfold squareTentMangoldt
  exact Finset.sum_le_sum_of_subset_of_nonneg hS
    (fun m hm hnot =>
      mul_nonneg ArithmeticFunction.vonMangoldt_nonneg
        (squareWeight_nonneg n m))

/-- A finite set of distinct genuine witnesses gives an additive
lower bound for the actual centered-moment deficit. -/
theorem squareMoment_deficit_ge_witness_finset
    (n : ℕ) (S : Finset ℕ)
    (hS : S ⊆ Finset.Ioc (n ^ 2) ((n + 1) ^ 2)) :
    squareRadius n * squareIncrement n - squareAbsoluteMoment n ≥
      squareRadius n *
        (∑ m ∈ S,
          ArithmeticFunction.vonMangoldt m * squareWeight n m) := by
  have hw := squareTentMangoldt_ge_witness_finset n S hS
  have hr := squareRadius_pos n
  have hscaled := mul_le_mul_of_nonneg_left hw hr.le
  rw [squareTentMangoldt_eq_squareIncrement_sub_absoluteMoment] at hscaled
  have hidentity :
      squareRadius n *
        (squareIncrement n - squareAbsoluteMoment n / squareRadius n) =
      squareRadius n * squareIncrement n - squareAbsoluteMoment n := by
    field_simp [ne_of_gt hr]
  linarith

/-! ## Witness-budget supplier for a uniform relative gap

The arithmetic supplier must account for a specified fraction of the
FULL von Mangoldt mass in the exact square-tent window. This theorem
does not assume the witness set consists only of primes, and does not
establish that the required quantitative witness budget exists.
-/

/-- A finite set carrying at least a δ fraction of the complete
source mass after tent weighting supplies the exact relative
first-moment deficit required by the operator bridge. -/
theorem relative_moment_gap_of_witness_budget
    (n : ℕ) (S : Finset ℕ) (δ : ℝ)
    (hS : S ⊆ Finset.Ioc (n ^ 2) ((n + 1) ^ 2))
    (hbudget : δ * squareIncrement n ≤
      ∑ m ∈ S, ArithmeticFunction.vonMangoldt m * squareWeight n m) :
    squareAbsoluteMoment n ≤
      (1 - δ) * squareRadius n * squareIncrement n := by
  have hsum := squareMoment_deficit_ge_witness_finset n S hS
  have hr := squareRadius_pos n
  have hscaled := mul_le_mul_of_nonneg_left hbudget hr.le
  nlinarith

/-- The same witness budget implies a lower bound on the exact
tapered arithmetic source, without any external spectral premise. -/
theorem squareTentMangoldt_ge_of_witness_budget
    (n : ℕ) (S : Finset ℕ) (δ : ℝ)
    (hS : S ⊆ Finset.Ioc (n ^ 2) ((n + 1) ^ 2))
    (hbudget : δ * squareIncrement n ≤
      ∑ m ∈ S, ArithmeticFunction.vonMangoldt m * squareWeight n m) :
    δ * squareIncrement n ≤ squareTentMangoldt n := by
  exact hbudget.trans (squareTentMangoldt_ge_witness_finset n S hS)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentEuclideanGram
