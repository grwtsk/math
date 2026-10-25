# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypeTheory.Fixtures.LeanTypingConformanceFixtures

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c1cfb461094fb041ec113942dd5df0734d0fd90` · SHA-256 `4931a2324f6425934e2d31df2bcfaa877dcc47567c9150aa0157969f5742f522`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-! Authored observer controls, not research or accepted theorems. The intentional
axiom and placeholder test that proof gaps survive the typing pipeline. -/
namespace TypingConformanceFixture
universe u v

def binders {α : Type u} (x : α) {y : α} [Inhabited α] : α := x
def changedBinder {α : Type u} {x : α} (y : α) [Inhabited α] : α := x
def ordered (first : Nat) (_second : Bool) : Nat := first
def reordered (_second : Bool) (first : Nat) : Nat := first
def classDefault {α : Type u} [Inhabited α] : α := default
def asInt (n : Nat) : Int := n
def asNat (n : Nat) : Nat := n
theorem withHypothesis (p : Prop) (h : p) : p := h
theorem withExtraHypothesis (p q : Prop) (h : p) (_hq : q) : p := h
theorem conclusionTrue : True := True.intro
theorem conclusionEquality : (0 : Nat) = 0 := rfl
def samePrintedBodyStatement : Nat := 7
def changedBodySameStatement : Nat := 8

section
variable {α : Type u} (x : α)
include x
theorem sectionCapture : x = x := rfl
local notation "SELF" => x
theorem notationCapture : SELF = x := rfl
set_option maxRecDepth 1024 in
theorem optionCapture : x = x := rfl
end

namespace Left
def same : Nat := 1
end Left
namespace Right
def same : Nat := 2
end Right
def resolvedLeft : Nat := Left.same
def resolvedRight : Nat := Right.same

private def privateWitness : Nat := 13
def privateConsumer : Nat := privateWitness
def recursive : Nat → Nat
  | 0 => 0
  | n + 1 => recursive n + 1

inductive Owner where
  | empty
  | step (value : Nat) (prior : Owner)

axiom explicitInput : False
theorem conditionalFromInput : False := explicitInput
theorem placeholder : True := by sorry
theorem unrelatedComplete : True := True.intro
end TypingConformanceFixture
```
