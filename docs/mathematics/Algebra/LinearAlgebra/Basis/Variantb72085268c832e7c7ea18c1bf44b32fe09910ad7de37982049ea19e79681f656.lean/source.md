# Complete source: GRWTSK.Algebra.LinearAlgebra.Basis.Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d370bb739151686bea9c1f209a838298c871f8a4` · SHA-256 `b164ed91c666fb34f64b0d6b2fba08458ed4444b24f22d96c47329cb4fea576d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.EquivFreeAlgebra.Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"fcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/TensorAlgebra/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.TensorAlgebra.Basic
import Mathlib.LinearAlgebra.FreeModule.Basic
import Mathlib.LinearAlgebra.FreeModule.Rank
import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition
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

namespace GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352

namespace TensorAlgebra

open scoped BigOperators

universe uκ uR uM
variable {κ : Type uκ} {R : Type uR} {M : Type uM}

section CommSemiring
variable [CommSemiring R] [AddCommMonoid M] [Module R M]

/-- A basis provides an algebra isomorphism with the free algebra, replacing each basis vector
with its index. -/
noncomputable def equivFreeAlgebra (b : Basis κ R M) :
    TensorAlgebra R M ≃ₐ[R] FreeAlgebra R κ :=
  AlgEquiv.ofAlgHom
    (TensorAlgebra.lift _ (Finsupp.total _ _ _ (FreeAlgebra.ι _) ∘ₗ b.repr.toLinearMap))
    (FreeAlgebra.lift _ (ι R ∘ b))
    (by ext; simp)
    (hom_ext <| b.ext <| fun i => by simp)

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
noncomputable def _root_.GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.Basis.tensorAlgebra (b : Basis κ R M) :
    Basis (FreeMonoid κ) R (TensorAlgebra R M) :=
  (FreeAlgebra.basisFreeMonoid R κ).map <| (equivFreeAlgebra b).symm.toLinearEquiv

/-- `TensorAlgebra R M` is free when `M` is. -/
instance instModuleFree [Module.Free R M] : Module.Free R (TensorAlgebra R M) :=
  let ⟨⟨_κ, b⟩⟩ := Module.Free.exists_basis (R := R) (M := M)
  .of_basis b.tensorAlgebra

end CommSemiring

section CommRing
variable [CommRing R] [AddCommGroup M] [Module R M]

local infixr:80 " ^ℕ " => @HPow.hPow Cardinal ℕ Cardinal _

attribute [pp_with_univ] Cardinal.lift

open Cardinal in
lemma rank_eq [Nontrivial R] [Module.Free R M] :
    Module.rank R (TensorAlgebra R M) = Cardinal.lift.{uR} (sum fun n ↦ Module.rank R M ^ℕ n) := by
  let ⟨⟨κ, b⟩⟩ := Module.Free.exists_basis (R := R) (M := M)
  rw [(equivFreeAlgebra b).toLinearEquiv.rank_eq, FreeAlgebra.rank_eq, mk_list_eq_sum_pow,
    Basis.mk_eq_rank'' b]

end CommRing

end TensorAlgebra
```
