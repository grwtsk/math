# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lintsimp.Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `969d556f493d770df1ac1ecfa39e51438def6c1e` · SHA-256 `17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint
open Std.Tactic.Lint
set_option linter.missingDocs false

def f : Nat := 0
def g : Nat := 0
def h : Nat := 0
@[simp] theorem fg : f = g := rfl
@[simp] theorem fh : f = h := rfl
#eval do guard (← [``fg, ``fh].anyM fun n => return (← simpNF.test n).isSome)

@[simp] theorem and_comm : a ∧ b ↔ b ∧ a := And.comm
#eval do guard (← simpComm.test ``and_comm).isSome

@[simp] theorem Prod.mk_fst : (a, b).1 = id a := rfl
#eval do guard (← simpVarHead.test ``Prod.mk_fst).isSome

def SemiconjBy [Mul M] (a x y : M) : Prop :=
  a * x = y * a

structure MulOpposite (α : Type u) : Type u where
  op :: unop : α

postfix:max "ᵐᵒᵖ" => MulOpposite

namespace MulOpposite

instance [Mul α] : Mul αᵐᵒᵖ where mul x y := op (unop y * unop x)

@[simp]
theorem unop_inj {x y : αᵐᵒᵖ} : unop x = unop y ↔ x = y := by
  cases x; cases y; simp

@[simp]
theorem semiconj_by_unop [Mul α] {a x y : αᵐᵒᵖ} :
    SemiconjBy (unop a) (unop y) (unop x) ↔ SemiconjBy a x y := sorry

#eval do guard (← simpComm.test ``unop_inj).isNone
#eval do guard (← simpComm.test ``semiconj_by_unop).isNone

end MulOpposite
```
