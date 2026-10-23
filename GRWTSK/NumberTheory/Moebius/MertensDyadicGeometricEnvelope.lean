/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #615. Direct stacked parent: draft PR #614 at
`aff0d4b4cff6cfb77ff695fc894058f500b41bec`.
-/
import GRWTSK.NumberTheory.Moebius.ParityMertensDyadicReconstruction
import Mathlib.Algebra.Field.GeomSum
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Geometric summation of ordinary-Mertens dyadic envelopes

The parent module reconstructs the parity zero mode from the ordinary Mertens
values

`M(floor(b / 2^t))`.

This module performs the finite analytic bookkeeping needed to sum a
square-root-plus-epsilon envelope along those dyadic descendants.  The
hypothesis is deliberately explicit: one geometric ratio `rho < 1` controls
all descendants at one dyadic endpoint scale.

No Mertens estimate is proved.  The only positive result is the exact
geometric-series transport from that hypothesis to the dyadic-tail supplier
required by the parent.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Square-root-plus-epsilon scale used before squaring the dyadic tail.

It equals `X^(1/2 + delta/4)` for positive `X`, but the product presentation
keeps the square-root and epsilon losses separately auditable. -/
def dyadicMertensSquareRootEpsilonScale
    (j : ℕ) (δ : ℝ) : ℝ :=
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  Real.sqrt X * X ^ (δ / 4)

/-- The dyadic scale is nonnegative. -/
theorem dyadicMertensSquareRootEpsilonScale_nonneg
    (j : ℕ) (δ : ℝ) :
    0 ≤ dyadicMertensSquareRootEpsilonScale j δ := by
  unfold dyadicMertensSquareRootEpsilonScale
  positivity

/-- Exact square of the pre-squared dyadic envelope scale. -/
theorem dyadicMertensSquareRootEpsilonScale_sq
    (j : ℕ) (δ : ℝ) :
    dyadicMertensSquareRootEpsilonScale j δ ^ 2 =
      (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ (δ / 2)) := by
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX0 : 0 ≤ X := by
    dsimp [X]
    positivity
  have hsqrt : Real.sqrt X ^ 2 = X := Real.sq_sqrt hX0
  have hrpow : (X ^ (δ / 4)) ^ 2 = X ^ (δ / 2) := by
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul hX0]
    congr 1
    ring
  unfold dyadicMertensSquareRootEpsilonScale
  fold X
  rw [mul_pow, hsqrt, hrpow]

/-- After squaring, the `delta/4` envelope loss fits inside the target
`delta` budget on every nonempty dyadic scale. -/
theorem dyadicMertensSquareRootEpsilonScale_sq_le_target
    (j : ℕ) {δ : ℝ} (hδ : 0 ≤ δ) :
    dyadicMertensSquareRootEpsilonScale j δ ^ 2 ≤
      (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  rw [dyadicMertensSquareRootEpsilonScale_sq]
  apply mul_le_mul_of_nonneg_left ?_ (by positivity)
  have hX : 1 ≤ (((2 ^ j : ℕ) : ℝ)) := by
    exact_mod_cast (show 1 ≤ 2 ^ j by positivity)
  exact Real.rpow_le_rpow_of_exponent_le hX (by linarith)

/-- A finite geometric sum is bounded by the complete geometric mass.

No infinite series is introduced: the proof uses the exact finite identity
`geom_sum_mul_neg`. -/
theorem finiteGeometricSum_le_invOneSub
    {ρ : ℝ} (hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1)
    (L : ℕ) :
    (∑ t ∈ Finset.range L, ρ ^ t) ≤ (1 - ρ)⁻¹ := by
  have hden : 0 < 1 - ρ := sub_pos.mpr hρ1
  rw [show (1 - ρ)⁻¹ = 1 / (1 - ρ) by rfl]
  apply (le_div_iff₀ hden).2
  rw [geom_sum_mul_neg]
  exact sub_le_self 1 (pow_nonneg hρ0 L)

/-- Generic finite comparison from a descendant-wise geometric bound to the
complete absolute dyadic-tail mass. -/
theorem ordinaryMertensDyadicTailMass_le_geometric
    (b : ℕ) {A ρ : ℝ}
    (hA : 0 ≤ A) (hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1)
    (hbound :
      ∀ t : ℕ,
        |ordinaryMertensPrefix (b / 2 ^ t)| ≤ A * ρ ^ t) :
    ordinaryMertensDyadicTailMass b ≤ A * (1 - ρ)⁻¹ := by
  unfold ordinaryMertensDyadicTailMass
  calc
    (∑ t ∈ Finset.range (ordinaryMertensDyadicLength b),
      |ordinaryMertensPrefix (b / 2 ^ t)|) ≤
      ∑ t ∈ Finset.range (ordinaryMertensDyadicLength b),
        A * ρ ^ t := by
          apply Finset.sum_le_sum
          intro t _ht
          exact hbound t
    _ = A * ∑ t ∈ Finset.range (ordinaryMertensDyadicLength b),
        ρ ^ t := by
          rw [Finset.mul_sum]
    _ ≤ A * (1 - ρ)⁻¹ :=
      mul_le_mul_of_nonneg_left
        (finiteGeometricSum_le_invOneSub hρ0 hρ1 _)
        hA

/-- Explicit geometric ordinary-Mertens envelope on one dyadic endpoint
family.

Both the endpoint tail and its half-scale tail are controlled at the same
ambient scale.  The exponent `delta/4` leaves room for squaring and absorption
into the final `delta` budget. -/
def DyadicOrdinaryMertensGeometricEnvelope : Prop :=
  ∀ δ : ℝ, 0 < δ →
    ∃ C ρ : ℝ,
      0 ≤ C ∧ 0 ≤ ρ ∧ ρ < 1 ∧
      ∀ j b : ℕ,
        b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
        ∀ t : ℕ,
          |ordinaryMertensPrefix (b / 2 ^ t)| ≤
              C * dyadicMertensSquareRootEpsilonScale j δ * ρ ^ t ∧
            |ordinaryMertensPrefix ((b / 2) / 2 ^ t)| ≤
              C * dyadicMertensSquareRootEpsilonScale j δ * ρ ^ t

/-- Squaring a geometrically bounded tail exposes the exact
`(1-rho)^(-2)` constant and fits the target natural scale. -/
theorem sq_tail_le_dyadic_target_of_geometric
    {T C ρ : ℝ} (j : ℕ) {δ : ℝ}
    (hδ : 0 ≤ δ)
    (hT0 : 0 ≤ T) (hC : 0 ≤ C)
    (hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1)
    (hT : T ≤
      C * dyadicMertensSquareRootEpsilonScale j δ * (1 - ρ)⁻¹) :
    T ^ 2 ≤
      (C * (1 - ρ)⁻¹) ^ 2 *
        (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  have hinv0 : 0 ≤ (1 - ρ)⁻¹ := by
    positivity
  have hright0 :
      0 ≤ C * dyadicMertensSquareRootEpsilonScale j δ *
        (1 - ρ)⁻¹ := by
    exact mul_nonneg
      (mul_nonneg hC
        (dyadicMertensSquareRootEpsilonScale_nonneg j δ))
      hinv0
  have hsquare :
      T ^ 2 ≤
        (C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹) ^ 2 :=
    (sq_le_sq₀ hT0 hright0).2 hT
  calc
    T ^ 2 ≤
        (C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹) ^ 2 := hsquare
    _ = (C * (1 - ρ)⁻¹) ^ 2 *
        dyadicMertensSquareRootEpsilonScale j δ ^ 2 := by
      ring
    _ ≤ (C * (1 - ρ)⁻¹) ^ 2 *
        ((((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      exact mul_le_mul_of_nonneg_left
        (dyadicMertensSquareRootEpsilonScale_sq_le_target j hδ)
        (sq_nonneg _)
    _ = (C * (1 - ρ)⁻¹) ^ 2 *
        (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      ring

/-- The geometric descendant envelope supplies the ordinary-Mertens dyadic-tail
square-root-energy premise from PR #614. -/
theorem dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope
    (hGeom : DyadicOrdinaryMertensGeometricEnvelope) :
    DyadicOrdinaryMertensTailSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, ρ, hC, hρ0, hρ1, hdesc⟩ := hGeom δ hδ
  refine ⟨(C * (1 - ρ)⁻¹) ^ 2, sq_nonneg _, ?_⟩
  intro j b hb
  let A : ℝ := C * dyadicMertensSquareRootEpsilonScale j δ
  have hA : 0 ≤ A := by
    dsimp [A]
    exact mul_nonneg hC
      (dyadicMertensSquareRootEpsilonScale_nonneg j δ)
  have htail :
      ordinaryMertensDyadicTailMass b ≤
        C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹ := by
    have h := ordinaryMertensDyadicTailMass_le_geometric
      b hA hρ0 hρ1
      (fun t => (hdesc j b hb t).1)
    simpa [A, mul_assoc] using h
  have htailHalf :
      ordinaryMertensDyadicTailMass (b / 2) ≤
        C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹ := by
    have h := ordinaryMertensDyadicTailMass_le_geometric
      (b / 2) hA hρ0 hρ1
      (fun t => (hdesc j b hb t).2)
    simpa [A, mul_assoc] using h
  constructor
  · exact sq_tail_le_dyadic_target_of_geometric
      j hδ.le
      (ordinaryMertensDyadicTailMass_nonneg b)
      hC hρ0 hρ1 htail
  · exact sq_tail_le_dyadic_target_of_geometric
      j hδ.le
      (ordinaryMertensDyadicTailMass_nonneg (b / 2))
      hC hρ0 hρ1 htailHalf

/-- Therefore the same geometric envelope supplies the parity-Mertens zero
mode. -/
theorem parityMertensSquareRootEnergy_of_geometricEnvelope
    (hGeom : DyadicOrdinaryMertensGeometricEnvelope) :
    DyadicParityMertensSquareRootEnergy :=
  parityMertensSquareRootEnergy_of_ordinaryDyadicTail
    (dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope hGeom)

/-- And, together with the independent nonzero-frequency supplier, it reaches
the natural-scale congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_geometricEnvelope_and_nonzero
    (hGeom : DyadicOrdinaryMertensGeometricEnvelope)
    (hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_ordinaryDyadicTail_and_nonzero
    (dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope hGeom)
    hNonzero

/-- Standard pointwise square-root-plus-epsilon ordinary-Mertens statement.
No value is constructed here. -/
def OrdinaryMertensSquareRootPlusEpsilonEnvelope : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ n : ℕ,
        |ordinaryMertensPrefix n| ≤
          C * Real.sqrt (n : ℝ) * ((n : ℝ) ^ ε)

/-- Proof-relevant bridge still required to convert a standard pointwise
Mertens envelope into the uniform descendant-wise geometric envelope used by
this module. -/
structure PointwiseMertensToDyadicGeometricAdapter : Type where
  toGeometric :
    OrdinaryMertensSquareRootPlusEpsilonEnvelope →
      DyadicOrdinaryMertensGeometricEnvelope

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finiteGeometricSum_le_invOneSub
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_geometricEnvelope_and_nonzero
