module

public import Surface.Refactor.PrimeScheduler

/-! # Finite bit-source receipts and unbiased-cell decoding -/

public section

namespace Surface.Refactor

open Surface.PrimeBoundedContinuation

@[surface_novel]
inductive BitSourceKind where
  | seededPseudorandom
  | constructedWave
  | externalAudioFeatures
deriving DecidableEq, Repr, BEq

@[surface_certificate]
structure SeededBitSourceReceipt where
  seed : Nat
  algorithmVersion : String
  bitCount : Nat
deriving DecidableEq, Repr

@[surface_certificate]
structure WaveBitSourceReceipt where
  frequencies : List Nat
  phases : List Nat
  sampleCount : Nat
  quantizationRule : String
deriving DecidableEq, Repr

@[surface_certificate]
structure ExternalAudioFeaturePacket where
  sourceHash : ContentHash256
  featureSchema : String
  finiteFeatures : List Int
deriving DecidableEq, Repr

/-- A rejection-sampling receipt.  The accepted ordinal is explicitly proven
to fit its finite target; no modulo-bias claim is hidden in the type. -/
@[surface_certificate]
structure AcceptedSample (modulus : Nat) where
  rawSample : Nat
  rejectionThreshold : Nat
  rejectedSampleCount : Nat
  acceptedBelowThreshold : rawSample < rejectionThreshold
  modulusPositive : 0 < modulus
  ordinal : Nat
  ordinalEq : ordinal = rawSample % modulus

@[surface_novel, surface_published]
theorem accepted_sample_is_in_range {modulus : Nat}
    (sample : AcceptedSample modulus) : sample.ordinal < modulus := by
  rw [sample.ordinalEq]
  exact Nat.mod_lt _ sample.modulusPositive

@[expose] def decodeAcceptedPrimeCell {radices : List Nat}
    (sample : AcceptedSample (cellCapacity radices)) : BoundedCell radices :=
  decode ⟨sample.ordinal, accepted_sample_is_in_range sample⟩

@[surface_novel, surface_published]
theorem accepted_sample_decodes_to_valid_prime_cell {radices : List Nat}
    (sample : AcceptedSample (cellCapacity radices)) :
    rank (decodeAcceptedPrimeCell sample) < cellCapacity radices :=
  rank_lt_capacity _

@[expose] def bitSourceAuthority (_receipt : SeededBitSourceReceipt) :
    RefactorAuthority := .deterministic

@[expose] def WaveBitSourceReceipt.authority (_receipt : WaveBitSourceReceipt) :
    RefactorAuthority := .numericalWitness

@[expose] def ExternalAudioFeaturePacket.authority
    (_packet : ExternalAudioFeaturePacket) : RefactorAuthority :=
  .numericalWitness

@[surface_novel, surface_published]
theorem bit_source_has_no_theorem_authority (receipt : SeededBitSourceReceipt) :
    bitSourceAuthority receipt ≠ .leanKernelChecked := by
  intro h
  cases h

@[surface_novel, surface_published]
theorem wave_source_has_no_randomness_claim_without_receipt
    (receipt : WaveBitSourceReceipt) : receipt.authority = .numericalWitness :=
  rfl

end Surface.Refactor
