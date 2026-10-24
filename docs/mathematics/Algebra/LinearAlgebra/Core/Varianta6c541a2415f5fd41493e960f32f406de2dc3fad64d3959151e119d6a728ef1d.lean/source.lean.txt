-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PositiveKernel.Variant6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PositiveKernel.Variant6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Kernel/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Order
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Positive kernels

`PositiveKernel` is indexed by an arbitrary type.  It imposes no assumptions
about modules, source paths, namespaces, or the project being inspected.
Mathlib's `Matrix.PosSemidef` quantifies over finitely supported coefficient
families, so the definition also works for infinite ambient index types.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PositiveKernel.Variant6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35

noncomputable section

namespace Mathematics.Kernel

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

end Mathematics.Kernel
