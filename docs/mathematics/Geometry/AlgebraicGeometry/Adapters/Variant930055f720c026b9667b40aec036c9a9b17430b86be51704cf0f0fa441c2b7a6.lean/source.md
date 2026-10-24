# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Adapters.Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67897ec49ce66040f27550f0da621e15b529ae65` · SHA-256 `aa8eee6fac78af52106ee275372b09898134d237c4e0a4a98b53a782ec6748a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.FalseMatrix.Variante2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.FalseMatrix.Variante2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"e2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/Adapters.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Adapters.DAFRefinement
import BitMatrix.Adapters.Fabric
import DAF.Comparison.Composition
import DAF.Fabric.Refinement

/-!
# BitMatrix-owned adapter integration tests

DAF remains provider-neutral.  Cross-boundary tests live with the BitMatrix
adapter that depends on DAF, preserving the one-way production dependency.
-/


namespace GRWTSK.Geometry.AlgebraicGeometry.FalseMatrix.Variante2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27

namespace BitMatrix.Tests.Adapters

open DAF.Comparison
open DAF.Fabric

def falseMatrix : BitMatrix.ArrayBacked 1 2 :=
  BitMatrix.ArrayBacked.fill 1 2 false

example :
    (BitMatrix.Adapters.mapRefinement.{0} 1 2).abstract
        ((BitMatrix.Adapters.mapImplSystem.{0} 1 2).step Bool.not falseMatrix) =
      (BitMatrix.Adapters.mapSpecSystem.{0} 1 2).step Bool.not
        ((BitMatrix.Adapters.mapRefinement.{0} 1 2).abstract falseMatrix) :=
  BitMatrix.Adapters.mapRefinement_step_sound.{0} Bool.not falseMatrix

example : BitMatrix.Refines falseMatrix falseMatrix.toMatrix :=
  (BitMatrix.Adapters.refines_iff_abstract_eq.{0}
    falseMatrix falseMatrix.toMatrix).2 rfl

def bitMatrixAbstraction (m n : Nat) :
    Spec (BitMatrix.ArrayBacked m n) (BitMatrix m n) :=
  (BitMatrix.Adapters.mapRefinement.{0} m n).toComparisonSpec

example (A B : BitMatrix.ArrayBacked m n) :
    (bitMatrixAbstraction m n).map (A.andInPlace B) =
      BitMatrix.and ((bitMatrixAbstraction m n).map A)
        ((bitMatrixAbstraction m n).map B) := by
  simpa [bitMatrixAbstraction] using A.andInPlace_spec B

example (A : BitMatrix.ArrayBacked m n) :
    (bitMatrixAbstraction m n).map A.notInPlace =
      BitMatrix.not ((bitMatrixAbstraction m n).map A) := by
  simpa [bitMatrixAbstraction] using A.notInPlace_spec

example (matrix : BitMatrix 2 3) :
    (BitMatrix.Adapters.Fabric.coordinateContract
      (0 : Fin 2) (1 : Fin 3)).mapState matrix = matrix 0 1 :=
  rfl

def matrixCellImplementation (m n : Nat) :
    CellImplementation
      (BitMatrix.Adapters.Fabric.mapSpecPresentation m n) where
  impl := (BitMatrix.Adapters.Fabric.mapImplPresentation m n).system
  refinement := BitMatrix.Adapters.Fabric.matrixImplementationRefinement m n

example (matrix : BitMatrix.ArrayBacked 2 3) :
    (matrixCellImplementation 2 3).refinement.abstract matrix = matrix.toMatrix :=
  rfl

end BitMatrix.Tests.Adapters
```
