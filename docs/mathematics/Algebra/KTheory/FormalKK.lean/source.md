# Complete source: GRWTSK.Algebra.KTheory.FormalKK

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c0205b65d8e2ead433a60d3479317f37952111b` · SHA-256 `c09c7d34400b9456e90e3271ed4bdf3f7573b3ef9829aa76a0dd2e795b2dfca6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import GRWTSK.Algebra.KTheory.GrothendieckPort

namespace GRWTSK.Algebra.KTheory.FormalKK

universe u v w

/-- A purely formal bivariant composition theory.

An analytic Kasparov theory may instantiate this interface only after supplying its cycles,
equivalence relation, product, units, and proofs. -/
structure BivariantTheory (Obj : Type u) where
  Corr : Obj → Obj → Type v
  identity : ∀ A, Corr A A
  product : ∀ {A B C}, Corr A B → Corr B C → Corr A C
  identity_product :
    ∀ {A B} (α : Corr A B), product (identity A) α = α
  product_identity :
    ∀ {A B} (α : Corr A B), product α (identity B) = α
  product_assoc :
    ∀ {A B C D} (α : Corr A B) (β : Corr B C) (γ : Corr C D),
      product (product α β) γ = product α (product β γ)

/-- A two-sided invertible bivariant correspondence. -/
structure KKEquivalence {Obj : Type u} (T : BivariantTheory Obj) (A B : Obj) where
  forward : T.Corr A B
  backward : T.Corr B A
  forward_backward : T.product forward backward = T.identity A
  backward_forward : T.product backward forward = T.identity B

/-- An action of bivariant correspondences on a family of invariants. -/
structure BivariantAction
    {Obj : Type u} (T : BivariantTheory Obj) (K : Obj → Type w) where
  act : ∀ {A B}, T.Corr A B → K A → K B
  act_identity : ∀ {A} (x : K A), act (T.identity A) x = x
  act_product :
    ∀ {A B C} (α : T.Corr A B) (β : T.Corr B C) (x : K A),
      act (T.product α β) x = act β (act α x)

namespace KKEquivalence

variable {Obj : Type u}
variable {T : BivariantTheory Obj}
variable {K : Obj → Type w}
variable {A B : Obj}

/-- A genuine two-sided bivariant equivalence acts as an equivalence on every admitted
bivariant invariant. -/
def actionEquiv (E : KKEquivalence T A B) (ρ : BivariantAction T K) :
    K A ≃ K B where
  toFun := ρ.act E.forward
  invFun := ρ.act E.backward
  left_inv x := by
    calc
      ρ.act E.backward (ρ.act E.forward x) =
          ρ.act (T.product E.forward E.backward) x := by
            symm
            exact ρ.act_product E.forward E.backward x
      _ = ρ.act (T.identity A) x := by rw [E.forward_backward]
      _ = x := ρ.act_identity x
  right_inv y := by
    calc
      ρ.act E.forward (ρ.act E.backward y) =
          ρ.act (T.product E.backward E.forward) y := by
            symm
            exact ρ.act_product E.backward E.forward y
      _ = ρ.act (T.identity B) y := by rw [E.backward_forward]
      _ = y := ρ.act_identity y

end KKEquivalence

/-- A source-bound profile for a proposed analytic or algebraic KK realization.

The profile is data only; it does not construct a `BivariantTheory`. -/
structure KKProfile where
  variant : String
  sourceCategory : String
  cycleModel : String
  equivalenceRelation : String
  grading : String
  coefficients : String
  support : String
  equivariance : String
  productTheorem : String
  deriving DecidableEq, Repr

/-- The intended analytic Kasparov profile, without an asserted implementation. -/
def analyticKasparovProfile : KKProfile where
  variant := "KK"
  sourceCategory := "separable C*-algebras"
  cycleModel := "Kasparov cycles"
  equivalenceRelation := "homotopy/stabilization and operator homotopy at the declared scope"
  grading := "Z/2"
  coefficients := "complex unless separately selected"
  support := "nonunital and equivariant variants require separate profiles"
  equivariance := "none in this base profile"
  productTheorem := "Kasparov product with exact middle algebra"

/-- A formal product path retains the exact middle objects and cannot be composed with
a mismatched endpoint. -/
inductive ProductPath {Obj : Type u} (T : BivariantTheory.{u, v} Obj) :
    Obj → Obj → Type (max u v)
  | nil (A : Obj) : ProductPath T A A
  | cons {A B C : Obj} (α : T.Corr A B) (rest : ProductPath T B C) :
      ProductPath T A C

namespace ProductPath

variable {Obj : Type u} {T : BivariantTheory Obj}

/-- Evaluate a typed product path to one bivariant correspondence. -/
def evaluate {A B : Obj} : ProductPath T A B → T.Corr A B
  | .nil A => T.identity A
  | .cons α rest => T.product α (evaluate rest)

/-- Append two typed bivariant paths. -/
def append {A B C : Obj} :
    ProductPath T A B → ProductPath T B C → ProductPath T A C
  | .nil _, q => q
  | .cons α p, q => .cons α (append p q)

/-- Evaluation of a path append is the bivariant product. -/
theorem evaluate_append {A B C : Obj}
    (p : ProductPath T A B) (q : ProductPath T B C) :
    evaluate (append p q) = T.product (evaluate p) (evaluate q) := by
  induction p with
  | nil =>
      simpa [append, evaluate] using (T.identity_product (evaluate q)).symm
  | cons α p ih =>
      simp only [append, evaluate, ih]
      exact (T.product_assoc α (evaluate p) (evaluate q)).symm

end ProductPath

namespace FunctionFixture

variable {Obj : Type u} (K : Obj → Type v)

/-- A concrete fixture: ordinary functions form a bivariant composition theory. -/
def theory : BivariantTheory Obj where
  Corr A B := K A → K B
  identity _ := id
  product f g := g ∘ f
  identity_product f := by
    funext x
    rfl
  product_identity f := by
    funext x
    rfl
  product_assoc f g h := by
    funext x
    rfl

/-- The function theory acts on its underlying family by evaluation. -/
def action : BivariantAction (theory K) K where
  act f x := f x
  act_identity _ := rfl
  act_product _ _ _ := rfl

/-- An actual equivalence supplies a two-sided formal KK-equivalence in the function fixture. -/
def equivalence {A B : Obj} (e : K A ≃ K B) :
    KKEquivalence (theory K) A B where
  forward := fun x => e x
  backward := fun x => e.symm x
  forward_backward := by
    funext x
    exact e.symm_apply_apply x
  backward_forward := by
    funext x
    exact e.apply_symm_apply x

/-- The invariant equivalence recovered from the bivariant action is the original map. -/
theorem actionEquiv_apply {A B : Obj} (e : K A ≃ K B) (x : K A) :
    (KKEquivalence.actionEquiv (equivalence K e) (action K)) x = e x := rfl

end FunctionFixture

end GRWTSK.Algebra.KTheory.FormalKK
```
