/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.CyclicPopcornKernel
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidKernel

/-!
# Pull the popcorn reference back to the actual lasso cycle

Reuse the existing kernel carrier and residue equivalence. No transient
state is discarded by an asserted faithful map. The new matrix is positive
semidefinite because it is a submatrix of the explicit cyclic Gram kernel.
The pullback is indexed by absolute exponent residue, not the raw offset
from the first cyclic state. These differ when the kernel identity is not
at the first cycle position.

Elaboration, exact types, fresh kernel replay, transitive axiom audit and
independent review: NOT_RUN. This is a source candidate, not an RH theorem.
-/

set_option autoImplicit false
noncomputable section
open Matrix

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicPopcornKernel

open SoficCyclicMonoidKernel
open GRWTSK.NumberTheory.CyclicPopcorn

/-- Absolute residue in the original cyclic monoid. -/
def phase {μ p : ℕ} (hp : 0 < p) (x : LassoKernel μ p hp) : Fin p :=
  ⟨x.toMonoid.exp.val % p, Nat.mod_lt _ hp⟩

/-- The actual lasso cycle, with no invented second group carrier. -/
def lassoKernel (μ p : ℕ) (hp : 0 < p) :
    Matrix (LassoKernel μ p hp) (LassoKernel μ p hp) ℝ :=
  (kernel p).submatrix (phase hp) (phase hp)

theorem phase_injective {μ p : ℕ} (hp : 0 < p) :
    Function.Injective (phase (μ := μ) hp) := by
  intro x y h
  apply (kernelResidueEquiv μ p hp).injective
  rw [kernelResidueEquiv_apply, kernelResidueEquiv_apply]
  apply (ZMod.natCast_eq_natCast_iff _ _ p).mpr
  exact congrArg Fin.val h

theorem lassoKernel_posDef (μ p : ℕ) (hp : 0 < p) :
    (lassoKernel μ p hp).PosDef :=
  (kernel_posDef hp).submatrix (phase_injective hp)

theorem lassoKernel_isHermitian (μ p : ℕ) (hp : 0 < p) :
    (lassoKernel μ p hp).IsHermitian :=
  (lassoKernel_posDef μ p hp).isHermitian

@[simp] theorem lassoKernel_diag (μ p : ℕ) (hp : 0 < p)
    (x : LassoKernel μ p hp) : lassoKernel μ p hp x x = 1 :=
  kernel_diag hp _

/-- Explicit entry return to the cyclic arithmetic kernel. -/
theorem lassoKernel_entry (μ p : ℕ) (hp : 0 < p)
    (x y : LassoKernel μ p hp) :
    lassoKernel μ p hp x y =
      (Nat.gcd ((phase hp x).val + p - (phase hp y).val) p : ℝ) / (p : ℝ) :=
  kernel_eq_gcd hp _ _

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicPopcornKernel
