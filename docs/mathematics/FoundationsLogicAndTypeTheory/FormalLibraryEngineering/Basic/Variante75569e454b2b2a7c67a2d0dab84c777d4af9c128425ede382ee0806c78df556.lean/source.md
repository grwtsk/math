# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variante75569e454b2b2a7c67a2d0dab84c777d4af9c128425ede382ee0806c78df556

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f5abc5af4ec5f27229613039b0f995b9b42124d` · SHA-256 `456354920c5c6fe5617cf2cc16a9254a86b3cb100b5d3791876e20de7af57a27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tree.Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tree.Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Tree/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 mathlib community. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Wojciech Nawrocki
-/
import Mathlib.Data.Nat.Notation
import Mathlib.Tactic.TypeStar
import Mathlib.Util.CompileInductive

/-!
# Binary tree

Provides binary tree storage for values of any type, with O(lg n) retrieval.
See also `Lean.Data.RBTree` for red-black trees - this version allows more operations
to be defined and is better suited for in-kernel computation.

We also specialize for `Tree Unit`, which is a binary tree without any
additional data. We provide the notation `a △ b` for making a `Tree Unit` with children
`a` and `b`.

## References

<https://leanprover-community.github.io/archive/stream/113488-general/topic/tactic.20question.html>
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tree.Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5

/-- A binary tree with values stored in non-leaf nodes. -/
inductive Tree.{u} (α : Type u) : Type u
  | nil : Tree α
  | node : α → Tree α → Tree α → Tree α
  deriving DecidableEq, Repr
compile_inductive% Tree

namespace Tree

universe u

variable {α : Type u}

instance : Inhabited (Tree α) :=
  ⟨nil⟩

/--
Do an action for every node of the tree.
Actions are taken in node -> left subtree -> right subtree recursive order.
This function is the `traverse` function for the `Traversable Tree` instance.
-/
def traverse {m : Type* → Type*} [Applicative m] {α β} (f : α → m β) : Tree α → m (Tree β)
  | .nil => pure nil
  | .node a l r => .node <$> f a <*> traverse f l <*> traverse f r

/-- Apply a function to each value in the tree.  This is the `map` function for the `Tree` functor.
-/
def map {β} (f : α → β) : Tree α → Tree β
  | nil => nil
  | node a l r => node (f a) (map f l) (map f r)

theorem id_map (t : Tree α) : t.map id = t := by
  induction t with
  | nil => rw [map]
  | node v l r hl hr => rw [map, hl, hr, id_eq]

theorem comp_map {β γ : Type*} (f : α → β) (g : β → γ) (t : Tree α) :
    t.map (g ∘ f) = (t.map f).map g := by
  induction t with
  | nil => rw [map, map, map]
  | node v l r hl hr => rw [map, map, map, hl, hr, Function.comp_apply]

theorem traverse_pure (t : Tree α) {m : Type u → Type*} [Applicative m] [LawfulApplicative m] :
    t.traverse (pure : α → m α) = pure t := by
  induction t with
  | nil => rw [traverse]
  | node v l r hl hr =>
    rw [traverse, hl, hr, map_pure, pure_seq, seq_pure, map_pure, map_pure]

/-- The number of internal nodes (i.e. not including leaves) of a binary tree -/
@[simp]
def numNodes : Tree α → ℕ
  | nil => 0
  | node _ a b => a.numNodes + b.numNodes + 1

/-- The number of leaves of a binary tree -/
@[simp]
def numLeaves : Tree α → ℕ
  | nil => 1
  | node _ a b => a.numLeaves + b.numLeaves

/-- The height - length of the longest path from the root - of a binary tree -/
@[simp]
def height : Tree α → ℕ
  | nil => 0
  | node _ a b => max a.height b.height + 1

theorem numLeaves_eq_numNodes_succ (x : Tree α) : x.numLeaves = x.numNodes + 1 := by
  induction x <;> simp [*, Nat.add_comm, Nat.add_assoc, Nat.add_left_comm]

theorem numLeaves_pos (x : Tree α) : 0 < x.numLeaves := by
  rw [numLeaves_eq_numNodes_succ]
  exact x.numNodes.zero_lt_succ

theorem height_le_numNodes : ∀ x : Tree α, x.height ≤ x.numNodes
  | nil => Nat.le_refl _
  | node _ a b => Nat.succ_le_succ <|
    Nat.max_le.2 ⟨Nat.le_trans a.height_le_numNodes <| a.numNodes.le_add_right _,
      Nat.le_trans b.height_le_numNodes <| b.numNodes.le_add_left _⟩

/-- The left child of the tree, or `nil` if the tree is `nil` -/
@[simp]
def left : Tree α → Tree α
  | nil => nil
  | node _ l _r => l

/-- The right child of the tree, or `nil` if the tree is `nil` -/
@[simp]
def right : Tree α → Tree α
  | nil => nil
  | node _ _l r => r

/-- A node with `Unit` data -/
scoped infixr:65 " △ " => Tree.node ()

/-- Induction principle for `Tree Unit`s -/
@[elab_as_elim]
def unitRecOn {motive : Tree Unit → Sort*} (t : Tree Unit) (base : motive nil)
    (ind : ∀ x y, motive x → motive y → motive (x △ y)) : motive t :=
  t.recOn base fun _u ↦ ind

theorem left_node_right_eq_self : ∀ {x : Tree Unit} (_hx : x ≠ nil), x.left △ x.right = x
  | nil, h => by trivial
  | node _ _ _, _ => rfl  -- Porting note: `a △ b` no longer works in pattern matching

end Tree
```
