# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCutAccess.Variant518d014a6513e3dcea163ca754deaa064e4c5f643a63729a02e893572039626e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07cec800f543e35cab2b7c230f03d4a7cb65c301` · SHA-256 `518d014a6513e3dcea163ca754deaa064e4c5f643a63729a02e893572039626e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PrimeCutGraph
import Mathematics.GraphAccess.Mode

/-!
# Domain-specific prime-cut access plans

Release-driven traversal is represented here as proposal scheduling.  It does
not acquire shortest-path authority by changing the closed foundational
`Supports` relation.
-/

namespace Mathematics.SemiLocalDefect.Access

open Mathematics.GraphAccess

inductive PrimeCutAccessObjective
  | cardinalityShell
  | minimumProofCost
  | fairPrimeSectors
  | primitivePassivityObstruction
  | cofinalCylinder
  | maximumCertifiedRelease
deriving DecidableEq, Repr

inductive PrimeCutTraversalMode
  | bfsShell
  | dijkstra
  | rotor
  | obstruction
  | cylinder
  | releaseBestFirst
deriving DecidableEq, Repr

inductive CompilationAuthority
  | authoritative
  | advisoryProposal
deriving DecidableEq, Repr

structure PrimeCutAccessPlan where
  objective : PrimeCutAccessObjective
  mode : PrimeCutTraversalMode
  graphObjective : AccessObjective
  graphMode : TraversalMode
  authority : CompilationAuthority
  foundationalSupport :
    authority = .authoritative →
      Supports graphMode graphObjective

def PrimeCutAccessObjective.canonicalPlan :
    PrimeCutAccessObjective →
      PrimeCutAccessPlan
  | .cardinalityShell =>
      {
        objective := .cardinalityShell
        mode := .bfsShell
        graphObjective := .universalCoverage
        graphMode := .bfs
        authority := .advisoryProposal
        foundationalSupport := by
          intro impossible
          cases impossible
      }
  | .minimumProofCost =>
      {
        objective := .minimumProofCost
        mode := .dijkstra
        graphObjective := .minimumCost
        graphMode := .dijkstra
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.dijkstra
      }
  | .fairPrimeSectors =>
      {
        objective := .fairPrimeSectors
        mode := .rotor
        graphObjective := .fairExploration
        graphMode := .rotor
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.rotor
      }
  | .primitivePassivityObstruction =>
      {
        objective := .primitivePassivityObstruction
        mode := .obstruction
        graphObjective := .primitiveObstruction
        graphMode := .obstruction
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.obstruction
      }
  | .cofinalCylinder =>
      {
        objective := .cofinalCylinder
        mode := .cylinder
        graphObjective := .limitCylinderAccess
        graphMode := .cylinder
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.cylinder
      }
  | .maximumCertifiedRelease =>
      {
        objective := .maximumCertifiedRelease
        mode := .releaseBestFirst
        graphObjective := .multiscaleDiversification
        graphMode := .recaman
        authority := .advisoryProposal
        foundationalSupport := by
          intro impossible
          cases impossible
      }

end Mathematics.SemiLocalDefect.Access
```
