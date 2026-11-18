/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidIdempotents
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidKernel

/-!
# Ambient idempotents and the cycle identity

The two exponent cases give identities in the original monoid. Exponent zero
is the ambient identity. A cycle exponent divisible by the period gives a
kernel element equal to the explicit cycle identity. Its ambient image agrees
with the root precisely when the stem is empty. This distinguishes the root
in `minimumExactRoot_iso_monoidCayleyGraph` from the cycle identity.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley

open SoficCyclicMonoidKernel

variable {μ p : ℕ} {hp : 0 < p}

theorem CyclicLassoMonoid.mul_self_eq_iff_root_or_kernelOne
    (m : CyclicLassoMonoid μ p hp) :
    m * m = m ↔ m = 1 ∨ m = (kernelOneFormula μ p hp).toMonoid := by
  rw [mul_self_eq_iff_exp]
  constructor
  · rintro (hzero | ⟨hcycle, hdiv⟩)
    · exact Or.inl (CyclicLassoMonoid.ext (Fin.ext hzero))
    · let x : LassoKernel μ p hp := ⟨m, hcycle⟩
      have hx : x = 1 := (kernel_eq_one_iff_dvd μ p hp x).2 hdiv
      exact Or.inr (congrArg LassoKernel.toMonoid (hx.trans (kernelOneFormula_eq_one μ p hp).symm))
  · rintro (rfl | rfl)
    · exact Or.inl rfl
    · refine Or.inr ⟨(kernelOneFormula μ p hp).ge_mu, ?_⟩
      rw [kernelOneFormula_eq_one]
      exact kernel_one_exp_dvd μ p hp

theorem CyclicLassoMonoid.kernelOneFormula_toMonoid_eq_one_iff :
    (kernelOneFormula μ p hp).toMonoid = (1 : CyclicLassoMonoid μ p hp) ↔ μ = 0 := by
  constructor
  · intro h
    have hcycle := (kernelOneFormula μ p hp).ge_mu
    rw [h] at hcycle
    change μ ≤ 0 at hcycle
    exact Nat.eq_zero_of_le_zero hcycle
  · intro h
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    change μ + (p - μ % p) % p = 0
    simp [h]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley
