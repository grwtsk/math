/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.ApproximationsAndExpansions.RationalPolynomialC1Approximation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowTests

/-! # Coefficient list representation of rational window multipliers -/

set_option autoImplicit false

open Set Polynomial
open scoped Polynomial

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

/-- The existing decoder reads degrees in ascending order and regards
missing coefficients as zero. -/
theorem rationalWindowPolynomial_coeff (cs : List ℚ) (n : ℕ) :
    (rationalWindowPolynomial cs).coeff n = (cs[n]?).getD 0 := by
  induction cs generalizing n with
  | nil => simp [rationalWindowPolynomial]
  | cons c cs ih =>
    cases n with
    | zero => simp [rationalWindowPolynomial]
    | succ n => simp [rationalWindowPolynomial, ih]

/-- Read coefficients through the degree, including interior zeros. -/
noncomputable def rationalWindowCode (p : ℚ[X]) : List ℚ :=
  List.ofFn (fun i : Fin (p.natDegree + 1) => p.coeff i)

/-- The finite list represents the original polynomial exactly. -/
theorem rationalWindowPolynomial_code (p : ℚ[X]) :
    rationalWindowPolynomial (rationalWindowCode p) = p := by
  ext n
  rw [rationalWindowPolynomial_coeff, rationalWindowCode, List.getElem?_ofFn]
  by_cases hn : n < p.natDegree + 1
  · simp [hn]
  · simpa [hn] using (coeff_eq_zero_of_natDegree_lt (show p.natDegree < n by omega)).symm

/-- The same coefficient list gives both uniform bounds on the multiplier
from the squared-coordinate approximation theorem. -/
theorem exists_rationalWindowCode_near_even_with_derivative
    {T : ℝ} (hT : 0 ≤ T) {f d : ℝ → ℝ}
    (hfe : Function.Even f) (hdo : Function.Odd d)
    (hd : ∀ x ∈ Icc (-T) T, HasDerivWithinAt f (d x) (Icc (-T) T) x)
    (hc : ContinuousOn d (Icc (-T) T)) {ε : ℝ} (hε : 0 < ε) :
    ∃ cs : List ℚ, ∀ x ∈ Icc (-T) T,
      |(rationalWindowPolynomial cs).aeval (x ^ 2) - f x| < ε ∧
      |(((rationalWindowPolynomial cs).map (algebraMap ℚ ℝ)).comp (X ^ 2)).derivative.eval x -
        d x| < ε := by
  obtain ⟨p, hp⟩ :=
    ApproximationsAndExpansions.exists_rat_polynomial_in_sq_near_even_with_derivative
      hT hfe hdo hd hc hε
  refine ⟨rationalWindowCode p, ?_⟩
  simpa only [rationalWindowPolynomial_code, aeval_def, eval_map] using hp

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
