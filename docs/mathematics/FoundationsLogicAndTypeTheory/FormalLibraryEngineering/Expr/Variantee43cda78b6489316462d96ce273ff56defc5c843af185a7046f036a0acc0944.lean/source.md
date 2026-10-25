# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variantee43cda78b6489316462d96ce273ff56defc5c843af185a7046f036a0acc0944

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84efba4ecb2f9b79b84a5e1252f8d920bc20aa0c` · SHA-256 `ee43cda78b6489316462d96ce273ff56defc5c843af185a7046f036a0acc0944`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Lean.Expr.ReplaceRec
import Mathlib.Data.Nat.Notation
import Lean.Elab.Command

open Lean Meta Elab Command

section replaceRec
/-! Test the implementation of `Expr.replaceRec` -/

/-- Reorder the last two arguments of every function in the expression.
  (The resulting term will generally not be a type-correct) -/
def reorderLastArguments : Expr → Expr :=
  Expr.replaceRec fun r e ↦
    let n := e.getAppNumArgs
    if n ≥ 2 then
      mkAppN e.getAppFn <| e.getAppArgs.map r |>.swapIfInBounds (n - 1) (n - 2)
    else
      none

def foo (f : ℕ → ℕ → ℕ) (n₁ n₂ n₃ n₄ : ℕ) : ℕ := f (f n₁ n₂) (f n₃ n₄)
def bar (f : ℕ → ℕ → ℕ) (n₁ n₂ n₃ n₄ : ℕ) : ℕ := f (f n₄ n₃) (f n₂ n₁)

set_option pp.unicode.fun true in
/--
info: before: fun f n₁ n₂ n₃ n₄ ↦ f (f n₁ n₂) (f n₃ n₄)
---
info: after: fun f n₁ n₂ n₃ n₄ ↦ f (f n₄ n₃) (f n₂ n₁)
---
info: new type: (ℕ → ℕ → ℕ) → ℕ → ℕ → ℕ → ℕ → ℕ
---
info: after: fun f n₁ n₂ n₃ n₄ ↦ f (f n₄ n₃) (f n₂ n₁)
-/
#guard_msgs in
run_cmd liftTermElabM <| do
  let d ← getConstInfo `foo
  let e := d.value!
  logInfo m!"before: {e}"
  let e := reorderLastArguments e
  logInfo m!"after: {e}"
  let t ← Meta.inferType e
  logInfo m!"new type: {t}"
  let d ← getConstInfo `bar
  logInfo m!"after: {d.value!}"
  guard <| e == d.value!

end replaceRec
```
