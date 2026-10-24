# Complete source: GRWTSK.Algebra.LinearAlgebra.Grading.Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a52dd089658f4773940905192d31e8751bd6ba1` · SHA-256 `305dc6f2fa8b90d400e6d8429bc91bb4cc7c3f6407c36eb716c1ffe3da6f8294`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.GradedAlgebra.Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.GradedAlgebra.Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"bb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/ExteriorAlgebra/Grading.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.ExteriorAlgebra.Basic
import Mathlib.RingTheory.GradedAlgebra.Basic


namespace GRWTSK.Algebra.LinearAlgebra.GradedAlgebra.Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb

#align_import linear_algebra.exterior_algebra.grading from "leanprover-community/mathlib"@"34020e531ebc4e8aac6d449d9eecbcd1508ea8d0"

/-!
# Results about the grading structure of the exterior algebra

Many of these results are copied with minimal modification from the tensor algebra.

The main result is `ExteriorAlgebra.gradedAlgebra`, which says that the exterior algebra is a
ℕ-graded algebra.
-/


namespace ExteriorAlgebra

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]

variable (R M)

open scoped DirectSum

/-- A version of `ExteriorAlgebra.ι` that maps directly into the graded structure. This is
primarily an auxiliary construction used to provide `ExteriorAlgebra.gradedAlgebra`. -/
-- porting note: protected
protected def GradedAlgebra.ι :
    M →ₗ[R] ⨁ i : ℕ, ↥(LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i) :=
  DirectSum.lof R ℕ (fun i => ↥(LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i)) 1 ∘ₗ
    (ι R).codRestrict _ fun m => by simpa only [pow_one] using LinearMap.mem_range_self _ m
#align exterior_algebra.graded_algebra.ι ExteriorAlgebra.GradedAlgebra.ι

-- porting note: replaced coercion to sort with an explicit subtype notation
theorem GradedAlgebra.ι_apply (m : M) :
    GradedAlgebra.ι R M m =
      DirectSum.of (fun i => {x // x ∈ (LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i)}) 1
        ⟨ι R m, by simpa only [pow_one] using LinearMap.mem_range_self _ m⟩ :=
  rfl
#align exterior_algebra.graded_algebra.ι_apply ExteriorAlgebra.GradedAlgebra.ι_apply

-- Porting note: Lean needs to be reminded of this instance otherwise it cannot
-- synthesize 0 in the next theorem
instance (α : Type*) [MulZeroClass α] : Zero α := MulZeroClass.toZero

theorem GradedAlgebra.ι_sq_zero (m : M) : GradedAlgebra.ι R M m * GradedAlgebra.ι R M m = 0 := by
  rw [GradedAlgebra.ι_apply, DirectSum.of_mul_of]
  refine DFinsupp.single_eq_zero.mpr (Subtype.ext <| ExteriorAlgebra.ι_sq_zero _)
#align exterior_algebra.graded_algebra.ι_sq_zero ExteriorAlgebra.GradedAlgebra.ι_sq_zero

set_option maxHeartbeats 400000 in
/-- `ExteriorAlgebra.GradedAlgebra.ι` lifted to exterior algebra. This is
primarily an auxiliary construction used to provide `ExteriorAlgebra.gradedAlgebra`. -/
def GradedAlgebra.liftι :
  ExteriorAlgebra R M →ₐ[R] ⨁ i : ℕ,
    (LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i : Submodule R (ExteriorAlgebra R M)) :=
  lift R ⟨by apply GradedAlgebra.ι R M, GradedAlgebra.ι_sq_zero R M⟩
#align exterior_algebra.graded_algebra.lift_ι ExteriorAlgebra.GradedAlgebra.liftι

set_option synthInstance.maxHeartbeats 30000 in
theorem GradedAlgebra.liftι_eq (i : ℕ)
    (x : (LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i :
      Submodule R (ExteriorAlgebra R M))) :
    GradedAlgebra.liftι R M x =
    DirectSum.of (fun i =>
      ↥(LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i :
      Submodule R (ExteriorAlgebra R M))) i x := by
  cases' x with x hx
  dsimp only [Subtype.coe_mk, DirectSum.lof_eq_of]
  -- Porting note: original statement was
  --  refine Submodule.pow_induction_on_left' _ (fun r => ?_) (fun x y i hx hy ihx ihy => ?_)
  --    (fun m hm i x hx ih => ?_) hx
  -- but it created invalid goals
  induction hx using Submodule.pow_induction_on_left' with
  | hr => simp_rw [AlgHom.commutes, DirectSum.algebraMap_apply]; rfl
  | hadd _ _ _ _ _ ihx ihy => simp_rw [AlgHom.map_add, ihx, ihy, ← map_add]; rfl
  | hmul _ hm _ _ _ ih =>
      obtain ⟨_, rfl⟩ := hm
      simp_rw [AlgHom.map_mul, ih, GradedAlgebra.liftι, lift_ι_apply, GradedAlgebra.ι_apply R M,
        DirectSum.of_mul_of]
      exact DirectSum.of_eq_of_gradedMonoid_eq (Sigma.subtype_ext (add_comm _ _) rfl)
#align exterior_algebra.graded_algebra.lift_ι_eq ExteriorAlgebra.GradedAlgebra.liftι_eq

set_option maxHeartbeats 400000 in
/-- The exterior algebra is graded by the powers of the submodule `(ExteriorAlgebra.ι R).range`. -/
instance gradedAlgebra :
    GradedAlgebra (LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ · : ℕ → Submodule R _) :=
  GradedAlgebra.ofAlgHom _
    (-- while not necessary, the `by apply` makes this elaborate faster
    by apply GradedAlgebra.liftι R M)
    -- the proof from here onward is identical to the `tensor_algebra` case
    (by
      ext m
      dsimp only [LinearMap.comp_apply, AlgHom.toLinearMap_apply, AlgHom.comp_apply,
        AlgHom.id_apply, GradedAlgebra.liftι]
      rw [lift_ι_apply, GradedAlgebra.ι_apply R M, DirectSum.coeAlgHom_of, Subtype.coe_mk])
    (by apply GradedAlgebra.liftι_eq R M)
#align exterior_algebra.graded_algebra ExteriorAlgebra.gradedAlgebra

end ExteriorAlgebra
```
