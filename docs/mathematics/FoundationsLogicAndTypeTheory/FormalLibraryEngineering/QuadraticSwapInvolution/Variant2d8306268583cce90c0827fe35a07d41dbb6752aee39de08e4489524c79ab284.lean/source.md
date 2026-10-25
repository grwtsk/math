# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuadraticSwapInvolution.Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d1e8a24ddd62f88172f633387e09513ed028608` · SHA-256 `2a9f4eb8f40b23e1024fbd686535f7b5cb37d5fb6505fce30d41a9419d89f783`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SwapInvolution.Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SwapInvolution.Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/QuadraticSwapInvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient
import Mathlib.Tactic.Module

/-!
# Quadratic swap involution

This module begins Phase III of the Positive Atlas.

On the doubled space V × V, the swap involution

  J(x,y) = (y,x)

splits every vector into symmetric and antisymmetric sectors

  P₊ = (I + J)/2,
  P₋ = (I - J)/2.

The projections are complementary idempotents, the swap acts with eigenvalues
+1 and -1 on their images, and the antisymmetric sector carries the exact
quadratic defect

  ‖P₋(x,y)‖²_⊕ = (1/2) ‖x-y‖²,

where the doubled squared norm is defined by
‖(a,b)‖²_⊕ = ‖a‖² + ‖b‖².

This is the algebraic base for the later intervention-defect and four-sector
constructions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SwapInvolution.Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834

namespace FormalResearch.PositiveAtlas

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- The coordinate-swap involution on a doubled real module. -/
def swapInvolution : (V × V) →ₗ[ℝ] (V × V) where
  toFun z := (z.2, z.1)
  map_add' x y := by
    ext <;> simp
  map_smul' r x := by
    ext <;> simp

@[simp]
theorem swapInvolution_apply (z : V × V) :
    swapInvolution z = (z.2, z.1) :=
  rfl

/-- The swap is an involution. -/
@[simp]
theorem swapInvolution_sq (z : V × V) :
    swapInvolution (swapInvolution z) = z := by
  rfl

/-- The swap squares to the identity as a linear map. -/
theorem swapInvolution_comp_self :
    (swapInvolution : (V × V) →ₗ[ℝ] (V × V)).comp swapInvolution =
      LinearMap.id := by
  ext z <;> simp [swapInvolution]

/-- Projection to the +1 eigenspace of the swap. -/
def swapSymmetricProjection : (V × V) →ₗ[ℝ] (V × V) :=
  (1 / 2 : ℝ) • (LinearMap.id + swapInvolution)

/-- Projection to the -1 eigenspace of the swap. -/
def swapAntisymmetricProjection : (V × V) →ₗ[ℝ] (V × V) :=
  (1 / 2 : ℝ) • (LinearMap.id - swapInvolution)

@[simp]
theorem swapSymmetricProjection_apply (z : V × V) :
    swapSymmetricProjection z =
      ((1 / 2 : ℝ) • (z.1 + z.2),
        (1 / 2 : ℝ) • (z.2 + z.1)) := by
  ext <;> simp [swapSymmetricProjection, swapInvolution]

@[simp]
theorem swapAntisymmetricProjection_apply (z : V × V) :
    swapAntisymmetricProjection z =
      ((1 / 2 : ℝ) • (z.1 - z.2),
        (1 / 2 : ℝ) • (z.2 - z.1)) := by
  ext <;> simp [swapAntisymmetricProjection, swapInvolution]

/-- Every doubled vector is the sum of its symmetric and antisymmetric parts. -/
theorem swap_projection_decomposition (z : V × V) :
    swapSymmetricProjection z + swapAntisymmetricProjection z = z := by
  ext <;> simp [swapSymmetricProjection_apply, swapAntisymmetricProjection_apply] <;> module

/-- The symmetric projection is idempotent. -/
theorem swapSymmetricProjection_idempotent :
    Function.Idempotent (swapSymmetricProjection : V × V → V × V) := by
  intro z
  ext <;> simp [swapSymmetricProjection_apply] <;> module

/-- The antisymmetric projection is idempotent. -/
theorem swapAntisymmetricProjection_idempotent :
    Function.Idempotent (swapAntisymmetricProjection : V × V → V × V) := by
  intro z
  ext <;> simp [swapAntisymmetricProjection_apply] <;> module

/-- The two swap sectors are mutually annihilating. -/
theorem swapSymmetric_after_antisymmetric (z : V × V) :
    swapSymmetricProjection (swapAntisymmetricProjection z) = 0 := by
  ext <;> simp [swapSymmetricProjection_apply, swapAntisymmetricProjection_apply] <;> module

/-- The two swap sectors are mutually annihilating in the other order. -/
theorem swapAntisymmetric_after_symmetric (z : V × V) :
    swapAntisymmetricProjection (swapSymmetricProjection z) = 0 := by
  ext <;> simp [swapSymmetricProjection_apply, swapAntisymmetricProjection_apply] <;> module

/-- The swap acts as +1 on the symmetric sector. -/
theorem swap_on_symmetric (z : V × V) :
    swapInvolution (swapSymmetricProjection z) =
      swapSymmetricProjection z := by
  ext <;> simp [swapSymmetricProjection_apply] <;> module

/-- The swap acts as -1 on the antisymmetric sector. -/
theorem swap_on_antisymmetric (z : V × V) :
    swapInvolution (swapAntisymmetricProjection z) =
      -swapAntisymmetricProjection z := by
  ext <;> simp [swapAntisymmetricProjection_apply] <;> module

/-- Symmetric and antisymmetric sectors reproduce the swapped image. -/
theorem swap_sector_reconstruction (z : V × V) :
    swapInvolution z =
      swapSymmetricProjection z - swapAntisymmetricProjection z := by
  ext <;> simp [swapSymmetricProjection_apply, swapAntisymmetricProjection_apply] <;> module

section Normed

variable [NormedAddCommGroup V] [NormedSpace ℝ V]

/-- Squared L2 energy on the doubled space. -/
def doubledNormSq (z : V × V) : ℝ :=
  ‖z.1‖ ^ 2 + ‖z.2‖ ^ 2

/-- The antisymmetric sector has exactly half the squared discrepancy energy. -/
theorem swapAntisymmetricProjection_doubledNormSq
    (x y : V) :
    doubledNormSq (swapAntisymmetricProjection (x, y)) =
      (1 / 2 : ℝ) * ‖x - y‖ ^ 2 := by
  have hyx : y - x = -(x - y) := by
    module
  rw [swapAntisymmetricProjection_apply]
  simp only [doubledNormSq, Prod.fst, Prod.snd, norm_smul, Real.norm_eq_abs]
  rw [hyx, norm_neg]
  norm_num [abs_of_nonneg]
  ring

/-- Phase-III swap defect: the positive quadratic energy in the -1 sector. -/
def swapDefect (x y : V) : ℝ :=
  doubledNormSq (swapAntisymmetricProjection (x, y))

/-- Closed form for the Phase-III swap defect. -/
theorem swapDefect_eq
    (x y : V) :
    swapDefect x y = (1 / 2 : ℝ) * ‖x - y‖ ^ 2 :=
  swapAntisymmetricProjection_doubledNormSq x y

/-- The swap defect is always nonnegative. -/
theorem swapDefect_nonnegative
    (x y : V) :
    0 ≤ swapDefect x y := by
  rw [swapDefect_eq]
  positivity

/-- The swap defect vanishes exactly when the two phases agree. -/
theorem swapDefect_eq_zero_iff
    (x y : V) :
    swapDefect x y = 0 ↔ x = y := by
  rw [swapDefect_eq]
  constructor
  · intro h
    have hnormsq : ‖x - y‖ ^ 2 = 0 := by
      nlinarith
    have hnorm : ‖x - y‖ = 0 := by
      nlinarith [sq_nonneg ‖x - y‖]
    exact sub_eq_zero.mp (norm_eq_zero.mp hnorm)
  · intro h
    subst y
    simp

end Normed

end FormalResearch.PositiveAtlas
```
