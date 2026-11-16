/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowTests

/-! # Executable exact energy of a rational primitive Weil test -/

set_option autoImplicit false

open MeasureTheory Set
open scoped Interval

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation

private abbrev Term := ℕ × ℚ

private def mulTerms (ps qs : List Term) : List Term :=
  ps.flatMap fun p => qs.map fun q => (p.1 + q.1, p.2 * q.2)

private def evalTerms (x : ℝ) : List Term → ℝ
  | [] => 0
  | (n, c) :: cs => (c : ℝ) * x ^ n + evalTerms x cs

private theorem evalTerms_append (x : ℝ) (ps qs : List Term) :
    evalTerms x (ps ++ qs) = evalTerms x ps + evalTerms x qs := by
  induction ps with
  | nil => simp [evalTerms]
  | cons p ps ih => rcases p with ⟨n, c⟩; simp [evalTerms, ih, add_assoc]

private theorem evalTerms_mul (x : ℝ) (ps qs : List Term) :
    evalTerms x (mulTerms ps qs) = evalTerms x ps * evalTerms x qs := by
  have hrow (n : ℕ) (c : ℚ) (rs : List Term) :
      evalTerms x (rs.map fun q => (n + q.1, c * q.2)) =
        ((c : ℝ) * x ^ n) * evalTerms x rs := by
    induction rs with
    | nil => simp [evalTerms]
    | cons p ps ih =>
      rcases p with ⟨m, d⟩
      simp only [List.map_cons, evalTerms, Rat.cast_mul, pow_add, ih]
      ring
  induction ps with
  | nil => simp [mulTerms, evalTerms]
  | cons p ps ih =>
    rcases p with ⟨n, c⟩
    simp only [mulTerms, List.flatMap_cons, evalTerms_append, hrow, evalTerms, add_mul] at ih ⊢
    rw [ih]

private def evenTerms : List ℚ → List Term
  | [] => []
  | c :: cs => (0, c) :: ((evenTerms cs).map fun p => (2 + p.1, p.2))

private theorem evalEvenTerms (x : ℝ) (cs : List ℚ) :
    evalTerms x (evenTerms cs) = (rationalWindowPolynomial cs).aeval (x ^ 2) := by
  induction cs with
  | nil => simp [evenTerms, evalTerms, rationalWindowPolynomial]
  | cons c cs ih =>
    have hm : ((evenTerms cs).map fun p => (2 + p.1, p.2)) =
        mulTerms [(2, 1)] (evenTerms cs) := by simp [mulTerms]
    simp [evenTerms, evalTerms, hm, evalTerms_mul, rationalWindowPolynomial, ih]

private def windowTerms (T : ℚ) (cs : List ℚ) : List Term :=
  let cutoff : List Term := [(0, T ^ 2), (2, -1)]
  mulTerms (mulTerms [(1, 1)] (evenTerms cs)) (mulTerms cutoff (mulTerms cutoff cutoff))

private theorem evalWindowTerms (T : ℚ) (cs : List ℚ) (x : ℝ) :
    evalTerms x (windowTerms T cs) =
      x * (rationalWindowPolynomial cs).aeval (x ^ 2) * ((T : ℝ) ^ 2 - x ^ 2) ^ 3 := by
  simp only [windowTerms, evalTerms_mul, evalEvenTerms, evalTerms, Rat.cast_one, Rat.cast_neg,
    Rat.cast_pow, pow_zero, pow_one, one_mul, add_zero]
  ring

private def integrateTerms (T : ℚ) : List Term → ℚ
  | [] => 0
  | (n, c) :: cs => c * (T ^ (n + 1) - (-T) ^ (n + 1)) / (n + 1) + integrateTerms T cs

private theorem continuous_evalTerms (cs : List Term) : Continuous (fun x => evalTerms x cs) := by
  induction cs with
  | nil => exact continuous_const
  | cons p ps ih =>
    rcases p with ⟨n, c⟩
    exact (continuous_const.mul (continuous_id.pow n)).add ih

private theorem integrateTerms_cast (T : ℚ) (cs : List Term) :
    (integrateTerms T cs : ℝ) = ∫ x in (-(T : ℝ))..(T : ℝ), evalTerms x cs := by
  induction cs with
  | nil => simp [integrateTerms, evalTerms]
  | cons p ps ih =>
    rcases p with ⟨n, c⟩
    have hc : Continuous (fun x : ℝ => (c : ℝ) * x ^ n) :=
      continuous_const.mul (continuous_id.pow n)
    simp only [integrateTerms, evalTerms, Rat.cast_add, Rat.cast_mul, Rat.cast_div,
      Rat.cast_sub, Rat.cast_pow, Rat.cast_neg, Rat.cast_natCast]
    rw [intervalIntegral.integral_add (hc.intervalIntegrable _ _)
      ((continuous_evalTerms ps).intervalIntegrable _ _), intervalIntegral.integral_const_mul,
      integral_pow, ← ih]
    ring

/-- Compute the energy by integrating the exact squared polynomial on the window. -/
def rationalWindowMass (T : ℚ) (cs : List ℚ) : ℚ :=
  let ps := windowTerms T cs
  integrateTerms T (mulTerms ps ps)

/-- The computed rational mass equals the native whole-line energy of the real lift. -/
theorem rationalWindowMass_cast (T : ℚ) (hT : 0 < T) (cs : List ℚ) :
    (rationalWindowMass T cs : ℝ) = energy (liftReal (rationalWindowTest T cs)) := by
  have hpos : (0 : ℝ) < T := by exact_mod_cast hT
  have hle : -(T : ℝ) ≤ T := by linarith
  have hzero (x : ℝ) (hx : x ∉ Icc (-(T : ℝ)) T) :
      rationalWindowTest T cs x ^ 2 = 0 := by
    have hsq : (T : ℝ) ^ 2 ≤ x ^ 2 := by
      by_contra h
      have hh := lt_of_not_ge h
      exact hx ⟨by nlinarith, by nlinarith⟩
    simp [rationalWindowTest, max_eq_right (sub_nonpos.mpr hsq)]
  unfold rationalWindowMass
  rw [integrateTerms_cast, intervalIntegral.integral_of_le hle]
  simp only [energy, liftReal, Complex.norm_real, Real.norm_eq_abs, sq_abs]
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero hzero, integral_Icc_eq_integral_Ioc]
  apply setIntegral_congr_fun measurableSet_Ioc
  intro x hx
  have hx' := mem_Ioc.mp hx
  have hnonneg : 0 ≤ (T : ℝ) ^ 2 - x ^ 2 := by
    apply sub_nonneg.mpr
    nlinarith [mul_nonneg (sub_nonneg.mpr hx'.2) (show 0 ≤ (T : ℝ) + x by linarith [hx'.1])]
  dsimp only
  rw [evalTerms_mul, evalWindowTerms]
  rw [rationalWindowTest, max_eq_left hnonneg]
  exact (pow_two _).symm

/-- The rational comparison checks exactly the native mass ceiling. -/
theorem rationalWindowMass_le_one_iff (T : ℚ) (hT : 0 < T) (cs : List ℚ) :
    rationalWindowMass T cs ≤ 1 ↔ energy (liftReal (rationalWindowTest T cs)) ≤ 1 := by
  rw [← rationalWindowMass_cast T hT cs]
  exact_mod_cast (Iff.rfl : rationalWindowMass T cs ≤ 1 ↔ rationalWindowMass T cs ≤ 1)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
