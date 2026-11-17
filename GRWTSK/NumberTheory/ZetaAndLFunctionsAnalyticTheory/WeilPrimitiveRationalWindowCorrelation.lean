/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalStageCertificates

/-! # Exact physical overlap for rational cubic-window correlations -/

set_option autoImplicit false

open Set MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation CharacterWindow

/-- The polynomial expression for the decoded test on its closed window. -/
noncomputable def rationalWindowPolynomialTest (T : ℝ) (cs : List ℚ) (x : ℝ) : ℝ :=
  x * (rationalWindowPolynomial cs).aeval (x ^ 2) * (T ^ 2 - x ^ 2) ^ 3

private theorem windowTest_eq_polynomial {T : ℝ} (hT : 0 ≤ T)
    (cs : List ℚ) {x : ℝ} (hx : x ∈ Icc (-T) T) :
    rationalWindowTest T cs x = rationalWindowPolynomialTest T cs x := by
  have hsq : x ^ 2 ≤ T ^ 2 :=
    sq_le_sq.mpr (by simpa only [abs_of_nonneg hT] using abs_le.mpr hx)
  simp only [rationalWindowTest, rationalWindowPolynomialTest,
    max_eq_left (sub_nonneg.mpr hsq)]

private theorem windowTest_zero_off {T : ℝ} (hT : 0 ≤ T)
    (cs : List ℚ) {x : ℝ} (hx : x ∉ Icc (-T) T) :
    rationalWindowTest T cs x = 0 := by
  have hsq : T ^ 2 ≤ x ^ 2 := by
    by_contra h
    have hlt : x ^ 2 < T ^ 2 := lt_of_not_ge h
    have hlt' : |x| < T := by simpa only [abs_of_nonneg hT] using sq_lt_sq.mp hlt
    exact hx (abs_le.mp hlt'.le)
  simp [rationalWindowTest, max_eq_right (sub_nonpos.mpr hsq)]

/-- For a nonnegative shift, the actual whole-line correlation equals the
polynomial product integral on the intersection of the two supports. The set
integral is zero when that intersection is empty. -/
theorem correlation_rationalWindowTest_eq_overlap {T r : ℝ} (hT : 0 ≤ T) (hr : 0 ≤ r)
    (cs : List ℚ) :
    correlation (liftReal (rationalWindowTest T cs)) r =
      ((∫ x in Icc (-T) (T - r),
        rationalWindowPolynomialTest T cs x * rationalWindowPolynomialTest T cs (x + r)) : ℝ) := by
  let f := rationalWindowTest T cs
  have hzero : ∀ x, x ∉ Icc (-T) (T - r) → f x * f (x + r) = 0 := by
    intro x hx
    dsimp only [f]
    by_cases h : x ∈ Icc (-T) T
    · have h' : x + r ∉ Icc (-T) T := fun h' => hx ⟨h.1, le_sub_iff_add_le.mpr h'.2⟩
      rw [windowTest_zero_off hT cs h', mul_zero]
    · rw [windowTest_zero_off hT cs h, zero_mul]
  have hrestrict :
      (∫ x : ℝ, f x * f (x + r)) = ∫ x in Icc (-T) (T - r), f x * f (x + r) :=
    (setIntegral_eq_integral_of_forall_compl_eq_zero hzero).symm
  have hpoly :
      (∫ x in Icc (-T) (T - r), f x * f (x + r)) =
        ∫ x in Icc (-T) (T - r),
          rationalWindowPolynomialTest T cs x * rationalWindowPolynomialTest T cs (x + r) := by
    apply setIntegral_congr_fun measurableSet_Icc
    intro x hx
    have h : x ∈ Icc (-T) T := ⟨hx.1, by linarith [hx.2]⟩
    have h' : x + r ∈ Icc (-T) T := ⟨by linarith [hx.1], by linarith [hx.2]⟩
    change rationalWindowTest T cs x * rationalWindowTest T cs (x + r) = _
    rw [windowTest_eq_polynomial hT cs h, windowTest_eq_polynomial hT cs h']
  unfold correlation
  change (∫ x : ℝ, conj (liftReal f x) * liftReal f (x + r)) = _
  simp only [liftReal, Complex.conj_ofReal, ← Complex.ofReal_mul]
  rw [integral_complex_ofReal, hrestrict, hpoly]

/-- The original signed prime term for a normalized code uses exactly the
polynomial overlap integral at each of its original logarithmic shifts. -/
theorem twistedPrime_normalizedCode_eq_overlap {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ) :
    let T : ℝ := (j : ℝ) + 1
    let normalized := cs.map (fun c => rationalWindowMassScale
      (rationalWindowMass ((j : ℚ) + 1) cs) * c)
    twistedPrime T χ (fun n => correlation
      (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ))) =
    twistedPrime T χ (fun n =>
      ((∫ x in Icc (-T) (T - Real.log (n : ℝ)),
        rationalWindowPolynomialTest T normalized x *
          rationalWindowPolynomialTest T normalized (x + Real.log (n : ℝ))) : ℝ)) := by
  dsimp only
  apply congrArg (twistedPrime ((j : ℝ) + 1) χ)
  funext n
  have hlog : 0 ≤ Real.log (n : ℝ) := by
    cases n with
    | zero => simp
    | succ n => exact Real.log_nonneg (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n))
  exact correlation_rationalWindowTest_eq_overlap (by positivity) hlog _

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
