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
