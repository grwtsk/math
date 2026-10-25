# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv.Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78e88de176be3cdcd6cdc6c71938299c987810a6` · SHA-256 `8a6a9293e5ead3cbf91935b0b7d49c5ac5f90b70baca34e13eea0bf177976e2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SwapInvolution.Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SwapInvolution.Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/3c/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca--QuadraticSwapInvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SwapInvolution.Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca

namespace FormalResearch.PositiveAtlas

universe u

section Algebra

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
noncomputable def swapSymmetricProjection : (V × V) →ₗ[ℝ] (V × V) :=
  (1 / 2 : ℝ) • (LinearMap.id + swapInvolution)

/-- Projection to the -1 eigenspace of the swap. -/
noncomputable def swapAntisymmetricProjection : (V × V) →ₗ[ℝ] (V × V) :=
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
    ∀ x : V × V,
      swapSymmetricProjection (swapSymmetricProjection x) = swapSymmetricProjection x := by
  intro z
  ext <;> simp [swapSymmetricProjection_apply] <;> module

/-- The antisymmetric projection is idempotent. -/
theorem swapAntisymmetricProjection_idempotent :
    ∀ x : V × V,
      swapAntisymmetricProjection (swapAntisymmetricProjection x) =
        swapAntisymmetricProjection x := by
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

end Algebra

section Normed

variable {V : Type u} [NormedAddCommGroup V] [NormedSpace ℝ V]

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
  simp only [doubledNormSq, norm_smul, Real.norm_eq_abs]
  rw [hyx, norm_neg]
  norm_num [abs_of_nonneg]
  ring

/-- Phase-III swap defect: the positive quadratic energy in the -1 sector. -/
noncomputable def swapDefect (x y : V) : ℝ :=
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
