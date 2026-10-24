# Complete source: GRWTSK.Algebra.LinearAlgebra.Basis.Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `981f712de92769421cae73a884e4a5bced71a923` · SHA-256 `f09e2feab5149c3cacb9ae159dc81eccbdacb92605db831e7758164fd8a20256`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.EquivFreeAlgebra.Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/TensorAlgebra/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.TensorAlgebra.Basic
import Mathlib.LinearAlgebra.FreeAlgebra

/-!
# A basis for `TensorAlgebra R M`

## Main definitions

* `TensorAlgebra.equivMonoidAlgebra b : TensorAlgebra R M ≃ₐ[R] FreeAlgebra R κ`:
  the isomorphism given by a basis `b : Basis κ R M`.
* `Basis.tensorAlgebra b : Basis (FreeMonoid κ) R (TensorAlgebra R M)`:
  the basis on the tensor algebra given by a basis `b : Basis κ R M`.

## Main results

* `TensorAlgebra.instFreeModule`: the tensor algebra over `M` is free when `M` is
* `TensorAlgebra.rank_eq`

-/

namespace GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4

namespace TensorAlgebra

universe uκ uR uM
variable {κ : Type uκ} {R : Type uR} {M : Type uM}

section CommSemiring
variable [CommSemiring R] [AddCommMonoid M] [Module R M]

/-- A basis provides an algebra isomorphism with the free algebra, replacing each basis vector
with its index. -/
noncomputable def equivFreeAlgebra (b : Basis κ R M) :
    TensorAlgebra R M ≃ₐ[R] FreeAlgebra R κ :=
  AlgEquiv.ofAlgHom
    (TensorAlgebra.lift _ (Finsupp.linearCombination _ (FreeAlgebra.ι _) ∘ₗ b.repr.toLinearMap))
    (FreeAlgebra.lift _ (ι R ∘ b))
    (by ext; simp)
    (hom_ext <| b.ext fun i => by simp)

@[simp]
lemma equivFreeAlgebra_ι_apply (b : Basis κ R M) (i : κ) :
    equivFreeAlgebra b (ι R (b i)) = FreeAlgebra.ι R i :=
  (TensorAlgebra.lift_ι_apply _ _).trans <| by simp

@[simp]
lemma equivFreeAlgebra_symm_ι (b : Basis κ R M) (i : κ) :
    (equivFreeAlgebra b).symm (FreeAlgebra.ι R i) = ι R (b i) :=
  (equivFreeAlgebra b).toEquiv.symm_apply_eq.mpr <| equivFreeAlgebra_ι_apply b i |>.symm

/-- A basis on `M` can be lifted to a basis on `TensorAlgebra R M` -/
@[simps! repr_apply]
noncomputable def _root_.GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.Basis.tensorAlgebra (b : Basis κ R M) :
    Basis (FreeMonoid κ) R (TensorAlgebra R M) :=
  (FreeAlgebra.basisFreeMonoid R κ).map <| (equivFreeAlgebra b).symm.toLinearEquiv

/-- `TensorAlgebra R M` is free when `M` is. -/
instance instModuleFree [Module.Free R M] : Module.Free R (TensorAlgebra R M) :=
  let ⟨⟨_κ, b⟩⟩ := Module.Free.exists_basis (R := R) (M := M)
  .of_basis b.tensorAlgebra

/-- The `TensorAlgebra` of a free module over a commutative semiring with no zero-divisors has
no zero-divisors. -/
instance instNoZeroDivisors [NoZeroDivisors R] [Module.Free R M] :
    NoZeroDivisors (TensorAlgebra R M) :=
  have ⟨⟨_, b⟩⟩ := ‹Module.Free R M›
  (equivFreeAlgebra b).toMulEquiv.noZeroDivisors

end CommSemiring

section CommRing
variable [CommRing R] [AddCommGroup M] [Module R M]

/-- The `TensorAlgebra` of a free module over an integral domain is a domain. -/
instance instIsDomain [IsDomain R] [Module.Free R M] : IsDomain (TensorAlgebra R M) :=
  NoZeroDivisors.to_isDomain _

attribute [pp_with_univ] Cardinal.lift

open Cardinal in
lemma rank_eq [Nontrivial R] [Module.Free R M] :
    Module.rank R (TensorAlgebra R M) = Cardinal.lift.{uR} (sum fun n ↦ Module.rank R M ^ n) := by
  let ⟨⟨κ, b⟩⟩ := Module.Free.exists_basis (R := R) (M := M)
  rw [(equivFreeAlgebra b).toLinearEquiv.rank_eq, FreeAlgebra.rank_eq, mk_list_eq_sum_pow,
    Basis.mk_eq_rank'' b]

end CommRing

end TensorAlgebra
```
