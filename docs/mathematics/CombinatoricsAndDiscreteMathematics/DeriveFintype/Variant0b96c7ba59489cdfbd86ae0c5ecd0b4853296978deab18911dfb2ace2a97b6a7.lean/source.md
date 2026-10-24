# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4842ab5fb8a06b979e0e3e4eb20c269cb3e1f4b0` · SHA-256 `aca8f63e17b56257928db9a220b9da74a7c6ef0c5679df5a24157c92fb0c9cf0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.A.Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.A.Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DeriveFintype.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.DeriveFintype
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Pi


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.A.Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98

set_option autoImplicit true
namespace tests

/-
Tests that the enumerable types succeed, even with universe levels.
-/

inductive A | x | y | z
  deriving Fintype

/--
info: tests.A.enumList : List A
-/
#guard_msgs in
#check A.enumList

inductive A' : Type u | x | y | z
  deriving Fintype

/--
info: tests.A'.enumList.{u} : List A'
-/
#guard_msgs in
#check A'.enumList

inductive A'' : Type 1 | x | y | z
  deriving Fintype

/--
info: tests.A''.enumList : List A''
-/
#guard_msgs in
#check A''.enumList

/-
Now for general inductive types
-/

-- The empty type needs a little special handling due to needing `nomatch` syntactically
inductive B
  deriving Fintype

example : (Finset.univ : Finset B) = ∅ := rfl

inductive C (α : Type _) | c (x : α)
  deriving Fintype, DecidableEq

/--
info: instFintypeC
-/
#guard_msgs in
#synth Fintype (C Bool)

example : (Finset.univ : Finset (C Bool)) = Finset.univ.image .c := rfl

inductive C' (P : Prop) : Type | c (h : P)
  deriving Fintype

/-- info: instFintypeC'OfDecidable -/
#guard_msgs in
#synth Fintype (C' (1 = 2))

example : Fintype.card (C' (1 = 2)) = 0 := rfl

inductive C'' (P : Prop) | c (h : P) (b : Bool)
  deriving Fintype

example : Fintype.card (C'' (1 = 2)) = 0 := rfl

section
variable [Fintype α]

/--
info: instFintypeC
-/
#guard_msgs in
#synth Fintype (C α)
end

inductive D (p : Prop) : Type | d (h : p)
  deriving Fintype

section
variable [Decidable q]

/-- info: instFintypeDOfDecidable -/
#guard_msgs in
#synth Fintype (D q)
end

inductive baz | a : Bool → baz
  deriving Fintype

inductive bar (n : Nat) (α : Type)
  | a
  | b : Bool → bar n α
  | c (x : Fin n) : Fin x → bar n α
  | d : Bool → α → bar n α
  deriving Fintype

inductive Y : Nat → Type
  | x (n : Nat) : Y n
  deriving Fintype

structure S where
  (x y z : Bool)
  deriving Fintype

example : Fintype.card S = 8 := rfl

inductive MyOption (α : Type _)
  | none
  | some (x : α)
  deriving Fintype

example : Fintype.card (MyOption Bool) = 3 := rfl

-- Check implicits work
inductive I {α : Type _}
  | a | b {x : α}
  deriving Fintype

inductive I' {α : Type _}
  | a | b {x : α} : @I' α
  deriving Fintype

/-
`derive_fintype%`
-/

def myBoolInst := derive_fintype% Bool

example : Fintype Bool := myBoolInst

def myBoolInst' : Fintype Bool := derive_fintype% _

example : Fintype Bool := myBoolInst'

def myProdInst [Fintype α] [Fintype β] : Fintype (α × β) := derive_fintype% _

structure MySubtype (s : Set α) where
  val : α
  mem : val ∈ s
  --deriving Fintype -- fails

instance (s : Set α) [Fintype α] [DecidablePred (· ∈ s)] : Fintype (MySubtype s) :=
  derive_fintype% _

/-
Tests from mathlib 3
-/

inductive Alphabet
  | a | b | c | d | e | f | g | h | i | j | k | l | m
  | n | o | p | q | r | s | t | u | v | w | x | y | z
  | A | B | C | D | E | F | G | H | I | J | K | L | M
  | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
  deriving Fintype

example : Fintype.card Alphabet = 52 := rfl

inductive foo
  | A (x : Bool)
  | B (y : Unit)
  | C (z : Fin 37)
  deriving Fintype

example : Fintype.card foo = 2 + 1 + 37 := rfl

inductive foo2 (α : Type)
  | A : α → foo2 α
  | B : α → α → foo2 α
  | C : α × α → foo2 α
  | D : foo2 α
  deriving Fintype

inductive foo3 (α β : Type) (n : ℕ)
  | A : (α → β) → foo3 α β n
  | B : Fin n → foo3 α β n
  --deriving Fintype -- won't work because missing decidable instance

instance (α β : Type) [DecidableEq α] [Fintype α] [Fintype β] (n : ℕ) : Fintype (foo3 α β n) :=
  derive_fintype% _

structure foo4 {m n : Type} (b : m → ℕ) where
  (x : m × n)
  (y : m × n)
  (h : b x.1 = b y.1)
  deriving Fintype

class MyClass (M : Type _) where
  (one : M)
  (eq_one : ∀ x : M, x = one)

instance {M : Type _} [Fintype M] [DecidableEq M] : Fintype (MyClass M) :=
  derive_fintype% _

end tests
```
