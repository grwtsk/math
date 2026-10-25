# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Expressiveness.Variant3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c224388100fd3a25613902bce86e28e35ac0ba6f` · SHA-256 `3dac65c59ba7e17c7d6568fd2963afda0b89b339229e74a55e0ab1cfaea949f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.Syntax

/-!
# Presentation expressiveness through realization

What is formalized:
Finite Presentation syntax can be paired with an explicit machine semantics and
a simulation witness.  The theorem below extracts only the simulation
proposition supplied by that witness.

What is certificate-gated:
The interpreter, machine model, and simulation proof are external realization
data.  A raw `Presentation.Expr` does not own computational expressiveness.

What is not claimed:
Raw Presentation syntax is not a semantic bijection with programs, functions,
operators, mathematical objects, theorem authority, or Turing completeness.
-/

namespace Presentation

/-- A finite Presentation expression named as a program payload. -/
structure PresentationProgram where
  expr : Expr
  programHash : Nat
deriving Repr

/--
Machine semantics attached to Presentation syntax by realization.

The type and transition fields are part of the interpreter surface.  They are
not inferred from raw syntax alone.
-/
structure PresentationMachineSemantics where
  State : Type
  Input : Type
  Output : Type
  step : State → State
  run : Nat → State → State
  accepts : PresentationProgram → Input → Output → Prop

/-- Certificate that a chosen machine encoding simulates the intended model. -/
structure TuringCompletenessWitness where
  machineModelLabel : String
  encodingHash : Nat
  simulationSound : Prop
  simulationSoundProof : simulationSound

/--
Presentation plus an explicit realization/interpreter can be computationally
expressive, exactly to the extent certified by the supplied witness.
-/
theorem presentation_with_realization_is_computationally_expressive
    (_S : PresentationMachineSemantics)
    (W : TuringCompletenessWitness) :
    W.simulationSound :=
  W.simulationSoundProof

/-- Raw syntax alone owning Turing-completeness authority is an invalid claim. -/
def RawPresentationSyntaxOwnsTuringCompleteness (_e : Expr) : Prop :=
  False

/-- Direct authority attempts from syntax to Turing completeness fail. -/
theorem raw_presentation_syntax_not_turing_completeness_authority
    (e : Expr) :
    ¬ RawPresentationSyntaxOwnsTuringCompleteness e := by
  intro h
  exact h

/-- Raw syntax also does not certify a specific machine semantics. -/
def RawPresentationSyntaxOwnsMachineSemantics
    (_e : Expr)
    (_S : PresentationMachineSemantics) : Prop :=
  False

/-- Direct authority attempts from syntax to an interpreter fail. -/
theorem raw_presentation_syntax_not_machine_semantics_authority
    (e : Expr)
    (S : PresentationMachineSemantics) :
    ¬ RawPresentationSyntaxOwnsMachineSemantics e S := by
  intro h
  exact h

end Presentation
```
