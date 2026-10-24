# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b72e9a5b8d299196ffc8a68e8e053676d2ea8d4` · SHA-256 `ea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Taxonomy.Facet
import MathDiscovery.Concept.Core

/-! # Product mathematical taxon: role, domain, facets, level, status, and authority. -/

namespace MathDiscovery.Taxonomy

open MathDiscovery

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

end MathDiscovery.Taxonomy
```
