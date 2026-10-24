# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PolyHierarchy.Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e480506c178f7b2cd3ee23df9cc7979b61868f5` · SHA-256 `6f576890d6ca9d785a1ff46405db2a755a4af543463e28c7ae2d847cd90b1341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FactAuthority.Variantfdc5fdd8ef2c6e02c936d9cd6cfd3b68a716cb490b1665eb5ddd1c76bc7183a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdc5fdd8ef2c6e02c936d9cd6cfd3b68a716cb490b1665eb5ddd1c76bc7183a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FactAuthority.Variantfdc5fdd8ef2c6e02c936d9cd6cfd3b68a716cb490b1665eb5ddd1c76bc7183a3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fdc5fdd8ef2c6e02c936d9cd6cfd3b68a716cb490b1665eb5ddd1c76bc7183a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/PolyHierarchy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FactAuthority.Variantfdc5fdd8ef2c6e02c936d9cd6cfd3b68a716cb490b1665eb5ddd1c76bc7183a3

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
```
