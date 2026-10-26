/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK sources retain original authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcCohomology
import Mathlib

set_option autoImplicit false

/-!
# Positive finite Hodge energy on the genuine four-contact cycle

The graph is the actual four-arc Bezier contact cycle, not a selected
rank DAG. Its coboundary was defined previously as the signed successor
difference. The positive coordinate pairing yields an explicit
adjoint, graph Laplacian, and nonnegative energy.

The constant one-edge cochain is nonzero, co-closed, and *not exact*.
This is a finite graph/cochain statement, not a full topological H1
isomorphism, geometric Selberg formula, or signed Weil positivity.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Source-compatible predecessor along the genuine oriented cycle. -/
def prev (i : Fin 4) : Fin 4 :=
  if i = 0 then 3 else if i = 1 then 0 else if i = 2 then 1 else 2

theorem next_prev (i : Fin 4) : next (prev i) = i := by
  fin_cases i <;> decide

theorem prev_next (i : Fin 4) : prev (next i) = i := by
  fin_cases i <;> decide

/-- Strictly positive definite coordinate pairing on finite 0- or
1-cochains; no indefinite Hermite data are imported. -/
def fourDot (f g : FourCochain) : ℝ :=
  ∑ i, f i * g i

/-- Adjoint of successor coboundary for the standard positive pairing. -/
def edgeAdjoint (g : FourCochain) : FourCochain :=
  fun i => g (prev i) - g i

/-- Actual degree-zero Laplacian δ*δ of the cyclic incidence graph. -/
def cycleLaplacian (f : FourCochain) : FourCochain :=
  edgeAdjoint (edgeDifference f)

/-- Exact finite summation-by-parts identity over the four contact edges. -/
theorem fourDot_adjoint (f g : FourCochain) :
    fourDot (edgeDifference f) g = fourDot f (edgeAdjoint g) := by
  simp [fourDot, edgeDifference, edgeAdjoint,
    Fin.sum_univ_four, prev, next] <;> ring

theorem cycleLaplacian_energy (f : FourCochain) :
    fourDot f (cycleLaplacian f) =
      fourDot (edgeDifference f) (edgeDifference f) :=
  (fourDot_adjoint f (edgeDifference f)).symm

/-- The actual graph Laplacian is positive semidefinite in the chosen
positive coordinate pairing, with no invented uniform spectral gap. -/
theorem cycleLaplacian_nonneg (f : FourCochain) :
    0 ≤ fourDot f (cycleLaplacian f) := by
  rw [cycleLaplacian_energy]
  unfold fourDot
  exact Finset.sum_nonneg (fun i _ =>
    mul_self_nonneg (edgeDifference f i))

/-- This finite graph Laplacian is symmetric with respect to the same
positive pairing; no claim about indefinite signed forms is made. -/
theorem cycleLaplacian_symmetric (f g : FourCochain) :
    fourDot f (cycleLaplacian g) =
      fourDot (cycleLaplacian f) g := by
  calc
    fourDot f (cycleLaplacian g) =
        fourDot (edgeDifference f) (edgeDifference g) :=
      (fourDot_adjoint f (edgeDifference g)).symm
    _ = fourDot (edgeDifference g) (edgeDifference f) := by
      simp [fourDot, mul_comm]
    _ = fourDot g (cycleLaplacian f) :=
      fourDot_adjoint g (edgeDifference f)
    _ = fourDot (cycleLaplacian f) g := by
      simp [fourDot, mul_comm]

/-- Closed source-contact graph retains the expected constant harmonic
zero mode, forbidding strict positive gap on the whole space. -/
theorem cycleLaplacian_constant_zero (c : ℝ) :
    cycleLaplacian (fun _ : Fin 4 => c) = 0 := by
  funext i
  simp [cycleLaplacian, edgeDifference, edgeAdjoint]

/-- The unit oriented edge circulation is co-closed. -/
theorem unit_edgeAdjoint_zero :
    edgeAdjoint (fun _ : Fin 4 => (1 : ℝ)) = 0 := by
  funext i
  simp [edgeAdjoint]

/-- Co-closedness does not entail exactness: the independent unit
circulation is a nonzero, nonexact finite one-cochain. -/
theorem unit_edge_harmonic_but_not_exact :
    edgeAdjoint (fun _ : Fin 4 => (1 : ℝ)) = 0 ∧
      ¬ ∃ f : FourCochain,
        edgeDifference f = (fun _ : Fin 4 => (1 : ℝ)) :=
  ⟨unit_edgeAdjoint_zero, constant_one_not_edgeDifference⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
