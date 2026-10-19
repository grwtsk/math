import MathDiscovery.Taxonomy.Domain

/-!
# Governed cross-cutting facets

Facet identity is stable-ID based so projects may extend the vocabulary. A
facet requires a witness and cannot become canonical home by itself.
-/

namespace MathDiscovery.Taxonomy

open MathDiscovery

structure FacetRecord where
  id : FacetId
  canonicalName : String
  definition : String
  compatibleRoles : Finset OntologicalRole
  provenance : Finset StableId
  deriving DecidableEq

structure FacetRegistry where
  facets : List FacetRecord

namespace FacetRegistry

def UniqueIds (registry : FacetRegistry) : Prop :=
  (registry.facets.map (·.id)).Nodup

def find? (registry : FacetRegistry) (id : FacetId) : Option FacetRecord :=
  registry.facets.find? fun facet => facet.id = id

end FacetRegistry

end MathDiscovery.Taxonomy
