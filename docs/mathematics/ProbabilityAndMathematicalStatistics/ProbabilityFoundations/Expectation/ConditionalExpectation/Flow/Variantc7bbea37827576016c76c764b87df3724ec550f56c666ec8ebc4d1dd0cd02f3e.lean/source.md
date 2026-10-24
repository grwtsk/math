# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Flow.Variantc7bbea37827576016c76c764b87df3724ec550f56c666ec8ebc4d1dd0cd02f3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fce7a21170fa75086df0ac9c7552f703b635f5a9` · SHA-256 `c7bbea37827576016c76c764b87df3724ec550f56c666ec8ebc4d1dd0cd02f3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Arithmetic
import Surface.Prismatic

namespace Surface.Prismatic

/-!
# Prismatic flow adapter

Formalized here: flow nodes backed by real `Surface.Prismatic` structures.

Certificate-gated here: cohomological and comparison content.  This module only
adapts existing prismatic objects into symbolic flow trees; it does not invent
prism data.
-/

namespace Flow

/-- Flow node backed by a real `Surface.Prismatic.Prism`. -/
def prismNode
    {p : Nat}
    (_P : Surface.Prismatic.Prism p) :
    Surface.Flow.Expression String :=
  Surface.Flow.Expression.attendMany
    [.prismaticTag, .sieve]
    (.variadic .prismaticTag
      [.symbol "Surface.Prismatic.Prism", .nat p])

/-- Flow node backed by a real `Surface.Prismatic.PrismaticSite`. -/
def siteNode
    {p : Nat}
    {P : Surface.Prismatic.BoundedPrism p}
    {X : Surface.Prismatic.PadicFormalScheme}
    (_S : Surface.Prismatic.PrismaticSite P X) :
    Surface.Flow.Expression String :=
  Surface.Flow.Expression.attendMany
    [.prismaticTag, .sieve]
    (.variadic .sieve
      [.symbol "Surface.Prismatic.PrismaticSite", .nat p])

/-- Flow node backed by a real `Surface.Prismatic.PrismaticCohomology`. -/
def cohomologyNode
    {p : Nat}
    {P : Surface.Prismatic.BoundedPrism p}
    {X : Surface.Prismatic.PadicFormalScheme}
    (_C : Surface.Prismatic.PrismaticCohomology P X) :
    Surface.Flow.Expression String :=
  Surface.Flow.Expression.attendMany
    [.prismaticTag]
    (.variadic .prismaticTag
      [.symbol "Surface.Prismatic.PrismaticCohomology", .nat p])

/-- Flow node backed by a real `Surface.Prismatic.NygaardFiltration`. -/
def nygaardNode
    {p : Nat}
    {S : Surface.Prismatic.QuasiRegularSemiperfectoid p}
    (_N : Surface.Prismatic.NygaardFiltration S) :
    Surface.Flow.Expression String :=
  Surface.Flow.Expression.attendMany
    [.prismaticTag]
    (.variadic .prismaticTag
      [.symbol "Surface.Prismatic.NygaardFiltration", .nat p])

/-- Unit example of the adapter, backed by `Surface.Prismatic.unitPrism`. -/
def unitPrismNode (p : Nat) : Surface.Flow.Expression String :=
  prismNode (Surface.Prismatic.unitPrism p)

end Flow
end Surface.Prismatic
```
