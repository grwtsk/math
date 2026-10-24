# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Facet.Varianta87eab586a987f58884f06646c29fd38395cd55dac704a865f39a5f4d7cdd632

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bc7c9461c96f8b47012afc261d924363100dad6` · SHA-256 `a87eab586a987f58884f06646c29fd38395cd55dac704a865f39a5f4d7cdd632`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Taxonomy.Domain

/-!
# Governed cross-cutting facets

Facet identity is stable-ID based so projects may extend the vocabulary. A
facet requires a witness and cannot become canonical home by itself.
-/

namespace Mathematics.Taxonomy

open Mathematics

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

end Mathematics.Taxonomy
```
