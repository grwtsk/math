import Mathematics.Taxonomy.Facet
import Mathematics.Concept.Core

/-! # Product mathematical taxon: role, domain, facets, level, status, and authority. -/

namespace Mathematics.Taxonomy

open Mathematics

structure MathematicalTaxon where
  id : TaxonId
  conceptId : ConceptId
  primaryRole : OntologicalRole
  secondaryRoles : Finset OntologicalRole
  principalDomain : DomainPath
  secondaryDomains : Finset DomainPath
  facets : Finset FacetId
  level : StructuralLevel
  status : MathematicalStatus
  authority : Concept.Profile
  evidenceId : TaxonomyEvidenceId
  deriving DecidableEq

namespace MathematicalTaxon

def RolesSeparated (taxon : MathematicalTaxon) : Prop :=
  taxon.primaryRole ∉ taxon.secondaryRoles

def DomainsSeparated (taxon : MathematicalTaxon) : Prop :=
  taxon.principalDomain ∉ taxon.secondaryDomains

theorem primaryRole_unique
    (taxon : MathematicalTaxon) (left right : OntologicalRole)
    (hleft : left = taxon.primaryRole)
    (hright : right = taxon.primaryRole) : left = right := by
  rw [hleft, hright]

end MathematicalTaxon

end Mathematics.Taxonomy
