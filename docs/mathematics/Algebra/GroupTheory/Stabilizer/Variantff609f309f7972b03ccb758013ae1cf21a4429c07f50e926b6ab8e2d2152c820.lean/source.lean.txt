-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Stabilizer.Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Stabilizer.Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0","mathematical_subject":"Algebra.Groups","original_sha256":"bdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RepresentationTheory/Stabilizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jiaxi Mo. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiaxi Mo
-/
module

public import Mathlib.RepresentationTheory.Intertwining

/-!
# Stabilizers in representations

This file defines the stabilizer of a vector in a representation and proves basic lemmas about
stabilizers of zero vectors, scalar multiples, sums, intertwining maps, and translates by group
elements.

-/


namespace GRWTSK.Algebra.GroupTheory.Stabilizer.Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0

@[expose] public section

namespace Representation

variable {k G : Type*} [Group G] [Semiring k]
variable {V V' : Type*} [AddCommMonoid V] [Module k V] [AddCommMonoid V'] [Module k V']

/-- The stabilizer of a vector in a representation. -/
def stabilizer (ρ : Representation k G V) (v : V) : Subgroup G where
  carrier := {g : G | ρ g v = v}
  mul_mem' {a b} ha hb := by
    rw [Set.mem_ofPred_eq, map_mul, Module.End.mul_apply, hb, ha]
  one_mem' := by simp
  inv_mem' {g} hg := by
    rw [Set.mem_ofPred_eq, ← hg, inv_self_apply, hg]

@[simp]
lemma mem_stabilizer {ρ : Representation k G V} {v : V} {g : G} :
    g ∈ stabilizer ρ v ↔ ρ g v = v := by
  rfl

lemma stabilizer_zero (ρ : Representation k G V) : stabilizer ρ 0 = ⊤ := by
  ext; simp

lemma le_stabilizer_smul (ρ : Representation k G V) (c : k) (v : V) :
    stabilizer ρ v ≤ stabilizer ρ (c • v) := by
  simp +contextual [SetLike.le_def]

lemma le_stabilizer_add (ρ : Representation k G V) (v1 v2 : V) :
    (stabilizer ρ v1) ⊓ (stabilizer ρ v2) ≤ stabilizer ρ (v1 + v2) := by
  simp +contextual [SetLike.le_def]

lemma le_stabilizer_sum {ι : Type*} [Fintype ι] (ρ : Representation k G V) (v : ι → V) :
    ⨅ i, (stabilizer ρ (v i)) ≤ stabilizer ρ (∑ i, v i) := by
  simp +contextual [SetLike.le_def]

lemma IntertwiningMap.stabilizer_le {ρ : Representation k G V} {ρ' : Representation k G V'}
    (f : ρ.IntertwiningMap ρ') (v : V) : stabilizer ρ v ≤ stabilizer ρ' (f v) := by
  simp +contextual [SetLike.le_def, ← IntertwiningMap.isIntertwining]

/-- The stabilizer of `ρ g v` is the conjugate of the stabilizer of `v`. -/
lemma stabilizer_conj (ρ : Representation k G V) (g : G) (v : V) :
    ρ.stabilizer (ρ g v) = (stabilizer ρ v).map (MulAut.conj g) := by
  ext x
  simp only [mem_stabilizer, Subgroup.mem_map, MonoidHom.coe_coe, MulAut.conj_apply,
    ← Module.End.mul_apply, ← inv_apply_eq_iff, ← map_mul, ← mul_assoc]
  exact ⟨fun h ↦ ⟨_, h, by simp [mul_assoc]⟩, by rintro ⟨y, hy1, rfl⟩; simp [mul_assoc, hy1]⟩

end Representation
