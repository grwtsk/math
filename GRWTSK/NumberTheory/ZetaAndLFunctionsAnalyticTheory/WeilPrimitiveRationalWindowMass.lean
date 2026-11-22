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
open scoped BigOperators Interval

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

private def integrateTerms (a b : ℚ) : List Term → ℚ
  | [] => 0
  | (n, c) :: cs => c * (b ^ (n + 1) - a ^ (n + 1)) / (n + 1) + integrateTerms a b cs

private theorem continuous_evalTerms (cs : List Term) : Continuous (fun x => evalTerms x cs) := by
  induction cs with
  | nil => exact continuous_const
  | cons p ps ih =>
    rcases p with ⟨n, c⟩
    exact (continuous_const.mul (continuous_id.pow n)).add ih

private theorem integrateTerms_cast (a b : ℚ) (cs : List Term) :
    (integrateTerms a b cs : ℝ) = ∫ x in (a : ℝ)..(b : ℝ), evalTerms x cs := by
  induction cs with
  | nil => simp [integrateTerms, evalTerms]
  | cons p ps ih =>
    rcases p with ⟨n, c⟩
    have hc : Continuous (fun x : ℝ => (c : ℝ) * x ^ n) :=
      continuous_const.mul (continuous_id.pow n)
    simp only [integrateTerms, evalTerms, Rat.cast_add, Rat.cast_mul, Rat.cast_div,
      Rat.cast_sub, Rat.cast_pow, Rat.cast_natCast]
    rw [intervalIntegral.integral_add (hc.intervalIntegrable _ _)
      ((continuous_evalTerms ps).intervalIntegrable _ _), intervalIntegral.integral_const_mul,
      integral_pow, ← ih]
    ring

/-- Compute the energy by integrating the exact squared polynomial on the window. -/
def rationalWindowMass (T : ℚ) (cs : List ℚ) : ℚ :=
  let ps := windowTerms T cs
  integrateTerms (-T) T (mulTerms ps ps)

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
  rw [integrateTerms_cast, Rat.cast_neg, intervalIntegral.integral_of_le hle]
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

private theorem evalTerms_map_range (x : ℝ) (f : ℕ → Term) (n : ℕ) :
    evalTerms x ((List.range n).map f) =
      ∑ k ∈ Finset.range n, ((f k).2 : ℝ) * x ^ (f k).1 := by
  induction n with
  | zero => simp [evalTerms]
  | succ n ih =>
    rw [List.range_succ, List.map_append, evalTerms_append, Finset.sum_range_succ, ih]
    rcases h : f n with ⟨d, c⟩
    simp [evalTerms, h]

private def shiftPower (r : ℚ) (n : ℕ) : List Term :=
  (List.range (n + 1)).map fun k => (k, (n.choose k : ℚ) * r ^ (n - k))

private theorem evalShiftPower (r : ℚ) (x : ℝ) (n : ℕ) :
    evalTerms x (shiftPower r n) = (x + (r : ℝ)) ^ n := by
  rw [shiftPower, evalTerms_map_range, add_pow]
  apply Finset.sum_congr rfl
  intro k _
  simp only [Rat.cast_mul, Rat.cast_pow, Rat.cast_natCast]
  ring

private def shiftTerms (r : ℚ) : List Term → List Term
  | [] => []
  | (n, c) :: cs => mulTerms [(0, c)] (shiftPower r n) ++ shiftTerms r cs

private theorem evalShiftTerms (r : ℚ) (x : ℝ) (ps : List Term) :
    evalTerms x (shiftTerms r ps) = evalTerms (x + (r : ℝ)) ps := by
  induction ps with
  | nil => rfl
  | cons p ps ih =>
    rcases p with ⟨n, c⟩
    simp [shiftTerms, evalTerms_append, evalTerms_mul, evalShiftPower, evalTerms, ih]

/-- Evaluate the polynomial overlap exactly at a rational shift. Its
correlation interpretation uses a nonnegative shift and nonnegative radius. -/
def rationalWindowOverlap (T r : ℚ) (cs : List ℚ) : ℚ :=
  if r ≤ 2 * T then
    let ps := windowTerms T cs
    integrateTerms (-T) (T - r) (mulTerms ps (shiftTerms r ps))
  else 0

/-- The rational evaluator uses the closed overlap set, including contact
and disjoint support. The integrands are the original interior polynomials. -/
theorem rationalWindowOverlap_cast (T r : ℚ) (cs : List ℚ) :
    (rationalWindowOverlap T r cs : ℝ) =
      ∫ x in Icc (-(T : ℝ)) ((T : ℝ) - (r : ℝ)),
        (x * (rationalWindowPolynomial cs).aeval (x ^ 2) * ((T : ℝ) ^ 2 - x ^ 2) ^ 3) *
        ((x + (r : ℝ)) * (rationalWindowPolynomial cs).aeval ((x + (r : ℝ)) ^ 2) *
          ((T : ℝ) ^ 2 - (x + (r : ℝ)) ^ 2) ^ 3) := by
  unfold rationalWindowOverlap
  split_ifs with h
  · have hr : (r : ℝ) ≤ 2 * (T : ℝ) := by exact_mod_cast h
    have hle : -(T : ℝ) ≤ (T : ℝ) - (r : ℝ) := by linarith
    rw [integrateTerms_cast, Rat.cast_neg, Rat.cast_sub, intervalIntegral.integral_of_le hle,
      integral_Icc_eq_integral_Ioc]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x _
    dsimp only
    rw [evalTerms_mul, evalShiftTerms, evalWindowTerms, evalWindowTerms]
  · have hr : 2 * (T : ℝ) < (r : ℝ) := by exact_mod_cast (lt_of_not_ge h)
    rw [Icc_eq_empty (show ¬ -(T : ℝ) ≤ (T : ℝ) - (r : ℝ) by linarith)]
    simp

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
