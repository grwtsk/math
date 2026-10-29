/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction and authorship: grwtsk contributors.
Formalization and source development with AI assistance. -/
import Init

/-!
# Typed natural-number and finite-list equational rewriting

The arithmetic operations are on `Nat`, not an arbitrary ring. The list laws
preserve order; append is not commutative. Each contextual rewrite is sound,
including reverse-directed steps and finite transitive composition. This models
the closed rewrite rules, not a refinement proof of an external search engine.
The finite-list laws extend the constructive finite-list material in GRWTSK.
-/
set_option autoImplicit false
namespace GRWTSK.Algebra.UniversalAlgebra.Equational.TypedRewriting

inductive Domain where
  | nat | list

inductive Expr : Domain → Type where
  | natVar : Nat → Expr .nat
  | lit : Nat → Expr .nat
  | add : Expr .nat → Expr .nat → Expr .nat
  | mul : Expr .nat → Expr .nat → Expr .nat
  | listVar : Nat → Expr .list
  | nil : Expr .list
  | append : Expr .list → Expr .list → Expr .list
  | reverse : Expr .list → Expr .list

abbrev Meaning (α : Type) : Domain → Type
  | .nat => Nat
  | .list => List α

def eval {α : Type} (numbers : Nat → Nat) (lists : Nat → List α) :
    {d : Domain} → Expr d → Meaning α d
  | _, .natVar i => numbers i
  | _, .lit n => n
  | _, .add a b => eval numbers lists a + eval numbers lists b
  | _, .mul a b => eval numbers lists a * eval numbers lists b
  | _, .listVar i => lists i
  | _, .nil => []
  | _, .append a b => eval numbers lists a ++ eval numbers lists b
  | _, .reverse a => (eval numbers lists a).reverse

open Expr in
inductive Step : {d : Domain} → Expr d → Expr d → Prop where
  | refl {d} (a : Expr d) : Step a a
  | symm {d} {a b : Expr d} : Step a b → Step b a
  | trans {d} {a b c : Expr d} : Step a b → Step b c → Step a c
  | addLeft {a b : Expr .nat} (c) : Step a b → Step (add a c) (add b c)
  | addRight {a b : Expr .nat} (c) : Step a b → Step (add c a) (add c b)
  | mulLeft {a b : Expr .nat} (c) : Step a b → Step (mul a c) (mul b c)
  | mulRight {a b : Expr .nat} (c) : Step a b → Step (mul c a) (mul c b)
  | appendLeft {a b : Expr .list} (c) : Step a b → Step (append a c) (append b c)
  | appendRight {a b : Expr .list} (c) : Step a b → Step (append c a) (append c b)
  | reverseCongr {a b : Expr .list} : Step a b → Step (reverse a) (reverse b)
  | addComm (a b) : Step (add a b) (add b a)
  | mulComm (a b) : Step (mul a b) (mul b a)
  | addAssoc (a b c) : Step (add (add a b) c) (add a (add b c))
  | mulAssoc (a b c) : Step (mul (mul a b) c) (mul a (mul b c))
  | zeroAdd (a) : Step (add (lit 0) a) a
  | addZero (a) : Step (add a (lit 0)) a
  | oneMul (a) : Step (mul (lit 1) a) a
  | mulOne (a) : Step (mul a (lit 1)) a
  | zeroMul (a) : Step (mul (lit 0) a) (lit 0)
  | mulZero (a) : Step (mul a (lit 0)) (lit 0)
  | addMul (a b c) : Step (mul (add a b) c) (add (mul a c) (mul b c))
  | mulAdd (a b c) : Step (mul a (add b c)) (add (mul a b) (mul a c))
  | computeAdd (n m) : Step (add (lit n) (lit m)) (lit (n + m))
  | computeMul (n m) : Step (mul (lit n) (lit m)) (lit (n * m))
  | nilAppend (a) : Step (append nil a) a
  | appendNil (a) : Step (append a nil) a
  | appendAssoc (a b c) : Step (append (append a b) c) (append a (append b c))
  | reverseAppend (a b) : Step (reverse (append a b)) (append (reverse b) (reverse a))
  | reverseReverse (a) : Step (reverse (reverse a)) a
  | reverseNil : Step (reverse nil) nil

theorem sound {α : Type} (numbers : Nat → Nat) (lists : Nat → List α)
    {d : Domain} {a b : Expr d} (step : Step a b) :
    eval numbers lists a = eval numbers lists b := by
  induction step with
  | refl => rfl
  | symm _ ih => exact ih.symm
  | trans _ _ ih₁ ih₂ => exact ih₁.trans ih₂
  | addLeft c _ ih => exact congrArg (fun n => n + eval numbers lists c) ih
  | addRight c _ ih => exact congrArg (fun n => eval numbers lists c + n) ih
  | mulLeft c _ ih => exact congrArg (fun n => n * eval numbers lists c) ih
  | mulRight c _ ih => exact congrArg (fun n => eval numbers lists c * n) ih
  | appendLeft c _ ih => exact congrArg (fun xs => xs ++ eval numbers lists c) ih
  | appendRight c _ ih => exact congrArg (fun xs => eval numbers lists c ++ xs) ih
  | reverseCongr _ ih => exact congrArg List.reverse ih
  | addComm a b => exact Nat.add_comm _ _
  | mulComm a b => exact Nat.mul_comm _ _
  | addAssoc a b c => exact Nat.add_assoc _ _ _
  | mulAssoc a b c => exact Nat.mul_assoc _ _ _
  | zeroAdd a => exact Nat.zero_add _
  | addZero a => exact Nat.add_zero _
  | oneMul a => exact Nat.one_mul _
  | mulOne a => exact Nat.mul_one _
  | zeroMul a => exact Nat.zero_mul _
  | mulZero a => exact Nat.mul_zero _
  | addMul a b c => exact Nat.add_mul _ _ _
  | mulAdd a b c => exact Nat.mul_add _ _ _
  | computeAdd => rfl
  | computeMul => rfl
  | nilAppend a => exact List.nil_append _
  | appendNil a => exact List.append_nil _
  | appendAssoc a b c => exact List.append_assoc _ _ _
  | reverseAppend a b => exact List.reverse_append
  | reverseReverse a => exact List.reverse_reverse _
  | reverseNil => rfl

theorem append_does_not_commute :
    ¬ (([0] : List Nat) ++ [1] = [1] ++ [0]) := by
  intro impossible
  have head := congrArg (fun xs => xs.head?) impossible
  cases head

end GRWTSK.Algebra.UniversalAlgebra.Equational.TypedRewriting
