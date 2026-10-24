# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0516a2e93f75d0822ee70059ace6e6aad28e3870` · SHA-256 `a3e3113a5098731717321e4795d95efe388e34ff72c3e44e91309c680d315bd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapEquivFun.Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapEquivFun.Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/FreeModule/Finite/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
module

public import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition
public import Mathlib.LinearAlgebra.Dimension.Finite

/-!
# Finite and free modules using matrices

We provide some instances for finite and free modules involving matrices.

## Main results

* `Module.Free.linearMap` : if `M` and `N` are finite and free, then `M →ₗ[R] N` is free.
* `Module.Finite.ofBasis` : A free module with a basis indexed by a `Fintype` is finite.
* `Module.Finite.linearMap` : if `M` and `N` are finite and free, then `M →ₗ[R] N`
  is finite.
-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearMapEquivFun.Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5

public section


universe u u' v w

variable (R : Type u) (S : Type u') (M : Type v) (N : Type w)

open Module.Free (chooseBasis ChooseBasisIndex)

open Module (finrank)

section Ring

variable [Ring R] [Ring S] [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
variable [AddCommGroup N] [Module R N] [Module S N] [SMulCommClass R S N]

private noncomputable def linearMapEquivFun : (M →ₗ[R] N) ≃ₗ[S] ChooseBasisIndex R M → N :=
  (chooseBasis R M).repr.congrLeft N S ≪≫ₗ (Finsupp.lsum S).symm ≪≫ₗ
    LinearEquiv.piCongrRight fun _ ↦ LinearMap.ringLmapEquivSelf R S N

instance Module.Free.linearMap [Module.Free S N] : Module.Free S (M →ₗ[R] N) :=
  Module.Free.of_equiv (linearMapEquivFun R S M N).symm

instance Module.Finite.linearMap [Module.Finite S N] : Module.Finite S (M →ₗ[R] N) :=
  Module.Finite.equiv (linearMapEquivFun R S M N).symm

variable [StrongRankCondition R] [StrongRankCondition S] [Module.Free S N]

open Cardinal
theorem Module.rank_linearMap :
    Module.rank S (M →ₗ[R] N) = lift.{w} (Module.rank R M) * lift.{v} (Module.rank S N) := by
  rw [(linearMapEquivFun R S M N).rank_eq, rank_fun_eq_lift_mul,
    ← finrank_eq_card_chooseBasisIndex, ← finrank_eq_rank R, lift_natCast]

/-- The `finrank` of `M →ₗ[R] N` as an `S`-module is `(finrank R M) * (finrank S N)`. -/
theorem Module.finrank_linearMap :
    finrank S (M →ₗ[R] N) = finrank R M * finrank S N := by
  simp_rw [finrank, rank_linearMap, toNat_mul, toNat_lift]

variable [Module R S] [SMulCommClass R S S]

theorem Module.rank_linearMap_self :
    Module.rank S (M →ₗ[R] S) = lift.{u'} (Module.rank R M) := by
  rw [rank_linearMap, rank_self, lift_one, mul_one]

theorem Module.finrank_linearMap_self : finrank S (M →ₗ[R] S) = finrank R M := by
  rw [finrank_linearMap, finrank_self, mul_one]

end Ring

section AlgHom

variable (K M : Type*) (L : Type v) [CommRing K] [Ring M] [Algebra K M]
  [Module.Free K M] [Module.Finite K M] [CommRing L] [IsDomain L] [Algebra K L]

instance Finite.algHom : Finite (M →ₐ[K] L) :=
  (linearIndependent_algHom_toLinearMap K M L).finite

open Cardinal

theorem cardinalMk_algHom_le_rank : #(M →ₐ[K] L) ≤ lift.{v} (Module.rank K M) := by
  convert! (linearIndependent_algHom_toLinearMap K M L).cardinal_lift_le_rank
  · rw [lift_id]
  · have := Module.nontrivial K L
    rw [lift_id, Module.rank_linearMap_self]

@[stacks 09HS]
theorem card_algHom_le_finrank : Nat.card (M →ₐ[K] L) ≤ finrank K M := by
  convert! toNat_le_toNat (cardinalMk_algHom_le_rank K M L) ?_
  · rw [toNat_lift, finrank]
  · rw [lift_lt_aleph0]; have := Module.nontrivial K L; apply Module.rank_lt_aleph0

end AlgHom

section Integer

variable [AddCommGroup M] [Module.Finite ℤ M] [Module.Free ℤ M] [AddCommGroup N]

instance Module.Finite.addMonoidHom [Module.Finite ℤ N] : Module.Finite ℤ (M →+ N) :=
  Module.Finite.equiv (addMonoidHomLequivInt ℤ).symm

instance Module.Free.addMonoidHom [Module.Free ℤ N] : Module.Free ℤ (M →+ N) :=
  letI : Module.Free ℤ (M →ₗ[ℤ] N) := Module.Free.linearMap _ _ _ _
  Module.Free.of_equiv (addMonoidHomLequivInt ℤ).symm

end Integer
```
