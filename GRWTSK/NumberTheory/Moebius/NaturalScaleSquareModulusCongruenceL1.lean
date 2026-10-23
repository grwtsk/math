/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #586. Direct stacked parent: draft PR #578 at
`677aec4860c92c86446ad61623cfd43d56c3ccbe`.
-/
import GRWTSK.NumberTheory.Moebius.FixedToUniformSquareModulusObstruction

/-!
# Natural-scale endpoint L1 supplier for square-modulus congruence fibres

The earlier supplier `UniformDyadicSquareModulusMertensTwoPointAP` asks every
individual square-modulus fibre to be subpolynomial.  That is stronger than the
weighted RH-facing consumer needs.

This module proves two exact finite facts:

* a congruence fibre vanishes when `d^2 >= b`;
* the reciprocal endpoint drops telescope over a dyadic block.

It then defines a weaker aggregate supplier at the natural endpoint scale,

`L1(b) <= C_delta * X * X^delta`, where `X = 2^j` and `X <= b < 2X`,

and proves that this aggregate supplier already discharges the weighted
congruence-L1 premise.  No analytic inhabitant is constructed.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- A square-modulus fibre is empty once the square modulus reaches the
endpoint.  Any contributing midpoint is positive and strictly below `b`. -/
theorem mertensEndpointCrossCongruenceFibre_eq_zero_of_endpoint_le_square
    {b d : ℕ} (hbd : b ≤ d * d) :
    mertensEndpointCrossCongruenceFibre b d = 0 := by
  classical
  unfold mertensEndpointCrossCongruenceFibre
  apply Finset.sum_eq_zero
  intro n hn
  apply Finset.sum_eq_zero
  intro a ha
  have ha' := Finset.mem_filter.mp ha
  have hmid :=
    mertensCrossCollisionMidpoint_pos_lt_endpoint hn ha'.1
  have hcong := ha'.2
  have hdvd :
      d * d ∣ mertensCrossCollisionMidpoint b n a :=
    (squareDivisorCongruence_iff d
      (mertensCrossCollisionMidpoint b n a)).mp hcong
  have hle :
      d * d ≤ mertensCrossCollisionMidpoint b n a :=
    Nat.le_of_dvd hmid.1 hdvd
  exfalso
  omega

/-- Effective square-modulus support at one endpoint. -/
def effectiveEndpointSquareModulusSet
    (b : ℕ) : Finset ℕ :=
  (Finset.Ico 1 b).filter (fun d => d * d < b)

/-- The endpoint L1 mass may be restricted exactly to square moduli with
`d^2 < b`. -/
theorem mertensEndpointCrossCongruenceL1Mass_eq_effectiveSupport
    (b : ℕ) :
    mertensEndpointCrossCongruenceL1Mass b =
      ∑ d ∈ effectiveEndpointSquareModulusSet b,
        |mertensEndpointCrossCongruenceFibre b d| := by
  classical
  unfold mertensEndpointCrossCongruenceL1Mass
    effectiveEndpointSquareModulusSet
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro d _hd
  by_cases hsq : d * d < b
  · simp [hsq]
  · have hz :
        mertensEndpointCrossCongruenceFibre b d = 0 :=
      mertensEndpointCrossCongruenceFibre_eq_zero_of_endpoint_le_square
        (Nat.le_of_not_gt hsq)
    simp [hsq, hz]

/-- Exact telescope for reciprocal endpoint drops over a finite half-open
integer interval. -/
theorem sum_reciprocalEndpointDrop_Ico
    {X Y : ℕ} (hXY : X ≤ Y) :
    (∑ b ∈ Finset.Ico X Y,
      ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)) =
      (X : ℝ)⁻¹ - (Y : ℝ)⁻¹ := by
  rw [Finset.sum_Ico_eq_sum_range]
  have htel :=
    finiteWeightDropTelescope
      (fun t : ℕ => (((X + t : ℕ) : ℝ))⁻¹)
      (Y - X)
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm,
    Nat.add_sub_of_le hXY] using htel

/-- Over a dyadic endpoint block, the complete reciprocal-drop mass is at most
the reciprocal of the left endpoint. -/
theorem sum_reciprocalEndpointDrop_dyadic_le
    (j : ℕ) :
    (∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
      ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)) ≤
      (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  have hXY : 2 ^ j ≤ 2 ^ (j + 1) := by
    rw [pow_succ]
    omega
  rw [sum_reciprocalEndpointDrop_Ico hXY]
  have hYnonneg :
      0 ≤ (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by positivity
  linarith

/-- Weaker endpoint-aggregate square-modulus supplier.

The natural factor `2^j` is explicit.  Only the excess above that natural
scale is required to be subpolynomial. -/
def DyadicNaturalScaleSquareModulusCongruenceL1 : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      mertensEndpointCrossCongruenceL1Mass b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The natural-scale endpoint aggregate is sufficient for the weighted
congruence-L1 premise.  Reciprocal endpoint mass pays the natural factor
`2^j` exactly, leaving only the subpolynomial excess. -/
theorem subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale
    (hNat : DyadicNaturalScaleSquareModulusCongruenceL1) :
    SubpolynomialWeightedMertensEndpointCrossCongruenceL1 := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hNat δ hδ
  refine ⟨8 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hXpos : 0 < X := by
    dsimp [X]
    positivity
  have hdrop :
      (∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)) ≤ X⁻¹ := by
    simpa [X] using sum_reciprocalEndpointDrop_dyadic_le j
  unfold weightedMertensEndpointCrossCongruenceL1Majorant
  calc
    8 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          mertensEndpointCrossCongruenceL1Mass b ≤
      8 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          (C * X * (X ^ δ)) := by
      apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
      apply Finset.sum_le_sum
      intro b hb
      have hbI := Finset.mem_Ico.mp hb
      have hbpos : 0 < b := by
        have hpow : 0 < 2 ^ j := by positivity
        omega
      exact mul_le_mul_of_nonneg_left
        (by simpa [X] using hscale j b hb)
        (reciprocalEndpointDrop_nonneg hbpos)
    _ =
      8 *
        ((∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
          ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)) *
          (C * X * (X ^ δ))) := by
      rw [Finset.sum_mul]
    _ ≤ 8 * (X⁻¹ * (C * X * (X ^ δ))) := by
      apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
      exact mul_le_mul_of_nonneg_right hdrop
        (mul_nonneg
          (mul_nonneg hC hXpos.le)
          (by positivity))
    _ = (8 * C) * (X ^ δ) := by
      field_simp
      ring
    _ = (8 * C) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      rfl

/-- The natural-scale aggregate supplier therefore also supplies the exact
signed congruence cross-collision interface. -/
theorem subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_naturalScale
    (hNat : DyadicNaturalScaleSquareModulusCongruenceL1) :
    SubpolynomialWeightedMertensEndpointCongruenceCrossCollision :=
  subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_l1
    (subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale
      hNat)

/-- And it supplies the exact squarefree-midpoint cross-collision interface. -/
theorem subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_naturalScale
    (hNat : DyadicNaturalScaleSquareModulusCongruenceL1) :
    SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision :=
  subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_congruenceL1
    (subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale
      hNat)

/-- The stronger per-fibre supplier from PR #568 implies the weaker natural
endpoint-scale aggregate.  This theorem records the weakening relation; it does
not assert either supplier. -/
theorem naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre
    (hAP : UniformDyadicSquareModulusMertensTwoPointAP) :
    DyadicNaturalScaleSquareModulusCongruenceL1 := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hAP δ hδ
  refine ⟨2 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j b hb
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  let B : ℝ := C * (X ^ δ)
  have hB : 0 ≤ B := by
    dsimp [B]
    positivity
  have hL1 :
      mertensEndpointCrossCongruenceL1Mass b ≤ (b : ℝ) * B :=
    mertensEndpointCrossCongruenceL1Mass_le_endpoint_mul hB
      (fun d hd => by
        dsimp [B, X]
        exact hscale j b d hb hd)
  have hbI := Finset.mem_Ico.mp hb
  have hb2X : (b : ℝ) ≤ 2 * X := by
    dsimp [X]
    rw [pow_succ] at hbI
    exact_mod_cast (Nat.le_of_lt hbI.2)
  calc
    mertensEndpointCrossCongruenceL1Mass b ≤ (b : ℝ) * B := hL1
    _ ≤ (2 * X) * B :=
      mul_le_mul_of_nonneg_right hb2X hB
    _ = (2 * C) * X * (X ^ δ) := by
      dsimp [B]
      ring
    _ = (2 * C) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      rfl

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointCrossCongruenceFibre_eq_zero_of_endpoint_le_square
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_reciprocalEndpointDrop_Ico
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre
