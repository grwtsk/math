# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuous.Variantaf330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48e4a1c3c27635d4d8a7e340d8e180b7ee934809` · SHA-256 `af330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.EdgeRelaxation.Tree

namespace Boolean.Cube

universe u

namespace EdgeRelaxation

/-- Dyadic truth values used by continuous relaxations. -/
structure UnitInterval where
  numerator : Nat
  exponent : Nat
deriving Repr, DecidableEq

namespace UnitInterval

/-- Denominator represented by the dyadic exponent. -/
def denominator (x : UnitInterval) : Nat :=
  2 ^ x.exponent

/-- The continuous truth value `0`. -/
def zero : UnitInterval where
  numerator := 0
  exponent := 0

/-- The continuous truth value `1`. -/
def one : UnitInterval where
  numerator := 1
  exponent := 0

/-- Embed a crisp Boolean value into the unit interval. -/
def ofBool : Bool → UnitInterval
  | false => zero
  | true => one

/-- Dyadic addition. -/
def add (x y : UnitInterval) : UnitInterval where
  numerator :=
    x.numerator * 2 ^ y.exponent +
      y.numerator * 2 ^ x.exponent
  exponent := x.exponent + y.exponent

/-- Saturating dyadic subtraction. -/
def sub (x y : UnitInterval) : UnitInterval where
  numerator :=
    x.numerator * 2 ^ y.exponent -
      y.numerator * 2 ^ x.exponent
  exponent := x.exponent + y.exponent

/-- Dyadic multiplication. -/
def mul (x y : UnitInterval) : UnitInterval where
  numerator := x.numerator * y.numerator
  exponent := x.exponent + y.exponent

/-- Continuous complement `1 - x`, with saturating numerator arithmetic. -/
def compl (x : UnitInterval) : UnitInterval where
  numerator := 2 ^ x.exponent - x.numerator
  exponent := x.exponent

/-- Cross-multiplied dyadic comparison. -/
def leq (x y : UnitInterval) : Bool :=
  decide
    (x.numerator * 2 ^ y.exponent ≤
      y.numerator * 2 ^ x.exponent)

/-- Dyadic minimum. -/
def min (x y : UnitInterval) : UnitInterval :=
  if leq x y then x else y

/-- Dyadic maximum. -/
def max (x y : UnitInterval) : UnitInterval :=
  if leq x y then y else x

@[simp] theorem denominator_zero :
    denominator zero = 1 := rfl

@[simp] theorem denominator_one :
    denominator one = 1 := rfl

@[simp] theorem ofBool_false :
    ofBool false = zero := rfl

@[simp] theorem ofBool_true :
    ofBool true = one := rfl

@[simp] theorem compl_zero :
    compl zero = one := rfl

@[simp] theorem compl_one :
    compl one = zero := rfl

end UnitInterval

namespace ContinuousTree

/-- Operator package for continuous-valued Boolean-tree interpretation. -/
structure Operators (R : Type u) where
  zero : R
  one : R
  compl : R → R
  conj : R → R → R
  disj : R → R → R
  impl : R → R → R
  eqv : R → R → R
  nand : R → R → R

/-- A continuous valuation assigns a truth value to each atom. -/
abbrev Valuation (α : Type u) (R : Type u) :=
  α → R

/-- Evaluate a Boolean tree in a continuous operator package. -/
def eval
    (ops : Operators R)
    (ρ : Valuation α R) :
    Tree α → R
  | .var a => ρ a
  | .falsum => ops.zero
  | .truth => ops.one
  | .neg p => ops.compl (eval ops ρ p)
  | .conj p q => ops.conj (eval ops ρ p) (eval ops ρ q)
  | .disj p q => ops.disj (eval ops ρ p) (eval ops ρ q)
  | .impl p q => ops.impl (eval ops ρ p) (eval ops ρ q)
  | .eqv p q => ops.eqv (eval ops ρ p) (eval ops ρ q)
  | .nand p q => ops.nand (eval ops ρ p) (eval ops ρ q)

@[simp] theorem eval_var
    (ops : Operators R)
    (ρ : Valuation α R)
    (a : α) :
    eval ops ρ (.var a) = ρ a := rfl

@[simp] theorem eval_falsum
    (ops : Operators R)
    (ρ : Valuation α R) :
    eval ops ρ (.falsum : Tree α) = ops.zero := rfl

@[simp] theorem eval_truth
    (ops : Operators R)
    (ρ : Valuation α R) :
    eval ops ρ (.truth : Tree α) = ops.one := rfl

end ContinuousTree

/-- Lukasiewicz-style operations on dyadic truth values. -/
def lukasiewiczOperators :
    EdgeRelaxation.ContinuousTree.Operators EdgeRelaxation.UnitInterval where
  zero := EdgeRelaxation.UnitInterval.zero
  one := EdgeRelaxation.UnitInterval.one
  compl := EdgeRelaxation.UnitInterval.compl
  conj := fun x y =>
    EdgeRelaxation.UnitInterval.sub
      (EdgeRelaxation.UnitInterval.add x y)
      EdgeRelaxation.UnitInterval.one
  disj := fun x y =>
    EdgeRelaxation.UnitInterval.min
      EdgeRelaxation.UnitInterval.one
      (EdgeRelaxation.UnitInterval.add x y)
  impl := fun x y =>
    EdgeRelaxation.UnitInterval.min
      EdgeRelaxation.UnitInterval.one
      (EdgeRelaxation.UnitInterval.add
        (EdgeRelaxation.UnitInterval.compl x) y)
  eqv := fun x y =>
    EdgeRelaxation.UnitInterval.min
      (EdgeRelaxation.UnitInterval.min
        EdgeRelaxation.UnitInterval.one
        (EdgeRelaxation.UnitInterval.add
          (EdgeRelaxation.UnitInterval.compl x) y))
      (EdgeRelaxation.UnitInterval.min
        EdgeRelaxation.UnitInterval.one
        (EdgeRelaxation.UnitInterval.add
          (EdgeRelaxation.UnitInterval.compl y) x))
  nand := fun x y =>
    EdgeRelaxation.UnitInterval.compl
      (EdgeRelaxation.UnitInterval.sub
        (EdgeRelaxation.UnitInterval.add x y)
        EdgeRelaxation.UnitInterval.one)

/-- Product/probabilistic operations on dyadic truth values. -/
def probabilisticOperators :
    EdgeRelaxation.ContinuousTree.Operators EdgeRelaxation.UnitInterval where
  zero := EdgeRelaxation.UnitInterval.zero
  one := EdgeRelaxation.UnitInterval.one
  compl := EdgeRelaxation.UnitInterval.compl
  conj := EdgeRelaxation.UnitInterval.mul
  disj := fun x y =>
    EdgeRelaxation.UnitInterval.sub
      (EdgeRelaxation.UnitInterval.add x y)
      (EdgeRelaxation.UnitInterval.mul x y)
  impl := fun x y =>
    EdgeRelaxation.UnitInterval.sub
      (EdgeRelaxation.UnitInterval.add
        (EdgeRelaxation.UnitInterval.compl x) y)
      (EdgeRelaxation.UnitInterval.mul
        (EdgeRelaxation.UnitInterval.compl x) y)
  eqv := fun x y =>
    EdgeRelaxation.UnitInterval.add
      (EdgeRelaxation.UnitInterval.mul x y)
      (EdgeRelaxation.UnitInterval.mul
        (EdgeRelaxation.UnitInterval.compl x)
        (EdgeRelaxation.UnitInterval.compl y))
  nand := fun x y =>
    EdgeRelaxation.UnitInterval.compl
      (EdgeRelaxation.UnitInterval.mul x y)

/-- Evaluate a tree with Lukasiewicz-style dyadic operations. -/
def evalLukasiewicz
    (ρ : EdgeRelaxation.ContinuousTree.Valuation
      α EdgeRelaxation.UnitInterval)
    (t : Tree α) :
    EdgeRelaxation.UnitInterval :=
  EdgeRelaxation.ContinuousTree.eval
    EdgeRelaxation.lukasiewiczOperators ρ t

/-- Evaluate a tree with product/probabilistic dyadic operations. -/
def evalProbabilistic
    (ρ : EdgeRelaxation.ContinuousTree.Valuation
      α EdgeRelaxation.UnitInterval)
    (t : Tree α) :
    EdgeRelaxation.UnitInterval :=
  EdgeRelaxation.ContinuousTree.eval
    EdgeRelaxation.probabilisticOperators ρ t

@[simp] theorem lukasiewicz_compl_ofBool
    (b : Bool) :
    EdgeRelaxation.lukasiewiczOperators.compl
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (!b) := by
  cases b <;> decide

@[simp] theorem lukasiewicz_conj_ofBool
    (a b : Bool) :
    EdgeRelaxation.lukasiewiczOperators.conj
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (a && b) := by
  cases a <;> cases b <;> decide

@[simp] theorem lukasiewicz_disj_ofBool
    (a b : Bool) :
    EdgeRelaxation.lukasiewiczOperators.disj
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (a || b) := by
  cases a <;> cases b <;> decide

@[simp] theorem lukasiewicz_impl_ofBool
    (a b : Bool) :
    EdgeRelaxation.lukasiewiczOperators.impl
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (!a || b) := by
  cases a <;> cases b <;> decide

@[simp] theorem lukasiewicz_eqv_ofBool
    (a b : Bool) :
    EdgeRelaxation.lukasiewiczOperators.eqv
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (a == b) := by
  cases a <;> cases b <;> decide

@[simp] theorem lukasiewicz_nand_ofBool
    (a b : Bool) :
    EdgeRelaxation.lukasiewiczOperators.nand
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (!(a && b)) := by
  cases a <;> cases b <;> decide

@[simp] theorem probabilistic_compl_ofBool
    (b : Bool) :
    EdgeRelaxation.probabilisticOperators.compl
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (!b) := by
  cases b <;> decide

@[simp] theorem probabilistic_conj_ofBool
    (a b : Bool) :
    EdgeRelaxation.probabilisticOperators.conj
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (a && b) := by
  cases a <;> cases b <;> decide

@[simp] theorem probabilistic_disj_ofBool
    (a b : Bool) :
    EdgeRelaxation.probabilisticOperators.disj
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (a || b) := by
  cases a <;> cases b <;> decide

@[simp] theorem probabilistic_impl_ofBool
    (a b : Bool) :
    EdgeRelaxation.probabilisticOperators.impl
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (!a || b) := by
  cases a <;> cases b <;> decide

@[simp] theorem probabilistic_eqv_ofBool
    (a b : Bool) :
    EdgeRelaxation.probabilisticOperators.eqv
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (a == b) := by
  cases a <;> cases b <;> decide

@[simp] theorem probabilistic_nand_ofBool
    (a b : Bool) :
    EdgeRelaxation.probabilisticOperators.nand
        (EdgeRelaxation.UnitInterval.ofBool a)
        (EdgeRelaxation.UnitInterval.ofBool b) =
      EdgeRelaxation.UnitInterval.ofBool (!(a && b)) := by
  cases a <;> cases b <;> decide

theorem evalLukasiewicz_ofBool
    (ν : Valuation α)
    (t : Tree α) :
    EdgeRelaxation.evalLukasiewicz
        (fun a => EdgeRelaxation.UnitInterval.ofBool (ν a)) t =
      EdgeRelaxation.UnitInterval.ofBool (Tree.eval ν t) := by
  induction t with
  | var _a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih =>
      unfold EdgeRelaxation.evalLukasiewicz at ih ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ih]
  | conj p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | disj p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | impl p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | nand p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]

theorem evalProbabilistic_ofBool
    (ν : Valuation α)
    (t : Tree α) :
    EdgeRelaxation.evalProbabilistic
        (fun a => EdgeRelaxation.UnitInterval.ofBool (ν a)) t =
      EdgeRelaxation.UnitInterval.ofBool (Tree.eval ν t) := by
  induction t with
  | var _a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih =>
      unfold EdgeRelaxation.evalProbabilistic at ih ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ih]
  | conj p q ihp ihq =>
      unfold EdgeRelaxation.evalProbabilistic at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | disj p q ihp ihq =>
      unfold EdgeRelaxation.evalProbabilistic at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | impl p q ihp ihq =>
      unfold EdgeRelaxation.evalProbabilistic at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq =>
      unfold EdgeRelaxation.evalProbabilistic at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | nand p q ihp ihq =>
      unfold EdgeRelaxation.evalProbabilistic at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]

end EdgeRelaxation

end Boolean.Cube
```
