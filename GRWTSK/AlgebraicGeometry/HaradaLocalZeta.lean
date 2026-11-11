/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.AlgebraicGeometry.HaradaCharacterSurface
import GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivativeRigidity
import Mathlib.FieldTheory.Finiteness
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Local zeta reconstruction from Harada's actual point counts

This continues math issue #1802 and consumes RP-OC-08's anchored logarithmic-
derivative rigidity (#1805). The source polynomial and its finite-field
solution type are unchanged. Finite extensions are actual field algebras;
their cardinalities are derived from `Module.card_eq_pow_finrank`.

The local rational factor is characterized by its value at zero and its
logarithmic derivative, whose series contains every positive extension degree.
The characteristic-two correction is retained. No global Euler product,
meromorphic continuation in the arithmetic s-plane, primitive character family,
Weil positivity, or RH/GRH theorem is supplied by this module.

Source comparison: Shinya Harada, arXiv:1207.6177v2, Introduction, f₂ and the
unnumbered theorem for L₂ = (12/5). This is a standard local consequence of
that point count, not a novelty claim. All new Lean elaboration, kernel replay,
transitive axiom audit, and independent review: NOT_RUN. See adjacent records.
MSC2020: 14G15, 11G25; secondary 30B10.
-/

set_option autoImplicit false

noncomputable section

open scoped Topology

namespace GRWTSK.AlgebraicGeometry.HaradaLocalZeta

open HaradaCharacterSurface

universe u v

/-- Multiplicity of the unshifted local factor; it drops by one in characteristic two. -/
def residualMultiplicity (K : Type u) [Field K] [DecidableEq K] : ℕ :=
  if (2 : K) = 0 then 1 else 2

/-- Point counts after a genuine finite field extension. The change of characteristic
is not a free parameter: the algebra map forces the same equation `2 = 0`. -/
theorem card_points_extension (K : Type u) (E : Type v)
    [Field K] [Fintype K] [DecidableEq K]
    [Field E] [Fintype E] [DecidableEq E] [Algebra K E] :
    Fintype.card (Points E) =
      (Fintype.card K) ^ (2 * Module.finrank K E) + residualMultiplicity K := by
  have htwo : (2 : E) = 0 ↔ (2 : K) = 0 := by
    constructor
    · intro h
      apply (algebraMap K E).injective
      simpa using h
    · intro h
      simpa using congrArg (algebraMap K E) h
  calc
    Fintype.card (Points E) =
        (Fintype.card E) ^ 2 + residualMultiplicity E := card_points
    _ = ((Fintype.card K) ^ Module.finrank K E) ^ 2 + residualMultiplicity K := by
      rw [Module.card_eq_pow_finrank (K := K) (V := E)]
      unfold residualMultiplicity
      rw [htwo]
    _ = _ := by rw [← pow_mul, Nat.mul_comm (Module.finrank K E) 2]

/-- Exact residual coefficient of the actual solution count, including the bad prime.
Subtraction takes place in characteristic zero, not in the finite field or in naturals. -/
def residualWeight (K : Type u) [Field K] [Fintype K] [DecidableEq K] : ℂ :=
  ((Fintype.card (Points K) : ℂ) - (Fintype.card K : ℂ) ^ 2 +
    if (2 : K) = 0 then 1 else 0) / 2

/-- The corrected residual is exactly one; this is not a positivity assertion. -/
theorem residualWeight_eq_one (K : Type u)
    [Field K] [Fintype K] [DecidableEq K] : residualWeight K = 1 := by
  unfold residualWeight
  by_cases htwo : (2 : K) = 0
  · rw [card_points_of_two_eq_zero htwo, if_pos htwo]
    push_cast
    ring
  · rw [card_points_of_two_ne_zero htwo, if_neg htwo]
    push_cast
    ring

/-- Candidate local rational factor in the local variable z. Values at its poles
use Lean's totalized inverse and are NOT asserted to be meromorphic values. -/
def localFactor (q : ℂ) (m : ℕ) (z : ℂ) : ℂ :=
  (1 - q ^ 2 * z)⁻¹ * ((1 - z)⁻¹) ^ m

@[simp] theorem localFactor_zero (q : ℂ) (m : ℕ) : localFactor q m 0 = 1 := by
  simp [localFactor]

private theorem one_sub_ne_zero {w : ℂ} (h : ‖w‖ < 1) : 1 - w ≠ 0 := by
  intro hz
  have hw : w = 1 := (sub_eq_zero.mp hz).symm
  exact (lt_irrefl (1 : ℝ)) (by simpa only [hw, norm_one] using h)

private theorem hasDerivAt_reciprocal (a z : ℂ) (h : 1 - a * z ≠ 0) :
    HasDerivAt (fun w : ℂ => (1 - a * w)⁻¹) (a / (1 - a * z) ^ 2) z := by
  have hb : HasDerivAt (fun w : ℂ => 1 - a * w) (-a) z := by
    simpa using (hasDerivAt_const z (1 : ℂ)).sub ((hasDerivAt_id z).const_mul a)
  simpa using hb.inv h

private theorem logDeriv_reciprocal (a z : ℂ) (h : 1 - a * z ≠ 0) :
    logDeriv (fun w : ℂ => (1 - a * w)⁻¹) z = a / (1 - a * z) := by
  rw [logDeriv_apply, (hasDerivAt_reciprocal a z h).deriv]
  field_simp [h] <;> ring

private theorem differentiableAt_localFactor (q : ℂ) (m : ℕ) (z : ℂ)
    (hq : 1 - q ^ 2 * z ≠ 0) (hz : 1 - z ≠ 0) :
    DifferentiableAt ℂ (localFactor q m) z := by
  have h1 := (hasDerivAt_reciprocal (q ^ 2) z hq).differentiableAt
  have h2 : DifferentiableAt ℂ (fun w : ℂ => (1 - w)⁻¹) z := by
    simpa using (hasDerivAt_reciprocal 1 z (by simpa using hz)).differentiableAt
  exact h1.mul (h2.pow m)

private theorem localFactor_ne_zero (q : ℂ) (m : ℕ) (z : ℂ)
    (hq : 1 - q ^ 2 * z ≠ 0) (hz : 1 - z ≠ 0) : localFactor q m z ≠ 0 :=
  mul_ne_zero (inv_ne_zero hq) (pow_ne_zero m (inv_ne_zero hz))

/-- Both local multiplicities appear in the logarithmic derivative. -/
theorem logDeriv_localFactor (q : ℂ) (m : ℕ) (z : ℂ)
    (hq : 1 - q ^ 2 * z ≠ 0) (hz : 1 - z ≠ 0) :
    logDeriv (localFactor q m) z = q ^ 2 / (1 - q ^ 2 * z) + (m : ℂ) / (1 - z) := by
  have h1 := (hasDerivAt_reciprocal (q ^ 2) z hq).differentiableAt
  have h2 : DifferentiableAt ℂ (fun w : ℂ => (1 - w)⁻¹) z := by
    simpa using (hasDerivAt_reciprocal 1 z (by simpa using hz)).differentiableAt
  change logDeriv ((fun w : ℂ => (1 - q ^ 2 * w)⁻¹) *
    (fun w : ℂ => ((1 - w)⁻¹) ^ m)) z = _
  rw [logDeriv_mul z (inv_ne_zero hq) (pow_ne_zero m (inv_ne_zero hz)) h1 (h2.pow m)]
  rw [logDeriv_fun_pow h2 m, logDeriv_reciprocal (q ^ 2) z hq]
  have hlog : logDeriv (fun w : ℂ => (1 - w)⁻¹) z = 1 / (1 - z) := by
    simpa using logDeriv_reciprocal 1 z (by simpa using hz)
  rw [hlog]
  ring

/-- All positive extension degrees, indexed by n+1. This is a convergent series
identity on its explicit local domain, not a finite coefficient fit. -/
theorem hasSum_localFactor_logDeriv (q : ℂ) (m : ℕ) (z : ℂ)
    (hq : ‖q ^ 2 * z‖ < 1) (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ => ((q ^ 2) ^ (n + 1) + (m : ℂ)) * z ^ n)
      (logDeriv (localFactor q m) z) := by
  rw [logDeriv_localFactor q m z (one_sub_ne_zero hq) (one_sub_ne_zero hz)]
  have h1 := (hasSum_geometric_of_norm_lt_one hq).mul_left (q ^ 2)
  have h2 := (hasSum_geometric_of_norm_lt_one hz).mul_left (m : ℂ)
  have heq : (fun n : ℕ => ((q ^ 2) ^ (n + 1) + (m : ℂ)) * z ^ n) =
      (fun n : ℕ => q ^ 2 * (q ^ 2 * z) ^ n + (m : ℂ) * z ^ n) := by
    funext n
    rw [pow_succ (q ^ 2) n, mul_pow]
    ring
  rw [heq]
  simpa only [div_eq_mul_inv] using h1.add h2

/-- Source-bound all-degree series: the coefficients are cardinalities of the
original polynomial solution set over actual extension fields. The degree of
each supplied extension is explicit; no compatible tower is needed. -/
theorem hasSum_extension_pointCounts (K : Type u) (E : ℕ → Type v)
    [Field K] [Fintype K] [DecidableEq K]
    [∀ n, Field (E n)] [∀ n, Fintype (E n)] [∀ n, DecidableEq (E n)]
    [∀ n, Algebra K (E n)]
    (hdegree : ∀ n, Module.finrank K (E n) = n + 1)
    (z : ℂ) (hq : ‖(Fintype.card K : ℂ) ^ 2 * z‖ < 1) (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ => (Fintype.card (Points (E n)) : ℂ) * z ^ n)
      (logDeriv (localFactor (Fintype.card K : ℂ) (residualMultiplicity K)) z) := by
  have hcount (n : ℕ) : (Fintype.card (Points (E n)) : ℂ) =
      ((Fintype.card K : ℂ) ^ 2) ^ (n + 1) + (residualMultiplicity K : ℂ) := by
    rw [card_points_extension K (E n), hdegree n]
    push_cast
    rw [pow_mul]
  simp_rw [hcount]
  exact hasSum_localFactor_logDeriv _ _ z hq hz

/-- Program 8 reuse: a normalized nonvanishing holomorphic function whose
logarithmic derivative is the exact extension-count series is the local factor.
The source identity for the logarithmic derivative is an explicit premise;
this theorem does not construct a global Hasse-Weil zeta function. -/
theorem eqOn_of_extension_pointCounts (K : Type u) (E : ℕ → Type v)
    [Field K] [Fintype K] [DecidableEq K]
    [∀ n, Field (E n)] [∀ n, Fintype (E n)] [∀ n, DecidableEq (E n)]
    [∀ n, Algebra K (E n)]
    (hdegree : ∀ n, Module.finrank K (E n) = n + 1)
    {F : ℂ → ℂ} {U : Set ℂ}
    (hU : IsOpen U) (hconn : IsPreconnected U) (hzero : (0 : ℂ) ∈ U)
    (hF : DifferentiableOn ℂ F U) (hFn : ∀ z ∈ U, F z ≠ 0) (hanchor : F 0 = 1)
    (hregion : ∀ z ∈ U, ‖(Fintype.card K : ℂ) ^ 2 * z‖ < 1 ∧ ‖z‖ < 1)
    (hsource : ∀ z ∈ U,
      HasSum (fun n : ℕ => (Fintype.card (Points (E n)) : ℂ) * z ^ n)
        (logDeriv F z)) :
    Set.EqOn F (localFactor (Fintype.card K : ℂ) (residualMultiplicity K)) U := by
  refine GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative.eqOn_of_logDeriv_eqOn_of_anchor
    hU hconn hF ?_ hFn ?_ hzero ?_ ?_
  · intro z hz
    exact (differentiableAt_localFactor _ _ z
      (one_sub_ne_zero (hregion z hz).1)
      (one_sub_ne_zero (hregion z hz).2)).differentiableWithinAt
  · intro z hz
    exact localFactor_ne_zero _ _ z
      (one_sub_ne_zero (hregion z hz).1) (one_sub_ne_zero (hregion z hz).2)
  · simpa only [localFactor_zero] using hanchor
  · intro z hz
    exact (hsource z hz).unique
      (hasSum_extension_pointCounts K E hdegree z (hregion z hz).1 (hregion z hz).2)

/-- The exceptional local factor is a numerator correction to the generic factor.
The hypothesis excludes the totalized-inverse value at z=1. -/
theorem localFactor_characteristic_correction (K : Type u)
    [Field K] [DecidableEq K] (q z : ℂ) (hz : 1 - z ≠ 0) :
    localFactor q (residualMultiplicity K) z =
      localFactor q 2 z * (if (2 : K) = 0 then 1 - z else 1) := by
  by_cases htwo : (2 : K) = 0
  · simp only [residualMultiplicity, if_pos htwo, localFactor, pow_one]
    have hcancel : ((1 - z)⁻¹) ^ 2 * (1 - z) = (1 - z)⁻¹ := by
      rw [pow_two, mul_assoc, inv_mul_cancel₀ hz, mul_one]
    rw [mul_assoc, hcancel]
  · simp [residualMultiplicity, htwo]

/-- Hostile control: dropping the characteristic-two correction already changes
the first logarithmic-derivative coefficient by one. -/
theorem omitted_correction_changes_logDeriv (q : ℂ) :
    logDeriv (localFactor q 2) 0 - logDeriv (localFactor q 1) 0 = 1 := by
  rw [logDeriv_localFactor q 2 0 (by simp) (by simp),
    logDeriv_localFactor q 1 0 (by simp) (by simp)]
  norm_num <;> ring

end GRWTSK.AlgebraicGeometry.HaradaLocalZeta
