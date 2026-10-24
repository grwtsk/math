# Complete source: GRWTSK.Algebra.KTheory.GradedFormalKK

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1124cdb0f3009c8bdde62bf8eae9b82036dbe808` · SHA-256 `414bdc9ad51bfa57b431070350d4b9dd9cefd57103b92e49eb9acd2ca14e880a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.KTheory.FormalKK

namespace GRWTSK.Algebra.KTheory.GradedFormalKK

universe u v

/-- A formal bivariant theory with an explicit `Z/2` grading law.

The correspondence type is not indexed by the degree; the degree function and product law remain
proof-relevant data, avoiding implicit casts while preventing parity erasure. -/
structure Theory (Obj : Type u) where
  Corr : Obj → Obj → Type v
  degree : ∀ {A B}, Corr A B → Bool
  identity : ∀ A, Corr A A
  product : ∀ {A B C}, Corr A B → Corr B C → Corr A C
  identity_degree : ∀ A, degree (identity A) = false
  product_degree :
    ∀ {A B C} (α : Corr A B) (β : Corr B C),
      degree (product α β) = Bool.xor (degree α) (degree β)
  identity_product :
    ∀ {A B} (α : Corr A B), product (identity A) α = α
  product_identity :
    ∀ {A B} (α : Corr A B), product α (identity B) = α
  product_assoc :
    ∀ {A B C D} (α : Corr A B) (β : Corr B C) (γ : Corr C D),
      product (product α β) γ = product α (product β γ)

/-- Two-sided equivalence in a graded bivariant theory. -/
structure Equivalence {Obj : Type u} (T : Theory Obj) (A B : Obj) where
  forward : T.Corr A B
  backward : T.Corr B A
  forward_backward : T.product forward backward = T.identity A
  backward_forward : T.product backward forward = T.identity B

namespace Equivalence

variable {Obj : Type u} {T : Theory Obj} {A B : Obj}

/-- Forward and inverse degrees combine to even parity. -/
theorem forward_backward_even (E : Equivalence T A B) :
    Bool.xor (T.degree E.forward) (T.degree E.backward) = false := by
  calc
    Bool.xor (T.degree E.forward) (T.degree E.backward) =
        T.degree (T.product E.forward E.backward) :=
      (T.product_degree E.forward E.backward).symm
    _ = T.degree (T.identity A) := by rw [E.forward_backward]
    _ = false := T.identity_degree A

/-- The reverse product supplies the same even-parity constraint in the opposite order. -/
theorem backward_forward_even (E : Equivalence T A B) :
    Bool.xor (T.degree E.backward) (T.degree E.forward) = false := by
  calc
    Bool.xor (T.degree E.backward) (T.degree E.forward) =
        T.degree (T.product E.backward E.forward) :=
      (T.product_degree E.backward E.forward).symm
    _ = T.degree (T.identity B) := by rw [E.backward_forward]
    _ = false := T.identity_degree B

end Equivalence

/-- Endpoint-typed product path with accumulated formal parity. -/
inductive ProductPath {Obj : Type u} (T : Theory.{u, v} Obj) :
    Obj → Obj → Type (max u v)
  | nil (A : Obj) : ProductPath T A A
  | cons {A B C : Obj} (α : T.Corr A B) (rest : ProductPath T B C) :
      ProductPath T A C

namespace ProductPath

variable {Obj : Type u} {T : Theory Obj}

/-- Evaluate a typed graded path. -/
def evaluate {A B : Obj} : ProductPath T A B → T.Corr A B
  | .nil A => T.identity A
  | .cons α rest => T.product α (evaluate rest)

/-- Accumulated XOR degree of a path. -/
def totalDegree {A B : Obj} : ProductPath T A B → Bool
  | .nil _ => false
  | .cons α rest => Bool.xor (T.degree α) (totalDegree rest)

/-- Evaluation preserves the exact accumulated path degree. -/
theorem degree_evaluate {A B : Obj} (p : ProductPath T A B) :
    T.degree (evaluate p) = totalDegree p := by
  induction p with
  | nil A => exact T.identity_degree A
  | cons α rest ih =>
      calc
        T.degree (evaluate (.cons α rest)) =
            Bool.xor (T.degree α) (T.degree (evaluate rest)) :=
          T.product_degree α (evaluate rest)
        _ = Bool.xor (T.degree α) (totalDegree rest) := by rw [ih]
        _ = totalDegree (.cons α rest) := rfl

end ProductPath

namespace FunctionFixture

variable {Obj : Type u} (K : Obj → Type v)

/-- Ordinary functions with an explicit parity tag provide a complete graded fixture. -/
structure TaggedFunction (A B : Obj) where
  parity : Bool
  map : K A → K B

/-- Tagged function composition realizes XOR grading. -/
def theory : Theory Obj where
  Corr A B := TaggedFunction K A B
  degree f := f.parity
  identity _ := ⟨false, id⟩
  product f g := ⟨Bool.xor f.parity g.parity, g.map ∘ f.map⟩
  identity_degree _ := rfl
  product_degree _ _ := rfl
  identity_product f := by
    cases f with
    | mk parity map => cases parity <;> rfl
  product_identity f := by
    cases f with
    | mk parity map => cases parity <;> rfl
  product_assoc f g h := by
    cases f with
    | mk pf ff =>
      cases g with
      | mk pg fg =>
        cases h with
        | mk ph fh =>
          cases pf <;> cases pg <;> cases ph <;> rfl

end FunctionFixture

end GRWTSK.Algebra.KTheory.GradedFormalKK
```
