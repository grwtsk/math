module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMomentPackets

/-!
# Named Wang--Zahl / polarized TT* research boundary

These predicates expose the irreducible analytic work.  The local interaction
certificate contains overlap estimates; the global Gram and maximal bounds
must be proved from it together with the fixed geometry and an exact
Vaughan/Heath--Brown decomposition.
-/

public section

namespace Surface.Core.ConductorThreeWangZahlTTStar

open Surface.Core.ConductorThreeMomentPackets
open Surface.Core.PrimeLattice.PolarizedGram

/-- Local packet-interaction evidence for a fixed moment route.

The exact coefficient collapse is already a theorem-bearing field of every
`ConductorThreeCoefficientPacketFrame`; it is deliberately not repeated here
as a free-standing proposition.  Likewise, no Type I, Type II, Gram, maximal,
or arithmetic decay conclusion is stored in this structure. -/
structure PolarizedMomentEngine
    (route : ConductorThreePrimeMomentRoute) where
  interaction : ∀ N, PolarizedInteractionControl (route.frame N)

/-- The desired implication from local geometry/interaction to the uniform
Gram bound.  It remains a named research proposition. -/
@[expose]
def WangZahlGeometryImpliesPolarizedGramBound : Prop :=
  ∀ route : ConductorThreePrimeMomentRoute,
    PolarizedMomentEngine route →
      PacketGramPowerBound route.frame

end Surface.Core.ConductorThreeWangZahlTTStar
