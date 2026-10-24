# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Projection.Variantadcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad8e3c3475678314697e71bc333687c87044a990` · SHA-256 `adcc0188af426277624e057343176c07cf95c9e45c05a9192c6a96f3acef41a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Taxonomy.Relation

/-!
# Derived navigation projections

A tree is a declared projection of the typed terrain. It never becomes the
canonical taxonomy merely because it is convenient to render.
-/

namespace Mathematics.Taxonomy

open Mathematics

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

end Mathematics.Taxonomy
```
