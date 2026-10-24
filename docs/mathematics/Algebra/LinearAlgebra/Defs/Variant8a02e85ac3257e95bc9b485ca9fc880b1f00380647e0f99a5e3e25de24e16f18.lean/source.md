# Complete source: GRWTSK.Algebra.LinearAlgebra.Defs.Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `442c78da5ee5fbda7d61db6a877bc204bf221e2a` · SHA-256 `0e0cc0b9fb60c215ce18205bee362f4cd92d2c06c90d726b7ba91ba8194d306a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Norm.Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Norm.Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Norm/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.LinearAlgebra.Determinant

/-!
# Norm for (finite) ring extensions

Suppose we have an `R`-algebra `S` with a finite basis. For each `s : S`,
the determinant of the linear map given by multiplying by `s` gives information
about the roots of the minimal polynomial of `s` over `R`.

## Implementation notes

Typically, the norm is defined specifically for finite field extensions.
The current definition is as general as possible and the assumption that we have
fields or that the extension is finite is added to the lemmas as needed.

We only define the norm for left multiplication (`Algebra.leftMulMatrix`,
i.e. `LinearMap.mulLeft`).
For now, the definitions assume `S` is commutative, so the choice doesn't
matter anyway.

See also `Algebra.trace`, which is defined similarly as the trace of
`Algebra.leftMulMatrix`.

## References

* https://en.wikipedia.org/wiki/Field_norm

-/



namespace GRWTSK.Algebra.LinearAlgebra.Norm.Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd

universe u v w

variable {R S : Type*} [CommRing R] [Ring S]
variable [Algebra R S]
variable {K : Type*} [Field K]
variable {ι : Type w}

open Module

open LinearMap

open Matrix Polynomial

open scoped Matrix

namespace Algebra

variable (R)

/-- The norm of an element `s` of an `R`-algebra is the determinant of `(*) s`. -/
@[stacks 0BIF "Norm"]
noncomputable def norm : S →* R :=
  LinearMap.det.comp (lmul R S).toRingHom.toMonoidHom

theorem norm_apply (x : S) : norm R x = LinearMap.det (lmul R S x) := rfl

@[simp]
theorem norm_self : Algebra.norm R = MonoidHom.id R := by
  ext
  simp [norm_apply]

theorem norm_eq_one_of_not_exists_basis (h : ¬∃ s : Finset S, Nonempty (Basis s R S)) (x : S) :
    norm R x = 1 := by rw [norm_apply, LinearMap.det]; split_ifs <;> trivial

variable {R}

theorem norm_eq_one_of_not_module_finite (h : ¬Module.Finite R S) (x : S) : norm R x = 1 := by
  refine norm_eq_one_of_not_exists_basis _ (mt ?_ h) _
  rintro ⟨s, ⟨b⟩⟩
  exact Module.Finite.of_basis b

-- Can't be a `simp` lemma because it depends on a choice of basis
theorem norm_eq_matrix_det [Fintype ι] [DecidableEq ι] (b : Basis ι R S) (s : S) :
    norm R s = Matrix.det (Algebra.leftMulMatrix b s) := by
  rw [norm_apply, ← LinearMap.det_toMatrix b, ← toMatrix_lmul_eq]; rfl

/-- If `x` is in the base ring `K`, then the norm is `x ^ [L : K]`. -/
theorem norm_algebraMap_of_basis [Fintype ι] (b : Basis ι R S) (x : R) :
    norm R (algebraMap R S x) = x ^ Fintype.card ι := by
  haveI := Classical.decEq ι
  rw [norm_apply, ← det_toMatrix b, lmul_algebraMap]
  convert @det_diagonal _ _ _ _ _ fun _ : ι => x
  · ext (i j); rw [toMatrix_lsmul]
  · rw [Finset.prod_const, Finset.card_univ]

/-- If `x` is in the base field `K`, then the norm is `x ^ [L : K]`.

(If `L` is not finite-dimensional over `K`, then `norm = 1 = x ^ 0 = x ^ (finrank L K)`.)
-/
@[simp]
protected theorem norm_algebraMap {L : Type*} [Ring L] [Algebra K L] (x : K) :
    norm K (algebraMap K L x) = x ^ finrank K L := by
  by_cases H : ∃ s : Finset L, Nonempty (Basis s K L)
  · rw [norm_algebraMap_of_basis H.choose_spec.some, finrank_eq_card_basis H.choose_spec.some]
  · rw [norm_eq_one_of_not_exists_basis K H, finrank_eq_zero_of_not_exists_basis, pow_zero]
    rintro ⟨s, ⟨b⟩⟩
    exact H ⟨s, ⟨b⟩⟩

end Algebra
```
