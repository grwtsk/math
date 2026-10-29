import Folder.GrandChallenge.RecursiveBoundary

/-!
# Folder.Theorem.GrandChallenge.RecursiveBoundary

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports recursive boundary facts.
Ontology: proof.recursive_boundary_compatibility
Pivot role: recursion
Zero typology: obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem recursive_preservesCompatibility
    (P : Folder.GrandChallenge.RecursiveObstructionProgram)
    {I : P.Invariant}
    {S : P.State}
    (hcompat : P.compatible I S)
    (hobs : ¬ P.obstruction I S) :
    P.compatible I (P.step S) :=
  Folder.GrandChallenge.recursive_preservesCompatibility P hcompat hobs

theorem recursive_forbiddenEscapeDetected
    (P : Folder.GrandChallenge.RecursiveObstructionProgram)
    {I : P.Invariant}
    {S : P.State}
    (hcompat : P.compatible I S)
    (hescape : P.ForbiddenEscape S) :
    P.obstruction I S :=
  Folder.GrandChallenge.recursive_forbiddenEscapeDetected P hcompat hescape

theorem no_compatible_forbidden_escape_without_obstruction
    (P : Folder.GrandChallenge.RecursiveObstructionProgram)
    {I : P.Invariant}
    {S : P.State}
    (hcompat : P.compatible I S)
    (hobs : ¬ P.obstruction I S)
    (hescape : P.ForbiddenEscape S) :
    False :=
  Folder.GrandChallenge.no_compatible_forbidden_escape_without_obstruction
    P hcompat hobs hescape

theorem recursive_boundary_initially_compatible
    (B : Folder.GrandChallenge.RecursiveBoundaryCompatibility) :
    B.program.compatible B.initialInvariant B.initialState :=
  Folder.GrandChallenge.recursive_boundary_initially_compatible B

theorem recursive_boundary_sticky_if_supplied
    (B : Folder.GrandChallenge.RecursiveBoundaryCompatibility) :
    B.program.stickyBoundary B.boundary :=
  Folder.GrandChallenge.recursive_boundary_sticky_if_supplied B

end GrandChallenge
end Theorem
end Folder

