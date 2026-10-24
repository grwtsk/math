-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.GramFactorCertificate.Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.GramFactorCertificate.Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Kernel/FiniteGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Kernel.Core
import DAF.Rhetorical.Kernel.Regularization
import Mathlib.LinearAlgebra.Matrix.DotProduct

/-!
# Finite rhetorical Gram matrices

The completed rhetorical space is allowed to have an arbitrary index type.
Runtime work is necessarily finite, so this module isolates the exact finite
matrix selected by an active index family and states the certificate that a
runtime factor must reconstruct.  A certificate here is mathematical data;
foreign serialized bytes are accepted only after a separate checked decoder
has reconstructed this data.
-/


namespace GRWTSK.Algebra.LinearAlgebra.GramFactorCertificate.Variantc6a3454804097f3c037682f1f56dfbcec5c48a044c91da141cb03576df0a0299

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexOrder

universe u v

/-- The exact finite Gram matrix selected from an arbitrary-index kernel. -/
def finiteGram
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) : Matrix Active Active ℂ :=
  kernel.matrix.submatrix indices indices

@[simp]
theorem finiteGram_apply
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index)
    (p q : Active) :
    finiteGram kernel indices p q = kernel (indices p) (indices q) :=
  rfl

/-- Every selected finite (or merely reindexed) Gram matrix is Hermitian. -/
theorem finiteGram_hermitian
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) :
    (finiteGram kernel indices).IsHermitian :=
  kernel.isHermitian.submatrix indices

/-- Positive semidefiniteness is inherited by every active Gram matrix. -/
theorem finiteGram_psd
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) :
    (finiteGram kernel indices).PosSemidef :=
  kernel.positiveSemidefinite.submatrix indices

/-- A factor certificate asserts the exact equation `G = B⁺B`.  The rank is
not fixed to the active-set cardinality, which permits rank-deficient PSD
matrices without inventing a Cholesky factor that does not exist. -/
structure GramFactorCertificate
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index)
    (FactorIndex : Type*) [Fintype FactorIndex] where
  factor : Matrix FactorIndex Active ℂ
  reconstructs : factor.conjTranspose * factor = finiteGram kernel indices

namespace GramFactorCertificate

variable
    {Index : Type u}
    {kernel : PositiveKernel Index}
    {Active : Type v}
    {indices : Active → Index}
    {FactorIndex : Type*}
    [Fintype FactorIndex]

/-- A certified factor realizes every kernel entry as the inner product of
the corresponding factor columns. -/
theorem column_inner_eq_kernel
    (certificate : GramFactorCertificate kernel indices FactorIndex)
    (p q : Active) :
    (∑ k, star (certificate.factor k p) * certificate.factor k q) =
      kernel (indices p) (indices q) := by
  have entry := congrFun (congrFun certificate.reconstructs p) q
  simpa [Matrix.mul_apply] using entry

end GramFactorCertificate

/-- Exact identity regularization makes every Gram matrix on pairwise
distinct active indices positive definite. -/
theorem finiteGram_regularized_posDef
    {Index : Type u} [DecidableEq Index]
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon)
    {Active : Type v}
    (indices : Active → Index)
    (distinct : Function.Injective indices) :
    (finiteGram (regularizedKernel semantic epsilon epsilonPositive) indices).PosDef :=
  regularizedKernel_strictOnDistinct semantic epsilon epsilonPositive indices distinct

end DAF.Rhetorical
