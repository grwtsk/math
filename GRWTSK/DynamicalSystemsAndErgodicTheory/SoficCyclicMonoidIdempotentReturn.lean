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

open SoficCyclicMonoidKernel SoficSingletonPrefixLassoUniqueness

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

/-- Multiplication by the cycle identity preserves enough information to
recover every complete label tail exactly when the lasso has no stem. -/
theorem exists_decode_labelTails_of_kernelOne_mul_iff {A : Type*} {x : ℕ → A}
    (h : LeastLassoParams x μ p) :
    (∃ decode : CyclicLassoMonoid μ p h.pos_p → ℕ → A,
      ∀ m k, decode ((kernelOneFormula μ p h.pos_p).toMonoid * m) k =
        x (m.exp.val + k)) ↔ μ = 0 := by
  let e := (kernelOneFormula μ p h.pos_p).toMonoid
  constructor
  · rintro ⟨decode, hdecode⟩
    by_contra hμ
    have he : e * e = e :=
      (CyclicLassoMonoid.mul_self_eq_iff_root_or_kernelOne e).2 (Or.inr rfl)
    have hepos : 0 < e.exp.val :=
      lt_of_lt_of_le (Nat.pos_of_ne_zero hμ) (kernelOneFormula μ p h.pos_p).ge_mu
    apply h.distinct_cuts 0 e.exp.val hepos e.exp.isLt
    intro k
    have hroot := hdecode 1 k
    have hcycle := hdecode e k
    change decode (e * 1) k = x (0 + k) at hroot
    change decode (e * e) k = x (e.exp.val + k) at hcycle
    rw [mul_one] at hroot
    rw [he] at hcycle
    exact hroot.symm.trans hcycle
  · intro hμ
    have he : e = 1 := CyclicLassoMonoid.kernelOneFormula_toMonoid_eq_one_iff.mpr hμ
    refine ⟨fun m k => x (m.exp.val + k), ?_⟩
    intro m k
    change x ((e * m).exp.val + k) = x (m.exp.val + k)
    rw [he, one_mul]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley
