/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.ArithmeticBinaryCancellationZeroLeakage
import GRWTSK.OperatorTheory.CyclicStandardFourierPhase

set_option autoImplicit false
noncomputable section

/-! Exact cancellation source retains kinetic dispersion and its volume
scale. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCancellationKineticDispersion
open ArithmeticBinaryLabelCancellation CyclicStandardFourierPhase CyclicContinuumDispersionError
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability ArithmeticCyclicCharacterModes
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
variable (N : ℕ) [NeZero N]

theorem actual_cancelled_kinetic_mode (b : ZMod N → Bool) (u v τ a ξ : ℝ)
    (ha : a≠0) (hcancel : (u+v)*Real.log 2=2*(2*τ/a^2))
    (k : ℤ) (hmesh : a*ξ=fourierAngle N k) :
    hamiltonianOperator N (-τ/a^2)
      (arithmeticPotential N 3 modThreeQuadratic (binaryLabels N b) u v (2*τ/a^2))
      (modeVector N (fourierCharacter N k))=
      (discreteDispersion τ a ξ : ℂ) • modeVector N (fourierCharacter N k) := by
  rw [actual_binary_cancellation N b u v (2*τ/a^2) hcancel]
  exact actual_standard_fourier_dispersion N τ a ξ ha k hmesh

theorem first_mode_volume_scale (τ ℓ : ℝ) (hτ : 0≤τ) (hℓ : 0<ℓ) :
    discreteDispersion τ (ℓ/(N : ℝ)) (2*Real.pi/ℓ)≤4*Real.pi^2*τ/ℓ^2 := by
  have hN : 0<(N : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)
  have ha : 0<ℓ/(N : ℝ) := div_pos hℓ hN
  have hh := (dispersion_error τ (ℓ/(N : ℝ)) (2*Real.pi/ℓ) hτ ha).1
  have he : τ*(2*Real.pi/ℓ)^2=4*Real.pi^2*τ/ℓ^2 := by ring
  rw [he] at hh
  linarith

/- At N>1 the standard k=1 mode is nonconstant and the k=0 kinetic mode
has energy zero. With mesh a=ell/N its dispersion is at most the displayed
O(ell^-2) bound even for exactly cancelled actual binary potentials. Thus
zero potential leakage supplies no positive volume-uniform excitation
margin. Physical gauge/vacuum/form-core identification remains missing. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCancellationKineticDispersion
