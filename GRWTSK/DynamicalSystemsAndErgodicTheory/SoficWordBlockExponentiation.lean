/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficWordMatrixDynamicProgram
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleRepeatBridge

set_option autoImplicit false
noncomputable section

/-!
# Exact block composition for original labeled-word path multiplicities

The original `wordLiftMatrix` counts actual `LabeledWalkData` witnesses,
not distinct emitted label words. Splitting a word into two blocks
preserves every original graph state and source edge via matrix
multiplication over Nat. Repeating one complete block k times has
exact matrix `wordLiftMatrix G word ^ k`, including empty words,
empty state carriers, and parallel label choices across states.

This creates a reusable source-fidelity bridge for repeated-block
matrix-power evaluation. A binary-power implementation can exploit
it, while an all-prefix power trace scan remains a separate consumer.
No kernel acceptance or native execution-time speedup is inferred.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordBlockExponentiation

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordMatrixDynamicProgram
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Exact dynamic-programming composition for any split of the
ORIGINAL word, including the empty split and empty state carrier.
This is a matrix-valued monoid law; no Boolean collapse occurs. -/
theorem wordMatrixProduct_append
    (G : LabeledGraph State Alphabet)
    (prefix suffix : List Alphabet) :
    wordMatrixProduct G (prefix ++ suffix) =
      wordMatrixProduct G prefix * wordMatrixProduct G suffix := by
  induction suffix using List.reverseRecOn with
  | nil =>
      simp [wordMatrixProduct]
  | append_singleton tail letter ih =>
      calc
        wordMatrixProduct G (prefix ++ (tail ++ [letter])) =
            wordMatrixProduct G ((prefix ++ tail) ++ [letter]) := by
          rw [List.append_assoc]
        _ = wordMatrixProduct G (prefix ++ tail) *
              letterStepMatrix G letter :=
          wordMatrixProduct_snoc G (prefix ++ tail) letter
        _ = (wordMatrixProduct G prefix * wordMatrixProduct G tail) *
              letterStepMatrix G letter := by rw [ih]
        _ = wordMatrixProduct G prefix *
              (wordMatrixProduct G tail * letterStepMatrix G letter) := by
          rw [mul_assoc]
        _ = wordMatrixProduct G prefix *
              wordMatrixProduct G (tail ++ [letter]) := by
          rw [wordMatrixProduct_snoc]

/-- The concatenation law is about the ORIGINAL path-witness
cardinal matrix, not merely an approximate or support matrix. -/
theorem wordLiftMatrix_append
    (G : LabeledGraph State Alphabet)
    (prefix suffix : List Alphabet) :
    wordLiftMatrix G (prefix ++ suffix) =
      wordLiftMatrix G prefix * wordLiftMatrix G suffix := by
  calc
    wordLiftMatrix G (prefix ++ suffix) =
        wordMatrixProduct G (prefix ++ suffix) :=
      wordLiftMatrix_eq_wordMatrixProduct G _
    _ = wordMatrixProduct G prefix * wordMatrixProduct G suffix :=
      wordMatrixProduct_append G prefix suffix
    _ = wordLiftMatrix G prefix * wordLiftMatrix G suffix := by
      rw [wordLiftMatrix_eq_wordMatrixProduct G prefix,
          wordLiftMatrix_eq_wordMatrixProduct G suffix]

/-- Repeating an actual word k times is EXACTLY the k-th power
of its source matrix. This is stronger than an existence/
positivity claim and retains all individual lift multiplicities. -/
theorem wordLiftMatrix_finiteCopies
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (k : ℕ) :
    wordLiftMatrix G (finiteCopies word k) =
      (wordLiftMatrix G word) ^ k := by
  induction k with
  | zero =>
      simpa [finiteCopies] using wordLiftMatrix_nil G
  | succ k ih =>
      change wordLiftMatrix G (finiteCopies word k ++ word) =
        (wordLiftMatrix G word) ^ (k + 1)
      rw [wordLiftMatrix_append, ih, pow_succ]

/-- The dynamic per-letter product of the original block can be
powered instead of refolding its k-fold literal concatenation. -/
theorem wordLiftMatrix_finiteCopies_eq_blockPower
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (k : ℕ) :
    wordLiftMatrix G (finiteCopies word k) =
      (wordMatrixProduct G word) ^ k := by
  calc
    wordLiftMatrix G (finiteCopies word k) =
        (wordLiftMatrix G word) ^ k :=
      wordLiftMatrix_finiteCopies G word k
    _ = (wordMatrixProduct G word) ^ k := by
      rw [wordLiftMatrix_eq_wordMatrixProduct G word]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordBlockExponentiation
