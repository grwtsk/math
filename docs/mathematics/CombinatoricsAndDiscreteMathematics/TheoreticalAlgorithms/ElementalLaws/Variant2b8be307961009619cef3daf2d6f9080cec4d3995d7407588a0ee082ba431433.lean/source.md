# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementalLaws.Variant2b8be307961009619cef3daf2d6f9080cec4d3995d7407588a0ee082ba431433

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33b5c77a026a74ecbd3e75247ce75073ba2c91d6` · SHA-256 `2b8be307961009619cef3daf2d6f9080cec4d3995d7407588a0ee082ba431433`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Kernel
import Mathematics.Concept.Descriptor
import Mathematics.Ingestion.TypedIngress
import Mathematics.Oracle.Agreement
import Mathematics.Projection.PointProjection
import Mathematics.Reflection.Sovereignty
import Mathematics.Relaxation.ElementalStep

/-!
# Non-negotiable elemental laws

The laws are represented twice: by constructor exclusion in the surrounding
types, and by a complete evidence ledger.  Spelling and embedding observations
are deliberately absent from `PointIdentityWitness`.
-/

namespace Mathematics.System

/-- The complete declared law set. -/
inductive ElementalLaw
  | noUntypedIngress
  | noSourceErasure
  | noIdentityBySpelling
  | noDifferenceBySpellingAlone
  | noEqualityByEmbedding
  | noAuthorityByConsensus
  | noProofWithoutStatementAlignment
  | noPrivateModelOntology
  | noSilentProjection
  | noDisappearingFailure
  | noUndocumentedPromotion
  | noProjectColonization
  | noPartialIngestionCalledTotal
  | noReflectionWithoutReconstruction
  deriving DecidableEq, Repr, Inhabited

def allElementalLaws : List ElementalLaw :=
  [.noUntypedIngress,
   .noSourceErasure,
   .noIdentityBySpelling,
   .noDifferenceBySpellingAlone,
   .noEqualityByEmbedding,
   .noAuthorityByConsensus,
   .noProofWithoutStatementAlignment,
   .noPrivateModelOntology,
   .noSilentProjection,
   .noDisappearingFailure,
   .noUndocumentedPromotion,
   .noProjectColonization,
   .noPartialIngestionCalledTotal,
   .noReflectionWithoutReconstruction]

theorem allElementalLaws_nodup :
    allElementalLaws.Nodup := by
  decide

/-- Only exact or separately certified equality can witness point identity. -/
inductive PointIdentityWitness
    (left right : ElementId) : Prop
  | exact (same : left = right)
  | certified
      (certificateId : CertificateId)
      (same : left = right)

theorem PointIdentityWitness.implies_equal
    {left right : ElementId}
    (witness : PointIdentityWitness left right) :
    left = right := by
  cases witness with
  | exact same => exact same
  | certified _ same => exact same

/-- Semantic completeness is a proof beyond exact inventory accounting. -/
structure SemanticCompletion
    (gate : Ingestion.TypedIngressGate) : Prop where
  everyLayerComplete :
    ∀ receipt ∈ gate.layerReceipts,
      receipt.disposition = .complete

/-- One proof-bearing receipt for a governing law. -/
structure ElementalLawEvidence where
  law : ElementalLaw
  certificateId : CertificateId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

structure ElementalLawLedger where
  evidence : List ElementalLawEvidence
  lawsCovered :
    ∀ law ∈ allElementalLaws,
      ∃ item ∈ evidence,
        item.law = law
  evidence_ids_unique :
    (evidence.map ElementalLawEvidence.certificateId).Nodup
  ledgerDigest : Digest

/-- Consensus remains outside admitted fact authority. -/
theorem consensus_cannot_authorize_fact
    (ledger : Oracle.AgreementLedger) :
    ¬ ∃ authority : Projection.FactAuthority,
      Sum.inl ledger.authority =
        (Sum.inr authority :
          Projection.ProposalAuthority ⊕ Projection.FactAuthority) :=
  Oracle.agreement_is_not_fact_authority ledger

end Mathematics.System
```
