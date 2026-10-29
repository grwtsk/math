import Mathematics.Authority.Evidence
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.DeriveFintype

/-!
# Finite intrinsic polyhierarchies

This is the authority boundary for projection.  A polyhierarchy contains only
intrinsic facts and kernel-accepted external facts.  Model output is not a fact
constructor and therefore cannot enter the structure through this interface.

Crossings, incidences, authority records, provenance records, equivalences, and
orders are represented by relation symbols in the versioned signature.  Keeping
them in one finitary relation interface makes structural isomorphism preserve
the whole admitted fact cascade rather than a selected graph shadow.
-/

namespace Mathematics.Projection

universe u v w

/-- The only authority classes admitted to an authoritative structure. -/
inductive FactAuthority
  | intrinsicFact
  | externalCertifiedFact
  deriving DecidableEq, Repr, Inhabited, Fintype

-- Sort and relation carriers intentionally live in independent universes.
set_option linter.checkUnivs false in
/--
A finite, versioned, multi-sorted relational signature.  Relation arity is part
of the signature, so a structural isomorphism cannot silently reinterpret a
fact with a different incidence shape.
-/
structure StructuralSignature where
  SortType : Type u
  Relation : Type v
  sortFintype : Fintype SortType
  sortDecidableEq : DecidableEq SortType
  relationFintype : Fintype Relation
  relationDecidableEq : DecidableEq Relation
  arity : Relation → Nat
  version : Nat

attribute [instance] StructuralSignature.sortFintype
  StructuralSignature.sortDecidableEq
  StructuralSignature.relationFintype
  StructuralSignature.relationDecidableEq

/--
An authoritative finite structural system.  Facts are predicates rather than a
serialization, so source order and filesystem position are absent.
-/
structure PolyHierarchy (signature : StructuralSignature) where
  Element : Type w
  elementFintype : Fintype Element
  elementDecidableEq : DecidableEq Element
  elementSort : Element → signature.SortType
  isNode : Element → Prop
  isNodeDecidable : DecidablePred isNode
  fact :
    FactAuthority →
      (relation : signature.Relation) →
      (Fin (signature.arity relation) → Element) →
      Prop
  factDecidable :
    ∀ authority relation arguments,
      Decidable (fact authority relation arguments)
  projectionLawVersion : Nat
  normalized : projectionLawVersion = signature.version

attribute [instance] PolyHierarchy.elementFintype
  PolyHierarchy.elementDecidableEq
  PolyHierarchy.isNodeDecidable
  PolyHierarchy.factDecidable

/-- A proposal is deliberately outside the admitted fact cascade. -/
inductive ProposalAuthority
  | languageModel
  | humanMathematician
  | oracleCandidate
  | modelOracleAgreement
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- There is no coercion from a proposal authority to an admitted fact authority. -/
theorem proposal_is_not_fact_authority
    (proposal : ProposalAuthority) :
    ¬ ∃ authority : FactAuthority,
      Sum.inl proposal = (Sum.inr authority : ProposalAuthority ⊕ FactAuthority) := by
  intro witness
  rcases witness with ⟨authority, equality⟩
  cases equality

end Mathematics.Projection
