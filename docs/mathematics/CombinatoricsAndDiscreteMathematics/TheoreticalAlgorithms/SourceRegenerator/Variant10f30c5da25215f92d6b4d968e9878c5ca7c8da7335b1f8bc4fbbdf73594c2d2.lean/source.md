# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceRegenerator.Variant10f30c5da25215f92d6b4d968e9878c5ca7c8da7335b1f8bc4fbbdf73594c2d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `134876d9c7020f9b0fb20a92e2b70fbca12b30b4` · SHA-256 `d8fb0c073309b8cb450bb54821dc1e911b2c0e0136ba71343dd7ae8b42e25fd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PolarRegeneratedStreamSource.Variant524ef58eb1d419282eb0ff814fcf98c5f0f1f239262b122429405a4a0cc13bb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"524ef58eb1d419282eb0ff814fcf98c5f0f1f239262b122429405a4a0cc13bb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PolarRegeneratedStreamSource.Variant524ef58eb1d419282eb0ff814fcf98c5f0f1f239262b122429405a4a0cc13bb5","mathematical_subject":"Computation.DataStructures","original_sha256":"524ef58eb1d419282eb0ff814fcf98c5f0f1f239262b122429405a4a0cc13bb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/SourceRegenerator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.RuleSet


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PolarRegeneratedStreamSource.Variant524ef58eb1d419282eb0ff814fcf98c5f0f1f239262b122429405a4a0cc13bb5

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
