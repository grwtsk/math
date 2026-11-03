/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib additive characters by Michael Stoll retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicOperatorStability
import Mathlib.Algebra.Group.AddChar
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact cyclic additive-character modes

For constant real potential v, every genuine additive character supplies
a nonzero full eigenvector of the actual cyclic stencil. Relative to the
constant mode, the eigenvalue difference is independent of v. Raising
raw energy by a constant potential therefore does not improve this
excitation difference. No physical Yang-Mills mode identification or
regulator-uniform lower bound is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterModes
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

def modeVector (ψ : AddChar (ZMod N) ℂ) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun i => ψ i)

def modeParameter (t v : ℝ) (ψ : AddChar (ZMod N) ℂ) : ℂ :=
  (t : ℂ) * (ψ 1 + ψ (-1)) + (v : ℂ)

theorem modeVector_ne_zero (ψ : AddChar (ZMod N) ℂ) : modeVector N ψ ≠ 0 := by
  intro h
  have he := congrArg (fun x : EuclideanSpace ℂ (ZMod N) => x 0) h
  simpa [modeVector] using he

theorem actual_character_eigenvector (t v : ℝ) (ψ : AddChar (ZMod N) ℂ) :
    hamiltonianOperator N t (fun _ => v) (modeVector N ψ) =
      modeParameter N t v ψ • modeVector N ψ := by
  apply WithLp.ofLp_injective 2
  rw [hamiltonianOperator_mulVec, WithLp.ofLp_smul]
  funext i
  rw [hamiltonian_mulVec]
  change (t : ℂ) * (ψ (i + 1) + ψ (i - 1)) + (v : ℂ) * ψ i =
    modeParameter N t v ψ * ψ i
  rw [sub_eq_add_neg, ψ.map_add_eq_mul, ψ.map_add_eq_mul]
  unfold modeParameter
  ring

theorem relative_mode_parameter (t v : ℝ) (ψ : AddChar (ZMod N) ℂ) :
    modeParameter N t v ψ - modeParameter N t v (1 : AddChar (ZMod N) ℂ) =
      (t : ℂ) * (ψ 1 + ψ (-1) - 2) := by
  simp [modeParameter]
  ring

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterModes
