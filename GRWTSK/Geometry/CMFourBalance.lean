/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External mathematical source for the CM four-label pattern:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file proves only the finite sign-count identity; it does not import the
manuscript's algebraicity theorem. -/
import Mathlib

/-!
# Four-label CM balance and Hodge index counting

The CM manuscript uses odd sign functions and the elementary balance relation

\`v₁ + v₂ = v₃ + v₄\`.

At a fixed embedding, the third and fourth tensor factors are taken at the
conjugate embedding. Oddness negates their signs. The finite sign identity below
shows that the four selected degree-one factors then contain exactly two
holomorphic indices.

This is the combinatorial type-count part only:
balance does not imply rational descent or algebraicity.
-/

set_option autoImplicit false

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMFourBalance

/-- The only numerical values admitted for a CM type sign. -/
def IsSign (z : ℤ) : Prop := z = 1 ∨ z = -1

/-- Indicator for the holomorphic index of a weight-one sign. -/
def holomorphicIndex (z : ℤ) : ℤ :=
  if z = 1 then 1 else 0

/-- Four signs satisfying \`a+b=c+d\` contribute exactly two holomorphic
indices to the tensor \`(a,b,-c,-d)\`. -/
theorem fourSign_balance_holomorphicCount
    {a b c d : ℤ}
    (ha : IsSign a) (hb : IsSign b) (hc : IsSign c) (hd : IsSign d)
    (hbal : a + b = c + d) :
    holomorphicIndex a + holomorphicIndex b +
      holomorphicIndex (-c) + holomorphicIndex (-d) = 2 := by
  rcases ha with rfl | rfl <;>
  rcases hb with rfl | rfl <;>
  rcases hc with rfl | rfl <;>
  rcases hd with rfl | rfl <;>
  norm_num [holomorphicIndex] at hbal ⊢

/-- An odd sign row relative to a chosen conjugation map. The involution law of
\`conj\` is not needed for the local count theorem; callers that require a CM
conjugation groupoid should carry that law separately. -/
structure OddSignRow (G : Type*) (conj : G → G) where
  value : G → ℤ
  isSign : ∀ g, IsSign (value g)
  odd : ∀ g, value (conj g) = - value g

/-- Pointwise four-label balance. -/
def FourBalance {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj) : Prop :=
  ∀ g, v₁.value g + v₂.value g = v₃.value g + v₄.value g

/-- The four-factor tensor associated to a balanced CM sign relation has two
holomorphic weight-one indices at every coordinate: the first two at \`g\` and
the last two at the conjugate coordinate.

This is the precise finite statement underlying the manuscript-level
all-conjugates \`(2,2)\` claim. The geometric identification of these indices
with actual Hodge lines is a separate interface. -/
theorem fourBalance_holomorphicCount
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (hbal : FourBalance v₁ v₂ v₃ v₄)
    (g : G) :
    holomorphicIndex (v₁.value g) +
      holomorphicIndex (v₂.value g) +
      holomorphicIndex (v₃.value (conj g)) +
      holomorphicIndex (v₄.value (conj g)) = 2 := by
  rw [v₃.odd, v₄.odd]
  exact fourSign_balance_holomorphicCount
    (v₁.isSign g) (v₂.isSign g) (v₃.isSign g) (v₄.isSign g) (hbal g)

/-- The all-coordinate two/two sign profile corresponding to the manuscript's
numerical Hodge-type count. This definition contains no geometric Hodge
structure and no algebraicity field. -/
def HasTwoTwoSignProfile
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj) : Prop :=
  ∀ g,
    holomorphicIndex (v₁.value g) +
      holomorphicIndex (v₂.value g) +
      holomorphicIndex (v₃.value (conj g)) +
      holomorphicIndex (v₄.value (conj g)) = 2

/-- Pointwise four-label balance implies the all-coordinate two/two sign
profile. This is the maximal local conclusion before identifying the signs with
actual embedding Hodge lines. -/
theorem fourBalance_twoTwoSignProfile
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (hbal : FourBalance v₁ v₂ v₃ v₄) :
    HasTwoTwoSignProfile v₁ v₂ v₃ v₄ := by
  intro g
  exact fourBalance_holomorphicCount v₁ v₂ v₃ v₄ hbal g

/-- Balance itself is stable under evaluation at any coordinate, but this
statement does not claim a group action, a Hodge realization, or algebraicity. -/
theorem fourBalance_at
    {G : Type*} {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (hbal : FourBalance v₁ v₂ v₃ v₄)
    (g : G) :
    v₁.value g + v₂.value g = v₃.value g + v₄.value g :=
  hbal g

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMFourBalance
