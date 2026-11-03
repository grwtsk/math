/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticCyclicHamiltonian

set_option autoImplicit false
noncomputable section

/-!
# Exact affine reflection of the signed arithmetic cyclic Hamiltonian

Reflection reverses the two hopping directions. The reflected potential is
retained explicitly, so a nonsymmetric arithmetic diagonal is not silently
assumed to preserve even and odd sectors. The commutator is the full diagonal
asymmetry, evaluated on the reflected vector.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No spectral realization, sector gap or arithmetic cancellation is supplied.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicReflection

open ArithmeticCyclicHamiltonian

variable (N : ℕ) [hN : NeZero N]
include hN

def reflection (a : ZMod N) (x : ZMod N → ℂ) : ZMod N → ℂ :=
  fun i => x (a - i)

def reflectedPotential (a : ZMod N) (q : ZMod N → ℝ) : ZMod N → ℝ :=
  fun i => q (a - i)

theorem reflection_involutive (a : ZMod N) (x : ZMod N → ℂ) :
    reflection N a (reflection N a x) = x := by
  funext i
  change x (a - (a - i)) = x i
  congr 1
  abel

/-- The actual signed matrix is intertwined with its reflected arithmetic diagonal. -/
theorem hamiltonian_reflection_intertwines
    (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ) (x : ZMod N → ℂ) :
    (hamiltonian N t (reflectedPotential N a q)).mulVec (reflection N a x) =
      reflection N a ((hamiltonian N t q).mulVec x) := by
  funext i
  have hp : a - (i + 1) = a - i - 1 := by abel
  have hm : a - (i - 1) = a - i + 1 := by abel
  simp only [hamiltonian_mulVec, reflection, reflectedPotential]
  rw [hp, hm]
  ring

/-- Sector preservation consumes literal reflection symmetry of the same potential. -/
theorem hamiltonian_reflection_commutes_of_symmetric
    (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (hq : ∀ i, q (a - i) = q i) (x : ZMod N → ℂ) :
    (hamiltonian N t q).mulVec (reflection N a x) =
      reflection N a ((hamiltonian N t q).mulVec x) := by
  have heq : reflectedPotential N a q = q := funext hq
  simpa only [heq] using hamiltonian_reflection_intertwines N a t q x

/-- Complete sector leakage: the hopping terms cancel, and no diagonal term is lost. -/
theorem reflection_commutator_apply
    (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ) (x : ZMod N → ℂ) (i : ZMod N) :
    (hamiltonian N t q).mulVec (reflection N a x) i -
        reflection N a ((hamiltonian N t q).mulVec x) i =
      ((q i - q (a - i) : ℝ) : ℂ) * x (a - i) := by
  have h := congrFun (hamiltonian_reflection_intertwines N a t q x) i
  rw [← h]
  simp only [hamiltonian_mulVec, reflectedPotential, reflection, Complex.ofReal_sub]
  ring

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicReflection
