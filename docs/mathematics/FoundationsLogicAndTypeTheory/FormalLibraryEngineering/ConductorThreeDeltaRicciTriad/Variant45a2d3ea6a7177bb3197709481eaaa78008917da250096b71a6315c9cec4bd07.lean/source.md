# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeDeltaRicciTriad.Variant45a2d3ea6a7177bb3197709481eaaa78008917da250096b71a6315c9cec4bd07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b726065bc00acfbab1f240bc7e5d26642ecfc4ba` · SHA-256 `45a2d3ea6a7177bb3197709481eaaa78008917da250096b71a6315c9cec4bd07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeDeltaRicciTypeII
public import Surface.Core.ConductorThreePrimeMomentProgram
public import Surface.Core.ConductorThreeVaughanTypeIBridge

/-!
# Conditional delta--incidence-surgery route to conductor-three GRH

This module contains only dependency-cone composition.  The delta-operation
realization, finite incidence/surgery tree, and bounded readout reach the
existing coefficient-specific Type II predicate only through the explicitly
named `decisive_totalCost_bound` assumption.  The separate finite Type I
reindexing proposition is also visible in every public theorem below.

No inhabitant of either unresolved input is constructed here.  In
particular, this file does not claim that a delta-ring, a combinatorial Ricci
flow, a spherical-link candidate, or the unsigned Wang--Zahl theorem proves
signed cancellation.
-/

public section

namespace Surface.Core.ConductorThreeDeltaRicciTriad

open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeDeltaRicciTypeII
open Surface.Core.ConductorThreePrimeMoment
open Surface.Core.ConductorThreeVaughanTypeI
open Surface.Core.ConductorThreeVaughanTypeIBridge

/-- The conditional surgery assembly and the exact finite Type I reindexing
produce precisely the already-audited prime-moment program. -/
@[surface_novel, surface_published]
theorem deltaRicciAssemblyAssumptions_imply_primeMomentProgram
    (hTypeIReindex : ExactConductorThreeTypeIPrefixExpansion)
    (assumptions : ConductorThreeDeltaRicciAssemblyAssumptions) :
    ConductorThreePrimeMomentProgram := by
  refine ⟨assumptions.route,
    exactTypeIPrefixExpansion_implies_uniformPublic hTypeIReindex, ?_⟩
  exact deltaRicciAssemblyAssumptions_imply_uniformTypeIIMaximal assumptions

/-- Conditional endpoint: once both exposed research inputs are supplied,
the checked maximal-moment, BV, and Mellin chain yields conductor-three GRH. -/
@[surface_novel, surface_published]
theorem deltaRicciAssemblyAssumptions_imply_grh
    (hTypeIReindex : ExactConductorThreeTypeIPrefixExpansion)
    (assumptions : ConductorThreeDeltaRicciAssemblyAssumptions) :
    GRHForConductorThreeCharacter :=
  primeMomentProgram_implies_grh
    (deltaRicciAssemblyAssumptions_imply_primeMomentProgram
      hTypeIReindex assumptions)

end Surface.Core.ConductorThreeDeltaRicciTriad
```
