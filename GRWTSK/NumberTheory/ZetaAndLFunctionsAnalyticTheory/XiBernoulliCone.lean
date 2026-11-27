import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-! Exact comparisons for one logarithmic determinant inequality on nonnegative atoms. -/

namespace GRWTSK.XiBernoulliCone

/-- The polynomial difference splits into nonnegative terms on the entire positive ray. -/
theorem atom_difference (b : ℝ) :
    (1 + 10*b)^6 * (1 + 88*b) - (1 + 28*b)^3 * (1 + 54*b) =
      b * (9 + (1 - 54*b)^2 + 124*b^2) + 724592*b^4 +
        13800000*b^5 + 53800000*b^6 + 88000000*b^7 := by
  ring

/-- A single determinant atom obeys the product comparison for the coefficients (3,1,−1). -/
theorem atom_inequality {b : ℝ} (hb : 0 ≤ b) :
    (1 + 28*b)^3 * (1 + 54*b) ≤ (1 + 10*b)^6 * (1 + 88*b) := by
  apply sub_nonneg.mp
  rw [atom_difference]
  positivity

/-- Equality of this comparison can occur only at the zero atom. -/
theorem atom_strict {b : ℝ} (hb : 0 < b) :
    (1 + 28*b)^3 * (1 + 54*b) < (1 + 10*b)^6 * (1 + 88*b) := by
  apply sub_pos.mp
  rw [atom_difference]
  positivity

/-- The valid atom inequality multiplies over every finite list, with repetitions allowed. -/
theorem finite_atom_inequality {ι : Type*} (s : Finset ι) (b : ι → ℝ)
    (hb : ∀ i ∈ s, 0 ≤ b i) :
    (∏ i ∈ s, (1 + 28*b i)^3 * (1 + 54*b i)) ≤
      ∏ i ∈ s, (1 + 10*b i)^6 * (1 + 88*b i) := by
  apply Finset.prod_le_prod₀
  · intro i hi
    have := hb i hi
    positivity
  · intro i hi
    exact atom_inequality (hb i hi)

/-- The polynomial tested by pointwise nonnegativity in the Laplace representation. -/
def H (y : ℚ) : ℚ :=
  6*(1-y^5) - 3*(1-y^14) - (1-y^27) + (1-y^44)

/-- The stronger pointwise Laplace condition fails at a concrete rational argument. -/
theorem laplace_negative : H (19/20) < 0 := by
  norm_num [H]

/-- The exact projective Bernoulli moment ratio at the first three nontrivial samples. -/
theorem bernoulli_ratio :
    ((25/21 : ℚ)^3 * (5/3) / (625/231)) = 1375/1323 ∧ (1375/1323 : ℚ) < 2 := by
  norm_num

#print axioms atom_difference
#print axioms atom_inequality
#print axioms atom_strict
#print axioms finite_atom_inequality
#print axioms laplace_negative
#print axioms bernoulli_ratio

end GRWTSK.XiBernoulliCone
