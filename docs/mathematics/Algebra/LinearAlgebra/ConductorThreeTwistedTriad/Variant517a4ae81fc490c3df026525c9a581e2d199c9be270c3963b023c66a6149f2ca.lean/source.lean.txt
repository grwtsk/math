-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PolarizedPacketEstimateImpliesHalfPlusEpsilon.Variant6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PolarizedPacketEstimateImpliesHalfPlusEpsilon.Variant6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c","mathematical_subject":"Foundations.Unclassified","original_sha256":"6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:5816f0733e70f19a34424d97/workspace/lib/Surface/Core/ConductorThreeTwistedTriad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMellinLogDerivative
public import Surface.Core.ConductorThreeRieszExplicitFormula
public import Surface.Core.ConductorThreeGRHMatrix
public import Surface.Core.ConductorThreePolarizedPackets
public import Surface.Core.ConductorThreeWeylFunction

/-!
# The conductor-three twisted Weil--Kakeya--Herglotz theorem graph

This file is the public dependency cone.  Every checked finite reduction is
composed here, while each unfinished analytic or research edge remains a
named argument.  In particular:

* unsigned Wang--Zahl geometry is not presented as arithmetic cancellation;
* the packet estimate targets half-plus-epsilon, not the sharp log rate;
* the sharp rate is recovered only after GRH through the Riesz obligation;
* the Weyl/Herglotz branch is downstream of GRH and is not an independent
  proof hidden in a zero-enumerated diagonal operator.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PolarizedPacketEstimateImpliesHalfPlusEpsilon.Variant6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c

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
    (hRiesz : GRHRieszFiniteDifferenceEstimate)
    (hContinuation : HalfPlusEpsilonMellinContinuation)
    (hZeroExclusion : MellinContinuationZeroExclusion) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  constructor
  · intro hGRH
    exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hRiesz hGRH)
  · intro hMatrix
    have hCritical :=
      twistedPsiCriticalBound_iff_matrixCriticalDecay.mpr hMatrix
    have hHalf := twistedPsiCriticalBound_implies_halfPlusEpsilon hCritical
    exact halfPlusEpsilon_implies_grh_of_mellin
      hContinuation hZeroExclusion hHalf

/-- Checked composition from the smooth packet target to conductor-three GRH. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_grh_of_program
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon)
    (hContinuation : HalfPlusEpsilonMellinContinuation)
    (hZeroExclusion : MellinContinuationZeroExclusion) :
    ConductorThreePolarizedPacketEstimate →
      GRHForConductorThreeCharacter := by
  intro hPacket
  exact halfPlusEpsilon_implies_grh_of_mellin
    hContinuation hZeroExclusion (hUnsmooth hPacket)

/-- After GRH, the smoothed explicit formula recovers the sharp logarithmic
rate, and the already-checked arithmetic/reindex chain produces the matrix
criterion. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_matrixCriticalDecay_of_program
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon)
    (hContinuation : HalfPlusEpsilonMellinContinuation)
    (hZeroExclusion : MellinContinuationZeroExclusion)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    ConductorThreePolarizedPacketEstimate →
      MatrixCriticalDecay actualResidueSixCounts := by
  intro hPacket
  have hGRH := polarizedPacketEstimate_implies_grh_of_program
    hUnsmooth hContinuation hZeroExclusion hPacket
  exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hRiesz hGRH)

/-- Full route from the one speculative large-sieve theorem.  Arithmetic
assembly, smooth unsmoothing, Mellin continuation/zero exclusion, and the
forward Riesz explicit formula remain individually visible. -/
@[surface_novel, surface_published]
theorem polarizedWangZahlLargeSieve_implies_matrixCriticalDecay_of_program
    (hLargeSieve : PolarizedWangZahlLargeSieve)
    (hAssemble : PolarizedLargeSieveImpliesPacketEstimate)
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon)
    (hContinuation : HalfPlusEpsilonMellinContinuation)
    (hZeroExclusion : MellinContinuationZeroExclusion)
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    MatrixCriticalDecay actualResidueSixCounts :=
  polarizedPacketEstimate_implies_matrixCriticalDecay_of_program
    hUnsmooth hContinuation hZeroExclusion hRiesz
      (hAssemble hLargeSieve)

/-- The spectral branch after positivity: a proved GRH/Herglotz theorem sends
the same packet route to the prime-constructed Weyl function. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_implies_weylHerglotz_of_program
    (hUnsmooth : PolarizedPacketEstimateImpliesHalfPlusEpsilon)
    (hContinuation : HalfPlusEpsilonMellinContinuation)
    (hZeroExclusion : MellinContinuationZeroExclusion)
    (hWeyl : GRHIffConductorThreeWeylHerglotz) :
    ConductorThreePolarizedPacketEstimate →
      IsHerglotz conductorThreeWeylFunction := by
  intro hPacket
  exact hWeyl.mp <| polarizedPacketEstimate_implies_grh_of_program
    hUnsmooth hContinuation hZeroExclusion hPacket

end Surface.Core.ConductorThreeTwistedTriad
