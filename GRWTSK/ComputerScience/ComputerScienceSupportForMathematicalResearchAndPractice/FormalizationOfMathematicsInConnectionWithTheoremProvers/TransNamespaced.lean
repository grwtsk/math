-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nleq.Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Nleq.Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/trans.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Trans

-- testing that the attribute is recognized and used

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nleq.Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee

def nleq (a b : Nat) : Prop := a ≤ b

@[trans] theorem nleq_trans : nleq a b → nleq b c → nleq a c := Nat.le_trans

example (a b c : Nat) : nleq a b → nleq b c → nleq a c := by
  intro h₁ h₂
  trans b
  assumption
  assumption

example (a b c : Nat) : nleq a b → nleq b c → nleq a c := by intros; trans <;> assumption

-- using `Trans` typeclass
@[trans] theorem eq_trans {a b c : α} : a = b → b = c → a = c := by
  intro h₁ h₂
  apply Eq.trans h₁ h₂

example (a b c : Nat) : a = b → b = c → a = c := by intros; trans <;> assumption

example (a b c : Nat) : a = b → b = c → a = c := by
  intro h₁ h₂
  trans b
  assumption
  assumption

example : @Trans Nat Nat Nat (· ≤ ·) (· ≤ ·) (· ≤ ·) := inferInstance

example (a b c : Nat) : a ≤ b → b ≤ c → a ≤ c := by
  intros h₁ h₂
  trans ?b
  case b => exact b
  exact h₁
  exact h₂

example (a b c : α) (R : α → α → Prop) [Trans R R R] : R a b → R b c → R a c := by
  intros h₁ h₂
  trans ?b
  case b => exact b
  exact h₁
  exact h₂

example (a b c : Nat) : a ≤ b → b ≤ c → a ≤ c := by
  intros h₁ h₂
  trans
  exact h₁
  exact h₂

example (a b c : Nat) : a ≤ b → b ≤ c → a ≤ c := by intros; trans <;> assumption

example (a b c : Nat) : a < b → b < c → a < c := by
  intro h₁ h₂
  trans b
  assumption
  assumption

example (a b c : Nat) : a < b → b < c → a < c := by intros; trans <;> assumption

example (x n p : Nat) (h₁ : n * Nat.succ p ≤ x) : n * p ≤ x := by
  trans
  · apply Nat.mul_le_mul_left; apply Nat.le_succ
  · apply h₁

example (a : α) (c : γ) : ∀ b : β, a ≍ b → b ≍ c → a ≍ c := by
    intro b h₁ h₂
    trans b
    assumption
    assumption

def MyLE (n m : Nat) := ∃ k, n + k = m

@[trans] theorem MyLE.trans {n m k : Nat} (h1 : MyLE n m) (h2 : MyLE m k) : MyLE n k := by
  cases h1
  cases h2
  subst_vars
  exact ⟨_, Eq.symm <| Nat.add_assoc _ _ _⟩

example {n m k : Nat} (h1 : MyLE n m) (h2 : MyLE m k) : MyLE n k := by
  trans <;> assumption

/-- `trans` for implications. -/
example {A B C : Prop} (h : A → B) (g : B → C) : A → C := by
  trans B
  · guard_target =ₛ A → B -- ensure we have `B` and not a free metavariable.
    exact h
  · guard_target =ₛ B → C
    exact g

/-- `trans` for arrows between types. -/
example {A B C : Type} (h : A → B) (g : B → C) : A → C := by
  trans
  rotate_right
  · exact B
  · exact h
  · exact g

universe u v w

/-- `trans` for arrows between types. -/
example {A : Type u} {B : Type v} {C : Type w} (h : A → B) (g : B → C) : A → C := by
  trans
  rotate_right
  · exact B
  · exact h
  · exact g
