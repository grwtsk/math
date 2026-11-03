/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false

/-! Coherent-block obstruction to deriving signed upper control from a
bounded diagonal alone. These are artificial constant blocks, not the
actual Mertens source. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.AsymptoticAnalysis.SignedBlockCoherenceObstruction

def blockInternal (L r : ℝ) : ℝ := (L * r) ^ 2 - L * r ^ 2

theorem coherent_internal_identity (L r : ℝ) :
    blockInternal L r = L * (L - 1) * r ^ 2 := by
  unfold blockInternal
  ring

theorem coherent_diagonal_budget (L r : ℝ) (hL : 0 < L)
    (hr : r ^ 2 = 1 / (4 * L)) : L * r ^ 2 = 1 / 4 := by
  rw [hr]
  field_simp [ne_of_gt hL]
  <;> ring

theorem coherent_internal_growth (L r : ℝ) (hL : 0 < L)
    (hr : r ^ 2 = 1 / (4 * L)) : blockInternal L r = (L - 1) / 4 := by
  rw [coherent_internal_identity, hr]
  field_simp [ne_of_gt hL]
  <;> ring

end GRWTSK.Analysis.AsymptoticAnalysis.SignedBlockCoherenceObstruction
