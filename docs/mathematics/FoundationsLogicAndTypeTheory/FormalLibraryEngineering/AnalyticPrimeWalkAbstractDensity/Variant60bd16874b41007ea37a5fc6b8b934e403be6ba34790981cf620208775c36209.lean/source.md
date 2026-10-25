# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticPrimeWalkAbstractDensity.Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `427795df8bd4b3df31b54eb022f12949346c33bb` · SHA-256 `01a47a14954938e9f19a20941892bec942df3e671c52f89f8cd7ff7644ebe796`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractLogDensityFunctional.Variant4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AbstractLogDensityFunctional.Variant4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/AnalyticPrimeWalkAbstractDensity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.AnalyticPrimeWalk
import Mathlib.Tactic

/-!
# Abstract logarithmic density interface for the residue-six prime walk

This file provides the deliberately algebraic half of the logarithmic-density
interface.  `AbstractLogDensityFunctional` is only a supplied *partial*
function from sets of natural numbers to real numbers.  No measure, limit,
finite additivity, or existence theorem is smuggled into that definition;
`none` explicitly represents a set for which no density has been supplied.

The exact event evaluated below is the eligible-step event

```
{K | 2 <= K and Tr(Omega^T E_K) < 0},
```

where `E_K` is evaluated at the cutoff containing exactly `K` eligible
observations and `Omega = (M1 - M5) / 6`.  The checked Frobenius identity proves
that this is exactly the event where the supplied normalized count difference
is negative.

`AbstractRubinsteinSarnakInputs` then packages four *external inputs*:

* the conductor-three GRH and positive-zero-ordinate LI propositions;
* an abstract density functional;
* its asserted value on the exact negative event;
* the assertion that this value is greater than one half.

The final theorem merely projects those supplied fields.  In particular, this
module proves no implication from GRH or LI to density existence or bias.  A
separate native-filter module gives the concrete limit formulation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractLogDensityFunctional.Variant4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a

public section

namespace Surface.Core.AnalyticPrimeWalk

noncomputable section

open Surface.Core.CyclicPrimeWalk

/-! ## Exact eligible-step observable and sign event -/

/-- Matrix discrepancy after exactly `K` eligible observations.  The supplied
cutoff map converts eligible-step index `K` back to the integer cutoff used by
`errorOperatorAt`. -/
@[expose]
def indexedErrorOperatorAt (model : AnalyticBridgeHypotheses) (K : ℕ) :
    StandardMatrix :=
  errorOperatorAt model (model.cutoffAtEligibleIndex K)

/-- The correctly normalized Frobenius observable after exactly `K` eligible
observations. -/
@[expose]
def indexedSignedObservable (model : AnalyticBridgeHypotheses) (K : ℕ) : ℝ :=
  frobeniusPairing orientedFrobeniusProbe (indexedErrorOperatorAt model K)

/-- The matrix observable at an eligible index is exactly the supplied signed
normalized count difference at the corresponding cutoff. -/
@[surface_novel, surface_published]
theorem indexedSignedObservable_eq_delta
    (model : AnalyticBridgeHypotheses) (K : ℕ) (hK : 0 < K) :
    indexedSignedObservable model K =
      model.delta (model.cutoffAtEligibleIndex K) := by
  have hcount :
      eligibleCount model.counts (model.cutoffAtEligibleIndex K) = K :=
    model.cutoff_indexes_eligibleCount K hK
  have heligible :
      0 < eligibleCount model.counts (model.cutoffAtEligibleIndex K) := by
    rw [hcount]
    exact hK
  exact frobeniusPairing_errorOperatorAt
    model (model.cutoffAtEligibleIndex K) heligible

/-- The eligible-step sign event written directly in the checked matrix
coordinates.  The lower bound `2 <= K` matches the conventional normalization
of logarithmic density over positive nontrivial indices. -/
@[expose]
def negativeIndexedObservableEvent
    (model : AnalyticBridgeHypotheses) : Set ℕ :=
  {K | 2 ≤ K ∧ indexedSignedObservable model K < 0}

/-- The same eligible-step event written using the supplied normalized count
difference. -/
@[expose]
def negativeIndexedDeltaEvent
    (model : AnalyticBridgeHypotheses) : Set ℕ :=
  {K | 2 ≤ K ∧ model.delta (model.cutoffAtEligibleIndex K) < 0}

/-- The Frobenius sign event and the arithmetic sign event are literally the
same set. -/
@[surface_novel, surface_published]
theorem negativeIndexedObservableEvent_eq_deltaEvent
    (model : AnalyticBridgeHypotheses) :
    negativeIndexedObservableEvent model = negativeIndexedDeltaEvent model := by
  ext K
  change (2 ≤ K ∧ indexedSignedObservable model K < 0) ↔
    (2 ≤ K ∧ model.delta (model.cutoffAtEligibleIndex K) < 0)
  constructor
  · rintro ⟨hK, hnegative⟩
    have hKpos : 0 < K := by omega
    rw [indexedSignedObservable_eq_delta model K hKpos] at hnegative
    exact ⟨hK, hnegative⟩
  · rintro ⟨hK, hnegative⟩
    have hKpos : 0 < K := by omega
    rw [indexedSignedObservable_eq_delta model K hKpos]
    exact ⟨hK, hnegative⟩

/-! ## Uninterpreted algebraic density functional -/

/-- A deliberately uninterpreted partial real-valued functional on subsets of
`ℕ`.

An inhabitant supplies only the function `evaluate`; it does not receive any
measure-like laws automatically.  Returning `none` records nonexistence or an
as-yet-unsupplied density.  This is useful when a downstream analytic
development wants to state a conditional density result without pretending
that the limit establishing the density has already been formalized. -/
structure AbstractLogDensityFunctional where
  evaluate : Set ℕ → Option ℝ

/-- The abstract functional assigns `density` to `event`. -/
@[expose]
def HasAbstractLogDensity
    (functional : AbstractLogDensityFunctional)
    (event : Set ℕ) (density : ℝ) : Prop :=
  functional.evaluate event = some density

/-- The abstract density of `event` is strictly greater than one half. -/
@[expose]
def HasAbstractNegativeBias
    (functional : AbstractLogDensityFunctional) (event : Set ℕ) : Prop :=
  ∃ density : ℝ,
    HasAbstractLogDensity functional event density ∧
      (1 / 2 : ℝ) < density

/-- External inputs for an abstract Rubinstein--Sarnak-style statement about
the exact residue-six walk event.

`analyticAssumptions` is a field, not a premise from which the remaining
fields are derived in this module.  Likewise `eventHasDensity` and
`density_gt_half` explicitly supply density existence/value and bias. -/
structure AbstractRubinsteinSarnakInputs
    (model : AnalyticBridgeHypotheses) where
  analyticAssumptions : ConductorThreeGRHAndLI
  functional : AbstractLogDensityFunctional
  density : ℝ
  eventHasDensity :
    HasAbstractLogDensity functional
      (negativeIndexedObservableEvent model) density
  density_gt_half : (1 / 2 : ℝ) < density

/-- The abstract bias proposition extracted from the supplied density inputs.

This theorem performs no analytic derivation: its proof uses only
`eventHasDensity` and `density_gt_half`. -/
@[surface_novel, surface_published]
theorem abstractNegativeBias_of_inputs
    (model : AnalyticBridgeHypotheses)
    (inputs : AbstractRubinsteinSarnakInputs model) :
    HasAbstractNegativeBias inputs.functional
      (negativeIndexedObservableEvent model) := by
  exact ⟨inputs.density, inputs.eventHasDensity, inputs.density_gt_half⟩

/-- The same supplied abstract bias transported to the exactly equal
arithmetic sign event. -/
@[surface_novel, surface_published]
theorem abstractNegativeDeltaBias_of_inputs
    (model : AnalyticBridgeHypotheses)
    (inputs : AbstractRubinsteinSarnakInputs model) :
    HasAbstractNegativeBias inputs.functional
      (negativeIndexedDeltaEvent model) := by
  rw [← negativeIndexedObservableEvent_eq_deltaEvent model]
  exact abstractNegativeBias_of_inputs model inputs

end

end Surface.Core.AnalyticPrimeWalk
````
