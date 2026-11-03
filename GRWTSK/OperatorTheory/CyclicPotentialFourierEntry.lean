/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib circle characters retain upstream authorship and licenses. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicCharacterModes
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual diagonal potential entries in genuine Fourier modes.
The full N factor is retained explicitly. No Fourier-tail or physical
sector bound is inferred. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialFourierEntry
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicCharacterModes ArithmeticCyclicOperatorStability
open ZMod AddChar
variable (N : ℕ) [NeZero N]

def rawFourierMode (k : ZMod N) : EuclideanSpace ℂ (ZMod N) :=
  modeVector N ((stdAddChar (N := N)).mulShift k)

def potentialFourierCoefficient (q : ZMod N → ℝ) (r : ZMod N) : ℂ :=
  (N : ℂ)⁻¹ * ∑ j : ZMod N, (q j : ℂ)*stdAddChar ((-r)*j)

theorem fourier_phase_product (k l j : ZMod N) :
    star (stdAddChar (k*j))*stdAddChar (l*j) = stdAddChar ((l-k)*j) := by
  rw [Complex.star_def, ← map_neg_eq_conj, ← map_add_eq_mul]
  congr 1
  ring

theorem actual_potential_fourier_entry (q : ZMod N → ℝ) (k l : ZMod N) :
    (N : ℂ)⁻¹ * inner ℂ (rawFourierMode N k)
      (diagonalOperator N q (rawFourierMode N l)) = potentialFourierCoefficient N q (k-l) := by
  unfold potentialFourierCoefficient
  congr 1
  rw [PiLp.inner_apply]
  apply Finset.sum_congr rfl
  intro j _
  have hd := congrFun (diagonalOperator_mulVec N q (rawFourierMode N l)) j
  change diagonalOperator N q (rawFourierMode N l) j = _ at hd
  rw [hd, RCLike.inner_apply]
  change star (stdAddChar (k*j))*((q j : ℂ)*stdAddChar (l*j)) = _
  have he : -(k-l)=l-k := by ring
  rw [he]
  calc
    _ = (q j : ℂ)*(star (stdAddChar (k*j))*stdAddChar (l*j)) := by ring
    _ = _ := by rw [fourier_phase_product]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialFourierEntry
