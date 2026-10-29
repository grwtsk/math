import Mathematics.Polynomial.Interval

/-!
# Certified cubic interval values

The coefficients and interval endpoints are type indices.  A witness stores
only the proposed value and the proof that it is the genuine interval
integral; no second cubic carrier or mutable correctness flag is introduced.
-/

namespace Mathematics.Polynomial

open scoped Interval

/--
One proof-bearing value of the interval integral of a canonical real cubic.
The six real parameters are indices, so a witness cannot be rebound to another
cubic or interval.
-/
structure CubicIntegralWitness
    (a b c d lower upper : ℝ) : Type where
  value : ℝ
  value_eq_integral :
    value = ∫ x in lower..upper, (cubic a b c d).eval x

/-- The witness's defining equality, exposed as the source-facing theorem. -/
theorem CubicIntegralWitness.correct
    {a b c d lower upper : ℝ}
    (witness : CubicIntegralWitness a b c d lower upper) :
    witness.value = ∫ x in lower..upper, (cubic a b c d).eval x :=
  witness.value_eq_integral

/--
The source corpus's endpoint-difference expression is recovered from the
genuine integral by the fundamental theorem of calculus.
-/
theorem CubicIntegralWitness.correct_endpointDifference
    {a b c d lower upper : ℝ}
    (witness : CubicIntegralWitness a b c d lower upper) :
    witness.value =
      cubicPotentialDifference a b c d lower upper := by
  rw [witness.value_eq_integral, intervalIntegral_cubic]

/-- The canonical endpoint difference constructs a certified witness. -/
noncomputable def cubicIntegralWitness
    (a b c d lower upper : ℝ) :
    CubicIntegralWitness a b c d lower upper where
  value := cubicPotentialDifference a b c d lower upper
  value_eq_integral := (intervalIntegral_cubic a b c d lower upper).symm

@[simp] theorem cubicIntegralWitness_value
    (a b c d lower upper : ℝ) :
    (cubicIntegralWitness a b c d lower upper).value =
      cubicPotentialDifference a b c d lower upper :=
  rfl

end Mathematics.Polynomial
