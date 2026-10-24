# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variante952cecb664ac0c17211965021b1689f8dc15a54e0787cde09c11808fab1d13a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e4e108d073150d17842d3600a2ca61888c1dcc6` · SHA-256 `e952cecb664ac0c17211965021b1689f8dc15a54e0787cde09c11808fab1d13a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Ownership
import Surface.ContinuousAssurance.AssuranceLevel

/-!
# Evidence and the attestation boundary

Digests, logs, generated source, test results, and workflow status are data.
An external attestation therefore contains no proof field.  A proposition can
cross this boundary only through an explicitly supplied `CertifiedBridge`.
-/

namespace Surface.ContinuousAssurance

/-- An uninterpreted digest label.  Equality is byte/string equality only. -/
structure EvidenceDigest where
  value : String
  deriving DecidableEq, Repr

/-- The origin whose authority governs an evidence item. -/
structure EvidenceOrigin where
  producer : String
  authority : AuthorityClass
  evidenceClass : EvidenceClass
  deriving DecidableEq, Repr

/-- One externally locatable piece of evidence. -/
structure EvidenceItem where
  identifier : String
  location : String
  digest : EvidenceDigest
  origin : EvidenceOrigin
  deriving DecidableEq, Repr

/-- Evidence collected by one assurance execution. -/
structure EvidenceBundle where
  identifier : String
  items : List EvidenceItem
  deriving DecidableEq, Repr

/-- Gate output is operational data, not theorem authority. -/
inductive GateDecision
  | pass
  | fail
  | defer
  deriving DecidableEq, Repr

/-- A pipeline attestation records a decision and the evidence it cites. -/
structure Attestation where
  identifier : String
  decision : GateDecision
  evidence : EvidenceBundle
  issuer : String
  deriving DecidableEq, Repr

/-- External evidence suitable for a claim-ledger entry, but not a proof. -/
structure ExternalEvidence where
  attestation : Attestation
  location : String
  owner : Project
  deriving DecidableEq, Repr

namespace ExternalEvidence

/--
Provenance coherence ties the external issuer and every cited evidence item to
the typed project owner and its declared authority class.  It remains a
proposition about metadata, not a proof of an attested conclusion.
-/
def ProvenanceCoherent (evidence : ExternalEvidence) : Prop :=
  evidence.attestation.issuer = evidence.owner.identifier ∧
  ∀ item ∈ evidence.attestation.evidence.items,
    item.origin.producer = evidence.owner.identifier ∧
    item.origin.authority = evidence.owner.executionAuthorityClass

end ExternalEvidence

/--
The only theorem-bearing bridge from an attestation to a proposition.  The
proof is supplied explicitly in the Lean trusted base; it is not extracted
from a hash, log, workflow result, or attestation field.
-/
structure CertifiedBridge
    (attestation : Attestation)
    (conclusion : Prop) : Type where
  proof : conclusion

/-- A certified bridge exposes precisely the proposition it certifies. -/
theorem CertifiedBridge.conclusion
    {attestation : Attestation}
    {conclusion : Prop}
    (bridge : CertifiedBridge attestation conclusion) :
    conclusion :=
  bridge.proof

/-- Supporting an external conclusion requires an explicit certified bridge. -/
def ExternalEvidence.Supports
    (evidence : ExternalEvidence)
    (conclusion : Prop) : Type :=
  CertifiedBridge evidence.attestation conclusion

/-- The bridge boundary is explicit at every use site. -/
theorem conclusion_of_external_evidence
    (evidence : ExternalEvidence)
    {conclusion : Prop}
    (bridge : evidence.Supports conclusion) :
    conclusion :=
  bridge.proof

/-- A stage view of external evidence; level does not alter its authority. -/
structure ExternalEvidenceAtLevel where
  evidence : ExternalEvidence
  level : AssuranceLevel

/-- Advance the view of external evidence to a no-weaker assurance level. -/
def ExternalEvidenceAtLevel.advance
    (view : ExternalEvidenceAtLevel)
    (level : AssuranceLevel)
    (_monotone : view.level.AtMost level) : ExternalEvidenceAtLevel :=
  ⟨view.evidence, level⟩

/-- Progressive staging does not turn external evidence into a proof object. -/
@[simp]
theorem ExternalEvidenceAtLevel.advance_preserves_evidence
    (view : ExternalEvidenceAtLevel)
    (level : AssuranceLevel)
    (monotone : view.level.AtMost level) :
    (view.advance level monotone).evidence = view.evidence :=
  rfl

end Surface.ContinuousAssurance
```
