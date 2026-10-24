# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeGRHMatrix.Variantd3669fb8f4390807d751b5e75a6f7dac5b62b7b749dce1b615f85df886b2e2ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `615670dc67a550e3ba036820a364b1fcc13b8839` · SHA-256 `d3669fb8f4390807d751b5e75a6f7dac5b62b7b749dce1b615f85df886b2e2ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCriticalPredicates
public import Surface.Core.ConductorThreePartialSummation
public import Surface.Core.ConductorThreePartialSummationBounds
public import Surface.Core.ConductorThreeCriticalReindexBounds

/-!
# Honest conductor-three GRH-to-matrix theorem graph

This file records the exact theorem graph without filling any missing edge by
an unproved declaration.  Two middle equivalences already have substantial checked pieces:

* higher prime powers and the exceptional prime `2` have been removed; and
* exact forward/inverse Abel identities and their critical estimates are proved; and
* the two-sided cutoff bounds transfer the residue-count estimate to and from
  the indexed matrix estimate.

The named propositions below are proof obligations, not assumptions installed
globally.  Supplying them as theorem arguments yields the desired endpoint by
plain transitivity.  In particular, this module does not claim that the
explicit formula has been formalized.
-/

public section

namespace Surface.Core.ConductorThreeGRHMatrix

open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreeCriticalPredicates
open Surface.Core.ConductorThreeCriticalReindexBounds
open Surface.Core.ConductorThreePartialSummationBounds

/-- Forward explicit-formula obligation. -/
@[expose]
def GRHImpliesTwistedPsiCriticalBound : Prop :=
  GRHForConductorThreeCharacter → TwistedPsiCriticalBound

/-- Reverse Mellin/log-derivative obligation. -/
@[expose]
def TwistedPsiCriticalBoundImpliesGRH : Prop :=
  TwistedPsiCriticalBound → GRHForConductorThreeCharacter

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
