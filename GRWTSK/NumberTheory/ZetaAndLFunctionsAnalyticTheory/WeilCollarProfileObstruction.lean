/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic

/-!
# Finite algebra for theta-derivative physical-collar witnesses

The analytical obstruction concerns the FULL CCM form
(arXiv:2511.22755v1, (3.19)--(3.20)):
if every admissible odd inner/collar pair obeys
`Q (u+f) >= gamma_k * |inner e_k f|^2`, where
`T_k = log k / 2` and `e_k` is asymptotically the normalized odd flat physical
collar vector, then `limsup gamma_k / log k <= 0`. A nonnegative limiting
profile in the explicitly isometric collar coordinate is also allowed.

The argument realizes each fixed polynomial profile using actual finite theta
DERIVATIVE combinations, returns the complete exterior prime/pole/jump form,
and uses the Laguerre profiles. The limiting jet matrix has entries
`choose (2*j+2) l` and determinant `2^(r*(r+1)/2)`. The polynomial degree is
fixed before the support limit. This is not a positive spectral certificate,
a negative unshifted source value, or the even endpoint obstruction of #1685.

Only FINITE algebra is formalized below: the first two normalized theta
polynomials and their Wronskian, two-coordinate interpolation, Laguerre
coefficient positivity, and scalar normalization checks. The genuine theta
series, differentiation of that series, all-degree determinant, explicit
formula, operator domain, integrals, asymptotics and source theorem are not
formalized by this module. Slope functions below are literal polynomials;
their analytical derivative identification is outside this module.

Sources: the supplied rank-one saturation and weighted-residual notes;
Connes arXiv:2602.04022v1, Section 6.6; CCM as above; DLMF 18.5.12 and
Table 18.3.1 for standard Laguerre normalization. No upstream code is copied.
No new RH/DirichletGRH predicate or unresolved spectral axiom is introduced.

Baseline math d2f277ec4f38c7ecae5a27aa262873343c98a96a; Lean v4.34.1,
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Manually authored,
AI-assisted candidate. Elaboration, fresh kernel checking, transitive axiom
audit and independent analytical review: NOT_RUN. Novelty: UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CollarProfile

/-- The monic first-theta polynomial in the coordinate `w = pi * exp (2*t)`. -/
def thetaBase (w : ℝ) : ℝ := w ^ 2 - 15 / 4 * w + 15 / 8

def thetaBaseSlope (w : ℝ) : ℝ := 2 * w - 15 / 4

def thetaFirstStep (w : ℝ) : ℝ :=
  -2 * w ^ 3 + 14 * w ^ 2 - 165 / 8 * w + 75 / 16

def thetaFirstStepSlope (w : ℝ) : ℝ :=
  -6 * w ^ 2 + 28 * w - 165 / 8

/-- After two logarithmic derivatives and division by four. -/
def thetaNext (w : ℝ) : ℝ :=
  w ^ 4 - 45 / 4 * w ^ 3 + 529 / 16 * w ^ 2 - 1635 / 64 * w + 375 / 128

def thetaNextSlope (w : ℝ) : ℝ :=
  4 * w ^ 3 - 135 / 4 * w ^ 2 + 529 / 8 * w - 1635 / 64

/-- Exact scalar chain-rule expression; not a theorem about the infinite theta sum. -/
theorem first_step_identity (w : ℝ) :
    2 * w * thetaBaseSlope w + (5 / 2 - 2 * w) * thetaBase w =
      thetaFirstStep w := by
  unfold thetaBaseSlope thetaBase thetaFirstStep
  ring

theorem second_step_identity (w : ℝ) :
    (2 * w * thetaFirstStepSlope w + (5 / 2 - 2 * w) * thetaFirstStep w) / 4 =
      thetaNext w := by
  unfold thetaFirstStepSlope thetaFirstStep thetaNext
  ring

def thetaWronskian (w : ℝ) : ℝ :=
  thetaBase w * thetaNextSlope w - thetaBaseSlope w * thetaNext w

theorem wronskian_polynomial (w : ℝ) :
    thetaWronskian w =
      2 * w ^ 5 - 45 / 2 * w ^ 4 + 735 / 8 * w ^ 3 -
        5175 / 32 * w ^ 2 + 945 / 8 * w - 4725 / 128 := by
  unfold thetaWronskian thetaBase thetaBaseSlope thetaNext thetaNextSlope
  ring

/-- A concrete, purely rational invertibility range for the two-coordinate jet. -/
theorem wronskian_shift (v : ℝ) :
    thetaWronskian (v + 8) =
      2 * v ^ 5 + 115 / 2 * v ^ 4 + 5215 / 8 * v ^ 3 +
        116585 / 32 * v ^ 2 + 80405 / 8 * v + 1404683 / 128 := by
  rw [wronskian_polynomial]
  ring

theorem wronskian_pos {w : ℝ} (hw : 8 ≤ w) : 0 < thetaWronskian w := by
  have hv : 0 ≤ w - 8 := sub_nonneg.mpr hw
  have heq : w = (w - 8) + 8 := by ring
  rw [heq, wronskian_shift]
  positivity

/-- Cramer's coefficients for prescribed value and slope of the actual polynomial pair. -/
def jetFirst (w value slope : ℝ) : ℝ :=
  (value * thetaNextSlope w - slope * thetaNext w) / thetaWronskian w

def jetSecond (w value slope : ℝ) : ℝ :=
  (thetaBase w * slope - thetaBaseSlope w * value) / thetaWronskian w

theorem jet_value {w : ℝ} (hw : thetaWronskian w ≠ 0) (value slope : ℝ) :
    jetFirst w value slope * thetaBase w +
      jetSecond w value slope * thetaNext w = value := by
  unfold jetFirst jetSecond
  field_simp [hw]
  unfold thetaWronskian
  ring

theorem jet_slope {w : ℝ} (hw : thetaWronskian w ≠ 0) (value slope : ℝ) :
    jetFirst w value slope * thetaBaseSlope w +
      jetSecond w value slope * thetaNextSlope w = slope := by
  unfold jetFirst jetSecond
  field_simp [hw]
  unfold thetaWronskian
  ring

/-- This range conclusion discharges invertibility, rather than supplying it as data. -/
theorem two_coordinate_jet {w : ℝ} (hw : 8 ≤ w) (value slope : ℝ) :
    (jetFirst w value slope * thetaBase w +
      jetSecond w value slope * thetaNext w = value) ∧
    (jetFirst w value slope * thetaBaseSlope w +
      jetSecond w value slope * thetaNextSlope w = slope) := by
  exact ⟨jet_value (ne_of_gt (wronskian_pos hw)) value slope,
    jet_slope (ne_of_gt (wronskian_pos hw)) value slope⟩

/-- Literal coefficients of `L_n (-x)`, as in DLMF 18.5.12 at alpha zero. -/
def laguerreAtNegative (n : ℕ) (x : ℝ) : ℝ :=
  ∑ j ∈ Finset.range (n + 1), (n.choose j : ℝ) / (j.factorial : ℝ) * x ^ j

theorem laguerreAtNegative_zero (x : ℝ) : laguerreAtNegative 0 x = 1 := by
  norm_num [laguerreAtNegative, Finset.sum_range_succ]

theorem laguerreAtNegative_one (x : ℝ) : laguerreAtNegative 1 x = 1 + x := by
  norm_num [laguerreAtNegative, Finset.sum_range_succ]

theorem laguerreAtNegative_nonneg (n : ℕ) {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ laguerreAtNegative n x := by
  unfold laguerreAtNegative
  exact Finset.sum_nonneg (fun j _ => by positivity)

/-- The discarded terms have the right sign on the negative physical collar. -/
theorem laguerreAtNegative_linear_lower {n : ℕ} (hn : 1 ≤ n)
    {x : ℝ} (hx : 0 ≤ x) : 1 + (n : ℝ) * x ≤ laguerreAtNegative n x := by
  unfold laguerreAtNegative
  calc
    1 + (n : ℝ) * x =
        ∑ j ∈ ({0, 1} : Finset ℕ),
          (n.choose j : ℝ) / (j.factorial : ℝ) * x ^ j := by simp
    _ ≤ ∑ j ∈ Finset.range (n + 1),
          (n.choose j : ℝ) / (j.factorial : ℝ) * x ^ j := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · intro j hj
        simp only [Finset.mem_insert, Finset.mem_singleton] at hj
        rcases hj with rfl | rfl
        · simp
        · simp only [Finset.mem_range]
          omega
      · intro j _ _
        positivity

/-- Exact exponential-polynomial moments of the first two collar profiles.
Here `p = pi` and `e = exp pi`; their integral identification is analytical. -/
def constantReadout (p e : ℝ) : ℝ := (e - 1) / p

def linearMoment (p e : ℝ) : ℝ := ((p - 1) * e + 1) / p ^ 2

theorem linearMoment_pos {p e : ℝ} (hp : 1 < p) (he : 0 < e) :
    0 < linearMoment p e := by
  unfold linearMoment
  have hp0 : 0 < p := lt_trans (by norm_num) hp
  have hpm : 0 < p - 1 := sub_pos.mpr hp
  positivity

theorem first_laguerre_readout {p : ℝ} (hp : p ≠ 0) (e : ℝ) :
    constantReadout p e + 2 * p * linearMoment p e = ((2 * p - 1) * e + 1) / p := by
  unfold constantReadout linearMoment
  field_simp [hp]
  ring

theorem constant_profile_ratio {p e : ℝ} (hp : p ≠ 0) (he : e - 1 ≠ 0) :
    (1 / (2 * p)) / (constantReadout p e) ^ 2 = p / (2 * (e - 1) ^ 2) := by
  unfold constantReadout
  field_simp [hp, he]
  <;> ring

theorem linear_profile_ratio {p e : ℝ} (hp : p ≠ 0)
    (he : (2 * p - 1) * e + 1 ≠ 0) :
    (1 / (2 * p)) / (constantReadout p e + 2 * p * linearMoment p e) ^ 2 =
      p / (2 * ((2 * p - 1) * e + 1) ^ 2) := by
  rw [first_laguerre_readout hp]
  field_simp [hp, he]
  <;> ring

/-- Scalar quotient at the explicit finite profile optimizer. This does not
formalize Laguerre orthogonality, the actual source short, or its sign. -/
theorem optimizer_ratio {p s : ℝ} (hp : p ≠ 0) (hs : s ≠ 0) :
    (s / (2 * p)) / s ^ 2 = 1 / (2 * p * s) := by
  field_simp [hp, hs]
  <;> ring

end GRWTSK.NumberTheory.WeilQuadraticForm.CollarProfile
