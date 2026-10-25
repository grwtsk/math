# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Classification.Catalogue

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49bfe0a80e54496d37443b7841cfb38722884f47` · SHA-256 `9e44d553b24bcb9366474ec70a953048afc0daed3ff75f77e8c2e73a0e7c9553`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Released under the repository MIT license.
Research direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT.
Candidate source: native compilation and axiom audit NOT_RUN.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.Order.Taxonomy.Core

/-! # Classification is provenance-preserving membership, not type coercion -/

set_option autoImplicit false

namespace GRWTSK.Logic.Classification

open GRWTSK.Order.Taxonomy
open CategoryTheory

universe u

/-- Total primary placement plus optional cross-references for an in-scope inventory. -/
structure Catalogue (T : Taxonomy) (Artifact : Type u) where
  primary : Artifact → T.Node
  secondary : Artifact → List T.Node

variable {T : Taxonomy} {Artifact : Type u}

def Catalogue.Assigned (C : Catalogue T Artifact) (d : Artifact) (n : T.Node) : Prop :=
  n = C.primary d ∨ n ∈ C.secondary d

/-- A bucket contains the original record, not a duplicated declaration. -/
def Catalogue.Bucket (C : Catalogue T Artifact) (n : T.Node) : Type u :=
  {d : Artifact // ∃ m, C.Assigned d m ∧ n ≤ m}

def Catalogue.restrict (C : Catalogue T Artifact) {a b : T.Node} (h : a ≤ b) :
    C.Bucket b → C.Bucket a := fun d =>
  ⟨d.val, by
    rcases d.property with ⟨m, hm, hbm⟩
    exact ⟨m, hm, le_trans h hbm⟩⟩

@[simp] theorem Catalogue.restrict_val (C : Catalogue T Artifact) {a b : T.Node}
    (h : a ≤ b) (d : C.Bucket b) : (C.restrict h d).val = d.val := rfl

@[simp] theorem Catalogue.restrict_self (C : Catalogue T Artifact) (a : T.Node)
    (d : C.Bucket a) : C.restrict (le_refl a) d = d := rfl

theorem Catalogue.restrict_comp (C : Catalogue T Artifact) {a b c : T.Node}
    (hab : a ≤ b) (hbc : b ≤ c) (d : C.Bucket c) :
    C.restrict hab (C.restrict hbc d) = C.restrict (le_trans hab hbc) d := rfl

theorem Catalogue.restrict_injective (C : Catalogue T Artifact) {a b : T.Node}
    (h : a ≤ b) : Function.Injective (C.restrict h) := by
  intro x y hxy
  exact Subtype.ext (congrArg Subtype.val hxy)

/-- Completeness at the root follows from total primary classification. -/
def Catalogue.atRoot (C : Catalogue T Artifact) (d : Artifact) : C.Bucket ⊥ :=
  ⟨d, ⟨C.primary d, Or.inl rfl, bot_le⟩⟩

/-- Every assignment rolls up to the LCA without changing the underlying record. -/
def Catalogue.atCommonAncestor (C : Catalogue T Artifact) (a b : T.Node)
    (d : C.Bucket a) : C.Bucket (a ⊓ b) := C.restrict inf_le_left d

/-- A concrete presheaf: ancestor maps are inclusions, not isomorphisms. -/
def Catalogue.presheaf (C : Catalogue T Artifact) :
    T.Nodeᵒᵖ ⥤ Type u where
  obj n := C.Bucket n.unop
  map f := TypeCat.ofHom (C.restrict (CategoryTheory.leOfHom f.unop))
  map_id _ := rfl
  map_comp _ _ := rfl

end GRWTSK.Logic.Classification
```
