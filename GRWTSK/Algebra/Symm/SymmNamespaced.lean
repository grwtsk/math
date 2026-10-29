-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MulEquiv.Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MulEquiv.Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/symm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Logic.Equiv.Basic


namespace GRWTSK.Algebra.MulEquiv.Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850

set_option autoImplicit true
-- testing that the attribute is recognized
@[symm] def eq_symm {α : Type} (a b : α) : a = b → b = a := Eq.symm

example (a b : Nat) : a = b → b = a := by intros; symm; assumption
example (a b : Nat) : a = b → True → b = a := by intro h _; symm at h; assumption

def sameParity : Nat → Nat → Prop
  | n, m => n % 2 = m % 2

@[symm] def sameParity_symm (n m : Nat) : sameParity n m → sameParity m n := Eq.symm

example (a b : Nat) : sameParity a b → sameParity b a := by intros; symm; assumption

set_option linter.unusedTactic false in
example (a b c : Nat) (ab : a = b) (bc : b = c) : c = a := by
  symm_saturate
  -- Run twice to check that we don't add repeated copies.
  -- Unfortunately `guard_hyp_nums` doesn't seem to work so I haven't made an assertion.
  symm_saturate
  apply Eq.trans <;> assumption

structure MulEquiv (M N : Type u) [Mul M] [Mul N] extends M ≃ N, M →ₙ* N

/-- info: MulEquiv : (M N : Type u_1) → [Mul M] → [Mul N] → Type u_1 -/
#guard_msgs in
#check @MulEquiv

infixl:25 " ≃* " => MulEquiv

@[symm]
def foo_symm {M N : Type _} [Mul M] [Mul N] (h : M ≃* N) : N ≃* M :=
  { h.toEquiv.symm with map_mul' :=
    (h.toMulHom.inverse h.toEquiv.symm h.left_inv h.right_inv).map_mul }

def MyEq (n m : Nat) := ∃ k, n + k = m ∧ m + k = n

@[symm] lemma MyEq.symm {n m : Nat} (h : MyEq n m) : MyEq m n := by
  rcases h with ⟨k, h1, h2⟩
  exact ⟨k, h2, h1⟩

example {n m : Nat} (h : MyEq n m) : MyEq m n := by
  symm
  assumption
