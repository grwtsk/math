# Complete source: GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionSquarefreeMidpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cec102afe5942dda804b8a4464f126426558692` · SHA-256 `e5812750dbeb9b680fa1c93c03ab29779c1df66d643be2a78b45cae074dec737`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #532. Direct stacked parent: draft PR #530 at
`9b07fdb5f287dbc56839f806badf275c39e88f28`.
-/
import GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionThreePointProgression
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# Squarefree-midpoint form of the endpoint cross-collision progression

The exact lower-order collision term from the parent is

`mu(x) * mu(x+h)^2 * mu(x+2h)`.

Mathlib proves that the square of the integer Möbius function is exactly the
indicator of squarefreeness.  This module transfers that identity to the
repository's existing real-valued Möbius wrapper and rewrites the collision
term as a signed two-endpoint correlation filtered by a squarefree midpoint.

No squarefree-density approximation, divisor-square expansion, or correlation
estimate is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Real-valued squarefree indicator used only as an exact presentation of
`moebiusReal n ^ 2`. -/
def squarefreeIndicatorReal (n : ℕ) : ℝ :=
  if Squarefree n then 1 else 0

/-- The repository's actual real Möbius square is exactly the squarefree
indicator.  This is the real-cast form of Mathlib's
`ArithmeticFunction.moebius_sq`. -/
theorem moebiusReal_sq_eq_squarefreeIndicator
    (n : ℕ) :
    moebiusReal n ^ 2 = squarefreeIndicatorReal n := by
  unfold moebiusReal squarefreeIndicatorReal
  have h : (ArithmeticFunction.moebius n : ℤ) ^ 2 =
      (if Squarefree n then 1 else 0) := ArithmeticFunction.moebius_sq
  by_cases hs : Squarefree n
  · simp only [if_pos hs] at h ⊢
    exact_mod_cast h
  · simp only [if_neg hs] at h ⊢
    exact_mod_cast h

/-- The signed endpoint product left after the squarefree midpoint selector is
removed from the coefficient. -/
def mertensSquarefreeMidpointEndpointProduct
    (h a : ℕ) : ℝ :=
  moebiusReal (a + 1) *
    moebiusReal (a + 1 + h + h)

/-- Exact pointwise replacement of the midpoint Möbius square by the
squarefree predicate. -/
theorem mertensThreePointProgressionTerm_eq_squarefreeMidpoint
    (h a : ℕ) :
    mertensThreePointProgressionTerm h a =
      if Squarefree (a + 1 + h) then
        mertensSquarefreeMidpointEndpointProduct h a
      else 0 := by
  unfold mertensThreePointProgressionTerm
    mertensSquarefreeMidpointEndpointProduct
  rw [moebiusReal_sq_eq_squarefreeIndicator]
  unfold squarefreeIndicatorReal
  by_cases hs : Squarefree (a + 1 + h)
  · simp [hs]
  · simp [hs]

/-- Exact base indices whose midpoint is squarefree. -/
def mertensEndpointCrossCollisionSquarefreeMidpointBaseSet
    (b n : ℕ) : Finset ℕ :=
  (mertensEndpointCrossCollisionBaseSet b n).filter
    (fun a => Squarefree (a + 1 + (b - n)))

/-- One endpoint/prefix progression sum is exactly the signed two-endpoint
correlation restricted to squarefree midpoints. -/
theorem sum_mertensThreePointProgression_eq_squarefreeMidpointFilter
    (b n : ℕ) :
    (∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
      mertensThreePointProgressionTerm (b - n) a) =
      ∑ a ∈ mertensEndpointCrossCollisionSquarefreeMidpointBaseSet b n,
        mertensSquarefreeMidpointEndpointProduct (b - n) a := by
  unfold mertensEndpointCrossCollisionSquarefreeMidpointBaseSet
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro a _ha
  rw [mertensThreePointProgressionTerm_eq_squarefreeMidpoint]

/-- Complete endpoint cross-collision observable written as a squarefree-
midpoint filtered signed two-endpoint correlation.  The factor two still pays
the two collision orientations. -/
def mertensEndpointCrossCollisionSquarefreeMidpointEnergy
    (b : ℕ) : ℝ :=
  2 * ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCollisionSquarefreeMidpointBaseSet b n,
      mertensSquarefreeMidpointEndpointProduct (b - n) a

/-- Exact endpoint-level equality with the parent three-point progression
presentation. -/
theorem mertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint
    (b : ℕ) :
    mertensEndpointCrossCollisionProgressionEnergy b =
      mertensEndpointCrossCollisionSquarefreeMidpointEnergy b := by
  unfold mertensEndpointCrossCollisionProgressionEnergy
    mertensEndpointCrossCollisionSquarefreeMidpointEnergy
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  exact
    sum_mertensThreePointProgression_eq_squarefreeMidpointFilter b n

/-- Direct exact equality with the original endpoint cross-collision stratum. -/
theorem mertensEndpointFibreCrossCollisionEnergy_eq_squarefreeMidpoint
    (b : ℕ) :
    mertensEndpointFibreCrossCollisionEnergy b =
      mertensEndpointCrossCollisionSquarefreeMidpointEnergy b := by
  rw [mertensEndpointFibreCrossCollisionEnergy_eq_progression,
    mertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint]

/-- RH-facing reciprocal endpoint-weighted squarefree-midpoint correlation
observable. -/
def weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointCrossCollisionSquarefreeMidpointEnergy b

/-- Exact weighted equality with the inherited cross-collision contribution. -/
theorem weightedMertensEndpointCrossCollisionEnergy_eq_squarefreeMidpoint
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionEnergy j =
      weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy j := by
  unfold weightedMertensEndpointCrossCollisionEnergy
    weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro b _hb
  rw [mertensEndpointFibreCrossCollisionEnergy_eq_squarefreeMidpoint]

/-- Exact weighted equality with the parent progression observable. -/
theorem weightedMertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionProgressionEnergy j =
      weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy j := by
  rw [← weightedMertensEndpointCrossCollisionEnergy_eq_progression,
    weightedMertensEndpointCrossCollisionEnergy_eq_squarefreeMidpoint]

/-- Source-facing all-scale condition on the exact squarefree-midpoint filtered
signed correlation.  No inhabitant is constructed in this increment. -/
def SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision :
    Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent cross-collision progression adapter
surface. -/
theorem subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_iff_progression :
    SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision ↔
      SubpolynomialWeightedMertensEndpointCrossCollisionProgression := by
  constructor
  · intro hMid δ hδ
    obtain ⟨C, hC, hscale⟩ := hMid δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint]
    exact hscale j
  · intro hProg δ hδ
    obtain ⟨C, hC, hscale⟩ := hProg δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint]
    exact hscale j

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.moebiusReal_sq_eq_squarefreeIndicator
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCollisionEnergy_eq_squarefreeMidpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_iff_progression
```
