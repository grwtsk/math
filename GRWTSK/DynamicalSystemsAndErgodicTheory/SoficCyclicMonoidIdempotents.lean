/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidCayley

/-!
# Idempotents of the ambient cyclic lasso monoid

For the original time-shift monoid with index `μ` and period `p > 0`, the
ambient identity has exponent zero. Below the cycle, doubling a positive
exponent either increases it or enters the cycle. On the cycle, an
idempotent must have residue zero, and the unique representative of that
residue in `[μ, μ + p)` is idempotent. The two cases coincide at `μ = 0`.

The classification distinguishes the ambient root used by
`canonicalLasso_iso_monoidCayleyGraph` and
`minimumExactRoot_iso_monoidCayleyGraph` from the internal cycle identity.
See math issue #1832.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley

variable {μ p : ℕ} {hp : 0 < p}

private theorem reduceExp_modEq (n : ℕ) : reduceExp μ p hp n ≡ n [MOD p] := by
  change reduceExp μ p hp n % p = n % p
  by_cases h : n < μ
  · simp [reduceExp, h]
  · rw [reduceExp, ite_eq_right h, Nat.add_mod_mod, Nat.add_sub_of_le (Nat.le_of_not_gt h)]

theorem reduceExp_add_self_eq_iff {a : ℕ} (ha : a < μ + p) :
    reduceExp μ p hp (a + a) = a ↔ a = 0 ∨ (μ ≤ a ∧ p ∣ a) := by
  constructor
  · intro h
    by_cases hcycle : μ ≤ a
    · right
      have hsum : a + a ≡ a + 0 [MOD p] := by
        rw [Nat.add_zero]
        calc
          a + a ≡ reduceExp μ p hp (a + a) [MOD p] := (reduceExp_modEq (hp := hp) _).symm
          _ = a := h
      exact ⟨hcycle, Nat.modEq_zero_iff_dvd.mp (Nat.ModEq.add_left_cancel' a hsum)⟩
    · left
      unfold reduceExp at h
      split at h <;> omega
  · rintro (rfl | ⟨hcycle, hdiv⟩)
    · simpa only [Nat.zero_add] using reduceExp_zero μ p hp
    · have hsum : a + a ≡ a [MOD p] := by
        simpa only [Nat.add_zero] using
          (Nat.ModEq.refl a).add (Nat.modEq_zero_iff_dvd.mpr hdiv)
      have hresidue : reduceExp μ p hp (a + a) ≡ a [MOD p] :=
        (reduceExp_modEq (hp := hp) (a + a)).trans hsum
      have hupper := reduceExp_lt μ p hp (a + a)
      have hlower : μ ≤ reduceExp μ p hp (a + a) := by
        rw [reduceExp, ite_eq_right (by omega : ¬ a + a < μ)]
        omega
      exact le_antisymm (hresidue.le_of_lt_add (by omega)) (hresidue.symm.le_of_lt_add (by omega))

namespace CyclicLassoMonoid

/-- Every ambient idempotent is the root or a cycle exponent divisible by `p`. -/
theorem mul_self_eq_iff_exp (m : CyclicLassoMonoid μ p hp) :
    m * m = m ↔ m.exp.val = 0 ∨ (μ ≤ m.exp.val ∧ p ∣ m.exp.val) := by
  rw [← reduceExp_add_self_eq_iff (hp := hp) m.exp.isLt]
  constructor
  · intro h
    exact congrArg (fun x : CyclicLassoMonoid μ p hp => x.exp.val) h
  · intro h
    exact CyclicLassoMonoid.ext (Fin.ext h)

end CyclicLassoMonoid

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley
