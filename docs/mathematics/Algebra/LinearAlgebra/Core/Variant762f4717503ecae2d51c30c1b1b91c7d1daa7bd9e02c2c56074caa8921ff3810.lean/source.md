# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93e4306fd8c2344f029cfa4706e308801937d3f0` · SHA-256 `f570e243e5c6c7c22122df8958535fc6666d2a7bf7e301667ce89c726a249046`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PositiveKernel.Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PositiveKernel.Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Kernel/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Order
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Positive rhetorical kernels

A `PositiveKernel` is an arbitrary-index complex matrix together with the
exact positive-semidefinite witness used by the Moore--Aronszajn quotient and
completion below.  Mathlib's definition quantifies over finitely supported
coefficient families, so no finiteness assumption is imposed on the index.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PositiveKernel.Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexOrder

universe u

/-- A Hermitian positive-semidefinite scalar kernel. -/
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

/-- Kernel entries satisfy the exact complex Hermitian symmetry law. -/
@[simp]
theorem conj_apply_symm (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel j i) = kernel i j := by
  exact kernel.isHermitian.apply i j

/-- Matrix-spelled Hermitian symmetry, retained for rewriting under sums. -/
@[simp]
theorem conj_matrix_apply_symm
    (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel.matrix j i) = kernel.matrix i j :=
  kernel.isHermitian.apply i j

/-- The kernel quadratic form is nonnegative for every finite combination. -/
theorem quadratic_nonnegative
    (kernel : PositiveKernel Index) (coefficients : Index →₀ ℂ) :
    0 ≤ coefficients.sum fun i ai ↦
      coefficients.sum fun j aj ↦ star ai * kernel i j * aj :=
  kernel.positiveSemidefinite.2 coefficients

end PositiveKernel

end DAF.Rhetorical
```
