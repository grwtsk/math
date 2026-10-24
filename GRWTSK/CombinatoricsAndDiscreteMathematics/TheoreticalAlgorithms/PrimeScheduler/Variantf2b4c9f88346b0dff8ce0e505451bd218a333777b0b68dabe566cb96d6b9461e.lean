-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CumulativePrimeLedger.Variante4a982bdbcc9f35bfabf5188481dcc26bd9811096ad0ab30c7f5ad2dbafd3e8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4a982bdbcc9f35bfabf5188481dcc26bd9811096ad0ab30c7f5ad2dbafd3e8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CumulativePrimeLedger.Variante4a982bdbcc9f35bfabf5188481dcc26bd9811096ad0ab30c7f5ad2dbafd3e8c","mathematical_subject":"Computation.DataStructures","original_sha256":"e4a982bdbcc9f35bfabf5188481dcc26bd9811096ad0ab30c7f5ad2dbafd3e8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/PrimeScheduler.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.HomologyInput
public import Surface.Core.PrimeBoundedContinuation

/-! # Authority-bounded prime continuation scheduler -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CumulativePrimeLedger.Variante4a982bdbcc9f35bfabf5188481dcc26bd9811096ad0ab30c7f5ad2dbafd3e8c

public section

namespace Surface.Refactor

open Surface.Core Surface.PrimeBoundedContinuation

@[surface_novel]
structure CumulativePrimeLedger where
  epoch : Nat
  primes : List PrimeRadix

@[surface_novel]
structure ActivePrimeWindow where
  ledgerEpoch : Nat
  activeIndices : List Nat
  width : Nat
  modelCallBudget : Nat
  tokenBudget : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure PrimeScheduleCoordinate (radix : PrimeRadix) where
  coordinate : Surface.PrimeBoundedContinuation.PrimeCoordinate radix

@[surface_novel, surface_published]
theorem prime_coordinate_decomposition (radix : PrimeRadix)
    (coordinate : PrimeScheduleCoordinate radix) :
    coordinate.coordinate.absoluteExponent =
      radix.value * coordinate.coordinate.lap + coordinate.coordinate.digit.val :=
  coordinate.coordinate.decomposition

@[surface_novel, surface_published]
theorem prime_coordinate_residue_lt (radix : PrimeRadix)
    (coordinate : PrimeScheduleCoordinate radix) :
    coordinate.coordinate.digit.val < radix.value :=
  coordinate.coordinate.digit.isLt

@[surface_novel, surface_published]
theorem mixed_radix_rank_in_bounds {radices : List Nat}
    (cell : BoundedCell radices) : rank cell < cellCapacity radices :=
  rank_lt_capacity cell

@[surface_novel, surface_published]
theorem mixed_radix_decode_encode {radices : List Nat}
    (cell : BoundedCell radices) : decode (encode cell) = cell :=
  Surface.PrimeBoundedContinuation.decode_encode cell

@[surface_novel, surface_published]
theorem ledger_extension_preserves_existing_coordinate_identity
    (ledger : LedgerExponentState) (newPrime : Nat) :
    sparseNonzeroCoordinateIdentity (appendZeroExponent ledger newPrime) =
      sparseNonzeroCoordinateIdentity ledger :=
  append_zero_preserves_sparse_identity ledger newPrime

@[surface_novel]
structure FrontierBreach where
  ledger : LedgerExponentState
  ledgerEpoch : Nat
  prime : Nat
  primeProof : Nat.Prime prime
  absent : prime ∉ ledgerPrimes ledger

@[surface_novel]
structure HomologyFeatureReference where
  inputDigest : ContentHash256
  degree : Nat
  prime : Nat
  torsionLayer? : Option Nat
  authority : RefactorAuthority
deriving Repr

@[surface_novel]
inductive ContinuationAction where
  | advanceResidue
  | carryLap
  | crossPrimeCompose
  | openDiscoveredPrime
  | proposeUndiscoveredPrime
  | inspectNextTorsionLayer
  | requestIntegralHomology
  | requestCycleRepresentative
  | synthesize
  | stop
deriving DecidableEq, Repr, BEq

@[expose] def allContinuationActions : List ContinuationAction :=
  [.advanceResidue, .carryLap, .crossPrimeCompose, .openDiscoveredPrime,
    .proposeUndiscoveredPrime, .inspectNextTorsionLayer,
    .requestIntegralHomology, .requestCycleRepresentative, .synthesize, .stop]

@[surface_novel]
structure ClassifierContext where
  mayAdvance : Bool
  carryPending : Bool
  multipleActivePrimes : Bool
  discoveredPrimeAvailable : Bool
  undiscoveredPrimeProposable : Bool
  exactTorsionLayerAvailable : Bool
  integralHomologyMissing : Bool
  cycleRepresentativeMissing : Bool
deriving DecidableEq, Repr

@[expose] def actionAdmissible
    (context : ClassifierContext) : ContinuationAction → Bool
  | .advanceResidue => context.mayAdvance && !context.carryPending
  | .carryLap => context.mayAdvance && context.carryPending
  | .crossPrimeCompose => context.multipleActivePrimes
  | .openDiscoveredPrime => context.discoveredPrimeAvailable
  | .proposeUndiscoveredPrime => context.undiscoveredPrimeProposable
  | .inspectNextTorsionLayer => context.exactTorsionLayerAvailable
  | .requestIntegralHomology => context.integralHomologyMissing
  | .requestCycleRepresentative => context.cycleRepresentativeMissing
  | .synthesize => true
  | .stop => true

@[surface_novel]
structure ClassifierResult (context : ClassifierContext) where
  admissibleActions : List ContinuationAction :=
    allContinuationActions.filter (actionAdmissible context)
  selectedIndex : Fin admissibleActions.length
  selectedAdmissible :
    actionAdmissible context (admissibleActions.get selectedIndex) = true
  authority : RefactorAuthority := .deterministic

@[expose] def ClassifierResult.selectedAction {context : ClassifierContext}
    (result : ClassifierResult context) : ContinuationAction :=
  result.admissibleActions.get result.selectedIndex

@[surface_novel, surface_published]
theorem classifier_action_is_admissible {context : ClassifierContext}
    (result : ClassifierResult context) :
    actionAdmissible context result.selectedAction = true :=
  result.selectedAdmissible

@[surface_novel, surface_published]
theorem classifier_action_is_in_emitted_set {context : ClassifierContext}
    (result : ClassifierResult context) :
    result.selectedAction ∈ result.admissibleActions :=
  List.get_mem result.admissibleActions result.selectedIndex

@[expose] def primeAddressAuthority
    {radix : PrimeRadix} (_coordinate : PrimeScheduleCoordinate radix) :
    RefactorAuthority := .deterministic

@[surface_novel, surface_published]
theorem prime_address_not_theorem_authority {radix : PrimeRadix}
    (coordinate : PrimeScheduleCoordinate radix) :
    primeAddressAuthority coordinate ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
