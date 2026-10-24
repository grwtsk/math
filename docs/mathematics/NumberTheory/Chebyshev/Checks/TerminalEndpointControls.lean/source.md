# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.TerminalEndpointControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38e85ee10e3d0c25cab6ef69a17c21152d3b8007` · SHA-256 `06233c9506a7e00adbb56d726ec5c1fadf5cf5aa3f9493fff1a87e339d4507d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint
import Mathlib.Tactic.Omega

set_option autoImplicit false

/-! Exact-scope controls. These proof scripts have NOT been run or audited. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.TerminalEndpointControls

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace RationalPowerIntegerSeed
open GRWTSK.RiemannHypothesis
open ConcreteNewtonPacket ConcreteNewtonTerminalSeed ConcreteNewtonTerminalEndpoint

/-- The terminal is the first omitted integer, not the last prefix base. -/
theorem terminal_base : prefixLength + 1 = 4097 := by norm_num [prefixLength]

theorem terminal_not_a_prefix_base (i : Fin prefixLength) : i.1 + 1 ≠ 4097 := by
  have hi : i.1 < 4096 := i.isLt
  omega

theorem reduction_not_mantissa_one :
    RationalPowerEvaluation.mantissa 4097 (schedule 4097) ≠ 1 := by
  rw [reduction_data.2.1]
  norm_num

theorem log_exponent_is_twelve : (schedule 4097).logExponent = 12 := reduction_data.1

/-- The 22-term seed is stage 21. Stage 22 is not a substitute. -/
theorem wrong_term_count_rejected :
    ¬Binding 4097 (RationalZetaCenterEvaluation.sourceExponent center) (schedule 4097) 22 encoding := by
  intro h
  have hd := h.degree_eq
  norm_num [schedule] at hd

/-- A squared/totalized representation does not excuse a zero denominator. -/
theorem zero_denominator_rejected : ¬Valid { encoding with argumentDen := 0 } := by
  intro h
  have hp := h.argumentDen_pos
  norm_num at hp

theorem negative_displacement_rejected : ¬Valid { encoding with displacementNum := -1 } := by
  intro h
  have hp := h.displacementNum_nonneg
  norm_num at hp

theorem initialization_error_retained : terminalStart.errorPart = 86 := rfl

theorem full_error_not_zero : 0 < terminalOutput.error := by norm_num [terminalOutput]

/-- Stored error numerators are not asserted monotone. All steps are checked. -/
theorem error_can_decrease :
    (terminalTrace (Fin.last 8)).errorPart < (terminalTrace ⟨7, by omega⟩).errorPart := by
  norm_num [terminalTrace, Fin.last]

theorem terminal_attachment_preserves_prefix (prefix : Fin prefixLength → State)
    (i : Fin prefixLength) : (withTerminal prefix).prefix i = prefix i := rfl

/-- This certifies one terminal record, not the unrelated prefix data. -/
theorem terminal_check_independent_of_prefix (f g : Fin prefixLength → State) :
    RationalZetaTranscript.checkTerminal prefixLength center plan (withTerminal f) =
      RationalZetaTranscript.checkTerminal prefixLength center plan (withTerminal g) := by
  calc
    _ = true := attached_terminal_check f
    _ = _ := (attached_terminal_check g).symm

end GRWTSK.NumberTheory.Chebyshev.Checks.TerminalEndpointControls
```
