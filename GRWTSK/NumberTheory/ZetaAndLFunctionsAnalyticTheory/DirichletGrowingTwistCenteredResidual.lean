/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingModThreeTwistSource

set_option autoImplicit false
noncomputable section

/-! Actual growing cyclic residual with both phase channels retained.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistCenteredResidual
open DirichletGrowingModThreeTwistSource DirichletModThreeQuadraticConstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N] (h3 : 3 ∣ N)

def evenPhase (k : ZMod N) : ℂ := (ZMod.stdAddChar k+ZMod.stdAddChar (-k))/2
def oddPhase (k : ZMod N) : ℂ := (ZMod.stdAddChar k-ZMod.stdAddChar (-k))/2

theorem phase_pair_centered (c cp cm zp zm : ℂ) (hs : cp+cm = -c) :
    zp*cp+zm*cm = -(zp+zm)/2*c+(zp-zm)/2*(cp-cm) := by
  linear_combination ((zp+zm)/2)*hs

theorem actual_growing_centered_residual (t w : ℝ) (λ : ℂ) (k j : ZMod N) :
    (hamiltonian N t
      (arithmeticPotential N 3 modThreeQuadratic (fun _ => 1) 0 0 w)).mulVec
      (twistedCharacter N h3 k) j - λ*twistedCharacter N h3 k j =
    ZMod.stdAddChar (k*j)*
      ((((w : ℂ)-(t : ℂ)*evenPhase N k)-λ)*pulledCharacter N h3 j+
       (t : ℂ)*oddPhase N k*
        (pulledCharacter N h3 (j+1)-pulledCharacter N h3 (j-1))) := by
  rw [hamiltonian_mulVec,actual_twisted_neighbor N h3 k j]
  have hp := phase_pair_centered (pulledCharacter N h3 j)
    (pulledCharacter N h3 (j+1)) (pulledCharacter N h3 (j-1))
    (ZMod.stdAddChar k) (ZMod.stdAddChar (-k)) (actual_pulled_neighbor N h3 j)
  rw [hp]
  simp only [arithmeticPotential,zero_mul,zero_add,modThreeQuadratic_one,
    Complex.one_re,mul_one]
  unfold twistedCharacter evenPhase oddPhase
  ring

/- evenPhase=cos(theta) and oddPhase=i*sin(theta) require the standard
finite-character angle bridge. This exact source residual retains every
cyclic coordinate, including character zeros. Residue-fiber norm assembly
and analytic-zero shrinking budgets remain unsupplied. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistCenteredResidual
