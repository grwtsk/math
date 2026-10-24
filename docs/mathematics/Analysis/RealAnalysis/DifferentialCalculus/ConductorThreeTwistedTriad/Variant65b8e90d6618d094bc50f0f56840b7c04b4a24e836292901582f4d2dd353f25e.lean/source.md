# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeTwistedTriad.Variant65b8e90d6618d094bc50f0f56840b7c04b4a24e836292901582f4d2dd353f25e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a957da26de869834121021c144fed5d80944860` · SHA-256 `ae9a18a943f387972a2673246e3e2b592069cfa88db39c24aef4efd920b1e06b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PolarizedSmoothPacketEstimateImpliesBV.Variant2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PolarizedSmoothPacketEstimateImpliesBV.Variant2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f","mathematical_subject":"Analysis.Calculus","original_sha256":"2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1439e052c14caf2214092a52/workspace/lib/Surface/Core/ConductorThreeTwistedTriad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMellinLogDerivative
public import Surface.Core.ConductorThreeRieszExplicitFormula
public import Surface.Core.ConductorThreeGRHMatrix
public import Surface.Core.ConductorThreePolarizedPackets
public import Surface.Core.ConductorThreeWangZahlLargeSieve
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


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PolarizedSmoothPacketEstimateImpliesBV.Variant2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f

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

/-- The corrected scale-uniform Wang--Zahl program implies GRH with no
remaining analytic continuation premise. -/
@[surface_novel, surface_published]
theorem polarizedWangZahlProgram_implies_grh :
    ConductorThreePolarizedWangZahlProgram →
      GRHForConductorThreeCharacter := by
  intro hProgram
  exact halfPlusEpsilon_implies_grh
    (polarizedWangZahlProgram_implies_halfPlusEpsilon hProgram)

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
    (hProgram : ConductorThreePolarizedWangZahlProgram)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    MatrixCriticalDecay actualResidueSixCounts := by
  exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp
    (hRiesz (polarizedWangZahlProgram_implies_grh hProgram))

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
```
