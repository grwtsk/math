# Complete source: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant78cfa9a2da53a57accc4764808157d0c40603cae15fd4ebe607eb0c3f597b154

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04a4bb035f30b724b34fedaf335401739ba677ba` · SHA-256 `594491a6afe4d8d0e33463ca64541b680abed910904ecc87267a9c2cb2e7cf60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.InvtSubmodule.Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"bb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RepresentationTheory/Submodule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Module.Submodule.Invariant
import Mathlib.RepresentationTheory.Basic

/-!
# Invariant submodules of a group representation

-/


namespace GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71

variable {k G V : Type*} [CommSemiring k] [Monoid G] [AddCommMonoid V] [Module k V]
  (ρ : Representation k G V)

namespace Representation

/-- Given a representation `ρ` of a group, `ρ.invtSubmodule` is the sublattice of all
`ρ`-invariant submodules. -/
def invtSubmodule : Sublattice (Submodule k V) :=
  ⨅ g, Module.End.invtSubmodule (ρ g)

lemma mem_invtSubmodule {p : Submodule k V} :
    p ∈ ρ.invtSubmodule ↔ ∀ g, p ∈ Module.End.invtSubmodule (ρ g) := by
  rw [invtSubmodule, Sublattice.mem_iInf]

namespace invtSubmodule

@[simp] protected lemma top_mem : ⊤ ∈ ρ.invtSubmodule := by simp [invtSubmodule]

@[simp] protected lemma bot_mem : ⊥ ∈ ρ.invtSubmodule := by simp [invtSubmodule]

instance : BoundedOrder ρ.invtSubmodule where
  top := ⟨⊤, invtSubmodule.top_mem ρ⟩
  bot := ⟨⊥, invtSubmodule.bot_mem ρ⟩
  le_top := fun ⟨p, hp⟩ ↦ by simp
  bot_le := fun ⟨p, hp⟩ ↦ by simp

@[simp] protected lemma coe_top : (↑(⊤ : ρ.invtSubmodule) : Submodule k V) = ⊤ := rfl

@[simp] protected lemma coe_bot : (↑(⊥ : ρ.invtSubmodule) : Submodule k V) = ⊥ := rfl

protected lemma nontrivial_iff : Nontrivial ρ.invtSubmodule ↔ Nontrivial V := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · contrapose! h
    rw [not_nontrivial_iff_subsingleton] at h ⊢
    infer_instance
  · refine ⟨⊥, ⊤, ?_⟩
    rw [← Subtype.coe_ne_coe, invtSubmodule.coe_top, invtSubmodule.coe_bot]
    exact bot_ne_top

instance [Nontrivial V] : Nontrivial ρ.invtSubmodule :=
  (invtSubmodule.nontrivial_iff ρ).mpr inferInstance

end invtSubmodule

lemma asAlgebraHom_mem_of_forall_mem (p : Submodule k V) (hp : ∀ g, ∀ v ∈ p, ρ g v ∈ p)
    (v : V) (hv : v ∈ p) (x : MonoidAlgebra k G) :
    ρ.asAlgebraHom x v ∈ p := by
  apply x.induction_on <;> aesop

/-- The natural order isomorphism between the two ways to represent invariant submodules. -/
noncomputable def mapSubmodule :
    ρ.invtSubmodule ≃o Submodule (MonoidAlgebra k G) ρ.asModule where
  toFun p :=
    { toAddSubmonoid := (p : Submodule k V).toAddSubmonoid.map ρ.asModuleEquiv.symm
      smul_mem' := by
        simp only [AddSubsemigroup.mem_carrier, AddSubmonoid.mem_toSubsemigroup,
          AddSubmonoid.mem_map, Submodule.mem_toAddSubmonoid, forall_exists_index, and_imp,
          forall_apply_eq_imp_iff₂]
        refine fun x v hv ↦ ⟨ρ.asModuleEquiv (x • ρ.asModuleEquiv.symm v), ?_, rfl⟩
        simpa using ρ.asAlgebraHom_mem_of_forall_mem p (ρ.mem_invtSubmodule.mp p.property) v hv x }
  invFun q := ⟨(Submodule.orderIsoMapComap ρ.asModuleEquiv.symm).symm (q.restrictScalars k), by
    rw [invtSubmodule, Sublattice.mem_iInf]
    intro g v hv
    simp only [Submodule.orderIsoMapComap_symm_apply, Submodule.mem_comap] at hv ⊢
    convert q.smul_mem (MonoidAlgebra.of k G g) hv using 1
    rw [← asModuleEquiv_symm_map_rho]⟩
  left_inv p := by ext; simp
  right_inv q := by ext; aesop
  map_rel_iff' {p q} :=
    ⟨fun h x hx ↦ by
      suffices ρ.asModuleEquiv.symm x ∈
        (q : Submodule k V).toAddSubmonoid.map ρ.asModuleEquiv.symm by simpa using this
      exact h <| by simpa using hx,
    fun h x hx ↦ by aesop⟩

end Representation
```
