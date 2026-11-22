/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidIdempotentReturn

/-!
# Group images of the exact-prefix lasso monoid

A homomorphism to a group sends the cycle idempotent to the identity, so
it cannot distinguish a state from its cycle projection. The existing
residue-fiber theorem makes this loss explicit. A nonempty stem therefore
prevents a faithful group-valued representation, including a representation
whose codomain is a unitary group. This does not exclude nonunitary operator
representations or dilations that retain additional state.

The consumer is the proposed lasso-to-conformal construction recorded in
`SoficCyclicMonoidGroupImage.md` and issue #1837. This module does not assert
that a cyclic monoid supplies a vertex operator algebra. No result of the
external manuscript is imported as a theorem or postulated as an axiom.

Source candidate. Elaboration, expected-type checks, fresh kernel replay,
transitive axiom audit, and independent review of this file: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidGroupImage

open SoficCyclicMonoidCayley SoficCyclicMonoidKernel

universe u
variable {μ p : ℕ} {hp : 0 < p} {G : Type u} [Group G]

/-- The internal cycle identity maps to the identity of every target group. -/
theorem map_kernelOne_eq_one (F : CyclicLassoMonoid μ p hp →* G) :
    F (kernelOneFormula μ p hp).toMonoid = 1 := by
  let e := (kernelOneFormula μ p hp).toMonoid
  have he : e * e = e :=
    (CyclicLassoMonoid.mul_self_eq_iff_root_or_kernelOne e).2 (Or.inr rfl)
  have h : F e * F e = F e * 1 := by
    calc
      F e * F e = F (e * e) := (F.map_mul e e).symm
      _ = F e := congrArg F he
      _ = F e * 1 := (mul_one (F e)).symm
  exact mul_left_cancel h

/-- Passing to a group forgets precisely at least the cycle-projection fibers. -/
theorem map_cycleProjection (F : CyclicLassoMonoid μ p hp →* G)
    (m : CyclicLassoMonoid μ p hp) :
    F ((kernelOneFormula μ p hp).toMonoid * m) = F m := by
  rw [F.map_mul, map_kernelOne_eq_one, one_mul]

/-- Equal normal-exponent residues are indistinguishable in every group image. -/
theorem map_eq_of_exp_modEq (F : CyclicLassoMonoid μ p hp →* G)
    (m n : CyclicLassoMonoid μ p hp)
    (h : m.exp.val ≡ n.exp.val [MOD p]) : F m = F n := by
  calc
    F m = F ((kernelOneFormula μ p hp).toMonoid * m) :=
      (map_cycleProjection F m).symm
    _ = F ((kernelOneFormula μ p hp).toMonoid * n) :=
      congrArg F ((CyclicLassoMonoid.kernelOne_mul_eq_iff_exp_modEq m n).2 h)
    _ = F n := map_cycleProjection F n

/-- A genuine transient stem rules out a faithful homomorphism to any group. -/
theorem not_injective_of_nonempty_stem (hμ : 0 < μ)
    (F : CyclicLassoMonoid μ p hp →* G) : ¬ Function.Injective F := by
  intro hinj
  have he : (kernelOneFormula μ p hp).toMonoid = (1 : CyclicLassoMonoid μ p hp) :=
    hinj ((map_kernelOne_eq_one F).trans (F.map_one.symm))
  have hzero : μ = 0 :=
    CyclicLassoMonoid.kernelOneFormula_toMonoid_eq_one_iff.mp he
  omega

/-- Restrict a group image to the actual kernel, whose identity is not in
    general the ambient identity. The identity obligation is proved above. -/
def restrictToKernel (F : CyclicLassoMonoid μ p hp →* G) :
    LassoKernel μ p hp →* G where
  toFun k := F k.toMonoid
  map_one' := by
    have h := map_kernelOne_eq_one F
    rw [kernelOneFormula_eq_one] at h
    exact h
  map_mul' x y := by
    rw [kernel_mul_toMonoid, F.map_mul]

/-- A concrete factorization through the cycle, using the original monoid
    product rather than a newly assigned multiplication on observations. -/
theorem factor_through_kernel (F : CyclicLassoMonoid μ p hp →* G)
    (m : CyclicLassoMonoid μ p hp) :
    restrictToKernel F (rightAbsorb (kernelOneFormula μ p hp) m) = F m := by
  change F ((kernelOneFormula μ p hp).toMonoid * m) = F m
  exact map_cycleProjection F m

/-- A pure cycle embeds into its existing cyclic kernel group. -/
def pureCycleEmbedding (p : ℕ) (hp : 0 < p) :
    CyclicLassoMonoid 0 p hp →* LassoKernel 0 p hp where
  toFun m := ⟨m, Nat.zero_le _⟩
  map_one' := by
    apply LassoKernel.ext
    have he := (CyclicLassoMonoid.kernelOneFormula_toMonoid_eq_one_iff
      (μ := 0) (p := p) (hp := hp)).2 rfl
    rw [kernelOneFormula_eq_one] at he
    exact he.symm
  map_mul' m n := by
    apply LassoKernel.ext
    exact (kernel_mul_toMonoid _ _).symm

/-- The obstruction is sharp: with empty stem the group map is faithful. -/
theorem pureCycleEmbedding_injective (p : ℕ) (hp : 0 < p) :
    Function.Injective (pureCycleEmbedding p hp) := by
  intro m n h
  exact congrArg LassoKernel.toMonoid h

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidGroupImage
