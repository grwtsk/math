# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveBoundary.Variantc257fd8006711af8281b823ef3dbf2ba1793a6f2b8f7d1dcfd9d7c83f8992bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `091f9983c9449b7f8a421c2ea2a1119c08e42b3e` · SHA-256 `c257fd8006711af8281b823ef3dbf2ba1793a6f2b8f7d1dcfd9d7c83f8992bf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

```
