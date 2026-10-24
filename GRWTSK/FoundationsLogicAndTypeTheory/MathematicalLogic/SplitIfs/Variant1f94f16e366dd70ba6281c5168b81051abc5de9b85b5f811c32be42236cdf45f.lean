-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Foo.Variant03e175ca6286f2eccdf717c2648cd952af9d4ad6b7fce6b79d187763e6bf9ede","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03e175ca6286f2eccdf717c2648cd952af9d4ad6b7fce6b79d187763e6bf9ede","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Foo.Variant03e175ca6286f2eccdf717c2648cd952af9d4ad6b7fce6b79d187763e6bf9ede","mathematical_subject":"Logic.Foundations","original_sha256":"03e175ca6286f2eccdf717c2648cd952af9d4ad6b7fce6b79d187763e6bf9ede","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/SplitIfs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.SplitIfs


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Foo.Variant03e175ca6286f2eccdf717c2648cd952af9d4ad6b7fce6b79d187763e6bf9ede

example (x : Nat) (p : Prop) [Decidable p] : x = if p then x else x := by
  split_ifs with h1
  · rfl
  · rfl

example (x y : Nat) (p : Prop) [Decidable p] (h : if p then x = y else y = x) : x = y := by
  split_ifs at h
  · exact h
  · exact h.symm

example (x : Nat) (p q : Prop) [Decidable p] [Decidable q] :
    x = if p then (if q then x else x) else x := by
  split_ifs
  · rfl
  · rfl
  · rfl

example (x : Nat) (p : Prop) [Decidable p] :
    x = if (if p then False else True) then x else x := by
  split_ifs
  · rfl
  · rfl
  · rfl

example (p : Prop) [Decidable p] : if if ¬p then p else True then p else ¬p := by
  split_ifs with h
  · exact h
  · exact h

lemma foo (p q : Prop) [Decidable p] [Decidable q] :
    if if if p then ¬p else q then p else q then q else ¬p ∨ ¬q := by
  split_ifs with h1 h2 h3
  · exact h2
  · exact Or.inr h2
  · exact Or.inl h1
  · exact Or.inr h3
/-- info: 'foo' does not depend on any axioms -/
#guard_msgs in #print axioms foo

example (p : Prop) [Decidable p] (h : (if p then 1 else 2) > 3) : False := by
  split_ifs at h
  cases h
  · case pos.step h => cases h
  · case neg h =>
    cases h
    case step h =>
      cases h
      case step h => cases h

example (p : Prop) [Decidable p] (x : Nat) (h : (if p then 1 else 2) > x) :
     x < (if ¬p then 1 else 0) + 1 := by
   split_ifs at * <;> assumption

example (p : Prop) [Decidable p] : if if ¬p then p else True then p else ¬p := by
  split_ifs <;>
  assumption

example (p q : Prop) [Decidable p] [Decidable q] :
     if if if p then ¬p else q then p else q then q else ¬p ∨ ¬q := by
  split_ifs <;>
  simp [*]

example : True := by
  fail_if_success { split_ifs }
  trivial

open Classical in
example (P Q : Prop) (w : if P then (if Q then true else true) else true = true) : true := by
  split_ifs at w
  -- check that we've fully split w into three subgoals
  · trivial
  · trivial
  · trivial
