# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Projection.Variant3ed2bde64c374614cf5b5d9c0e12fa117c02daa71d3c2447bb41a457c5eaa82d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c56e587ef63cb7b9ccef7abf262c16be64cf9b7` · SHA-256 `3ed2bde64c374614cf5b5d9c0e12fa117c02daa71d3c2447bb41a457c5eaa82d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Taxonomy.Relation

/-!
# Derived navigation projections

A tree is a declared projection of the typed terrain. It never becomes the
canonical taxonomy merely because it is convenient to render.
-/

namespace MathDiscovery.Taxonomy

open MathDiscovery

inductive MultipleInheritancePolicy
  | choosePrimary
  | duplicateReferenceLeaves
  | preserveDag
  deriving DecidableEq, Inhabited

structure NavigationProjection where
  id : NavigationProjectionId
  rootDomain : DomainId
  selectedRelations : Finset TaxonomyRelationKind
  tieBreakPolicy : StableId
  multipleInheritance : MultipleInheritancePolicy
  omittedRelations : Finset TaxonomyRelationKind
  authority : HomeCandidateAuthority := .navigationOnly
  deriving DecidableEq

end MathDiscovery.Taxonomy
```
