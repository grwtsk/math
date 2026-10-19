import Folder.Boolean.Syntax

/-!
# Folder.Boolean.Semantics

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.semantics
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Boolean

def Env := Nat → Bool

namespace BoolExpr

def eval : BoolExpr → Env → Bool
  | var n, ρ => ρ n
  | tru, _ => true
  | fls, _ => false
  | not e, ρ => ! eval e ρ
  | and a b, ρ => eval a ρ && eval b ρ
  | or a b, ρ => eval a ρ || eval b ρ
  | xor a b, ρ => Bool.xor (eval a ρ) (eval b ρ)

@[simp]
theorem eval_var (n : Nat) (ρ : Env) :
    (var n).eval ρ = ρ n :=
  rfl

@[simp]
theorem eval_tru (ρ : Env) :
    tru.eval ρ = true :=
  rfl

@[simp]
theorem eval_fls (ρ : Env) :
    fls.eval ρ = false :=
  rfl

@[simp]
theorem eval_not (e : BoolExpr) (ρ : Env) :
    (not e).eval ρ = ! e.eval ρ :=
  rfl

@[simp]
theorem eval_and (a b : BoolExpr) (ρ : Env) :
    (and a b).eval ρ = (a.eval ρ && b.eval ρ) :=
  rfl

@[simp]
theorem eval_or (a b : BoolExpr) (ρ : Env) :
    (or a b).eval ρ = (a.eval ρ || b.eval ρ) :=
  rfl

@[simp]
theorem eval_xor (a b : BoolExpr) (ρ : Env) :
    (xor a b).eval ρ = Bool.xor (a.eval ρ) (b.eval ρ) :=
  rfl

end BoolExpr

end Boolean
end Folder
