module

public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Payload

/-!
# Cross-language finite transport certificates

Evidence level is explicit. A certificate can carry a proposition-valued
agreement proof for one exact input, but finite corpus labels alone never imply
universal implementation equivalence.
-/

public section

namespace Surface.Core.Transport

@[surface_novel]
inductive ConformanceEvidenceLevel where
  | finiteGoldenCorpus
  | exhaustiveFiniteDomain
  | universalVerifiedImplementation
deriving DecidableEq, Repr

@[surface_novel]
structure FiniteConformanceRecord where
  schemaId : String
  implementationId : String
  implementationVersion : String
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  evidenceLevel : ConformanceEvidenceLevel
  corpusHash : Hash256
  exposesProposition : Bool := false
deriving DecidableEq, Repr

@[expose] def FiniteConformanceRecord.Valid
    (record : FiniteConformanceRecord) : Prop :=
  record.contractHash.Valid ∧ record.sourceSnapshotHash.Valid ∧
    record.corpusHash.Valid ∧ record.exposesProposition = false

instance (record : FiniteConformanceRecord) : Decidable record.Valid := by
  unfold FiniteConformanceRecord.Valid
  infer_instance

@[surface_novel, surface_certificate]
structure RustTransportCertificate
    {α : Type} (semantics : PayloadSemantics α)
    (input : Revisioned α) where
  record : FiniteConformanceRecord
  rustExpectedUpdate : Revisioned α
  conforms : rustExpectedUpdate = semantics.expectedUpdate input

@[expose] def RustTransportConforms
    {α : Type} {semantics : PayloadSemantics α}
    {input : Revisioned α}
    (certificate : RustTransportCertificate semantics input) : Prop :=
  certificate.rustExpectedUpdate = semantics.expectedUpdate input

@[surface_novel, surface_published, surface_certificate]
theorem rustExpectedUpdate_eq_leanExpectedUpdate
    {α : Type} {semantics : PayloadSemantics α}
    {input : Revisioned α}
    (certificate : RustTransportCertificate semantics input)
    (conforms : RustTransportConforms certificate) :
    certificate.rustExpectedUpdate = semantics.expectedUpdate input :=
  conforms

@[surface_novel, surface_published]
theorem finiteConformanceRecord_does_not_expose_proposition
    (record : FiniteConformanceRecord) (valid : record.Valid) :
    record.exposesProposition = false :=
  valid.2.2.2

end Surface.Core.Transport
