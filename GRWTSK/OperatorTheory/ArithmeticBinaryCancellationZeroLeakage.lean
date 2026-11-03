/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.ArithmeticBinaryLabelCancellation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Supplied exact cancellation gives zero actual potential-sector leakage.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticBinaryCancellationZeroLeakage
open ArithmeticBinaryLabelCancellation ArithmeticCyclicSecondVariation
open CyclicExplicitBandLeakageBudget CyclicIntegerLiftBufferedBands
open CyclicBufferedPotentialTailBound CyclicPotentialConvolutionConjugacy CyclicPotentialFourierEntry
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
variable (N : ℕ) [NeZero N]

theorem actual_binary_cancellation_zero_leakage (b : ZMod N → Bool) (u v w : ℝ)
    (hcancel : (u+v)*Real.log 2=2*w) (K₀ L K : ℕ) (hK : K₀+L≤K)
    (x : EuclideanSpace ℂ (ZMod N)) (hx : ∀ l ∉ frequencyBand N K₀, x l=0) :
    outsideMask N (frequencyBand N K)
      (potentialConvolution N (arithmeticPotential N 3 modThreeQuadratic (binaryLabels N b) u v w) x)=0 := by
  let q := arithmeticPotential N 3 modThreeQuadratic (binaryLabels N b) u v w
  have hd : secondDifference N q=0 := by
    dsimp [q]
    rw [actual_binary_cancellation N b u v w hcancel]
    funext i
    simp [secondDifference]
  have ht : (∑ r ∈ Finset.univ \ frequencyBand N L,
      ‖potentialFourierCoefficient N (secondDifference N q) r‖)=0 := by
    rw [hd]
    simp [potentialFourierCoefficient]
  have hb := actual_explicit_band_leakage N K₀ L K hK q x hx
  rw [ht,zero_div,zero_mul] at hb
  exact norm_eq_zero.mp (le_antisymm hb (norm_nonneg _))

/- This actual source supplies the leakage premise exactly for all binary
patterns and sizes satisfying the displayed buffer inclusion. It supplies
no gauge-sector identification, vacuum/form-core construction or positive
joint regulator/volume mass margin. Zero leakage is not a mass gap. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticBinaryCancellationZeroLeakage
