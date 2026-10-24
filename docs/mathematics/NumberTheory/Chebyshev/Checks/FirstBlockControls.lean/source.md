# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.FirstBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52c47b587b693a6474e3b827db5f5010345ce1fa` · SHA-256 `7557c67ecc6154663201b06f204d040d894deee86b7f8559f79610b596df2576`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlock

set_option autoImplicit false

/-! Boundary controls are source proof drafts, not executed tests.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.FirstBlockControls

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace EuclideanDyadicRun
open GRWTSK.RiemannHypothesis
open ConcreteNewtonPacket ConcreteNewtonFirstBlockData ConcreteNewtonFirstBlock

theorem first_last_bases : base 0 = 1 ∧ base (Fin.last 63) = 64 := by
  norm_num [base, Fin.last]

theorem boundary_log_reduction : (schedule 64).logExponent = 6 ∧
    RationalPowerEvaluation.mantissa 64 (schedule 64) = 1 := by
  norm_num [schedule, logExponent, RationalPowerEvaluation.mantissa, scaleQ]

theorem sixtyfour_in_block : (⟨63, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈
    ConcreteNewtonBlockAcceptance.blockIndices 0 :=
  (mem_first_block _).mpr (by norm_num)

theorem sixtyfive_not_in_block : (⟨64, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉
    ConcreteNewtonBlockAcceptance.blockIndices 0 := by
  rw [mem_first_block]
  norm_num

theorem negative_floor_not_truncation : FloorWindow 4 (-1) (-1) ∧
    ¬ FloorWindow 4 (-1) 0 := by norm_num [FloorWindow]

theorem exact_ceiling_not_next : CeilingWindow 4 8 2 ∧ ¬ CeilingWindow 4 8 3 := by
  norm_num [CeilingWindow]

theorem zero_steps_keep_error (a : GridState) : iterate 64 a 0 = a := rfl

theorem quadratic_residue_rounds_up :
    (next 64 ⟨18446744073709551616, 0, 2⟩).errorPart = 7 := by
  norm_num [next, errorProduct, scaleZ]

theorem negative_error_blocked : ¬StepValid 64 ⟨0, 0, -1⟩ ⟨0, 0, 2⟩ := by
  norm_num [StepValid]

theorem unit_seed_keeps_allowance : (initial 0).errorPart = 2 := by norm_num [initial]

theorem later_record_unchanged (later : Fin prefixLength → State) (terminal : State)
    (i : Fin prefixLength) (hi : 64 ≤ i.1) :
    (fill later terminal).prefix i = later i := by
  simp only [fill, dif_neg (not_lt.mpr hi)]

theorem terminal_unchanged (later : Fin prefixLength → State) (terminal : State) :
    (fill later terminal).terminal = terminal := rfl

end GRWTSK.NumberTheory.Chebyshev.Checks.FirstBlockControls
```
