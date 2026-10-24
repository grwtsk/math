# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceRegenerator.Variant524ef58eb1d419282eb0ff814fcf98c5f0f1f239262b122429405a4a0cc13bb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `112e2f7bf98a1862ead9a8f28268358f437ec5f3` · SHA-256 `524ef58eb1d419282eb0ff814fcf98c5f0f1f239262b122429405a4a0cc13bb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.RuleSet

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

open Surface.AST

structure PolarRegeneratedStreamSource where
  ruleset : RuleSet
  orderedStream : OrderedBinaryLogicMatrixStream
  pole : SimpleFinitePoleDescriptor
  emittedFiles : List String
  emittedTheorems : List LeanDeclarationAst
  allEmittedTheoremsFinal :
    ∀ d, d ∈ emittedTheorems →
      d.kind = LeanDeclarationKind.theorem
  noMigrationResidue : Prop
  noBoundaryWeakening : Prop
  noAnalyticOverclaim : Prop
  noMigrationResidueProof : noMigrationResidue
  noBoundaryWeakeningProof : noBoundaryWeakening
  noAnalyticOverclaimProof : noAnalyticOverclaim
  claimBoundary : List String

theorem polarRegeneratedSource_no_migration_residue
    (S : PolarRegeneratedStreamSource) :
    S.noMigrationResidue :=
  S.noMigrationResidueProof

theorem polarRegeneratedSource_no_boundary_weakening
    (S : PolarRegeneratedStreamSource) :
    S.noBoundaryWeakening :=
  S.noBoundaryWeakeningProof

theorem polarRegeneratedSource_no_analytic_overclaim
    (S : PolarRegeneratedStreamSource) :
    S.noAnalyticOverclaim :=
  S.noAnalyticOverclaimProof

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
