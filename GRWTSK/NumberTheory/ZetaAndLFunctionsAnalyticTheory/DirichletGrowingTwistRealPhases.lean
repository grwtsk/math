/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingTwistCenteredResidual

set_option autoImplicit false
noncomputable section

/-! Actual finite phase coordinates, without selecting an argument branch.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistRealPhases
open DirichletGrowingTwistCenteredResidual DirichletGrowingModThreeTwistSource
open DirichletModThreeQuadraticConstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

theorem evenPhase_real (k : ZMod N) :
    evenPhase N k=((ZMod.stdAddChar k).re : ℂ) := by
  unfold evenPhase
  rw [AddChar.map_neg_eq_conj]
  apply Complex.ext <;> simp [Complex.div_re,Complex.div_im] <;> ring

theorem oddPhase_imaginary (k : ZMod N) :
    oddPhase N k=Complex.I*((ZMod.stdAddChar k).im : ℂ) := by
  unfold oddPhase
  rw [AddChar.map_neg_eq_conj]
  apply Complex.ext <;> simp [Complex.div_re,Complex.div_im] <;> ring

theorem actual_phase_unit_circle (k : ZMod N) :
    (ZMod.stdAddChar k).re^2+(ZMod.stdAddChar k).im^2=1 := by
  have hn : ‖ZMod.stdAddChar k‖=1 := by simp [ZMod.stdAddChar_apply]
  have hs : ‖ZMod.stdAddChar k‖^2=
      (ZMod.stdAddChar k).re^2+(ZMod.stdAddChar k).im^2 := by
    simp [Complex.sq_norm,Complex.normSq_apply,pow_two]
  rw [hn] at hs
  nlinarith

theorem actual_real_phase_residual (h3 : 3 ∣ N) (t w : ℝ) (λ : ℂ) (k j : ZMod N) :
    (hamiltonian N t
      (arithmeticPotential N 3 modThreeQuadratic (fun _ => 1) 0 0 w)).mulVec
      (twistedCharacter N h3 k) j-λ*twistedCharacter N h3 k j =
    ZMod.stdAddChar (k*j)*
      (((((w-t*(ZMod.stdAddChar k).re : ℝ) : ℂ)-λ)*pulledCharacter N h3 j)+
        Complex.I*((t*(ZMod.stdAddChar k).im : ℝ) : ℂ)*
          (pulledCharacter N h3 (j+1)-pulledCharacter N h3 (j-1))) := by
  rw [actual_growing_centered_residual N h3 t w λ k j,evenPhase_real,oddPhase_imaginary]
  push_cast
  ring

/- Full norm assembly still needs exact residue-fiber multiplicity. No
phase is discarded: its imaginary component is the leakage coefficient.
The genuine analytic zero-to-shrinking-full-vector budget remains missing. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistRealPhases
