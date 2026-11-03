/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficWordBlockExponentiation
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficWordPowerClosureScan

set_option autoImplicit false
noncomputable section

/-!
# Source-exact repeated-word return to the existing matrix-power scan

The existing scan reports an original word-lift matrix power.
The new composition theorem identifies its first projection with
an actual ONE-SOURCE graph walk matrix emitting literally k copies
of the same word, retaining each possible original intermediate
state and all Nat-valued path multiplicities. Its trace return is
therefore about genuine repeated source words, not merely an
arbitrary model matrix or a noninjective label-point quotient.

The scan remains linear in k because it also accumulates ALL prefix
traces; this bridge does not claim that scan itself is a binary-power
algorithm. Compilation, kernel and axiom checks remain NOT_RUN.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordBlockScanTransport

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordMatrixDynamicProgram
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordBlockExponentiation
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosureScan

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The existing shared power scanner's first component is
EXACTLY the source matrix for k literal copies of the word.
No quotient by the label observation is made. -/
theorem repeated_original_word_matrix_eq_scan
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (k : ℕ) :
    wordLiftMatrix G (finiteCopies word k) =
      (matrixPowerTraceScan (wordMatrixProduct G word) k).1 := by
  calc
    wordLiftMatrix G (finiteCopies word k) =
        (wordMatrixProduct G word) ^ k :=
      wordLiftMatrix_finiteCopies_eq_blockPower G word k
    _ = (matrixPowerTraceScan (wordMatrixProduct G word) k).1 := by
      rw [matrixPowerTraceScan_power]

/-- Trace is a consequence of exact matrix identity, not merely
matching a Boolean language or discarding duplicate source lifts. -/
theorem repeated_original_word_trace_eq_scan
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (k : ℕ) :
    Matrix.trace (wordLiftMatrix G (finiteCopies word k)) =
      Matrix.trace
        ((matrixPowerTraceScan (wordMatrixProduct G word) k).1) := by
  rw [repeated_original_word_matrix_eq_scan]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordBlockScanTransport
