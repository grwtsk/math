/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition

set_option autoImplicit false

/-!
# Small exact controls for contiguous finite computation

These are unexecuted Lean decisions, not acceptance of the large candidate.
Synthetic predicates and contributions are not actual zeta enclosures.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.JetBlockControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks

def good (_ : ℕ) : Bool := true

def badLast (i : ℕ) : Bool := decide (i ≠ 3)

def signed (i : ℕ) : ℤ := if i = 0 then 1 else if i = 1 then -1 else 0

theorem proper_partition : partition 4 2 [2,2] = true := by decide

theorem no_empty_cover : partition 4 64 [] = false := by decide

theorem no_zero_block : partition 4 4 [0,4] = false := by decide

theorem no_zero_cap : partition 4 0 [4] = false := by decide

theorem no_oversized_block : partition 4 2 [4] = false := by decide

theorem no_missing_suffix : partition 4 2 [2,1] = false := by decide

theorem no_extra_suffix : partition 4 4 [2,3] = false := by decide

/-- Signed block results may cancel without discarding their individual signs. -/
theorem signed_blocks : verify good signed 0 [1,1,2] [1,-1,0] = true := by decide

/-- Equal final totals do not validate incorrect local claims. -/
theorem forged_cancellation :
    ([1,-1,0] : List ℤ).sum = ([0,0,0] : List ℤ).sum ∧
      verify good signed 0 [1,1,2] [0,0,0] = false := by decide

theorem swapped_claims : verify good signed 0 [1,1,2] [-1,1,0] = false := by decide

theorem missing_claim : verify good signed 0 [1,1,2] [1,-1] = false := by decide

theorem extra_claim : verify good signed 0 [1,1,2] [1,-1,0,0] = false := by decide

/-- A passing prefix and a zero total do not establish full cell acceptance. -/
theorem last_cell_required :
    chunk badLast (fun _ => 0) 0 2 = some 0 ∧
      verify badLast (fun _ => 0) 0 [2,2] [0,0] = false := by decide

/-- Changing widths changes the actual consumed ranges, not just labels. -/
theorem changed_partition_needs_new_claims :
    verify good signed 0 [2,2] [0,0] = true ∧
      verify good signed 0 [1,3] [0,0] = false := by decide

/-- Failure and a successful zero contribution remain different constructors. -/
theorem failure_not_zero :
    chunk good (fun _ => 0) 0 1 = some 0 ∧
      chunk (fun _ => false) (fun _ => 0) 0 1 = none := by decide

/-- The last local chunk uses the global index, not a reset zero-based predicate. -/
theorem absolute_cursor : chunk badLast (fun _ => 0) 2 2 = none := by decide

/-- Only tiny shape facts are stated here, not the 38 large block equalities. -/
theorem target_decomposition_shape :
    HeightFifteenBlockDecomposition.widths.length = 38 ∧
      HeightFifteenBlockDecomposition.widths.sum = 2379 ∧
      HeightFifteenBlockDecomposition.expected.sum = 1 := by decide

end GRWTSK.RiemannHypothesis.Checks.JetBlockControls
