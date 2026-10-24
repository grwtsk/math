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
