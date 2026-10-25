# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variantc57768b2dc72b05c5296bb59d624c882a3333fa4f16cf6a5f8f73efe13f72126

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `126a0cc587ade7a5ee09b9c1357d00d149cbf60f` · SHA-256 `8a6dda608c55f76a42e56b15af8521eddb9a4315f41fb1d802e06d343ad64ade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Set.Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
import Lean.Parser.Term
import Std.Classes.SetNotation
import Mathlib.Mathport.Rename

/-!

# Sets

This file sets up the theory of sets whose elements have a given type.

## Main definitions

Given a type `X` and a predicate `p : X → Prop`:

* `Set X` : the type of sets whose elements have type `X`
* `{a : X | p a} : Set X` : the set of all elements of `X` satisfying `p`
* `{a | p a} : Set X` : a more concise notation for `{a : X | p a}`
* `{a ∈ S | p a} : Set X` : given `S : Set X`, the subset of `S` consisting of
   its elements satisfying `p`.

## Implementation issues

As in Lean 3, `Set X := X → Prop`

I didn't call this file Data.Set.Basic because it contains core Lean 3
stuff which happens before mathlib3's data.set.basic .
This file is a port of the core Lean 3 file `lib/lean/library/init/data/set.lean`.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d

set_option autoImplicit true

def Set (α : Type u) := α → Prop
#align set Set

def setOf {α : Type u} (p : α → Prop) : Set α :=
  p
#align set_of setOf

namespace Set

/-- Membership in a set -/
protected def Mem (a : α) (s : Set α) : Prop :=
  s a

instance : Membership α (Set α) :=
  ⟨Set.Mem⟩

theorem ext {a b : Set α} (h : ∀ (x : α), x ∈ a ↔ x ∈ b) : a = b :=
  funext (fun x ↦ propext (h x))

protected def Subset (s₁ s₂ : Set α) :=
  ∀ ⦃a⦄, a ∈ s₁ → a ∈ s₂

/-- Porting note: we introduce `≤` before `⊆` to help the unifier when applying lattice theorems
to subset hypotheses. -/
instance : LE (Set α) :=
  ⟨Set.Subset⟩

instance : HasSubset (Set α) :=
  ⟨(· ≤ ·)⟩

instance : EmptyCollection (Set α) :=
  ⟨λ _ => False⟩

open Std.ExtendedBinder in
syntax "{" extBinder " | " term "}" : term

macro_rules
  | `({ $x:ident | $p }) => `(setOf fun $x:ident ↦ $p)
  | `({ $x:ident : $t | $p }) => `(setOf fun $x:ident : $t ↦ $p)
  | `({ $x:ident $b:binderPred | $p }) =>
    `(setOf fun $x:ident ↦ satisfies_binder_pred% $x $b ∧ $p)

@[app_unexpander setOf]
def setOf.unexpander : Lean.PrettyPrinter.Unexpander
  | `($_ fun $x:ident ↦ $p) => `({ $x:ident | $p })
  | `($_ fun ($x:ident : $ty:term) ↦ $p) => `({ $x:ident : $ty:term | $p })
  | _ => throw ()

open Std.ExtendedBinder in
macro (priority := low) "{" t:term " | " bs:extBinders "}" : term =>
  `({x | ∃ᵉ $bs:extBinders, $t = x})

def univ : Set α := {_a | True}
#align set.univ Set.univ

protected def insert (a : α) (s : Set α) : Set α := {b | b = a ∨ b ∈ s}

instance : Insert α (Set α) := ⟨Set.insert⟩

protected def singleton (a : α) : Set α := {b | b = a}

instance instSingletonSet : Singleton α (Set α) := ⟨Set.singleton⟩

protected def union (s₁ s₂ : Set α) : Set α := {a | a ∈ s₁ ∨ a ∈ s₂}

instance : Union (Set α) := ⟨Set.union⟩

protected def inter (s₁ s₂ : Set α) : Set α := {a | a ∈ s₁ ∧ a ∈ s₂}

instance : Inter (Set α) := ⟨Set.inter⟩

protected def compl (s : Set α) : Set α := {a | a ∉ s}

protected def diff (s t : Set α) : Set α := {a ∈ s | a ∉ t}

instance : SDiff (Set α) := ⟨Set.diff⟩

def powerset (s : Set α) : Set (Set α) := {t | t ⊆ s}

prefix:100 "𝒫" => powerset

def image (f : α → β) (s : Set α) : Set β := {f a | a ∈ s}

instance : Functor Set where map := @Set.image

instance : LawfulFunctor Set where
  id_map _ := funext fun _ ↦ propext ⟨λ ⟨_, sb, rfl⟩ => sb, λ sb => ⟨_, sb, rfl⟩⟩
  comp_map g h _ := funext $ λ c => propext
    ⟨λ ⟨a, ⟨h₁, h₂⟩⟩ => ⟨g a, ⟨⟨a, ⟨h₁, rfl⟩⟩, h₂⟩⟩,
     λ ⟨_, ⟨⟨a, ⟨h₁, h₂⟩⟩, h₃⟩⟩ => ⟨a, ⟨h₁, show h (g a) = c from h₂ ▸ h₃⟩⟩⟩
  map_const := rfl

end Set
```
