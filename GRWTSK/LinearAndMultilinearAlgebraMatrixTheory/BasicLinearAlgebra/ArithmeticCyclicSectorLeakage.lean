/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicReflection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-! Exact leakage of the actual cyclic operator between reflection sectors.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
These finite identities supply neither sector coercivity nor a continuum Yang–Mills gap. -/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSectorLeakage
open ArithmeticCyclicHamiltonian ArithmeticCyclicReflection
variable (N : ℕ) [NeZero N]

def evenPart (a : ZMod N) (x : ZMod N → ℂ) : ZMod N → ℂ :=
  fun i => (x i + reflection N a x i) / 2
def oddPart (a : ZMod N) (x : ZMod N → ℂ) : ZMod N → ℂ :=
  fun i => (x i - reflection N a x i) / 2
def asymmetricPotential (a : ZMod N) (q : ZMod N → ℝ) : ZMod N → ℝ :=
  fun i => (q i - q (a - i)) / 2

theorem even_input_leakage (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (x : ZMod N → ℂ) (hx : reflection N a x = x) (i : ZMod N) :
    oddPart N a ((hamiltonian N t q).mulVec x) i =
      (asymmetricPotential N a q i : ℂ) * x i := by
  have h := reflection_commutator_apply N a t q x i
  rw [hx] at h
  have hi := congrFun hx i
  change x (a - i) = x i at hi
  rw [hi] at h
  simp only [oddPart, asymmetricPotential, Complex.ofReal_div,
    Complex.ofReal_sub, Complex.ofReal_ofNat]
  linear_combination h / 2

theorem odd_input_leakage (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (x : ZMod N → ℂ) (hx : reflection N a x = -x) (i : ZMod N) :
    evenPart N a ((hamiltonian N t q).mulVec x) i =
      (asymmetricPotential N a q i : ℂ) * x i := by
  have h := congrFun (hamiltonian_reflection_intertwines N a t q x) i
  rw [hx] at h
  simp only [hamiltonian_mulVec, reflectedPotential, Pi.neg_apply] at h
  simp only [evenPart, asymmetricPotential, Complex.ofReal_div,
    Complex.ofReal_sub, Complex.ofReal_ofNat]
  rw [← h]
  simp only [hamiltonian_mulVec]
  ring

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSectorLeakage
