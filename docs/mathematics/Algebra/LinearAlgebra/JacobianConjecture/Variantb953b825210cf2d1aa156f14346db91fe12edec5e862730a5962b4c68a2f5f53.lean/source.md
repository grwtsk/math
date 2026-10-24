# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22312e548a8b559a3ce3e66893250ff4c33311d9` · SHA-256 `5e758d9c3926867360f165026cf4f172b068bf77fb439303a8c9239f72f201c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FixedPointTransform.Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FixedPointTransform.Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Dynamics.FixedPoints.Defs
import Mathlib.Data.Rat.Cast.Order

/-!
# Fixed points as fibers

The transformation `x ↦ x - A (F x - y)` has exactly the fiber of `F` over `y`
as its fixed points when `A` is injective. This project-local algebraic fact
does not assume that `F` is linear, polynomial, continuous, or differentiable.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FixedPointTransform.Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b

namespace FormalResearch.JacobianConjecture

section Module

variable {R V : Type*} [Semiring R] [AddCommGroup V] [Module R V]

/-- The correction transformation whose fixed points detect a fiber of `F`. -/
def fixedPointTransform (A : V →ₗ[R] V) (F : V → V) (y x : V) : V :=
  x - A (F x - y)

/-- Injectivity of the correction operator is the precise sufficient hypothesis
that recovers a fiber equation from a fixed-point equation. -/
theorem fixed_point_transform_fixed_iff (A : V →ₗ[R] V) (F : V → V) (y x : V)
    (hA : Function.Injective A) :
    Function.IsFixedPt (fixedPointTransform A F y) x ↔ F x = y := by
  change x - A (F x - y) = x ↔ F x = y
  rw [sub_eq_self]
  constructor
  · intro h
    exact sub_eq_zero.mp (hA (by simpa using h))
  · intro h
    simp [h]

/-- The fixed-point set equals the complete fiber; this asserts no cardinality
or dynamical behavior of that set. -/
theorem fixed_point_transform_fixed_points (A : V →ₗ[R] V) (F : V → V) (y : V)
    (hA : Function.Injective A) :
    Function.fixedPoints (fixedPointTransform A F y) = F ⁻¹' {y} := by
  ext x
  exact fixed_point_transform_fixed_iff A F y x hA

/-- Choosing the identity operator needs no invertibility assumptions on `F`. -/
theorem fixed_point_transform_id_fixed_iff (F : V → V) (y x : V) :
    Function.IsFixedPt (fixedPointTransform (LinearMap.id : V →ₗ[R] V) F y) x ↔
      F x = y :=
  fixed_point_transform_fixed_iff LinearMap.id F y x Function.injective_id

/-- With identity correction, fixed points are exactly the fiber over `y`. -/
theorem fixed_point_transform_id_fixed_points (F : V → V) (y : V) :
    Function.fixedPoints (fixedPointTransform (LinearMap.id : V →ₗ[R] V) F y) =
      F ⁻¹' {y} :=
  fixed_point_transform_fixed_points LinearMap.id F y Function.injective_id

/-- The zero correction fixes every input, demonstrating why injectivity matters. -/
theorem fixed_point_transform_zero (F : V → V) (y x : V) :
    Function.IsFixedPt (fixedPointTransform (0 : V →ₗ[R] V) F y) x := by
  simp [Function.IsFixedPt, fixedPointTransform]

end Module

/-- A checked counterexample to dropping injectivity: zero correction fixes `0`,
although the constant map with value `1` does not send `0` to the target `0`. -/
theorem noninjective_correction_fixed_outside_fiber :
    ¬ Function.Injective (0 : ℚ →ₗ[ℚ] ℚ) ∧
      Function.IsFixedPt
        (fixedPointTransform (0 : ℚ →ₗ[ℚ] ℚ) (fun _ ↦ 1) 0) 0 ∧
      (fun _ : ℚ ↦ 1) 0 ≠ 0 := by
  refine ⟨?_, fixed_point_transform_zero _ _ _, one_ne_zero⟩
  intro h
  exact zero_ne_one (h (show (0 : ℚ →ₗ[ℚ] ℚ) 0 = (0 : ℚ →ₗ[ℚ] ℚ) 1 from rfl))

end FormalResearch.JacobianConjecture
```
