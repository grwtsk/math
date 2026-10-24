# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b83b95564d74a8409109496ac4ef8339f436b128` · SHA-256 `aa31889a71fc26a670318dfa6bca6b3ebbdaf4cbab02e708315b98e6674f1768`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PositiveKernel.Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PositiveKernel.Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Kernel/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Order
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Positive kernels

`PositiveKernel` is indexed by an arbitrary type.  It imposes no assumptions
about modules, source paths, namespaces, or the project being inspected.
Mathlib's `Matrix.PosSemidef` quantifies over finitely supported coefficient
families, so the definition also works for infinite ambient index types.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PositiveKernel.Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603

noncomputable section

namespace MathDiscovery.Kernel

open scoped ComplexOrder

universe u

/-- A Hermitian positive-semidefinite complex kernel. -/
structure PositiveKernel (Index : Type u) where
  matrix : Matrix Index Index ℂ
  positiveSemidefinite : matrix.PosSemidef

namespace PositiveKernel

variable {Index : Type u}

instance : CoeFun (PositiveKernel Index) (fun _ ↦ Index → Index → ℂ) where
  coe kernel := kernel.matrix

/-- Positive semidefiniteness includes Hermitian symmetry. -/
theorem isHermitian (kernel : PositiveKernel Index) :
    kernel.matrix.IsHermitian :=
  kernel.positiveSemidefinite.isHermitian

/-- Exact complex Hermitian symmetry. -/
@[simp]
theorem conj_apply_symm (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel j i) = kernel i j := by
  exact kernel.isHermitian.apply i j

/-- Matrix-spelled Hermitian symmetry, useful under finite sums. -/
@[simp]
theorem conj_matrix_apply_symm
    (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel.matrix j i) = kernel.matrix i j :=
  kernel.isHermitian.apply i j

/-- The quadratic form is nonnegative on every finite combination. -/
theorem quadratic_nonnegative
    (kernel : PositiveKernel Index) (coefficients : Index →₀ ℂ) :
    0 ≤ coefficients.sum fun i ai ↦
      coefficients.sum fun j aj ↦ star ai * kernel i j * aj :=
  kernel.positiveSemidefinite.2 coefficients

end PositiveKernel

end MathDiscovery.Kernel
```
