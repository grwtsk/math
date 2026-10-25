# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Propositional.ConstructiveDerivation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35c69c33cfd8457d99ec78ccc048bb30db0948e9` · SHA-256 `00742a6abc679dfc826083fd1e5a5ee873dec4424ee91df3be9b58e2af5868ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Lean imports retain upstream authorship and licensing. -/
import Init

/-! A constructive propositional calculus and its semantic soundness.
This is a mathematical contract for finite derivations. It does not prove that
an external parser, search implementation, renderer or database refines it.
No completeness of bounded search or translation from prose is claimed. -/
set_option autoImplicit false

namespace GRWTSK.MathematicalLogic.Propositional.ConstructiveDerivation

inductive Formula where
  | atom : Nat → Formula
  | truth : Formula
  | falsity : Formula
  | conj : Formula → Formula → Formula
  | disj : Formula → Formula → Formula
  | impl : Formula → Formula → Formula

def Meaning (valuation : Nat → Prop) : Formula → Prop
  | .atom n => valuation n
  | .truth => True
  | .falsity => False
  | .conj p q => Meaning valuation p ∧ Meaning valuation q
  | .disj p q => Meaning valuation p ∨ Meaning valuation q
  | .impl p q => Meaning valuation p → Meaning valuation q

inductive Derives : List Formula → Formula → Prop where
  | assumption {Γ : List Formula} {p : Formula} : p ∈ Γ → Derives Γ p
  | truth {Γ : List Formula} : Derives Γ .truth
  | conjunction {Γ : List Formula} {p q : Formula} :
      Derives Γ p → Derives Γ q → Derives Γ (.conj p q)
  | left {Γ : List Formula} {p q : Formula} : Derives Γ (.conj p q) → Derives Γ p
  | right {Γ : List Formula} {p q : Formula} : Derives Γ (.conj p q) → Derives Γ q
  | implication {Γ : List Formula} {p q : Formula} :
      Derives (p :: Γ) q → Derives Γ (.impl p q)
  | application {Γ : List Formula} {p q : Formula} :
      Derives Γ (.impl p q) → Derives Γ p → Derives Γ q
  | inLeft {Γ : List Formula} {p q : Formula} : Derives Γ p → Derives Γ (.disj p q)
  | inRight {Γ : List Formula} {p q : Formula} : Derives Γ q → Derives Γ (.disj p q)
  | cases {Γ : List Formula} {p q r : Formula} :
      Derives Γ (.disj p q) → Derives (p :: Γ) r → Derives (q :: Γ) r → Derives Γ r
  | absurd {Γ : List Formula} {p : Formula} : Derives Γ .falsity → Derives Γ p

theorem sound {Γ : List Formula} {p : Formula} (proof : Derives Γ p)
    (valuation : Nat → Prop) (premises : ∀ q, q ∈ Γ → Meaning valuation q) :
    Meaning valuation p := by
  induction proof with
  | assumption h => exact premises _ h
  | truth => exact True.intro
  | conjunction _ _ ih₁ ih₂ => exact ⟨ih₁ premises, ih₂ premises⟩
  | left _ ih => exact (ih premises).1
  | right _ ih => exact (ih premises).2
  | implication _ ih =>
      intro hp
      apply ih
      intro q hq
      cases hq with
      | head => exact hp
      | tail _ h => exact premises q h
  | application _ _ ih₁ ih₂ => exact (ih₁ premises) (ih₂ premises)
  | inLeft _ ih => exact Or.inl (ih premises)
  | inRight _ ih => exact Or.inr (ih premises)
  | cases _ _ _ ih₁ ih₂ ih₃ =>
      cases ih₁ premises with
      | inl hp =>
          apply ih₂
          intro q hq
          cases hq with
          | head => exact hp
          | tail _ h => exact premises q h
      | inr hp =>
          apply ih₃
          intro q hq
          cases hq with
          | head => exact hp
          | tail _ h => exact premises q h
  | absurd _ ih => exact False.elim (ih premises)

theorem closed_sound {p : Formula} (proof : Derives [] p) (valuation : Nat → Prop) :
    Meaning valuation p :=
  sound proof valuation (by intro q h; cases h)

theorem no_closed_falsity : ¬ Derives [] .falsity := by
  intro proof
  exact closed_sound proof (fun _ => False)

end GRWTSK.MathematicalLogic.Propositional.ConstructiveDerivation
```
