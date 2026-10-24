# Complete source: GRWTSK.Algebra.LinearAlgebra.TensorExpression.Variant41aabce0bffe8d9d95292a594e30366d877bd486c7939d441571d499aab023d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84e5f3d95c24cea8b6a7fd553c162f8adb0c2b77` · SHA-256 `232fc3bc9fe1828397e53404b7bafe74609947d3f9b2c7ebbb27c5af7f048f85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TensorFactorRole.Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TensorFactorRole.Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252","mathematical_subject":"Foundations.Unclassified","original_sha256":"10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/PascalTree/TensorExpression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.PascalTree.Core
import Surface.Legacy.BinaryLogicMatrix.EMLCircuit


namespace GRWTSK.Algebra.LinearAlgebra.TensorFactorRole.Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252

namespace Surface
namespace Legacy
namespace PascalTree

inductive TensorFactorRole
| source
| target
| shared
| distinct
| determinant
| spectral
| obstruction
| boundary
deriving DecidableEq, Repr

structure BinaryLogicMatrixTensorFactor where
  rows : Nat
  cols : Nat
  value : BinaryLogicMatrix rows cols
  role : TensorFactorRole
  claimBoundary : AffineTopos.AffineClaimBoundary

inductive BinaryLogicMatrixTensorExpression where
| factor : BinaryLogicMatrixTensorFactor → BinaryLogicMatrixTensorExpression
| tensor :
    BinaryLogicMatrixTensorExpression →
    BinaryLogicMatrixTensorExpression →
    AffineTopos.AffineClaimBoundary →
    BinaryLogicMatrixTensorExpression
| emlSyntax :
    {k : Nat} →
    EMLTree k →
    AffineTopos.AffineClaimBoundary →
    BinaryLogicMatrixTensorExpression

structure TensorContractionDescriptor where
  source : String
  target : String
  result : String
  claimBoundary : AffineTopos.AffineClaimBoundary

inductive DeterminantDescriptorKind
| actualSquare
| boundedSurrogate
| rejected
deriving DecidableEq, Repr

structure DeterminantDescriptor where
  rows : Nat
  cols : Nat
  kind : DeterminantDescriptorKind
  squareCertified :
    kind = DeterminantDescriptorKind.actualSquare → rows = cols
  boundedSurrogate? : Option Nat
  rejectedReason? : Option String
  claimBoundary : AffineTopos.AffineClaimBoundary

def DeterminantDescriptor.admissible
    (D : DeterminantDescriptor) : Prop :=
  D.kind = DeterminantDescriptorKind.actualSquare ∨
    D.kind = DeterminantDescriptorKind.boundedSurrogate

theorem tensorExpression_factor_boundary_visible
    (factor : BinaryLogicMatrixTensorFactor) :
    factor.claimBoundary = factor.claimBoundary := by
  rfl

theorem determinantDescriptor_actualSquare_is_square
    (D : DeterminantDescriptor)
    (h : D.kind = DeterminantDescriptorKind.actualSquare) :
    D.rows = D.cols := by
  exact D.squareCertified h

end PascalTree
end Legacy
end Surface
```
