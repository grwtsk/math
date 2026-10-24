# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Topology.Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7153ad308725c66b6b273dbf3bf50724aa727fb` · SHA-256 `03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Symbolic.Basic

namespace Surface

/-- A compact switchboard for topological attention channels. -/
structure Flow.TagSet where
  homology : Bool
  prismaticTag : Bool
  symmetryGroup : Bool
  sieve : Bool
  heatResidue : Bool
  lFunction : Bool
  eulerProduct : Bool
  pointCounting : Bool
deriving Repr, DecidableEq

/-- Convert an attention set into a list of attention tags. -/
def Flow.TagSet.toList
    (A : Flow.TagSet) :
    List Flow.Tag :=
  (if A.homology then [.homology] else []) ++
  (if A.prismaticTag then [.prismaticTag] else []) ++
  (if A.symmetryGroup then [.symmetryGroup] else []) ++
  (if A.sieve then [.sieve] else []) ++
  (if A.heatResidue then [.heatResidue] else []) ++
  (if A.lFunction then [.lFunction] else []) ++
  (if A.eulerProduct then [.eulerProduct] else []) ++
  (if A.pointCounting then [.pointCounting] else [])

/-- Apply all attention tags in an attention set to a symbolic flow tree. -/
def Flow.TagSet.apply
    (A : Flow.TagSet)
    (t : Flow.Expression α) :
    Flow.Expression α :=
  Flow.Expression.attendMany A.toList t

/-- Full topological attention: homology, prismatic attention tag, symmetry, sieves. -/
def Flow.TagSet.fullTopological :
    Flow.TagSet where
  homology := true
  prismaticTag := true
  symmetryGroup := true
  sieve := true
  heatResidue := false
  lFunction := false
  eulerProduct := false
  pointCounting := false

/-- Full arithmetic analytic attention. -/
def Flow.TagSet.fullArithmeticAnalytic :
    Flow.TagSet where
  homology := true
  prismaticTag := true
  symmetryGroup := true
  sieve := true
  heatResidue := true
  lFunction := true
  eulerProduct := true
  pointCounting := true

/-- Homology-focused view of a flow tree. -/
def Flow.homologyView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .homology (.variadic .homology [t])

/-- Prismatic-attention view of a flow tree. -/
def Flow.prismaticTagView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .prismaticTag (.variadic .prismaticTag [t])

/-- Symmetry-group-focused view of a flow tree. -/
def Flow.symmetryGroupView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .symmetryGroup (.variadic .symmetryGroup [t])

/-- Sieve-focused view of a flow tree. -/
def Flow.sieveView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .sieve (.variadic .sieve [t])

/-- Combine the standard topological views into one prefix chain. -/
def Flow.topologicalPerspective
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .variadic .topologicalPerspective
    [ Flow.homologyView t
    , Flow.prismaticTagView t
    , Flow.symmetryGroupView t
    , Flow.sieveView t
    ]

end Surface
```
