# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Grounding.Variantb65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8c8b485b9d6d57324713a67a7e40b3a6c56b790` · SHA-256 `b65459f02edf05647da8097f84b6b66d59187f87e2f528652f60ff4fe03faff6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Rhetorical.Kernel.Manifest
import DAF.Rhetorical.Runtime.Trace
import DAF.Universe.Manifest

/-!
# Proof-bearing rhetorical grounding

External rhetorical locators are checked against an actual decoded `RHT1`
trace.  A registry can select which trace is current, but it cannot manufacture
PSD, point, or relation authority: those facts come from `decodeTrace` and
`AcceptanceConditions`.  All scores retained here remain navigation-only.
-/

namespace DAF.Rhetorical

open DAF.Universe
open DAF.Rhetorical.Runtime.RHT1

/-- Canonical universe-level spelling of a checked runtime digest. -/
def rhetoricalDigest (digest : DAF.Runtime.DHF1.Digest) : Universe.Digest :=
  ⟨"sha256", KernelManifest.digestHex digest⟩

/-- One concrete foreign trace together with the exact Lean decoder and
semantic acceptance evidence for it.  No caller-supplied proposition can
stand in for these two proof fields. -/
structure CertifiedRhetoricalGram where
  Index : Type
  kernel : PositiveKernel Index
  dimension : Nat
  commitment : CanonicalTraceCommitment kernel dimension
  trace : RuntimeTrace
  decoded : decodeTrace commitment.traceWire = some trace
  acceptance : AcceptanceConditions commitment trace

namespace CertifiedRhetoricalGram

/-- The accepted-trace proposition represented by this package. -/
theorem accepted (certificate : CertifiedRhetoricalGram) :
    AcceptedTrace certificate.commitment :=
  ⟨certificate.trace, certificate.decoded, certificate.acceptance⟩

/-- Kernel identity is derived from the accepted trace digest, whose preimage
is independently recomputed by `AcceptanceConditions`. -/
def kernelId (certificate : CertifiedRhetoricalGram) : StableId :=
  ⟨"daf:rhetorical-kernel:" ++
    KernelManifest.digestHex certificate.trace.kernelDigest⟩

def kernelDigest (certificate : CertifiedRhetoricalGram) : Universe.Digest :=
  rhetoricalDigest certificate.trace.kernelDigest

/-- Trace identity commits to every received `RHT1` byte. -/
def traceDigest (certificate : CertifiedRhetoricalGram) : Universe.Digest :=
  rhetoricalDigest (DAF.Runtime.DHF1.sha256 certificate.commitment.traceWire)

def traceId (certificate : CertifiedRhetoricalGram) : RuntimeTraceId :=
  ⟨"daf:rhetorical-trace:" ++ certificate.traceDigest.value⟩

/-- The PSD certificate name is not an assertion supplied by the producer: it
is a deterministic name for this exact accepted-factor trace. -/
def psdCertificateId (certificate : CertifiedRhetoricalGram) : StableId :=
  ⟨"daf:rhetorical-psd:" ++ certificate.traceDigest.value⟩

/-- Active-set and query binding is the exact `RHP1` problem digest. -/
def bindingDigest (certificate : CertifiedRhetoricalGram) : Universe.Digest :=
  rhetoricalDigest (DAF.Runtime.DHF1.sha256 certificate.commitment.problemWire)

private def relationProfileTag : RhetoricalRelationProfile → Nat
  | .similarity => 0
  | .implicationAffinity => 1
  | .oppositionAffinity => 2
  | .oppositionResidual => 3
  | .coordinateAntipodesExact => 4
  | .analogyTranslationAffinity => 5
  | .analogyTranslationResidual => 6
  | .analogyTranslationExact => 7
  | .analogyTensorAffinity => 8

def pointCertificateId
    (certificate : CertifiedRhetoricalGram)
    (report : PointReport) : StableId :=
  ⟨"daf:rhetorical-point:" ++ certificate.traceDigest.value ++ ":" ++
    toString report.point ++ ":" ++ KernelManifest.digestHex report.vectorDigest⟩

def scoreCertificateId
    (certificate : CertifiedRhetoricalGram)
    (score : RhetoricalNavigationScore) : StableId :=
  ⟨"daf:rhetorical-score:" ++ certificate.traceDigest.value ++ ":" ++
    toString (relationProfileTag score.profile) ++ ":" ++
    toString score.reportIndex⟩

/-- Digest of one theorem-cell rhetorical coordinate.  It binds the accepted
trace, exact concept bytes, role, point position, and symbolic factor column. -/
def locationDigest
    (certificate : CertifiedRhetoricalGram)
    (concept : ConceptId)
    (role : RhetoricalRole)
    (report : PointReport) : Universe.Digest :=
  rhetoricalDigest <| DAF.Runtime.DHF1.sha256 <|
    certificate.traceDigest.value.toUTF8.toList ++
    concept.value.toUTF8.toList ++
    DAF.Runtime.DHF1.natBytesBE 1 role.tag ++
    DAF.Runtime.DHF1.natBytesBE 4 report.point ++
    report.vectorDigest

/-- A model-supplied concept-role point resolves to one exact point report,
including its source bytes, role tag, positive norm, and factor-column digest.
-/
def PointCertified
    (certificate : CertifiedRhetoricalGram)
    (point : RhetoricalPointLocator) : Prop :=
  certificate.trace.points.any (fun report => decide <|
    PointReport.Matches certificate.trace report ∧
      report.source.resolve certificate.commitment.manifestWire =
        some point.concept.value.toUTF8.toList ∧
      report.roleTag = point.role.tag ∧
      report.normSquared = point.diagonalRe ∧
      point.certificateId = certificate.pointCertificateId report) = true

instance (certificate : CertifiedRhetoricalGram)
    (point : RhetoricalPointLocator) :
    Decidable (certificate.PointCertified point) := by
  unfold PointCertified
  infer_instance

/-- The exact report selected by a navigation score.  Relation profiles are
kept disjoint; in particular no similarity report can certify implication or
opposition, and the finite runtime currently makes no conditional
product-kernel-profile claim. -/
def traceReportsScore
    (trace : RuntimeTrace) (score : RhetoricalNavigationScore) : Bool :=
  match score.profile, score.value with
  | .similarity, .normalized numerator denominatorSquared =>
      trace.similarities[score.reportIndex]?.any fun report => decide <|
        SimilarityReport.Matches trace report ∧
        score.operands = [report.left, report.right] ∧
        report.normalizedRe.numerator = numerator ∧
        report.normalizedRe.denominatorSquared = denominatorSquared
  | .implicationAffinity, .normalized numerator denominatorSquared =>
      trace.implications[score.reportIndex]?.any fun report => decide <|
        ImplicationReport.Matches trace report ∧
        score.operands = [report.premise, report.conclusion] ∧
        report.directedAffinity.numerator = numerator ∧
        report.directedAffinity.denominatorSquared = denominatorSquared
  | .oppositionAffinity, .normalized numerator denominatorSquared =>
      trace.oppositions[score.reportIndex]?.any fun report => decide <|
        OppositionReport.Matches trace report ∧
        score.operands = [report.positive, report.negative] ∧
        report.normalizedRe.numerator = numerator ∧
        report.normalizedRe.denominatorSquared = denominatorSquared
  | .oppositionResidual, .squaredResidual residual =>
      trace.oppositions[score.reportIndex]?.any fun report => decide <|
        OppositionReport.Matches trace report ∧
        score.operands = [report.positive, report.negative] ∧
        report.profileResidualSquared = some residual
  | .coordinateAntipodesExact, .exactEquality holds =>
      trace.oppositions[score.reportIndex]?.any fun report => decide <|
        OppositionReport.Matches trace report ∧
        score.operands = [report.positive, report.negative] ∧
        report.exactAntipodes = holds
  | .analogyTranslationAffinity,
      .normalized numerator denominatorSquared =>
      trace.analogies[score.reportIndex]?.any fun report => decide <|
        AnalogyReport.Matches trace report ∧
        score.operands = [report.sourceLeft, report.sourceRight,
          report.targetLeft, report.targetRight] ∧
        report.normalizedAffinity = some
          ⟨numerator, denominatorSquared⟩
  | .analogyTranslationResidual, .squaredResidual residual =>
      trace.analogies[score.reportIndex]?.any fun report => decide <|
        AnalogyReport.Matches trace report ∧
        score.operands = [report.sourceLeft, report.sourceRight,
          report.targetLeft, report.targetRight] ∧
        report.displacementResidualSquared = residual
  | .analogyTranslationExact, .exactEquality holds =>
      trace.analogies[score.reportIndex]?.any fun report => decide <|
        AnalogyReport.Matches trace report ∧
        score.operands = [report.sourceLeft, report.sourceRight,
          report.targetLeft, report.targetRight] ∧
        report.equalDisplacements = holds
  | _, _ => false

def TraceReportsScore
    (trace : RuntimeTrace) (score : RhetoricalNavigationScore) : Prop :=
  traceReportsScore trace score = true

instance (trace : RuntimeTrace) (score : RhetoricalNavigationScore) :
    Decidable (TraceReportsScore trace score) := by
  unfold TraceReportsScore
  infer_instance

/-- A navigation score is accepted only when both its deterministic
certificate identity and its exact report value match this accepted trace. -/
def ScoreCertified
    (certificate : CertifiedRhetoricalGram)
    (score : RhetoricalNavigationScore) : Prop :=
  score.certificateId = certificate.scoreCertificateId score ∧
    TraceReportsScore certificate.trace score

instance (certificate : CertifiedRhetoricalGram)
    (score : RhetoricalNavigationScore) :
    Decidable (certificate.ScoreCertified score) := by
  unfold ScoreCertified
  infer_instance

end CertifiedRhetoricalGram

/-- Registry policy selects a current, proof-bearing trace package by its
derived trace identity.  It carries no independent point or score oracle. -/
structure RhetoricalEvidenceRegistry where
  gramTraceFor : RuntimeTraceId → Option CertifiedRhetoricalGram

end DAF.Rhetorical

namespace DAF.Universe

open DAF.Rhetorical

namespace ExternalRhetoricalLocator

def TraceRegistered
    (locator : ExternalRhetoricalLocator)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor locator.activeGramTraceId = some certificate

def KernelFresh
    (locator : ExternalRhetoricalLocator)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor locator.activeGramTraceId = some certificate ∧
    locator.kernelId = certificate.kernelId ∧
    locator.kernelDigest = certificate.kernelDigest

def TraceDigestFresh
    (locator : ExternalRhetoricalLocator)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor locator.activeGramTraceId = some certificate ∧
    locator.traceDigest = certificate.traceDigest

def GramCertified
    (locator : ExternalRhetoricalLocator)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor locator.activeGramTraceId = some certificate ∧
    locator.kernelId = certificate.kernelId ∧
    locator.kernelDigest = certificate.kernelDigest ∧
    locator.activeGramTraceId = certificate.traceId ∧
    locator.traceDigest = certificate.traceDigest ∧
    locator.psdCertificateId = certificate.psdCertificateId ∧
    locator.activeGramBindingDigest = certificate.bindingDigest

def PointsCertified
    (locator : ExternalRhetoricalLocator)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor locator.activeGramTraceId = some certificate ∧
    ∀ point ∈ locator.points, certificate.PointCertified point

def ScoresCertified
    (locator : ExternalRhetoricalLocator)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor locator.activeGramTraceId = some certificate ∧
    ∀ score ∈ locator.scores, certificate.ScoreCertified score

end ExternalRhetoricalLocator

namespace RhetoricalLocation

/-- A theorem-cell rhetorical coordinate is certified by the same accepted
trace boundary as an external response point. -/
def Certified
    (location : RhetoricalLocation)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor location.activeGramTraceId = some certificate ∧
    location.kernelId = certificate.kernelId ∧
    location.kernelDigest = certificate.kernelDigest ∧
    location.activeGramTraceId = certificate.traceId ∧
    location.traceDigest = certificate.traceDigest ∧
    location.psdCertificateId = certificate.psdCertificateId ∧
    ∃ report ∈ certificate.trace.points,
      DAF.Rhetorical.Runtime.RHT1.PointReport.Matches
        certificate.trace report ∧
      report.source.resolve certificate.commitment.manifestWire =
        some location.index.1.value.toUTF8.toList ∧
      report.roleTag = location.index.2.tag ∧
      location.pointVectorId = certificate.pointCertificateId report ∧
      location.locationDigest = certificate.locationDigest
        location.index.1 location.index.2 report

end RhetoricalLocation

namespace TheoremCellDescriptor

/-- If a theorem cell declares a rhetorical realization, it resolves through
the checked trace registry; absence remains permitted. -/
def RhetoricalCertified
    (cell : TheoremCellDescriptor)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∀ location, cell.rhetoricalLocation = some location →
    location.Certified registry

end TheoremCellDescriptor

namespace UniverseManifest

/-- Derived closure of optional theorem-cell rhetorical coordinates.  It is
kept separate from ordinary theorem-node reference closure and theorem
identity. -/
def RhetoricalReferencesClosed
    (manifest : UniverseManifest)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∀ cell ∈ manifest.theoremCells, cell.RhetoricalCertified registry

end UniverseManifest

/-- Canonical receiving API for a universe manifest whose optional
rhetorical theorem-cell coordinates have all been checked against one
proof-bearing evidence registry.  Consumers which use rhetorical locations
must accept this wrapper rather than a bare `UniverseManifest`; ordinary
manifest and theorem identity remain unchanged. -/
structure CheckedRhetoricalManifest
    (registry : RhetoricalEvidenceRegistry) where
  manifest : UniverseManifest
  rhetoricalReferencesClosed : manifest.RhetoricalReferencesClosed registry

namespace CheckedRhetoricalManifest

/-- Every theorem cell in a checked rhetorical manifest carries the derived
closure condition, including cells whose optional location is absent. -/
theorem theoremCellCertified
    {registry : RhetoricalEvidenceRegistry}
    (checked : CheckedRhetoricalManifest registry)
    {cell : TheoremCellDescriptor}
    (member : cell ∈ checked.manifest.theoremCells) :
    cell.RhetoricalCertified registry :=
  checked.rhetoricalReferencesClosed cell member

end CheckedRhetoricalManifest

end DAF.Universe
```
