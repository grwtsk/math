-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MemConjSupport.Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MemConjSupport.Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7","mathematical_subject":"Logic.Foundations","original_sha256":"6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Perm/ConjAct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
import Mathlib.Algebra.Group.Action.Pointwise.Finset
import Mathlib.GroupTheory.Perm.Cycle.Factors

/-!
# Some lemmas pertaining to the action of `ConjAct (Perm α)` on `Perm α`

We prove some lemmas related to the action of `ConjAct (Perm α)` on `Perm α`:

Let `α` be a decidable fintype.

* `conj_support_eq` relates the support of `k • g` with that of `g`

* `cycleFactorsFinset_conj_eq`, `mem_cycleFactorsFinset_conj'`
  and `cycleFactorsFinset_conj` relate the set of cycles of `g`, `g.cycleFactorsFinset`,
  with that for `k • g`

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MemConjSupport.Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7

namespace Equiv.Perm

open scoped Pointwise

variable {α : Type*} [DecidableEq α] [Fintype α]

/-- `a : α` belongs to the support of `k • g` iff
  `k⁻¹ * a` belongs to the support of `g` -/
theorem mem_conj_support (k : ConjAct (Perm α)) (g : Perm α) (a : α) :
    a ∈ (k • g).support ↔ ConjAct.ofConjAct k⁻¹ a ∈ g.support := by
  simp only [mem_support, ConjAct.smul_def, not_iff_not, coe_mul,
    Function.comp_apply, ConjAct.ofConjAct_inv]
  apply Equiv.apply_eq_iff_eq_symm_apply

theorem cycleFactorsFinset_conj (g k : Perm α) :
    (ConjAct.toConjAct k • g).cycleFactorsFinset =
      Finset.map (MulAut.conj k).toEquiv.toEmbedding g.cycleFactorsFinset := by
  ext c
  rw [ConjAct.smul_def, ConjAct.ofConjAct_toConjAct, Finset.mem_map_equiv,
    ← mem_cycleFactorsFinset_conj g k]
  -- We avoid `group` here to minimize imports while low in the hierarchy;
  -- typically it would be better to invoke the tactic.
  simp [mul_assoc]

/-- A permutation `c` is a cycle of `g` iff `k • c` is a cycle of `k • g` -/
@[simp]
theorem mem_cycleFactorsFinset_conj'
    (k : ConjAct (Perm α)) (g c : Perm α) :
    k • c ∈ (k • g).cycleFactorsFinset ↔ c ∈ g.cycleFactorsFinset := by
  simp only [ConjAct.smul_def]
  apply mem_cycleFactorsFinset_conj g k

theorem cycleFactorsFinset_conj_eq
    (k : ConjAct (Perm α)) (g : Perm α) :
    cycleFactorsFinset (k • g) = k • cycleFactorsFinset g := by
  ext c
  rw [← mem_cycleFactorsFinset_conj' k⁻¹ (k • g) c]
  simp only [inv_smul_smul]
  exact Finset.inv_smul_mem_iff

end Equiv.Perm
