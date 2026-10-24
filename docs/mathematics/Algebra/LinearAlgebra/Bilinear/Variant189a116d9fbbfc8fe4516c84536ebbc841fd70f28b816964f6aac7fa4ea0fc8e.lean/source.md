# Complete source: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant189a116d9fbbfc8fe4516c84536ebbc841fd70f28b816964f6aac7fa4ea0fc8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd7a2b441c2ccf6ca9ba106c29bb816789a7aefe` · SHA-256 `482765b13f343001d12ba3f99efc9d680672bbbc5373f4c2294ba2744b69df05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExtBasis.Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ExtBasis.Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Basis/Bilinear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.LinearAlgebra.BilinearMap
public import Mathlib.LinearAlgebra.Basis.Defs

/-!
# Lemmas about bilinear maps with a basis over each argument
-/


namespace GRWTSK.Algebra.LinearAlgebra.ExtBasis.Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec

public section

open Module

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

lemma ext_iff_basis {B B' : M →ₛₗ[ρ₁₂] N →ₛₗ[σ₁₂] P} :
    B = B' ↔ ∀ (i : ι₁) (j : ι₂), B (b₁ i) (b₂ j) = B' (b₁ i) (b₂ j) :=
  ⟨fun h _ _ ↦ h ▸ rfl, ext_basis b₁ b₂⟩

lemma BilinForm.ext_iff_basis {B B' : LinearMap.BilinForm Rₗ Mₗ} :
    B = B' ↔ ∀ (i j : ι₁), B (b₁' i) (b₁' j) = B' (b₁' i) (b₁' j) :=
  LinearMap.ext_iff_basis b₁' b₁'

/-- Write out `B x y` as a sum over `B (b i) (b j)` if `b` is a basis.

Version for semi-bilinear maps, see `sum_repr_mul_repr_mul` for the bilinear version. -/
theorem sum_repr_mul_repr_mulₛₗ {B : M →ₛₗ[ρ₁₂] N →ₛₗ[σ₁₂] P} (x y) :
    ((b₁.repr x).sum fun i xi => (b₂.repr y).sum fun j yj => ρ₁₂ xi • σ₁₂ yj • B (b₁ i) (b₂ j)) =
      B x y := by
  conv_rhs => rw [← b₁.linearCombination_repr x, ← b₂.linearCombination_repr y]
  simp_rw [Finsupp.linearCombination_apply, Finsupp.sum, map_sum₂, map_sum, map_smulₛₗ₂, map_smulₛₗ]

/-- Write out `B x y` as a sum over `B (b i) (b j)` if `b` is a basis.

Version for bilinear maps, see `sum_repr_mul_repr_mulₛₗ` for the semi-bilinear version. -/
theorem sum_repr_mul_repr_mul {B : Mₗ →ₗ[Rₗ] Nₗ →ₗ[Rₗ] Pₗ} (x y) :
    ((b₁'.repr x).sum fun i xi => (b₂'.repr y).sum fun j yj => xi • yj • B (b₁' i) (b₂' j)) =
      B x y := by
  conv_rhs => rw [← b₁'.linearCombination_repr x, ← b₂'.linearCombination_repr y]
  simp_rw [Finsupp.linearCombination_apply, Finsupp.sum, map_sum₂, map_sum, map_smul₂, map_smul]

end AddCommMonoid

end LinearMap
```
