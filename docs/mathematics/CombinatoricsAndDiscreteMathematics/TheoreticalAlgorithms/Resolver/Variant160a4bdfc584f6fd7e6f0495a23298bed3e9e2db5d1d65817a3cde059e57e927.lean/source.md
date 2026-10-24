# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Resolver.Variant160a4bdfc584f6fd7e6f0495a23298bed3e9e2db5d1d65817a3cde059e57e927

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c4e31f1a035aacbf662db9cce749d43775d7124` · SHA-256 `160a4bdfc584f6fd7e6f0495a23298bed3e9e2db5d1d65817a3cde059e57e927`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.Rebirth

/-!
# Total conservative tensor-alignment resolver

All searches range over finite committed candidate registries.  Positive
constructors contain the complete accepted certificate; missing evidence
returns a typed unknown boundary.
-/

namespace Mathematics.TensorNetwork

universe u v w

inductive TensorAlignmentUnknownKind
  | missingGraphEncoding
  | chainizationBoundary
  | semanticFiberBoundary
  | mpsFactorizationBoundary
  | bondRankBoundary
  | canonicalGaugeBoundary
  | quantizationBoundary
  | zeroLocusTransportBoundary
  | observableCoverageBoundary
  | complementaryWitnessBoundary
  | compactificationBoundary
  | decoderBoundary
  | anchorBoundary
  | authorityBoundary
  | stabilityBoundary
  deriving DecidableEq, Repr

/-- Proof that the current state is already outside the selected entry band. -/
structure StableAlignmentCertificate (N D : Nat) where
  state : TensorState N D
  observable : HermitianObservable N D
  interval : ExpectationIntervalCertificate observable state
  entryThreshold : ℝ
  outsideEntryBand :
    StrictlyOutsideBand interval.interval entryThreshold

/-- Proof-bearing complementary-axis physical actuation. -/
structure ComplementaryAxisCertificate (N D : Nat) where
  source : TensorState N D
  transformed : TensorState N D
  witnessObservable : HermitianObservable N D
  witnessInterval :
    ExpectationIntervalCertificate witnessObservable source
  exitThreshold : ℝ
  actuationError : ℝ
  actuationError_nonnegative : 0 ≤ actuationError
  witnessMargin :
    exitThreshold + actuationError ≤
      witnessInterval.interval.absmin
  postObservable : HermitianObservable N D
  postInterval :
    ExpectationIntervalCertificate postObservable transformed
  postcondition :
    OutsideBand postInterval.interval exitThreshold
  semanticTransport : Prop
  semanticTransport_proved : semanticTransport
  physicalActuationAuthority : Prop
  physicalActuationAuthority_proved :
    physicalActuationAuthority

inductive TensorAlignmentCandidate
    (Context : Type u)
    (N D : Nat)
  | stable
      (certificate : StableAlignmentCertificate N D)
  | unitaryExit
      (certificate : ComplementaryAxisCertificate N D)
  | anchorRebirth
      (certificate :
        ReproductiveAnchorCertificate Context N D)

/-- Every positive candidate exposes its branch-specific soundness claim. -/
def CertifiedTensorAlignment :
    TensorAlignmentCandidate Context N D → Prop
  | .stable certificate =>
      StrictlyOutsideBand certificate.interval.interval
        certificate.entryThreshold
  | .unitaryExit certificate =>
      OutsideBand certificate.postInterval.interval
        certificate.exitThreshold
  | .anchorRebirth certificate =>
      OutsideBand certificate.boundaryInterval.interval
        certificate.exitThreshold ∧
      certificate.behavioralDiameter ≤
        certificate.reproductiveError

theorem TensorAlignmentCandidate.certified
    (candidate : TensorAlignmentCandidate Context N D) :
    CertifiedTensorAlignment candidate := by
  cases candidate with
  | stable certificate =>
      exact certificate.outsideEntryBand
  | unitaryExit certificate =>
      exact certificate.postcondition
  | anchorRebirth certificate =>
      exact
        ⟨certificate.boundaryExit,
          certificate.reproductiveBound⟩

/-- Immutable finite alignment cut. -/
structure TensorAlignmentCut (Context : Type u) (N D : Nat) where
  cutId : String
  snapshotDigest : String
  graphDigest : String
  tensorProfileDigest : String
  decoderDigest : String
  authorityDigest : String
  stableCandidate :
    Option (StableAlignmentCertificate N D)
  unitaryCandidates :
    List (ComplementaryAxisCertificate N D)
  anchorCandidates :
    List (ReproductiveAnchorCertificate Context N D)

structure TensorAlignmentValidator
    (Context : Type u) (N D : Nat) where
  Valid : TensorAlignmentCut Context N D → Prop
  decidableValid : ∀ cut, Decidable (Valid cut)
  rejectionReason :
    TensorAlignmentCut Context N D → String

attribute [instance] TensorAlignmentValidator.decidableValid

/-- Domain profile evaluated only after the base authority frontier closes. -/
structure TensorAlignmentProfile
    (Context : Type u) (N D : Nat)
    (Packet : Type v) where
  AuthorityClosed :
    TensorAlignmentCut Context N D → Prop
  decidableAuthorityClosed :
    ∀ cut, Decidable (AuthorityClosed cut)
  unknownPacket :
    TensorAlignmentCut Context N D →
      TensorAlignmentUnknownKind → Packet
  exhaustedPacket :
    TensorAlignmentCut Context N D → Packet

attribute [instance]
  TensorAlignmentProfile.decidableAuthorityClosed

inductive TensorAlignmentResolution
    (validator : TensorAlignmentValidator Context N D)
    (profile : TensorAlignmentProfile Context N D Packet)
    (cut : TensorAlignmentCut Context N D)
  | solved
      (valid : validator.Valid cut)
      (authorityClosed : profile.AuthorityClosed cut)
      (candidate : TensorAlignmentCandidate Context N D)
  | unknown
      (valid : validator.Valid cut)
      (kind : TensorAlignmentUnknownKind)
      (packet : Packet)
  | rejected
      (reason : String)
      (invalid : ¬ validator.Valid cut)

def TensorAlignmentResolution.IsPositive :
    TensorAlignmentResolution validator profile cut → Prop
  | .solved _ _ _ => True
  | .unknown _ _ _ => False
  | .rejected _ _ => False

private def firstCandidate
    (cut : TensorAlignmentCut Context N D) :
    Option (TensorAlignmentCandidate Context N D) :=
  match cut.stableCandidate with
  | some certificate => some (.stable certificate)
  | none =>
      match cut.unitaryCandidates.head? with
      | some certificate => some (.unitaryExit certificate)
      | none =>
          match cut.anchorCandidates.head? with
          | some certificate => some (.anchorRebirth certificate)
          | none => none

/-- Total finite resolver; it performs no proof search or state mutation. -/
def resolveTensorAlignment
    (validator : TensorAlignmentValidator Context N D)
    (profile : TensorAlignmentProfile Context N D Packet)
    (cut : TensorAlignmentCut Context N D) :
    TensorAlignmentResolution validator profile cut :=
  if valid : validator.Valid cut then
    if authorityClosed : profile.AuthorityClosed cut then
      match firstCandidate cut with
      | some candidate =>
          .solved valid authorityClosed candidate
      | none =>
          .unknown valid .anchorBoundary
            (profile.exhaustedPacket cut)
    else
      .unknown valid .authorityBoundary
        (profile.unknownPacket cut .authorityBoundary)
  else
    .rejected (validator.rejectionReason cut) valid

theorem resolveTensorAlignment_total
    (validator : TensorAlignmentValidator Context N D)
    (profile : TensorAlignmentProfile Context N D Packet)
    (cut : TensorAlignmentCut Context N D) :
    ∃ result,
      result =
        resolveTensorAlignment validator profile cut :=
  ⟨resolveTensorAlignment validator profile cut, rfl⟩

theorem solved_tensor_alignment_sound
    (candidate : TensorAlignmentCandidate Context N D) :
    CertifiedTensorAlignment candidate :=
  candidate.certified

theorem tensorAlignment_positive_sound
    {validator : TensorAlignmentValidator Context N D}
    {profile : TensorAlignmentProfile Context N D Packet}
    {cut : TensorAlignmentCut Context N D}
    (result : TensorAlignmentResolution validator profile cut)
    (positive : result.IsPositive) :
    ∃ candidate : TensorAlignmentCandidate Context N D,
      CertifiedTensorAlignment candidate := by
  cases result with
  | solved _ _ candidate =>
      exact ⟨candidate, candidate.certified⟩
  | unknown =>
      exact positive.elim
  | rejected =>
      exact positive.elim

end Mathematics.TensorNetwork
```
