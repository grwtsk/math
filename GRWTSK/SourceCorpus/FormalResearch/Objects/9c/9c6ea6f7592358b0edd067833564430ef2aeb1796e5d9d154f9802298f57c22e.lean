module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMellinLogDerivative
public import Surface.Core.ConductorThreeRieszExplicitFormula
public import Surface.Core.ConductorThreeGRHMatrix
public import Surface.Core.ConductorThreePolarizedPackets
public import Surface.Core.ConductorThreeWangZahlLargeSieve
public import Surface.Core.ConductorThreePrimeMomentProgram
public import Surface.Core.ConductorThreeVaughanTypeIBridge
public import Surface.Core.ConductorThreeWeylFunction

/-!
# The conductor-three twisted Weil--Kakeya--Herglotz theorem graph

This file is the public dependency cone.  Every checked finite reduction and
the full reverse Mellin implication are composed here, while each unfinished
analytic or research edge remains a named argument.  In particular:

* unsigned Wang--Zahl geometry is not presented as arithmetic cancellation;
* the preferred packet frame is fixed by scale before epsilon or a test
  weight is requested, and its moment path reads every coefficient prefix;
* the packet estimate targets half-plus-epsilon, not the sharp log rate;
* the sharp rate is recovered only after GRH through the Riesz obligation;
* the Weyl/Herglotz branch is downstream of GRH and is not an independent
  proof hidden in a zero-enumerated diagonal operator.
-/

public section

namespace Surface.Core.ConductorThreeTwistedTriad

open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreeGRHMatrix
open Surface.Core.ConductorThreeHalfPlusEpsilon
open Surface.Core.ConductorThreeMellinLogDerivative
open Surface.Core.ConductorThreePacketUnsmoothing
open Surface.Core.ConductorThreePolarizedPackets
open Surface.Core.ConductorThreeRieszExplicitFormula
open Surface.Core.ConductorThreeWeylFunction
open Surface.Core.ConductorThreeWangZahlLargeSieve
open Surface.Core.ConductorThreeWangZahlTTStar
open Surface.Core.ConductorThreePrimeMoment
open Surface.Core.ConductorThreeVaughanTypeI
open Surface.Core.ConductorThreeVaughanTypeIBridge
open Surface.Core.NevanlinnaKernel

/-- A smooth finite-seminorm packet estimate does not automatically control a
moving sharp cutoff.  The missing adapter is therefore stated honestly as a
maximal smooth-to-BV theorem, rather than as routine unsmoothing. -/
@[expose]
def PolarizedSmoothPacketEstimateImpliesBV : Prop :=
  ConductorThreePolarizedPacketEstimate → ConductorThreeBVPacketEstimate

/-- Preferred classical equivalence: the forward direction uses the Riesz
explicit formula, while the reverse direction first weakens the checked
matrix/`Psi` critical bound and then uses Mellin zero exclusion. -/
@[surface_novel, surface_published]
theorem grh_conductorThree_iff_matrixCriticalDecay_of_riesz_mellin
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  constructor
  · intro hGRH
    exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hRiesz hGRH)
  · intro hMatrix
    have hCritical :=
      twistedPsiCriticalBound_iff_matrixCriticalDecay.mpr hMatrix
    have hHalf := twistedPsiCriticalBound_implies_halfPlusEpsilon hCritical
    exact halfPlusEpsilon_implies_grh hHalf

/-- The BV endpoint reaches conductor-three GRH through the fully checked
Mellin/logarithmic-derivative zero-exclusion theorem. -/
@[surface_novel, surface_published]
theorem bvPacketEstimate_implies_grh :
    ConductorThreeBVPacketEstimate → GRHForConductorThreeCharacter := by
  intro hBV
  exact halfPlusEpsilon_implies_grh
    (bvPacketEstimate_implies_halfPlusEpsilon hBV)

/-- Checked composition from the smooth packet target once the substantive
maximal smooth-to-BV adapter has been proved. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_grh_of_program
    (hSmoothToBV : PolarizedSmoothPacketEstimateImpliesBV) :
    ConductorThreePolarizedPacketEstimate →
      GRHForConductorThreeCharacter := by
  intro hPacket
  exact bvPacketEstimate_implies_grh (hSmoothToBV hPacket)

/-- The legacy BV-quantified endpoint implies GRH.  This theorem is retained
for compatibility; the preferred route below isolates the fixed Vaughan Type
II vector instead of rebuilding geometry for every multiplier. -/
@[surface_novel, surface_published]
theorem bvWangZahlProgram_implies_grh :
    ConductorThreeBVWangZahlProgram →
      GRHForConductorThreeCharacter := by
  intro hProgram
  exact halfPlusEpsilon_implies_grh
    (bvWangZahlProgram_implies_halfPlusEpsilon hProgram)

/-- Correct coefficient-sensitive route.  Until the elementary Type I bound
is internalized, it remains an explicit premise; the only geometric research
input is the specific Vaughan Type II maximal program. -/
@[surface_novel, surface_published]
theorem polarizedWangZahlProgram_implies_grh
    (hTypeIReindex : ExactConductorThreeTypeIPrefixExpansion) :
    Surface.Core.ConductorThreeWangZahlTTStar.ConductorThreePolarizedWangZahlProgram →
      GRHForConductorThreeCharacter := by
  rintro ⟨route, hII⟩
  have hTypeI := exactTypeIPrefixExpansion_implies_uniformPublic hTypeIReindex
  exact primeMomentProgram_implies_grh ⟨route, hTypeI, hII⟩

/-- The fixed-frame moment program reaches the same checked GRH endpoint.
Its inhabitance is precisely the unresolved uniform polarized maximal/Gram
estimate; the generator and scheduler provide no theorem authority. -/
@[surface_novel, surface_published]
theorem fixedPrimeMomentProgram_implies_grh :
    ConductorThreePrimeMomentProgram →
      GRHForConductorThreeCharacter :=
  primeMomentProgram_implies_grh

/-- After GRH, the smoothed explicit formula recovers the sharp logarithmic
rate, and the already-checked arithmetic/reindex chain produces the matrix
criterion. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_matrixCriticalDecay_of_program
    (hSmoothToBV : PolarizedSmoothPacketEstimateImpliesBV)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    ConductorThreePolarizedPacketEstimate →
      MatrixCriticalDecay actualResidueSixCounts := by
  intro hPacket
  have hGRH := polarizedPacketEstimate_implies_grh_of_program
    hSmoothToBV hPacket
  exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hRiesz hGRH)

/-- After the corrected Wang--Zahl program proves GRH, the still-separate
forward Riesz explicit formula recovers the exact logarithmic matrix rate. -/
@[surface_novel, surface_published]
theorem polarizedWangZahlProgram_implies_matrixCriticalDecay_of_riesz
    (hTypeIReindex : ExactConductorThreeTypeIPrefixExpansion)
    (hProgram :
      Surface.Core.ConductorThreeWangZahlTTStar.ConductorThreePolarizedWangZahlProgram)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    MatrixCriticalDecay actualResidueSixCounts := by
  exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp
    (hRiesz (polarizedWangZahlProgram_implies_grh hTypeIReindex hProgram))

/-- The spectral branch after positivity: a proved GRH/Herglotz theorem sends
the same packet route to the prime-constructed Weyl function. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_weylHerglotz_of_program
    (hSmoothToBV : PolarizedSmoothPacketEstimateImpliesBV)
    (hWeyl : GRHIffConductorThreeWeylHerglotz) :
    ConductorThreePolarizedPacketEstimate →
      IsHerglotz conductorThreeWeylFunction := by
  intro hPacket
  exact hWeyl.mp <| polarizedPacketEstimate_implies_grh_of_program
    hSmoothToBV hPacket

end Surface.Core.ConductorThreeTwistedTriad
