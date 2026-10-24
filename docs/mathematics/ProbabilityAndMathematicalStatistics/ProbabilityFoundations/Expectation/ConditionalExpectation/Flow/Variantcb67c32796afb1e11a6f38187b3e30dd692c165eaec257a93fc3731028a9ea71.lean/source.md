# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Flow.Variantcb67c32796afb1e11a6f38187b3e30dd692c165eaec257a93fc3731028a9ea71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e08e4a1f1bad08aa42eff9e1b0b93b5b3a8fd9c3` · SHA-256 `603c6727fc6f77a310a4baf458ed18dcbfd623e52eb3007fc729554a8c3c3047`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.PrismNode.Variantc7bbea37827576016c76c764b87df3724ec550f56c666ec8ebc4d1dd0cd02f3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7bbea37827576016c76c764b87df3724ec550f56c666ec8ebc4d1dd0cd02f3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ConditionalExpectation.SourceCorpus.PrismNode.Variantc7bbea37827576016c76c764b87df3724ec550f56c666ec8ebc4d1dd0cd02f3e","mathematical_subject":"Probability.ConditionalExpectation","original_sha256":"c7bbea37827576016c76c764b87df3724ec550f56c666ec8ebc4d1dd0cd02f3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Prismatic/Flow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Arithmetic
import Surface.Prismatic


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.PrismNode.Variantc7bbea37827576016c76c764b87df3724ec550f56c666ec8ebc4d1dd0cd02f3e

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
