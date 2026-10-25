# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LintSimpNF.Variantfa3bca64da5c65f7937d22f67402695b992ea9eb0f1deec9f7a9e15213e122ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c27ba5cb49b033fc68c77fb9aad25ddb03a32eb` · SHA-256 `fa3bca64da5c65f7937d22f67402695b992ea9eb0f1deec9f7a9e15213e122ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint

set_option linter.missingDocs false

protected def Sum.elim {α β γ : Sort _} (f : α → γ) (g : β → γ) : Sum α β → γ :=
  fun x => Sum.casesOn x f g

structure Equiv (α : Sort _) (β : Sort _) where
  toFun : α → β
  invFun : β → α

infixl:25 " ≃ " => Equiv

namespace Equiv

instance : CoeFun (α ≃ β) fun _ => α → β := ⟨toFun⟩

protected def symm (e : α ≃ β) : β ≃ α := ⟨e.invFun, e.toFun⟩

def sumCompl {α : Type _} (p : α → Prop) [DecidablePred p] :
    Sum { a // p a } { a // ¬p a } ≃ α where
  toFun := Sum.elim Subtype.val Subtype.val
  invFun a := if h : p a then Sum.inl ⟨a, h⟩ else Sum.inr ⟨a, h⟩

@[simp]
theorem sumCompl_apply_symm_of_pos (p : α → Prop) [DecidablePred p] (a : α) (h : p a) :
    (sumCompl p).symm a = Sum.inl ⟨a, h⟩ :=
  dif_pos h

#lint- only simpNF
```
