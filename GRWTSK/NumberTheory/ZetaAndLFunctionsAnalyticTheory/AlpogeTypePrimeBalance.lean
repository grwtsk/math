import Mathlib.RingTheory.RamificationInertia.Basic
import Mathlib.NumberTheory.NumberField.Basic
import Mathlib.Tactic

/-! Global place-degree normalization and the type-prime terms in the
chosen row's signed lattice-size budget. -/

namespace GRWTSK.AlpogeTypePrimeBalance

open scoped BigOperators NumberField

/-- Fiber sum with the source's doubled size convention. -/
theorem prime_fiber {K : Type*} [Field K] [NumberField K]
    (p : Ideal ℤ) [p.IsPrime] [Fintype (p.primesOver (𝓞 K))] (logp y : ℝ) :
    ∑ w : p.primesOver (𝓞 K), (2*logp*y / (Module.finrank ℤ (𝓞 K) : ℝ)) *
      ((w.val.ramificationIdx ℤ * w.val.inertiaDeg ℤ : ℕ) : ℝ) = 2*logp*y := by
  rw [← Finset.mul_sum, ← Nat.cast_sum, Ideal.sum_ramification_inertia_eq_finrank]
  have h : (Module.finrank ℤ (𝓞 K) : ℝ) ≠ 0 := by
    rw [NumberField.RingOfIntegers.rank]
    exact_mod_cast Module.finrank_pos.ne'
  field_simp

/-- Exact signed contribution, including the same Fock term in gain and loss. -/
theorem type_balance (logp degree rowSum stabilizer error : ℝ) :
    2*logp*(-degree/2) -
      (2*logp*(stabilizer-degree/2+error)+rowSum*logp)
    = -(rowSum+2*stabilizer+2*error)*logp := by ring

/-- Half of a rational prime's log norm in each of the two CM directions. -/
theorem cm_direction (total left right : ℝ) (heq : left=right)
    (hs : left+right=total) : 2*right=total := by linarith

end GRWTSK.AlpogeTypePrimeBalance
