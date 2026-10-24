# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c84604066dafb47b68a73cef98d8301744142cbb` · SHA-256 `fb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
