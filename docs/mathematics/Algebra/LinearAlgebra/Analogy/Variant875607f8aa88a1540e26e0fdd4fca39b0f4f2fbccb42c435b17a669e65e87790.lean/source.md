# Complete source: GRWTSK.Algebra.LinearAlgebra.Analogy.Variant875607f8aa88a1540e26e0fdd4fca39b0f4f2fbccb42c435b17a669e65e87790

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f4d3e2ade02a6197cca6a445501255965a40cba` · SHA-256 `1163379767b7a1d7944f8f1446e672f87f231ed2d12b07db7165b34e85633a00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AnalogyProfile.Variantd64e2b2d444c01d2fabdba12cfb4497a07dc222af4a5cf5937a58994dcd5d84d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d64e2b2d444c01d2fabdba12cfb4497a07dc222af4a5cf5937a58994dcd5d84d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AnalogyProfile.Variantd64e2b2d444c01d2fabdba12cfb4497a07dc222af4a5cf5937a58994dcd5d84d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"d64e2b2d444c01d2fabdba12cfb4497a07dc222af4a5cf5937a58994dcd5d84d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Relations/Analogy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Relations.Affinity

/-!
# Translational and conditional product-kernel analogy profiles

The translational profile compares directed source/target displacements.  Its
normalized score is absent for a zero displacement.  The independent pair
profile uses a separately supplied positive product kernel. It is an RKHS on
pairs, not a completed tensor product, and it carries no tensor universal
property.
-/


namespace GRWTSK.Algebra.LinearAlgebra.AnalogyProfile.Variantd64e2b2d444c01d2fabdba12cfb4497a07dc222af4a5cf5937a58994dcd5d84d

noncomputable section

namespace DAF.Rhetorical

/-- Closed distinction between the implemented translation profile and the
conditional pair-kernel profile. The latter is deliberately not named
`tensor`: this module constructs no completed Hilbert tensor product. -/
inductive AnalogyProfile
  | translation
  | conditionalProductKernel
  deriving DecidableEq, Repr

/-- Directed source-to-target rhetorical displacement. -/
def rhetoricalDisplacement
    (kernel : PositiveKernel RhetoricalIndex)
    (source target : Universe.ConceptId) : RhetoricalSpace kernel :=
  targetVector kernel target - sourceVector kernel source

/-- Exact translational analogy. -/
def ExactAnalogy
    (kernel : PositiveKernel RhetoricalIndex)
    (a b c d : Universe.ConceptId) : Prop :=
  rhetoricalDisplacement kernel a b = rhetoricalDisplacement kernel c d

/-- Norm of the difference between two directed displacements. -/
def analogyResidual
    (kernel : PositiveKernel RhetoricalIndex)
    (a b c d : Universe.ConceptId) : ℝ :=
  ‖rhetoricalDisplacement kernel a b - rhetoricalDisplacement kernel c d‖

/-- Normalized translational analogy, absent if either displacement is null. -/
def analogyAffinity
    (kernel : PositiveKernel RhetoricalIndex)
    (a b c d : Universe.ConceptId) : Option ℝ :=
  normalizedRealAffinity kernel
    (rhetoricalDisplacement kernel a b)
    (rhetoricalDisplacement kernel c d)

theorem analogyAffinity_mem_Icc
    (kernel : PositiveKernel RhetoricalIndex)
    {a b c d : Universe.ConceptId}
    {score : ℝ}
    (computed : analogyAffinity kernel a b c d = some score) :
    score ∈ Set.Icc (-1 : ℝ) 1 :=
  normalizedRealAffinity_mem_Icc kernel computed

/-- Exact analogy is equivalent to zero residual. -/
theorem analogyResidual_eq_zero_iff
    (kernel : PositiveKernel RhetoricalIndex)
    (a b c d : Universe.ConceptId) :
    analogyResidual kernel a b c d = 0 ↔ ExactAnalogy kernel a b c d := by
  rw [analogyResidual, norm_eq_zero, sub_eq_zero]
  rfl

/-- The API rejects normalized analogy when the first displacement is zero. -/
theorem analogyAffinity_none_of_left_zero
    (kernel : PositiveKernel RhetoricalIndex)
    {a b c d : Universe.ConceptId}
    (leftZero : rhetoricalDisplacement kernel a b = 0) :
    analogyAffinity kernel a b c d = none := by
  simp [analogyAffinity, normalizedRealAffinity, leftZero]

/-- The API rejects normalized analogy when the second displacement is zero. -/
theorem analogyAffinity_none_of_right_zero
    (kernel : PositiveKernel RhetoricalIndex)
    {a b c d : Universe.ConceptId}
    (rightZero : rhetoricalDisplacement kernel c d = 0) :
    analogyAffinity kernel a b c d = none := by
  simp [analogyAffinity, normalizedRealAffinity, rightZero]

/-- Conditional exact product-kernel profile for nontranslational analogy. A
consumer must supply both positive semidefiniteness and the pure-pair product
law; an arbitrary table of pair scores cannot inhabit this structure. This
does not assert a completed tensor product or its universal property. -/
structure ConditionalProductKernelProfile
    (kernel : PositiveKernel RhetoricalIndex) where
  productKernel : PositiveKernel (RhetoricalIndex × RhetoricalIndex)
  realizesProduct : ∀ a b c d,
    productKernel (a, b) (c, d) = kernel a c * kernel b d

/-- Completed pair-index RKHS selected by a conditional product-kernel
profile. The completion is the kernel completion on index pairs only. -/
abbrev ProductKernelRhetoricalSpace
    {kernel : PositiveKernel RhetoricalIndex}
    (profile : ConditionalProductKernelProfile kernel) :=
  RhetoricalSpace profile.productKernel

/-- Pure-pair feature in the conditional product-kernel RKHS. -/
def productKernelRhetoricalVector
    {kernel : PositiveKernel RhetoricalIndex}
    (profile : ConditionalProductKernelProfile kernel)
    (left right : RhetoricalIndex) : ProductKernelRhetoricalSpace profile :=
  rhetoricalVector profile.productKernel (left, right)

/-- Pair-space inner products are products of kernel entries. -/
@[simp]
theorem inner_productKernelRhetoricalVector
    {kernel : PositiveKernel RhetoricalIndex}
    (profile : ConditionalProductKernelProfile kernel)
    (a b c d : RhetoricalIndex) :
    inner ℂ (productKernelRhetoricalVector profile a b)
        (productKernelRhetoricalVector profile c d) =
      kernel a c * kernel b d := by
  exact (inner_rhetoricalVector profile.productKernel (a, b) (c, d)).trans
    (profile.realizesProduct a b c d)

end DAF.Rhetorical
```
