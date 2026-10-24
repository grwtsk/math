# Complete source: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a9fcb94fe182265f3c5fcc7db0350674a919a4a` · SHA-256 `7897fe83d564124cbde1529355e7dc3b8273d4863f96d85ebc264409fd3406d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExtBasis.Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ExtBasis.Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Basis/Bilinear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.LinearAlgebra.BilinearMap
import Mathlib.LinearAlgebra.Basis.Defs

/-!
# Lemmas about bilinear maps with a basis over each argument
-/



namespace GRWTSK.Algebra.LinearAlgebra.ExtBasis.Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd

namespace LinearMap

variable {ι₁ ι₂ : Type*}
variable {R R₂ S S₂ M N P Rₗ : Type*}
variable {Mₗ Nₗ Pₗ : Type*}

-- Could weaken [CommSemiring Rₗ] to [SMulCommClass Rₗ Rₗ Pₗ], but might impact performance
variable [Semiring R] [Semiring S] [Semiring R₂] [Semiring S₂] [CommSemiring Rₗ]

section AddCommMonoid

variable [AddCommMonoid M] [AddCommMonoid N] [AddCommMonoid P]
variable [AddCommMonoid Mₗ] [AddCommMonoid Nₗ] [AddCommMonoid Pₗ]
variable [Module R M] [Module S N] [Module R₂ P] [Module S₂ P]
variable [Module Rₗ Mₗ] [Module Rₗ Nₗ] [Module Rₗ Pₗ]
variable [SMulCommClass S₂ R₂ P]
variable {ρ₁₂ : R →+* R₂} {σ₁₂ : S →+* S₂}
variable (b₁ : Basis ι₁ R M) (b₂ : Basis ι₂ S N) (b₁' : Basis ι₁ Rₗ Mₗ) (b₂' : Basis ι₂ Rₗ Nₗ)

/-- Two bilinear maps are equal when they are equal on all basis vectors. -/
theorem ext_basis {B B' : M →ₛₗ[ρ₁₂] N →ₛₗ[σ₁₂] P} (h : ∀ i j, B (b₁ i) (b₂ j) = B' (b₁ i) (b₂ j)) :
    B = B' :=
  b₁.ext fun i => b₂.ext fun j => h i j

/-- Write out `B x y` as a sum over `B (b i) (b j)` if `b` is a basis.

Version for semi-bilinear maps, see `sum_repr_mul_repr_mul` for the bilinear version. -/
theorem sum_repr_mul_repr_mulₛₗ {B : M →ₛₗ[ρ₁₂] N →ₛₗ[σ₁₂] P} (x y) :
    ((b₁.repr x).sum fun i xi => (b₂.repr y).sum fun j yj => ρ₁₂ xi • σ₁₂ yj • B (b₁ i) (b₂ j)) =
      B x y := by
  conv_rhs => rw [← b₁.linearCombination_repr x, ← b₂.linearCombination_repr y]
  simp_rw [Finsupp.linearCombination_apply, Finsupp.sum, map_sum₂, map_sum, LinearMap.map_smulₛₗ₂,
    LinearMap.map_smulₛₗ]

/-- Write out `B x y` as a sum over `B (b i) (b j)` if `b` is a basis.

Version for bilinear maps, see `sum_repr_mul_repr_mulₛₗ` for the semi-bilinear version. -/
theorem sum_repr_mul_repr_mul {B : Mₗ →ₗ[Rₗ] Nₗ →ₗ[Rₗ] Pₗ} (x y) :
    ((b₁'.repr x).sum fun i xi => (b₂'.repr y).sum fun j yj => xi • yj • B (b₁' i) (b₂' j)) =
      B x y := by
  conv_rhs => rw [← b₁'.linearCombination_repr x, ← b₂'.linearCombination_repr y]
  simp_rw [Finsupp.linearCombination_apply, Finsupp.sum, map_sum₂, map_sum, LinearMap.map_smul₂,
    LinearMap.map_smul]

end AddCommMonoid

end LinearMap
```
