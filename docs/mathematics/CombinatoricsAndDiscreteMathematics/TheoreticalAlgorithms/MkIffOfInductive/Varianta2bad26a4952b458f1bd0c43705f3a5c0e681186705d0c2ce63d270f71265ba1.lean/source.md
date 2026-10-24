# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MkIffOfInductive.Varianta2bad26a4952b458f1bd0c43705f3a5c0e681186705d0c2ce63d270f71265ba1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dfe3b482556c3bd8fc3f4c17d7459730849c62c` · SHA-256 `7812d1b23a6ac9bf83a2257d1e778816d5bc235e04f856095733731219e5fbef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestIsTrue.Variant98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TestIsTrue.Variant98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0","mathematical_subject":"Computation.DataStructures","original_sha256":"98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/MkIffOfInductive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.MkIffOfInductiveProp
import Mathlib.Data.List.Perm.Lattice


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestIsTrue.Variant98c516f92b63d5f86d23da6cdefecf716c67f5f0ec1e5dc83d1455ef446c7fb0

mk_iff_of_inductive_prop List.Chain test.chain_iff
example {α : Type _} (R : α → α → Prop) (a : α) (al : List α) :
    List.Chain R a al ↔
      al = List.nil ∨ ∃ (b : α) (l : List α), R a b ∧ List.Chain R b l ∧ al = b :: l :=
  test.chain_iff R a al

-- check that the statement prints nicely
/--
info: test.chain_iff.{u_1} {α : Type u_1} (R : α → α → Prop) (a✝ : α) (a✝¹ : List α) :
  List.Chain R a✝ a✝¹ ↔ a✝¹ = [] ∨ ∃ b l, R a✝ b ∧ List.Chain R b l ∧ a✝¹ = b :: l
-/
#guard_msgs in
#check test.chain_iff

mk_iff_of_inductive_prop False    test.false_iff
example : False ↔ False := test.false_iff

mk_iff_of_inductive_prop True     test.true_iff
example : True ↔ True := test.true_iff

universe u
mk_iff_of_inductive_prop Nonempty test.non_empty_iff
example (α : Sort u) : Nonempty α ↔ ∃ (_ : α), True := test.non_empty_iff α

mk_iff_of_inductive_prop And      test.and_iff
example (p q : Prop) : And p q ↔ p ∧ q := test.and_iff p q

mk_iff_of_inductive_prop Or       test.or_iff
example (p q : Prop) : Or p q ↔ p ∨ q := test.or_iff p q

mk_iff_of_inductive_prop Eq       test.eq_iff
example (α : Sort u) (a b : α) : a = b ↔ b = a := test.eq_iff a b

mk_iff_of_inductive_prop HEq      test.heq_iff
example {α : Sort u} (a : α) {β : Sort u} (b : β) : HEq a b ↔ β = α ∧ HEq b a := test.heq_iff a b

mk_iff_of_inductive_prop List.Perm test.perm_iff
open scoped List in
example {α : Type _} (a b : List α) :
    a ~ b ↔
      a = List.nil ∧ b = List.nil ∨
        (∃ (x : α) (l₁ l₂ : List α), l₁ ~ l₂ ∧ a = x :: l₁ ∧ b = x :: l₂) ∨
          (∃ (x y : α) (l : List α), a = y :: x :: l ∧ b = x :: y :: l) ∨
            ∃ (l₂ : List α), a ~ l₂ ∧ l₂ ~ b := test.perm_iff a b

mk_iff_of_inductive_prop List.Pairwise test.pairwise_iff
example {α : Type} (R : α → α → Prop) (al : List α) :
    List.Pairwise R al ↔
      al = List.nil ∨
        ∃ (a : α) (l : List α), (∀ (a' : α), a' ∈ l → R a a') ∧ List.Pairwise R l ∧ al = a :: l := test.pairwise_iff R al

inductive test.is_true (p : Prop) : Prop
| triviality (h : p) : test.is_true p

mk_iff_of_inductive_prop test.is_true test.is_true_iff
example (p : Prop) : test.is_true p ↔ p := test.is_true_iff p

@[mk_iff]
structure foo (m n : Nat) : Prop where
  equal : m = n
  sum_eq_two : m + n = 2

example (m n : Nat) : foo m n ↔ m = n ∧ m + n = 2 := foo_iff m n

@[mk_iff bar]
structure foo2 (m n : Nat) : Prop where
  equal : m = n
  sum_eq_two : m + n = 2

example (m n : Nat) : foo2 m n ↔ m = n ∧ m + n = 2 := bar m n

@[mk_iff]
inductive ReflTransGen {α : Type _} (r : α → α → Prop) (a : α) : α → Prop
| refl : ReflTransGen r a a
| tail {b c} : ReflTransGen r a b → r b c → ReflTransGen r a c

example {α : Type} (r : α → α → Prop) (a c : α) :
    ReflTransGen r a c ↔ c = a ∨ ∃ b : α, ReflTransGen r a b ∧ r b c :=
 reflTransGen_iff r a c
```
