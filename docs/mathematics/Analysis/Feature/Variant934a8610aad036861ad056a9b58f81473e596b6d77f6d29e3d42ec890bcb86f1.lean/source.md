# Complete source: GRWTSK.Analysis.Feature.Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `625d5b3e2a7d448a734c8fe2845ca150d7617f03` · SHA-256 `02b3513d96191d924e148a1c7532f3600740b1a94fa39e05264cb5a37ca82640`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FiniteFeatureFamily.Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FiniteFeatureFamily.Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Kernel/Feature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Kernel.Core
import Mathlib.Analysis.Complex.Basic

/-!
# Feature-generated kernels

Semantic kernels are constructed from explicit feature maps.  They are not
accepted as arbitrary pairwise-score tables.  This factorized boundary is what
makes positive semidefiniteness project-independent and auditable.
-/


namespace GRWTSK.Analysis.FiniteFeatureFamily.Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625

noncomputable section

namespace Mathematics.Kernel

open scoped ComplexOrder

universe u

variable {Index : Type u}

/-- A scalar feature generates the rank-one Gram kernel
`conj (F i) * F j`. -/
def scalarFeatureKernel (feature : Index → ℂ) : PositiveKernel Index where
  matrix i j := star (feature i) * feature j
  positiveSemidefinite := by
    constructor
    · ext i j
      simp [mul_comm]
    · intro coefficients
      let value := coefficients.sum fun i coefficient =>
        coefficient * feature i
      have factorization :
          coefficients.sum (fun i coefficient =>
            coefficients.sum (fun j other =>
              star coefficient * (star (feature i) * feature j) * other)) =
            star value * value := by
        calc
          _ = coefficients.sum (fun i coefficient =>
                star (coefficient * feature i) * value) := by
            apply Finsupp.sum_congr
            intro i _
            rw [Finsupp.mul_sum]
            apply Finsupp.sum_congr
            intro j _
            rw [star_mul]
            ring
          _ = star value * value := by
            unfold value
            rw [star_finsuppSum, Finsupp.sum_mul]
            apply Finsupp.sum_congr
            intro _ _
            rfl
      rw [factorization]
      simpa using star_left_conjugate_nonneg
        (show (0 : ℂ) ≤ 1 by simp) value

@[simp]
theorem scalarFeatureKernel_apply
    (feature : Index → ℂ) (i j : Index) :
    scalarFeatureKernel feature i j = star (feature i) * feature j :=
  rfl

/-- A finite vector-valued feature map generates its exact Gram kernel. -/
def finiteFeatureKernel
    {Feature : Type} [Fintype Feature]
    (feature : Index → Feature → ℂ) : PositiveKernel Index where
  matrix := ∑ coordinate,
    (scalarFeatureKernel (fun index => feature index coordinate)).matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun coordinate _ =>
    (scalarFeatureKernel
      (fun index => feature index coordinate)).positiveSemidefinite

@[simp]
theorem finiteFeatureKernel_apply
    {Feature : Type} [Fintype Feature]
    (feature : Index → Feature → ℂ) (i j : Index) :
    finiteFeatureKernel feature i j =
      ∑ coordinate, star (feature i coordinate) * feature j coordinate := by
  change (∑ coordinate,
    (scalarFeatureKernel (fun index => feature index coordinate)).matrix) i j = _
  rw [Matrix.sum_apply]
  rfl

/-- Runtime-friendly finite feature family.  `Index` may remain arbitrary;
only the feature dimension of one compiled project snapshot is finite. -/
structure FiniteFeatureFamily (Index : Type u) where
  dimension : Nat
  value : Index → Fin dimension → ℂ

/-- Kernel generated by a finite feature family. -/
def FiniteFeatureFamily.kernel
    (family : FiniteFeatureFamily Index) : PositiveKernel Index :=
  finiteFeatureKernel family.value

end Mathematics.Kernel
```
