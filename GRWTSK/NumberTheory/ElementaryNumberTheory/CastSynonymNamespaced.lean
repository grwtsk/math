-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ToDualNatCast.Variantbb7882041ea50dd52287226da556d00cfb1ce8393a0bd726c0b960f12ec95306","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb7882041ea50dd52287226da556d00cfb1ce8393a0bd726c0b960f12ec95306","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ToDualNatCast.Variantbb7882041ea50dd52287226da556d00cfb1ce8393a0bd726c0b960f12ec95306","mathematical_subject":"Algebra.OrderTheory","original_sha256":"bb7882041ea50dd52287226da556d00cfb1ce8393a0bd726c0b960f12ec95306","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Cast/Synonym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Order.Synonym

/-!
# Cast of natural numbers (additional theorems)

This file proves additional properties about the *canonical* homomorphism from
the natural numbers into an additive monoid with a one (`Nat.cast`).
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ToDualNatCast.Variantbb7882041ea50dd52287226da556d00cfb1ce8393a0bd726c0b960f12ec95306

variable {α : Type*}

/-! ### Order dual -/


open OrderDual

instance [h : NatCast α] : NatCast αᵒᵈ :=
  h

instance [h : AddMonoidWithOne α] : AddMonoidWithOne αᵒᵈ :=
  h

instance [h : AddCommMonoidWithOne α] : AddCommMonoidWithOne αᵒᵈ :=
  h

@[simp]
theorem toDual_natCast [NatCast α] (n : ℕ) : toDual (n : α) = n :=
  rfl

@[simp]
theorem toDual_ofNat [NatCast α] (n : ℕ) [n.AtLeastTwo] :
    (toDual (ofNat(n) : α)) = ofNat(n) :=
  rfl

@[simp]
theorem ofDual_natCast [NatCast α] (n : ℕ) : (ofDual n : α) = n :=
  rfl

@[simp]
theorem ofDual_ofNat [NatCast α] (n : ℕ) [n.AtLeastTwo] :
    (ofDual (ofNat(n) : αᵒᵈ)) = ofNat(n) :=
  rfl

/-! ### Lexicographic order -/


instance [h : NatCast α] : NatCast (Lex α) :=
  h

instance [h : AddMonoidWithOne α] : AddMonoidWithOne (Lex α) :=
  h

instance [h : AddCommMonoidWithOne α] : AddCommMonoidWithOne (Lex α) :=
  h

@[simp]
theorem toLex_natCast [NatCast α] (n : ℕ) : toLex (n : α) = n :=
  rfl

@[simp]
theorem toLex_ofNat [NatCast α] (n : ℕ) [n.AtLeastTwo] :
    toLex (ofNat(n) : α) = OfNat.ofNat n :=
  rfl

@[simp]
theorem ofLex_natCast [NatCast α] (n : ℕ) : (ofLex n : α) = n :=
  rfl

@[simp]
theorem ofLex_ofNat [NatCast α] (n : ℕ) [n.AtLeastTwo] :
    ofLex (ofNat(n) : Lex α) = OfNat.ofNat n :=
  rfl
