/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBoundaryAcceptance

set_option autoImplicit false

/-! Scope and identity controls only. NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.BoundaryAcceptanceControls

open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.RiemannHypothesis
open ConcreteNewtonPacket ConcreteNewtonBlockAcceptance ConcreteNewtonBoundaryAcceptance
open RationalZetaTranscript

theorem remaining_check_count : 63 + 1 = (64 : ℕ) := by norm_num

theorem first_remaining_label : (0 : Fin 63).succ = (1 : Fin 64) := rfl

theorem last_remaining_label : (Fin.last 62).succ = (63 : Fin 64) := rfl

/-- A positive result for the supplied first block does not replace block one. -/
theorem block_one_still_required (later : Fin prefixLength → State)
    (h : RemainingChecks later) :
    checkPrefix prefixLength center plan (completed later) (blockIndices 1) = true :=
  h.1 0

theorem last_block_still_required (later : Fin prefixLength → State)
    (h : RemainingChecks later) :
    checkPrefix prefixLength center plan (completed later) (blockIndices 63) = true :=
  h.1 (Fin.last 62)

/-- Exact final values, both errors and both tolerances remain checked. -/
theorem final_check_still_required (later : Fin prefixLength → State)
    (h : RemainingChecks later) :
    checkFinal prefixLength center plan (completed later)
      valueTolerance slopeTolerance claimed = true := h.2

/-- Position 64 is base 65, not another record supplied by the first block. -/
theorem first_uncovered_record (later : Fin prefixLength → State) :
    (completed later).prefix ⟨64, by norm_num [prefixLength]⟩ =
      later ⟨64, by norm_num [prefixLength]⟩ :=
  completed_later later _ (by norm_num)

/-- Base 4096 remains a prefix record; terminal 4097 cannot replace it. -/
theorem last_prefix_retained (later : Fin prefixLength → State) :
    (completed later).prefix ⟨4095, by norm_num [prefixLength]⟩ =
      later ⟨4095, by norm_num [prefixLength]⟩ :=
  completed_later later _ (by norm_num)

/-- Changing any remaining whole State prevents equality of filled transcripts. -/
theorem changed_remaining_record_rejected (f g : Fin prefixLength → State)
    (i : Fin prefixLength) (hi : 64 ≤ i.1) (hne : f i ≠ g i) : completed f ≠ completed g := by
  intro he
  exact hne (completion_injective_on_later f g he i hi)

end GRWTSK.NumberTheory.Chebyshev.Checks.BoundaryAcceptanceControls
