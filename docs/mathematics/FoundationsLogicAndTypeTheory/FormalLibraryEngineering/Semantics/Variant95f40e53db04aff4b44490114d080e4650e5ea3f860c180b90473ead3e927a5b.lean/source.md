# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3999e157c7b019262e1df611c9de2aab2032be7e` · SHA-256 `95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
