# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.ExpressivenessExamples.Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ace205f213b8bc36e6ab69fea25421dbd3d533ef` · SHA-256 `a7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.Expressiveness

/-!
# Toy Presentation expressiveness examples

These examples route expressiveness through an explicit interpreter and witness.
They use harmless toy propositions such as `True`; they do not prove that raw
Presentation syntax owns Turing completeness or any theorem authority.
-/

namespace Presentation
namespace ExpressivenessExamples

/-- A tiny toy program carried by Presentation syntax. -/
def toyProgram : PresentationProgram where
  expr := Expr.node (Expr.var 0) Expr.one
  programHash := 7

/-- Toy transition used only to demonstrate interpreter routing. -/
def toggleRun : Nat → Bool → Bool
  | 0, state => state
  | n + 1, state => toggleRun n (!state)

/-- Toy acceptance relation for the explicit Nat interpreter. -/
def toyAccepts (program : PresentationProgram) (input output : Nat) : Prop :=
  output = program.programHash + input

/-- Toy machine semantics: the interpreter is named explicitly. -/
def toyMachineSemantics : PresentationMachineSemantics where
  State := Bool
  Input := Nat
  Output := Nat
  step := fun state => !state
  run := toggleRun
  accepts := toyAccepts

/-- Toy witness: the simulation proposition is supplied by realization data. -/
def toyTuringCompletenessWitness : TuringCompletenessWitness where
  machineModelLabel := "toy-nat-adder-realization"
  encodingHash := 101
  simulationSound := toyAccepts toyProgram 5 12
  simulationSoundProof := rfl

/-- The toy acceptance fact is recovered through the witness. -/
theorem toy_simulation_routed_through_realization :
    toyAccepts toyProgram 5 12 :=
  presentation_with_realization_is_computationally_expressive
    toyMachineSemantics
    toyTuringCompletenessWitness

/-- The same syntax still owns no Turing-completeness authority by itself. -/
theorem toy_program_syntax_not_turing_completeness_authority :
    ¬ RawPresentationSyntaxOwnsTuringCompleteness toyProgram.expr :=
  raw_presentation_syntax_not_turing_completeness_authority toyProgram.expr

/-- The same syntax also does not own the interpreter. -/
theorem toy_program_syntax_not_machine_semantics_authority :
    ¬ RawPresentationSyntaxOwnsMachineSemantics
        toyProgram.expr
        toyMachineSemantics :=
  raw_presentation_syntax_not_machine_semantics_authority
    toyProgram.expr
    toyMachineSemantics

end ExpressivenessExamples
end Presentation
```
