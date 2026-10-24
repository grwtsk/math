# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `070e0fe9efc69aa4b66826b61e22a54b0647bcff` · SHA-256 `ce907e760392f749294729202494fa977a80a0cbc4fbb860fccaf298fd402fd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalSeed
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance
import Mathlib.Tactic.FinCases

set_option autoImplicit false

/-!
# A separate source proof draft for terminal endpoint 4097

All seed identities and every transition are supplied in source form. No
SourceAcceptance or endpoint-computation equality is an input. The literal
terminal record can be attached to any prefix, but certifies NO prefix entry.
The old SourceAcceptance and six-field final check are not changed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonTerminalEndpoint

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace RationalPowerIntegerSeed
open ConcreteNewtonPacket RationalZetaCenterEvaluation
open ConcreteNewtonTerminalSeed ConcreteNewtonBlockAcceptance

/-- Every coordinate and error, including the initialized state. -/
def terminalTrace (j : Fin 9) : GridState :=
  match j.1 with
  | 0 => terminalStart
  | 1 => ⟨10838898718460479810, -14191221431379019034, 229⟩
  | 2 => ⟨-4548718188429511689, -16676895518400396279, 624⟩
  | 3 => ⟨-13955200220985460228, 8224594830173920579, 1439⟩
  | 4 => ⟨6890302840403050187, -12444024499167683699, 3463⟩
  | 5 => ⟨-5820944448210479561, -9296285242539033075, 7262⟩
  | 6 => ⟨-2848064939350110512, 5866960560119778311, 11905⟩
  | 7 => ⟨-1426254530887242336, -1811645958230809858, 11251⟩
  | _ => ⟨-67646576876192498, 280143557688622374, 3952⟩

def terminalOutput : State :=
  ⟨⟨-67646576876192498 / 18446744073709551616, 280143557688622374 / 18446744073709551616⟩,
    3952 / 18446744073709551616⟩

theorem terminal_steps_valid (j : Fin 8) :
    StepValid 64 (terminalTrace j.castSucc) (terminalTrace j.succ) := by
  fin_cases j <;>
    norm_num [StepValid, FloorWindow, CeilingWindow, terminalTrace, terminalStart,
      realProduct, imagProduct, errorProduct, scaleZ]

theorem terminal_output_identity :
    decode 64 (terminalTrace (Fin.last 8)) = terminalOutput := by
  norm_num [decode, terminalTrace, terminalOutput, scaleQ, Fin.last]

/-- Closed proof SCRIPT only: no Lean execution has taken place. -/
theorem terminal_endpoint_compute : RationalPowerEvaluation.compute 4097
    (sourceExponent center) (schedule 4097) = terminalOutput := by
  exact (endpoint_eq_of_windows 4097 (sourceExponent center) (schedule 4097) 21 encoding
    encoding_valid encoding_binding terminal_admissible terminalTrace terminalOutput
    (by simpa only [terminalTrace] using terminal_windows)
    terminal_steps_valid terminal_output_identity).2

/-- This is the original terminal predicate, not a fourth prefix leaf. -/
theorem terminal_check (t : RationalZetaTranscript.Transcript prefixLength)
    (ht : t.terminal = terminalOutput) :
    RationalZetaTranscript.checkTerminal prefixLength center plan t = true := by
  apply (RationalZetaTranscript.checkTerminal_iff prefixLength center plan t).mpr
  change RationalPowerEvaluation.Admissible 4097 (sourceExponent center) (schedule 4097) ∧
    RationalPowerEvaluation.compute 4097 (sourceExponent center) (schedule 4097) = t.terminal
  exact ⟨terminal_admissible, terminal_endpoint_compute.trans ht.symm⟩

/-- Prefix contents remain arbitrary and untrusted; no entries are manufactured. -/
def withTerminal (prefix : Fin prefixLength → State) :
    RationalZetaTranscript.Transcript prefixLength := ⟨prefix, terminalOutput⟩

theorem attached_terminal_check (prefix : Fin prefixLength → State) :
    RationalZetaTranscript.checkTerminal prefixLength center plan (withTerminal prefix) = true :=
  terminal_check (withTerminal prefix) rfl

/-- Sixty-four prefix checks and the final aggregate remain explicit premises.
The historical 66-check predicate is supplied, not edited or weakened. -/
theorem source_acceptance_of_prefix_and_final (prefix : Fin prefixLength → State)
    (hb : ∀ b : Fin 64, RationalZetaTranscript.checkPrefix prefixLength center plan
      (withTerminal prefix) (blockIndices b) = true)
    (hf : RationalZetaTranscript.checkFinal prefixLength center plan
      (withTerminal prefix) valueTolerance slopeTolerance claimed = true) : SourceAcceptance :=
  source_acceptance_of_blocks (withTerminal prefix)
    ⟨hb, attached_terminal_check prefix, hf⟩

end GRWTSK.RiemannHypothesis.ConcreteNewtonTerminalEndpoint
```
