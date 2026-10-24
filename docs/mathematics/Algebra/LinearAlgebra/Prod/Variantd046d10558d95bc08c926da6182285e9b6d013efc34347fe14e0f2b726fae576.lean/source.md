# Complete source: GRWTSK.Algebra.LinearAlgebra.Prod.Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `798e32e325a5c3a72f2a07123ff8243f5afd422c` · SHA-256 `716118422fecd795d8caf12770b319cf4f5772aa1e1904b0f2843540eec5c0a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Prod.Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Prod.Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Basis/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Alexander Bentkamp
-/
import Mathlib.LinearAlgebra.Prod
import Mathlib.LinearAlgebra.Basis.Defs
import Mathlib.LinearAlgebra.Finsupp.SumProd
import Mathlib.LinearAlgebra.FreeModule.Basic

/-!
# Bases for the product of modules
-/


namespace GRWTSK.Algebra.LinearAlgebra.Prod.Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253

assert_not_exists Ordinal

noncomputable section

universe u

open Function Set Submodule Finsupp

variable {ι : Type*} {ι' : Type*} {R : Type*} {R₂ : Type*} {M : Type*} {M' : Type*}

section Module

variable [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid M'] [Module R M']

namespace Basis

variable (b : Basis ι R M)

section Prod

variable (b' : Basis ι' R M')

/-- `Basis.prod` maps an `ι`-indexed basis for `M` and an `ι'`-indexed basis for `M'`
to an `ι ⊕ ι'`-index basis for `M × M'`.
For the specific case of `R × R`, see also `Basis.finTwoProd`. -/
protected def prod : Basis (ι ⊕ ι') R (M × M') :=
  ofRepr ((b.repr.prodCongr b'.repr).trans (Finsupp.sumFinsuppLEquivProdFinsupp R).symm)

@[simp]
theorem prod_repr_inl (x) (i) : (b.prod b').repr x (Sum.inl i) = b.repr x.1 i :=
  rfl

@[simp]
theorem prod_repr_inr (x) (i) : (b.prod b').repr x (Sum.inr i) = b'.repr x.2 i :=
  rfl

theorem prod_apply_inl_fst (i) : (b.prod b' (Sum.inl i)).1 = b i :=
  b.repr.injective <| by
    ext j
    simp only [Basis.prod, Basis.coe_ofRepr, LinearEquiv.symm_trans_apply,
      LinearEquiv.prodCongr_symm, LinearEquiv.prodCongr_apply, b.repr.apply_symm_apply,
      LinearEquiv.symm_symm, repr_self, Equiv.toFun_as_coe, Finsupp.fst_sumFinsuppLEquivProdFinsupp]
    apply Finsupp.single_apply_left Sum.inl_injective

theorem prod_apply_inr_fst (i) : (b.prod b' (Sum.inr i)).1 = 0 :=
  b.repr.injective <| by
    ext i
    simp only [Basis.prod, Basis.coe_ofRepr, LinearEquiv.symm_trans_apply,
      LinearEquiv.prodCongr_symm, LinearEquiv.prodCongr_apply, b.repr.apply_symm_apply,
      LinearEquiv.symm_symm, repr_self, Equiv.toFun_as_coe, Finsupp.fst_sumFinsuppLEquivProdFinsupp,
      LinearEquiv.map_zero, Finsupp.zero_apply]
    apply Finsupp.single_eq_of_ne Sum.inr_ne_inl

theorem prod_apply_inl_snd (i) : (b.prod b' (Sum.inl i)).2 = 0 :=
  b'.repr.injective <| by
    ext j
    simp only [Basis.prod, Basis.coe_ofRepr, LinearEquiv.symm_trans_apply,
      LinearEquiv.prodCongr_symm, LinearEquiv.prodCongr_apply, b'.repr.apply_symm_apply,
      LinearEquiv.symm_symm, repr_self, Equiv.toFun_as_coe, Finsupp.snd_sumFinsuppLEquivProdFinsupp,
      LinearEquiv.map_zero, Finsupp.zero_apply]
    apply Finsupp.single_eq_of_ne Sum.inl_ne_inr

theorem prod_apply_inr_snd (i) : (b.prod b' (Sum.inr i)).2 = b' i :=
  b'.repr.injective <| by
    ext i
    simp only [Basis.prod, Basis.coe_ofRepr, LinearEquiv.symm_trans_apply,
      LinearEquiv.prodCongr_symm, LinearEquiv.prodCongr_apply, b'.repr.apply_symm_apply,
      LinearEquiv.symm_symm, repr_self, Equiv.toFun_as_coe, Finsupp.snd_sumFinsuppLEquivProdFinsupp]
    apply Finsupp.single_apply_left Sum.inr_injective

@[simp]
theorem prod_apply (i) :
    b.prod b' i = Sum.elim (LinearMap.inl R M M' ∘ b) (LinearMap.inr R M M' ∘ b') i := by
  ext <;> cases i <;>
    simp only [prod_apply_inl_fst, Sum.elim_inl, LinearMap.inl_apply, prod_apply_inr_fst,
      Sum.elim_inr, LinearMap.inr_apply, prod_apply_inl_snd, prod_apply_inr_snd, Function.comp]

end Prod

end Basis

namespace Free

variable (R M N : Type*) [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N]
instance prod [Module.Free R M] [Module.Free R N] : Module.Free R (M × N) :=
  .of_basis <| (Module.Free.chooseBasis R M).prod (Module.Free.chooseBasis R N)

end Free

end Module
```
