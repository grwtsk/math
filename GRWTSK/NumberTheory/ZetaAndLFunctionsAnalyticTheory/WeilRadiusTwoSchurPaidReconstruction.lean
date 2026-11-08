/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurPaidReconstructionData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoTrialProjection
import Mathlib.Tactic.NativeDecide

/-!
# Rank-four rational reconstruction for the radius-two bordered head

The retained 64 physical rows and the scalar pole row are the exact identity.
Modes 65 through 512 are reconstructed by the rank-four dyadic factors stored
in `WeilRadiusTwoSchurPaidReconstructionData`. The factors were proposed by
Schur optimization of the complete finite paid form, but the declarations
below use only their exact integer entries.

The exact coordinate-return theorem is the typed input required by the
existing radius-two whole-window consumer. No source sign, high floor,
`StageLower`, RH, or GRH conclusion is asserted in this file.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurPaidReconstruction

open RadiusTwoCandidateEntries RadiusTwoTrialProjection
open RadiusTwoSchurPaidReconstructionData

abbrev Head := RadiusTwoCandidateEntries.Head
abbrev Trial := RadiusTwoCandidateEntries.Trial

private abbrev Rank : ℕ := 4

def reconstructionBits : ℕ := 12
def reconstructionScale : ℚ := 2 ^ reconstructionBits

private def headNat : Head → ℕ
  | .inl i => i.val
  | .inr _ => 64

private def leftWord (i : Fin 448) (k : Fin Rank) : ℤ :=
  (left.getD i.val #[]).getD k.val 0

private def rightWord (k : Fin Rank) (j : Head) : ℤ :=
  (right.getD k.val #[]).getD (headNat j) 0

private def middleNumerator (i : Fin 448) (j : Head) : ℤ :=
  ∑ k : Fin Rank, leftWord i k * rightWord k j

/-- The exact rational reconstruction. Each middle entry is the rank-four
factor product divided by `2^24`. -/
def reconstructionQ : Matrix Trial Head ℚ
  | .inl i, .inl j =>
      if h : i.val < 64 then
        if i.val = j.val then 1 else 0
      else
        (middleNumerator ⟨i.val - 64, by have hi := i.isLt; omega⟩ (.inl j) : ℚ) /
          reconstructionScale ^ 2
  | .inl i, .inr _ =>
      if h : i.val < 64 then 0
      else
        (middleNumerator ⟨i.val - 64, by have hi := i.isLt; omega⟩ (.inr ()) : ℚ) /
          reconstructionScale ^ 2
  | .inr _, .inl _ => 0
  | .inr _, .inr _ => 1

def reconstruction : Matrix Trial Head ℝ :=
  reconstructionQ.map (Rat.castHom ℝ)

/-- Entrywise identity on every retained source row. -/
set_option maxHeartbeats 0 in
theorem reconstructionQ_head_entry :
    ∀ i j : Head,
      reconstructionQ (headSlot i) j = if i = j then 1 else 0 := by
  native_decide

theorem reconstruction_head_entry (i j : Head) :
    reconstruction (headSlot i) j = if i = j then 1 else 0 := by
  change ((reconstructionQ (headSlot i) j : ℚ) : ℝ) = _
  rw [reconstructionQ_head_entry]
  split_ifs <;> norm_num

/-- Exact return of every retained coordinate. -/
theorem reconstruction_match (v : Head → ℝ) (i : Head) :
    reconstruction.mulVec v (headSlot i) = v i := by
  classical
  unfold Matrix.mulVec dotProduct
  simp_rw [reconstruction_head_entry]
  simp

theorem reconstruction_head (v : Head → ℝ) (i : Fin 64) :
    reconstruction.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) =
      v (.inl i) := by
  simpa only [headSlot] using reconstruction_match v (.inl i)

theorem reconstruction_pole (v : Head → ℝ) :
    reconstruction.mulVec v (.inr ()) = v (.inr ()) := by
  simpa only [headSlot] using reconstruction_match v (.inr ())

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurPaidReconstruction
