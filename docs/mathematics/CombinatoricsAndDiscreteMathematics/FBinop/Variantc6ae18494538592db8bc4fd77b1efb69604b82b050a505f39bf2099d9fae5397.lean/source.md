# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FBinop.Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9983af485f988e6e419e4c0f090e36ed855a200` · SHA-256 `9b423d962ea397e7bdb720a4574f6a511db63fc0e726ff0f064da3ca1ca52d71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SProdPrime.Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SProdPrime.Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/FBinop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.FBinop
import Mathlib.Data.Set.Prod
import Mathlib.Data.Finset.Prod
import Mathlib.Data.SetLike.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SProdPrime.Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab

private axiom test_sorry : ∀ {α}, α
universe u v w
set_option autoImplicit true

namespace FBinopTests

/-- Notation type class for the set product `×ˢ`. -/
class SProd' (α : Type u) (β : Type v) (γ : outParam (Type w)) where
  /-- The cartesian product `s ×ˢ t` is the set of `(a, b)` such that `a ∈ s` and `b ∈ t`. -/
  sprod : α → β → γ

-- This notation binds more strongly than (pre)images, unions and intersections.
@[inherit_doc SProd'.sprod] infixr:82 " ×ˢ' " => SProd'.sprod
macro_rules | `($x ×ˢ' $y)   => `(fbinop% SProd'.sprod $x $y)

@[default_instance]
instance : SProd' (Set α) (Set β) (Set (α × β)) := ⟨Set.prod⟩
instance : SProd' (Finset α) (Finset β) (Finset (α × β)) := ⟨Finset.product⟩

-- set_option trace.Elab.fbinop true

-- These work without `fbinop%`. They're tests that we haven't broken anything.

example (s : Set α) (t : Set β) : s ×ˢ' t = s ×ˢ' t := rfl
example {α : Type u} {β : Type v} (s : Finset α) (t : Finset β) : s ×ˢ' t = s ×ˢ' t := rfl

example (f : α × α → β) (s : Set (α × α)) : s.InjOn f := test_sorry
example (f : α × α → β) (s t : Set α) : (s ×ˢ' t).InjOn f := test_sorry
example (f : α × α → β) (s t : Finset α) : (s ×ˢ' t : Set (α × α)).InjOn f := test_sorry
example (f : α × α → β) (s t : Finset α) : (s ×ˢ' t : Set _).InjOn f := test_sorry
example (f : α × α → β) (s t : Finset α) : (s ×ˢ' t : Set _).InjOn f := test_sorry
example (f : α × α → β) (s t : Finset α) : ((s : Set _) ×ˢ' (t : Set _)).InjOn f := test_sorry
example (f : α × α → β) (s t : Finset α) : ((s : Set _) ×ˢ' (t : Set _)).InjOn f := test_sorry
example (f : α × α → β) (s t : Finset α) : Set.InjOn f (s ×ˢ' t) := test_sorry

axiom Nat.card : Sort u → Nat
example (s : Finset α) (t : Finset γ) : Nat.card (s ×ˢ' t) = 0 := test_sorry

example (s : Set α) (t : Set (α × ℕ)) : s ×ˢ' {n | 0 < n} = t := test_sorry
example (s : Set α) (t : Set (α × ℕ)) : s ×ˢ' {1, 2, 3} = t := test_sorry
example (s : Set α) (t : Set (ℕ × α)) : {1, 2, 3} ×ˢ' s = t := test_sorry

-- These need `fbinop%`. (Comment out `macro_rules` above to check.)

example {α : Type u} {β : Type v} (s : Finset α) (t : Set β) : s ×ˢ' t = s ×ˢ' t := rfl
example (s : Finset α) (t : Finset (α × ℕ)) : s ×ˢ' {1, 2, 3} = t := test_sorry
example (s : Finset α) (t : Finset (ℕ × α)) : {1, 2, 3} ×ˢ' s = t := test_sorry
example (s : Finset α) (_t : Finset (ℕ × α)) : ({1, 2, 3} ×ˢ' s).card = 22 := test_sorry

/--
info: {1, 2, 3} ×ˢ' {4, 5, 6} : Finset (ℕ × ℕ)
-/
#guard_msgs in
#check ({1,2,3} ×ˢ' {4,5,6} : Finset _)

example (s : Finset α) (t : Set β) (u : Finset γ) : Nat.card (s ×ˢ' t ×ˢ' u) = 0 := test_sorry

example (s : Finset α) (t : Finset β) :
    (↑(s ×ˢ' t) : Set _) = (s : Set α) ×ˢ' t := Finset.coe_product s t

structure SubObj (X : Type _) where
  carrier : Set X

instance : SetLike (SubObj X) X where
  coe s := s.carrier
  coe_injective' p q h := by cases p; cases q; congr

-- Note: this easily works because the last argument of `SubObj` is a type.
def SubObj.prod (s : SubObj X) (t : SubObj Y) : SubObj (X × Y) where
  carrier := s ×ˢ' t

/-- Modeling subobjects of algebraic types, which have an instance argument after the type. -/
structure DecSubObj (X : Type _) [DecidableEq X] where
  carrier : Set X

instance [DecidableEq X] : SetLike (DecSubObj X) X where
  coe s := s.carrier
  coe_injective' p q h := by cases p; cases q; congr

-- Note: this is testing instance arguments after the type.
def DecSubObj.prod [DecidableEq X] [DecidableEq Y] (s : DecSubObj X) (t : DecSubObj Y) :
    DecSubObj (X × Y) where
  carrier := s ×ˢ' t

end FBinopTests
```
