# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LintSimpNF.Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c24254797c52d5831b59c57f145bdbfbb82ad042` · SHA-256 `d68b96e140774d66e294627092a16c6c6da0f018cae4d16bc5d3a131671ad337`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Equiv.Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74","mathematical_subject":"Logic.Foundations","original_sha256":"685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lint_simpNF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74

set_option linter.missingDocs false

structure Equiv (α : Sort _) (β : Sort _) where
  toFun : α → β
  invFun : β → α

infixl:25 " ≃ " => Equiv

namespace Equiv

instance : CoeFun (α ≃ β) fun _ => α → β := ⟨toFun⟩

protected def symm (e : α ≃ β) : β ≃ α := ⟨e.invFun, e.toFun⟩

def sumCompl {α : Type _} (p : α → Prop) [DecidablePred p] :
    Sum { a // p a } { a // ¬p a } ≃ α where
  toFun := Sum.elim Subtype.val Subtype.val
  invFun a := if h : p a then Sum.inl ⟨a, h⟩ else Sum.inr ⟨a, h⟩

@[simp]
theorem sumCompl_apply_symm_of_pos (p : α → Prop) [DecidablePred p] (a : α) (h : p a) :
    (sumCompl p).symm a = Sum.inl ⟨a, h⟩ :=
  dif_pos h

def foo (n : Nat) : Nat := if n = n then n else 0

@[simp]
theorem foo_eq_id : foo = id := by
  funext n
  simp [foo]

-- The following `dsimp`-lemma is (correctly) not flagged by the linter
@[defeq, simp]
theorem foo_eq_ite (n : Nat) : foo n = if n = n then n else 0 := by
  rfl

end Equiv

namespace List

private axiom test_sorry : ∀ {α}, α

@[simp]
theorem ofFn_getElem_eq_map {β : Type _} (l : List α) (f : α → β) :
    ofFn (fun i : Fin l.length => f <| l[(i : Nat)]) = l.map f := test_sorry

example {β : Type _} (l : List α) (f : α → β) :
    ofFn (fun i : Fin l.length => f <| l[(i : Nat)]) = l.map f := by simp only [ofFn_getElem_eq_map]

end List

/-! This tests that `simpNF` is not accidentally using `quasiPatternApprox := true`. -/

def eqToFun {X Y : Type} (p : X = Y) : X → Y := by rw [p]; exact id

@[simp]
theorem eqToFun_comp_eq_self {β} {X : Type} {f : β → Type}
    (z : ∀ b, X → f b) {j j' : β} (w : j = j') :
    eqToFun (by simp [w]) ∘ z j' = z j := by
  cases w; rfl

@[simp]
theorem eqToFun_comp_iso_hom_eq_self {β} {X : Type} {f : β → Type}
    (z : ∀ b, X ≃ f b) {j j' : β} (w : j = j') :
    eqToFun (by simp [w]) ∘ (z j').toFun = (z j).toFun := by
  cases w; rfl

/-! Test that the simpNF linter does not report false positives when `dsimp` changes
implicit arguments (e.g. unfolding carrier types in bundled structures).
See https://github.com/leanprover/lean4/pull/12179. -/
section BackwardDefEqRespectTransparency

class MyClass (α : Type) where
  op : α → α

structure Bundle where
  carrier : Type
  [inst : MyClass carrier]

attribute [instance] Bundle.inst

def Bundle.of (X : Type) [MyClass X] : Bundle where
  carrier := X

@[simp]
theorem Bundle.of_carrier (X : Type) [MyClass X] : (Bundle.of X).carrier = X := rfl

-- This simp lemma has a LHS where the implicit `α` argument to `MyClass.op` is
-- `Bundle.carrier (Bundle.of X)` rather than `X`. `dsimp [Bundle.of_carrier]` can
-- partially unfold this, but the result is the same up to the old defeq behavior.
-- The linter should not flag this.
@[simp]
theorem Bundle.of_op {X : Type} [MyClass X] :
    @MyClass.op (Bundle.of X).carrier (Bundle.of X).inst = @MyClass.op X _ := rfl

end BackwardDefEqRespectTransparency

#lint- only simpNF
```
