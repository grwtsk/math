# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveBoundary.Variantff40e255a0744815186ba2d9980ac1573adfbef5d785c4a1fd0cd0ee188883b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `529683181de14a9b1fa669fdbec45d6ffea2c828` · SHA-256 `ff40e255a0744815186ba2d9980ac1573adfbef5d785c4a1fd0cd0ee188883b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.RecursiveBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module records recursive obstruction-boundary logic.
Ontology: recursive_boundary_compatibility
Pivot role: recursion
Zero typology: obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge

/--
Shared recursive obstruction program.

This is the common target for P-vs-NP-style reconstruction recursions and
Yang-Mills-style energy continuation recursions. It is not a proof of either
problem.
-/
structure RecursiveObstructionProgram where
  State : Type
  Invariant : Type
  Boundary : Type
  step : State → State
  compatible : Invariant → State → Prop
  obstruction : Invariant → State → Prop
  stickyBoundary : Boundary → Prop
  ForbiddenEscape : State → Prop
  preservesCompatibility :
    ∀ I S, compatible I S → ¬ obstruction I S →
      compatible I (step S)
  forbiddenEscapeDetected :
    ∀ I S, compatible I S → ForbiddenEscape S →
      obstruction I S

theorem recursive_preservesCompatibility
    (P : RecursiveObstructionProgram)
    {I : P.Invariant}
    {S : P.State}
    (hcompat : P.compatible I S)
    (hobs : ¬ P.obstruction I S) :
    P.compatible I (P.step S) :=
  P.preservesCompatibility I S hcompat hobs

theorem recursive_forbiddenEscapeDetected
    (P : RecursiveObstructionProgram)
    {I : P.Invariant}
    {S : P.State}
    (hcompat : P.compatible I S)
    (hescape : P.ForbiddenEscape S) :
    P.obstruction I S :=
  P.forbiddenEscapeDetected I S hcompat hescape

theorem no_compatible_forbidden_escape_without_obstruction
    (P : RecursiveObstructionProgram)
    {I : P.Invariant}
    {S : P.State}
    (hcompat : P.compatible I S)
    (hobs : ¬ P.obstruction I S)
    (hescape : P.ForbiddenEscape S) :
    False :=
  hobs (P.forbiddenEscapeDetected I S hcompat hescape)

/--
Boundary compatibility package.

The sticky boundary field is supplied. It says the selected boundary is the
kind of boundary intended to prevent compatible trajectories from escaping.
-/
structure RecursiveBoundaryCompatibility where
  program : RecursiveObstructionProgram
  initialInvariant : program.Invariant
  initialState : program.State
  boundary : program.Boundary
  invariantEnters : program.compatible initialInvariant initialState
  sticky : program.stickyBoundary boundary
  sourceLabel : String

theorem recursive_boundary_initially_compatible
    (B : RecursiveBoundaryCompatibility) :
    B.program.compatible B.initialInvariant B.initialState :=
  B.invariantEnters

theorem recursive_boundary_sticky_if_supplied
    (B : RecursiveBoundaryCompatibility) :
    B.program.stickyBoundary B.boundary :=
  B.sticky

end GrandChallenge
end Folder

```
