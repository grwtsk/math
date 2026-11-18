/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors. -/
import Mathlib.Basic.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Finite spectral observations and labeled probes

Swapping the two coordinate projections preserves their characteristic
polynomial and changes the quadratic reading at the first coordinate.
Transporting the probe by the same unitary recovers its reading.

This gives a finite control for the source-readout hypothesis in
grwtsk/math#1819 and the source-identification hypothesis in grwtsk/math#124.
Applying the obstruction to either consumer requires identifying the actual
source observation and its admissible fibers.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSpectralProbe

open Matrix
open scoped Matrix

/-- The quadratic reading of a matrix at a specified probe. -/
def probeReadout {ι : Type*} [Fintype ι] (A : Matrix ι ι ℂ) (v : ι → ℂ) : ℂ :=
  star v ⬝ᵥ (A *ᵥ v)

/-- Transport both the matrix and the probe by the same unitary. -/
theorem probeReadout_unitary_transport {ι : Type*} [Fintype ι] [DecidableEq ι]
    (A U : Matrix ι ι ℂ) (hU : Uᴴ * U = 1) (v : ι → ℂ) :
    probeReadout (U * A * Uᴴ) (U *ᵥ v) = probeReadout A v := by
  have cancel (w : ι → ℂ) : Uᴴ *ᵥ (U *ᵥ w) = w := by
    rw [mulVec_mulVec, hU, one_mulVec]
  unfold probeReadout
  rw [star_mulVec, ← mulVec_mulVec, ← mulVec_mulVec, cancel, ← dotProduct_mulVec, cancel]

/-- Two unitary-conjugate Hermitian matrices have the same characteristic
polynomial and different readings at the fixed first-coordinate probe. -/
theorem exists_charpoly_eq_probeReadout_zero_one :
    ∃ A B U : Matrix (Fin 2) (Fin 2) ℂ,
      A.IsHermitian ∧ B.IsHermitian ∧ Uᴴ * U = 1 ∧
      B = U * A * Uᴴ ∧ A.charpoly = B.charpoly ∧
      probeReadout A ![1, 0] = 0 ∧ probeReadout B ![1, 0] = 1 := by
  let A : Matrix (Fin 2) (Fin 2) ℂ := diagonal ![0, 1]
  let B : Matrix (Fin 2) (Fin 2) ℂ := diagonal ![1, 0]
  let U : Matrix (Fin 2) (Fin 2) ℂ := !![0, 1; 1, 0]
  have hU : Uᴴ * U = 1 := by
    ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [U, conjTranspose_apply, mul_apply, Fin.sum_univ_two, one_apply]
  have hB : B = U * A * Uᴴ := by
    ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [A, B, U, conjTranspose_apply, mul_apply, vecMul_diagonal, Fin.sum_univ_two]
  refine ⟨A, B, U, ?_, ?_, hU, hB, ?_, ?_, ?_⟩
  · change (diagonal (![0, 1] : Fin 2 → ℂ)).IsHermitian
    rw [isHermitian_diagonal_iff]
    intro i
    fin_cases i <;> simp [IsSelfAdjoint]
  · change (diagonal (![1, 0] : Fin 2 → ℂ)).IsHermitian
    rw [isHermitian_diagonal_iff]
    intro i
    fin_cases i <;> simp [IsSelfAdjoint]
  · rw [hB, charpoly_mul_comm (U * A) Uᴴ, ← Matrix.mul_assoc, hU, one_mul]
  · norm_num [probeReadout, A, dotProduct, mulVec_diagonal, Fin.sum_univ_two]
  · norm_num [probeReadout, B, dotProduct, mulVec_diagonal, Fin.sum_univ_two]

/-- No function of the characteristic polynomial decodes the fixed first
coordinate reading on all Hermitian complex two-by-two matrices. -/
theorem no_charpoly_probeReadout_decoder :
    ¬ ∃ decode : Polynomial ℂ → ℂ,
      ∀ A : Matrix (Fin 2) (Fin 2) ℂ, A.IsHermitian →
        decode A.charpoly = probeReadout A ![1, 0] := by
  rintro ⟨decode, hdecode⟩
  obtain ⟨A, B, _, hA, hB, _, _, hpoly, hzero, hone⟩ := exists_charpoly_eq_probeReadout_zero_one
  have hAread : decode A.charpoly = 0 := (hdecode A hA).trans hzero
  have hBread : decode B.charpoly = 1 := (hdecode B hB).trans hone
  rw [hpoly, hBread] at hAread
  exact one_ne_zero hAread

end GRWTSK.Algebra.LinearAlgebra.FiniteSpectralProbe
