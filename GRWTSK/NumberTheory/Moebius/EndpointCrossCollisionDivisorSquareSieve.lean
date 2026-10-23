/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #537. Direct stacked parent: draft PR #534 at
`7d3faf3d588280045f9e05d9b2aa9183660657a3`.
-/
import GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionSquarefreeMidpoint

/-!
# Divisor-square Möbius sieve adapter for squarefree midpoints

The parent module exposes the exact cross-collision branch as a signed
two-endpoint Möbius correlation filtered by the predicate that the midpoint is
squarefree.

The classical finite identity

`1_Squarefree(m) = sum_(d^2 | m) mu(d)`

would turn that midpoint predicate into an explicit divisor-square sieve.
At the pinned Mathlib revision, the repository already has the exact theorem
that `mu(m)^2` is the squarefree indicator, but this square-divisor identity
has not been located as a ready-made theorem.

This module therefore does not assume the identity silently.  It introduces a
proof-relevant supplier carrying the exact positive-integer identity, and proves
that any future construction of that supplier transports the cross-collision
observable to an explicit divisor-square sieve with no change of constants.

No analytic estimate is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Finite real-valued Möbius sum over divisors whose square divides `m`.
For the intended midpoint inputs `m>0`, `m.divisors` is the complete finite
positive divisor set. -/
def squareDivisorMobiusSum (m : ℕ) : ℝ :=
  ∑ d ∈ m.divisors,
    if d * d ∣ m then moebiusReal d else 0

/-- Proof-relevant supplier for the exact classical squarefree sieve identity.

No value of this structure is constructed in this module. -/
structure SquarefreeDivisorSquareMobiusIdentity : Type where
  identity :
    ∀ m : ℕ, 0 < m →
      squarefreeIndicatorReal m = squareDivisorMobiusSum m

/-- A supplied divisor-square identity also identifies the actual real Möbius
square with the finite divisor-square Möbius sum. -/
theorem moebiusReal_sq_eq_squareDivisorMobiusSum
    (cert : SquarefreeDivisorSquareMobiusIdentity)
    {m : ℕ} (hm : 0 < m) :
    moebiusReal m ^ 2 = squareDivisorMobiusSum m := by
  rw [moebiusReal_sq_eq_squarefreeIndicator]
  exact cert.identity m hm

/-- Signed endpoint product times the explicit divisor-square sieve at the
midpoint. -/
def mertensSquarefreeMidpointDivisorSieveTerm
    (h a : ℕ) : ℝ :=
  mertensSquarefreeMidpointEndpointProduct h a *
    squareDivisorMobiusSum (a + 1 + h)

/-- Conditional exact pointwise conversion from the three-point progression
term to the divisor-square midpoint sieve. -/
theorem mertensThreePointProgressionTerm_eq_divisorSquareSieve
    (cert : SquarefreeDivisorSquareMobiusIdentity)
    (h a : ℕ) :
    mertensThreePointProgressionTerm h a =
      mertensSquarefreeMidpointDivisorSieveTerm h a := by
  unfold mertensThreePointProgressionTerm
    mertensSquarefreeMidpointDivisorSieveTerm
    mertensSquarefreeMidpointEndpointProduct
  have hm : 0 < a + 1 + h := by omega
  rw [moebiusReal_sq_eq_squareDivisorMobiusSum cert hm]
  ring

/-- One endpoint cross-collision energy with the midpoint selector expanded
into the finite divisor-square Möbius sum. -/
def mertensEndpointCrossCollisionDivisorSquareSieveEnergy
    (b : ℕ) : ℝ :=
  2 * ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
      mertensSquarefreeMidpointDivisorSieveTerm (b - n) a

/-- A supplied squarefree sieve identity transports the parent three-point
progression energy exactly to the divisor-square presentation. -/
theorem mertensEndpointCrossCollisionProgressionEnergy_eq_divisorSquareSieve
    (cert : SquarefreeDivisorSquareMobiusIdentity)
    (b : ℕ) :
    mertensEndpointCrossCollisionProgressionEnergy b =
      mertensEndpointCrossCollisionDivisorSquareSieveEnergy b := by
  unfold mertensEndpointCrossCollisionProgressionEnergy
    mertensEndpointCrossCollisionDivisorSquareSieveEnergy
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  apply Finset.sum_congr rfl
  intro a _ha
  exact
    mertensThreePointProgressionTerm_eq_divisorSquareSieve
      cert (b - n) a

/-- Conditional exact transport directly from the original endpoint
cross-collision stratum. -/
theorem mertensEndpointFibreCrossCollisionEnergy_eq_divisorSquareSieve
    (cert : SquarefreeDivisorSquareMobiusIdentity)
    (b : ℕ) :
    mertensEndpointFibreCrossCollisionEnergy b =
      mertensEndpointCrossCollisionDivisorSquareSieveEnergy b := by
  rw [mertensEndpointFibreCrossCollisionEnergy_eq_progression,
    mertensEndpointCrossCollisionProgressionEnergy_eq_divisorSquareSieve
      cert]

/-- RH-facing reciprocal endpoint-weighted divisor-square sieve observable. -/
def weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointCrossCollisionDivisorSquareSieveEnergy b

/-- Conditional exact weighted transport from the parent cross-collision
observable. -/
theorem weightedMertensEndpointCrossCollisionEnergy_eq_divisorSquareSieve
    (cert : SquarefreeDivisorSquareMobiusIdentity)
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionEnergy j =
      weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy j := by
  unfold weightedMertensEndpointCrossCollisionEnergy
    weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro b _hb
  rw [mertensEndpointFibreCrossCollisionEnergy_eq_divisorSquareSieve
    cert]

/-- Conditional exact transport from the squarefree-midpoint representation. -/
theorem weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy_eq_divisorSquareSieve
    (cert : SquarefreeDivisorSquareMobiusIdentity)
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy j =
      weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy j := by
  rw [← weightedMertensEndpointCrossCollisionEnergy_eq_squarefreeMidpoint,
    weightedMertensEndpointCrossCollisionEnergy_eq_divisorSquareSieve cert]

/-- Source-facing all-scale condition on the divisor-square midpoint sieve.
No inhabitant is constructed in this module. -/
def SubpolynomialWeightedMertensEndpointDivisorSquareCrossCollision : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Once the exact arithmetic identity supplier is constructed, the
divisor-square adapter surface is exactly equivalent to the squarefree-midpoint
adapter surface. -/
theorem subpolynomialWeightedMertensEndpointDivisorSquareCrossCollision_iff_squarefreeMidpoint
    (cert : SquarefreeDivisorSquareMobiusIdentity) :
    SubpolynomialWeightedMertensEndpointDivisorSquareCrossCollision ↔
      SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision := by
  constructor
  · intro hSieve δ hδ
    obtain ⟨C, hC, hscale⟩ := hSieve δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy_eq_divisorSquareSieve
      cert]
    exact hscale j
  · intro hMid δ hδ
    obtain ⟨C, hC, hscale⟩ := hMid δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy_eq_divisorSquareSieve
      cert]
    exact hscale j

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.moebiusReal_sq_eq_squareDivisorMobiusSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointCrossCollisionProgressionEnergy_eq_divisorSquareSieve
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCollisionEnergy_eq_divisorSquareSieve
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointDivisorSquareCrossCollision_iff_squarefreeMidpoint
