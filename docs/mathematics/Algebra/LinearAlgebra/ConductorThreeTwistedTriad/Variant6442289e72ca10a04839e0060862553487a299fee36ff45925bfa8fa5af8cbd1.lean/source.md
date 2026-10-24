# Complete source: GRWTSK.Algebra.LinearAlgebra.ConductorThreeTwistedTriad.Variant6442289e72ca10a04839e0060862553487a299fee36ff45925bfa8fa5af8cbd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd1c492ced1e6a1890daca2ab0331d4efaa6d730` · SHA-256 `6442289e72ca10a04839e0060862553487a299fee36ff45925bfa8fa5af8cbd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMellinLogDerivative
public import Surface.Core.ConductorThreeRieszExplicitFormula
public import Surface.Core.ConductorThreeGRHMatrix
public import Surface.Core.ConductorThreePolarizedPackets
public import Surface.Core.ConductorThreeWeylFunction

/-!
# The conductor-three twisted Weil--Kakeya--Herglotz theorem graph

This file is the public dependency cone.  Every checked finite reduction and
the full reverse Mellin implication are composed here, while each unfinished
analytic or research edge remains a named argument.  In particular:

* unsigned Wang--Zahl geometry is not presented as arithmetic cancellation;
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
open Surface.Core.ConductorThreePolarizedPackets
open Surface.Core.ConductorThreeRieszExplicitFormula
open Surface.Core.ConductorThreeWeylFunction
open Surface.Core.NevanlinnaKernel

/-- Uniform smooth dyadic estimates recover the sharp-cutoff summatory bound
through a bounded partition of unity.  This classical unsmoothing theorem is
separate from the geometric large sieve. -/
@[expose]
def PolarizedPacketEstimateImpliesHalfPlusEpsilon : Prop :=
  ConductorThreePolarizedPacketEstimate → TwistedPsiHalfPlusEpsilon

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

/-- Checked composition from the smooth packet target to conductor-three GRH. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_grh_of_program
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon) :
    ConductorThreePolarizedPacketEstimate →
      GRHForConductorThreeCharacter := by
  intro hPacket
  exact halfPlusEpsilon_implies_grh (hUnsmooth hPacket)

/-- After GRH, the smoothed explicit formula recovers the sharp logarithmic
rate, and the already-checked arithmetic/reindex chain produces the matrix
criterion. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_matrixCriticalDecay_of_program
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    ConductorThreePolarizedPacketEstimate →
      MatrixCriticalDecay actualResidueSixCounts := by
  intro hPacket
  have hGRH := polarizedPacketEstimate_implies_grh_of_program
    hUnsmooth hPacket
  exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hRiesz hGRH)

/-- Full route from the one speculative large-sieve theorem.  Arithmetic
assembly, smooth unsmoothing, and the forward Riesz explicit formula remain
individually visible; the reverse Mellin step is now checked internally. -/
@[surface_novel, surface_published]
theorem polarizedWangZahlLargeSieve_implies_matrixCriticalDecay_of_program
    (hLargeSieve : PolarizedWangZahlLargeSieve)
    (hAssemble : PolarizedLargeSieveImpliesPacketEstimate)
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    MatrixCriticalDecay actualResidueSixCounts :=
  polarizedPacketEstimate_implies_matrixCriticalDecay_of_program
    hUnsmooth hRiesz
      (hAssemble hLargeSieve)

/-- The spectral branch after positivity: a proved GRH/Herglotz theorem sends
the same packet route to the prime-constructed Weyl function. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_weylHerglotz_of_program
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon)
    (hWeyl : GRHIffConductorThreeWeylHerglotz) :
    ConductorThreePolarizedPacketEstimate →
      IsHerglotz conductorThreeWeylFunction := by
  intro hPacket
  exact hWeyl.mp <| polarizedPacketEstimate_implies_grh_of_program
    hUnsmooth hPacket

end Surface.Core.ConductorThreeTwistedTriad
```
