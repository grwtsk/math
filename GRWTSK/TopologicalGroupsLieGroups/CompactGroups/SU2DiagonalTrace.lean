/- Copyright (c) 2026 grwtsk contributors. MIT.
The actual special-unitary matrix construction retains Shing Tak Lam's
upstream attribution. Imported Mathlib retains its authorship/licenses. -/
import GRWTSK.TopologicalGroupsLieGroups.CompactGroups.SU2Topology
import Mathlib.Data.Fin.VecNotation
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Ring

/-!
# Actual diagonal SU(2) elements with every prescribed real trace in [-2,2]

The matrix is diag(z,conj z), on the existing Mat2/SU2 carrier. Both the
unitarity equation and determinant one are proved. For r in [-2,2], take
z=(r/2)+i*sqrt(1-(r/2)^2). This pays the full closed interval, including
its endpoints, without an assumed nonconstant-loop or range certificate.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.SU2DiagonalTrace

open GRWTSK.Geometry.GaugeTheory.SU2Wilson

def diagonalMatrix (z : ℂ) : Mat2 := Matrix.diagonal ![z, star z]

theorem diagonalMatrix_mem (z : ℂ) (hz : Complex.normSq z = 1) :
    diagonalMatrix z ∈ Matrix.specialUnitaryGroup (Fin 2) ℂ := by
  have hm : z * star z = (1 : ℂ) := by
    simp only [Complex.star_def, Complex.mul_conj, hz, Complex.ofReal_one]
  have hm' : star z * z = (1 : ℂ) := by
    rw [mul_comm]
    exact hm
  rw [Matrix.mem_specialUnitaryGroup_iff]
  constructor
  · apply Matrix.mem_unitaryGroup_iff.mpr
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [diagonalMatrix, Matrix.mul_apply, Matrix.star_apply,
        Fin.sum_univ_two, hm, hm']
  · simp [diagonalMatrix, Matrix.det_diagonal, Fin.prod_univ_two, hm]

def diagonalSU2 (z : ℂ) (hz : Complex.normSq z = 1) : SU2 :=
  ⟨diagonalMatrix z, diagonalMatrix_mem z hz⟩

theorem diagonalSU2_trace (z : ℂ) (hz : Complex.normSq z = 1) :
    (Matrix.trace (matrix (diagonalSU2 z hz))).re = 2 * z.re := by
  change (Matrix.trace (diagonalMatrix z)).re = 2 * z.re
  simp [diagonalMatrix, Matrix.trace, Fin.sum_univ_two, Complex.star_def, two_mul]

def intervalEntry (r : ℝ) : ℂ := ⟨r / 2, Real.sqrt (1 - (r / 2) ^ 2)⟩

theorem intervalEntry_normSq (r : ℝ) (hr : r ∈ Set.Icc (-2 : ℝ) 2) :
    Complex.normSq (intervalEntry r) = 1 := by
  have hs : 0 ≤ 1 - (r / 2) ^ 2 := by
    have hp : 0 ≤ (2 - r) * (r + 2) :=
      mul_nonneg (sub_nonneg.mpr hr.2) (by linarith [hr.1])
    nlinarith
  rw [Complex.normSq_apply]
  change (r / 2) * (r / 2) +
    Real.sqrt (1 - (r / 2) ^ 2) * Real.sqrt (1 - (r / 2) ^ 2) = 1
  nlinarith [Real.sq_sqrt hs]

def intervalDiagonal (r : ℝ) (hr : r ∈ Set.Icc (-2 : ℝ) 2) : SU2 :=
  diagonalSU2 (intervalEntry r) (intervalEntry_normSq r hr)

theorem intervalDiagonal_trace (r : ℝ) (hr : r ∈ Set.Icc (-2 : ℝ) 2) :
    (Matrix.trace (matrix (intervalDiagonal r hr))).re = r := by
  change (Matrix.trace (matrix (diagonalSU2 (intervalEntry r)
    (intervalEntry_normSq r hr)))).re = r
  rw [diagonalSU2_trace]
  change 2 * (r / 2) = r
  ring

end GRWTSK.Geometry.GaugeTheory.SU2DiagonalTrace
