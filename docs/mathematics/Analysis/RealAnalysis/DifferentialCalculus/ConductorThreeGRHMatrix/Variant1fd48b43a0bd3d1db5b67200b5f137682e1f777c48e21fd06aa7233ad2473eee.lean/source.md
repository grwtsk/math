# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeGRHMatrix.Variant1fd48b43a0bd3d1db5b67200b5f137682e1f777c48e21fd06aa7233ad2473eee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `288b88141a9bce7fbd30ad3ff9698f3dac9b6a85` · SHA-256 `2796aefd419f205aef74091e1b60d78042e28bcdfbbe7823b2fabe475f75b186`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GRHImpliesTwistedPsiCriticalBound.Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.GRHImpliesTwistedPsiCriticalBound.Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7","mathematical_subject":"Analysis.Calculus","original_sha256":"ceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeGRHMatrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCriticalPredicates
public import Surface.Core.ConductorThreePartialSummation
public import Surface.Core.ConductorThreePartialSummationBounds
public import Surface.Core.ConductorThreeCriticalReindexBounds
public import Surface.Core.ConductorThreeMellinLogDerivative

/-!
# Honest conductor-three GRH-to-matrix theorem graph

This file records the exact theorem graph without filling any missing edge by
an unproved declaration.  The middle equivalences and the reverse Mellin edge
are now checked:

* higher prime powers and the exceptional prime `2` have been removed; and
* exact forward/inverse Abel identities and their critical estimates are proved; and
* the two-sided cutoff bounds transfer the residue-count estimate to and from
  the indexed matrix estimate.

The remaining analytic obligation is the forward GRH-to-sharp-`Psi` explicit
formula.  Named propositions are not installed globally; supplying the
forward theorem as an argument yields the exact endpoint by transitivity.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GRHImpliesTwistedPsiCriticalBound.Variantceb7bd484ab6a3f82c2177518483ba26d7ce9d85950786162463f801b04f3de7

public section

namespace Surface.Core.ConductorThreeGRHMatrix

open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreeCriticalPredicates
open Surface.Core.ConductorThreeCriticalReindexBounds
open Surface.Core.ConductorThreePartialSummationBounds
open Surface.Core.ConductorThreeHalfPlusEpsilon
open Surface.Core.ConductorThreeMellinLogDerivative

/-- Forward explicit-formula obligation. -/
@[expose]
def GRHImpliesTwistedPsiCriticalBound : Prop :=
  GRHForConductorThreeCharacter → TwistedPsiCriticalBound

/-- Reverse Mellin/log-derivative interface, discharged immediately below. -/
@[expose]
def TwistedPsiCriticalBoundImpliesGRH : Prop :=
  TwistedPsiCriticalBound → GRHForConductorThreeCharacter

/-- The reverse analytic implication is now discharged: weaken the sharp
logarithmic estimate to every half-plus-epsilon estimate, then apply the
checked Mellin/ODE/functional-equation theorem. -/
@[surface_novel, surface_published]
theorem twistedPsiCriticalBoundImpliesGRH_proved :
    TwistedPsiCriticalBoundImpliesGRH :=
  fun hCritical ↦ halfPlusEpsilon_implies_grh
    (twistedPsiCriticalBound_implies_halfPlusEpsilon hCritical)

/-- Critical estimate transfer through the already-proved exact Abel
identities. -/
@[expose]
def PartialSummationCriticalBridge : Prop :=
  TwistedThetaCriticalBound ↔ PrimeCharacterCriticalBound

/-- Quantitative transfer through the already-proved plateau and two-sided
Chebyshev-order cutoff bounds. -/
@[expose]
def CriticalReindexBridge : Prop :=
  ResidueDifferenceCriticalBound actualResidueSixCounts ↔
    MatrixCriticalDecay actualResidueSixCounts

/-- The partial-summation bridge is now discharged by the quantitative finite
Abel estimates. -/
@[surface_novel, surface_published]
theorem partialSummationCriticalBridge_proved :
    PartialSummationCriticalBridge :=
  twistedThetaCriticalBound_iff_primeCharacterCriticalBound

/-- Prime-power removal, both Abel directions, and the exact prime-two
correction close the full twisted-`Ψ` to residue-count equivalence. -/
@[surface_novel, surface_published]
theorem twistedPsiCriticalBound_iff_residueDifferenceCriticalBound :
    TwistedPsiCriticalBound ↔
      ResidueDifferenceCriticalBound actualResidueSixCounts :=
  twistedPsiCriticalBound_iff_twistedThetaCriticalBound.trans
    (partialSummationCriticalBridge_proved.trans
      primeCharacterCriticalBound_iff_residueDifferenceCriticalBound)

/-- The critical reindex bridge is discharged by the exact cutoff plateaus
and the two-sided Chebyshev-order cutoff estimates. -/
@[surface_novel, surface_published]
theorem criticalReindexBridge_proved :
    CriticalReindexBridge :=
  residueDifferenceCriticalBound_iff_matrixCriticalDecay

/-- The checked finite reductions compose with supplied Abel and reindex
estimates to give the entire classical middle path. -/
@[surface_novel, surface_published]
theorem twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges
    (hPartial : PartialSummationCriticalBridge)
    (hReindex : CriticalReindexBridge) :
    TwistedPsiCriticalBound ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  exact twistedPsiCriticalBound_iff_twistedThetaCriticalBound.trans
    (hPartial.trans
      (primeCharacterCriticalBound_iff_residueDifferenceCriticalBound.trans
        hReindex))

/-- After the checked partial-summation work, only quantitative reindexing is
needed for the classical middle path. -/
@[surface_novel, surface_published]
theorem twistedPsiCriticalBound_iff_matrixCriticalDecay_of_reindex
    (hReindex : CriticalReindexBridge) :
    TwistedPsiCriticalBound ↔
      MatrixCriticalDecay actualResidueSixCounts :=
  twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges
    partialSummationCriticalBridge_proved hReindex

/-- The entire classical middle path from the twisted Chebyshev estimate to
the canonical indexed matrix estimate is kernel checked. -/
@[surface_novel, surface_published]
theorem twistedPsiCriticalBound_iff_matrixCriticalDecay :
    TwistedPsiCriticalBound ↔
      MatrixCriticalDecay actualResidueSixCounts :=
  twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges
    partialSummationCriticalBridge_proved criticalReindexBridge_proved

/-- The exact GRH-to-twisted-`Ψ` equivalence follows from the two remaining
explicit-formula proof obligations and from nothing else. -/
@[surface_novel, surface_published]
theorem grh_iff_twistedPsiCriticalBound_of_explicitFormula
    (hForward : GRHImpliesTwistedPsiCriticalBound)
    (hReverse : TwistedPsiCriticalBoundImpliesGRH) :
    GRHForConductorThreeCharacter ↔ TwistedPsiCriticalBound :=
  ⟨hForward, hReverse⟩

/-- Once the two explicit-formula directions are supplied, the checked
classical middle path yields the requested conductor-three equivalence. -/
@[surface_novel, surface_published]
theorem grh_conductorThree_iff_matrixCriticalDecay_of_explicitFormula
    (hForward : GRHImpliesTwistedPsiCriticalBound)
    (hReverse : TwistedPsiCriticalBoundImpliesGRH) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  exact ⟨fun hGRH ↦
      twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hForward hGRH),
    fun hMatrix ↦ hReverse
      (twistedPsiCriticalBound_iff_matrixCriticalDecay.mpr hMatrix)⟩

/-- With the reverse Mellin route checked, only the forward smoothed explicit
formula is required for the exact conductor-three GRH/matrix equivalence. -/
@[surface_novel, surface_published]
theorem grh_conductorThree_iff_matrixCriticalDecay_of_forward
    (hForward : GRHImpliesTwistedPsiCriticalBound) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts :=
  grh_conductorThree_iff_matrixCriticalDecay_of_explicitFormula
    hForward twistedPsiCriticalBoundImpliesGRH_proved

/-- Fully explicit conditional composition of the target equivalence.  Every
remaining premise is named at the point of use. -/
@[surface_novel, surface_published]
theorem grh_conductorThree_iff_matrixCriticalDecay_of_obligations
    (hForward : GRHImpliesTwistedPsiCriticalBound)
    (hReverse : TwistedPsiCriticalBoundImpliesGRH)
    (hPartial : PartialSummationCriticalBridge)
    (hReindex : CriticalReindexBridge) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  exact ⟨fun hGRH ↦
      (twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges
        hPartial hReindex).mp (hForward hGRH),
    fun hMatrix ↦ hReverse
      ((twistedPsiCriticalBound_iff_matrixCriticalDecay_of_bridges
        hPartial hReindex).mpr hMatrix)⟩

end Surface.Core.ConductorThreeGRHMatrix
```
