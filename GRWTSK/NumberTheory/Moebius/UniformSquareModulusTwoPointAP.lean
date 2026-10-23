/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #567. Direct stacked parent: draft PR #562 at
`707e7194e9c503c3a4ab0cd9aceac7c1d67b094b`.
-/
import GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionCongruenceL1

/-!
# Uniform dyadic square-modulus two-point arithmetic-progression supplier

The exact lower-order collision route has reached the modulus-fibre L1 target

`sum_d |CrossCongruenceFibre(b,d)|`.

This module states one explicit uniform arithmetic-progression theorem strong
enough to control that budget.  For every dyadic scale and every endpoint in
that scale, every exact square-modulus fibre is required to be subpolynomial
with one constant uniform across all moduli.

The finite implication uses only counting and the reciprocal endpoint geometry.
No value of the analytic supplier is constructed.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Uniform dyadic square-modulus two-point Möbius cancellation.

For each positive exponent `δ`, one constant controls every exact congruence
fibre at every endpoint and square modulus in the dyadic block. -/
def UniformDyadicSquareModulusMertensTwoPointAP : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b d : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      d ∈ Finset.Ico 1 b →
      |mertensEndpointCrossCongruenceFibre b d| ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- A uniform bound `B` on every modulus fibre at endpoint `b` bounds the
endpoint L1 mass by `b * B`. -/
theorem mertensEndpointCrossCongruenceL1Mass_le_endpoint_mul
    {b : ℕ} {B : ℝ} (hB : 0 ≤ B)
    (hFibre :
      ∀ d ∈ Finset.Ico 1 b,
        |mertensEndpointCrossCongruenceFibre b d| ≤ B) :
    mertensEndpointCrossCongruenceL1Mass b ≤ (b : ℝ) * B := by
  unfold mertensEndpointCrossCongruenceL1Mass
  calc
    (∑ d ∈ Finset.Ico 1 b,
      |mertensEndpointCrossCongruenceFibre b d|) ≤
      ∑ d ∈ Finset.Ico 1 b, B := by
        apply Finset.sum_le_sum
        intro d hd
        exact hFibre d hd
    _ = ((Finset.Ico 1 b).card : ℝ) * B := by
      simp [nsmul_eq_mul]
    _ ≤ (b : ℝ) * B := by
      apply mul_le_mul_of_nonneg_right ?_ hB
      norm_cast
      simp [Finset.card_Ico]
      omega

/-- Multiplying the reciprocal endpoint drop by the endpoint leaves exactly
the next reciprocal. -/
theorem reciprocalEndpointDrop_mul_endpoint_eq
    {b : ℕ} (hb : 0 < b) :
    (((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) * (b : ℝ)) =
      (((b + 1 : ℕ) : ℝ))⁻¹ := by
  have hb0 : (b : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hb)
  have hb10 : (((b + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  field_simp
  ring

/-- One dyadic endpoint block has exactly `2^j` integer endpoints. -/
theorem card_dyadicEndpointIco
    (j : ℕ) :
    (Finset.Ico (2 ^ j) (2 ^ (j + 1))).card = 2 ^ j := by
  rw [Finset.card_Ico, pow_succ]
  omega

/-- The reciprocal endpoint factor multiplied by the endpoint is at most the
left dyadic reciprocal. -/
theorem reciprocalEndpointDrop_mul_endpoint_le_dyadicLeftInv
    {j b : ℕ}
    (hb : b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1))) :
    (((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) * (b : ℝ)) ≤
      (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  have hbI := Finset.mem_Ico.mp hb
  have hbpos : 0 < b := by
    have hX : 0 < 2 ^ j := by positivity
    omega
  rw [reciprocalEndpointDrop_mul_endpoint_eq hbpos]
  have hXpos : 0 < (((2 ^ j : ℕ) : ℝ)) := by positivity
  apply inv_anti₀ hXpos
  exact_mod_cast (show 2 ^ j ≤ b + 1 by omega)

/-- A uniform bound `B` for all exact fibres in one dyadic block controls
the complete weighted L1 majorant by `8*B`. -/
theorem weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres
    {j : ℕ} {B : ℝ} (hB : 0 ≤ B)
    (hFibre :
      ∀ b d : ℕ,
        b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
        d ∈ Finset.Ico 1 b →
        |mertensEndpointCrossCongruenceFibre b d| ≤ B) :
    weightedMertensEndpointCrossCongruenceL1Majorant j ≤ 8 * B := by
  unfold weightedMertensEndpointCrossCongruenceL1Majorant
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hXpos : 0 < X := by
    dsimp [X]
    positivity
  have hXRpos : 0 < (X : ℝ) := by exact_mod_cast hXpos
  calc
    8 * ∑ b ∈ Finset.Ico X Y,
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          mertensEndpointCrossCongruenceL1Mass b ≤
      8 * ∑ b ∈ Finset.Ico X Y,
        ((X : ℝ)⁻¹ * B) := by
          apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
          apply Finset.sum_le_sum
          intro b hb
          have hb' :
              b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) := by
            simpa [X, Y] using hb
          have hbI := Finset.mem_Ico.mp hb'
          have hbpos : 0 < b := by omega
          have hdrop :
              0 ≤ (b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹ :=
            reciprocalEndpointDrop_nonneg hbpos
          have hL1 :
              mertensEndpointCrossCongruenceL1Mass b ≤ (b : ℝ) * B :=
            mertensEndpointCrossCongruenceL1Mass_le_endpoint_mul hB
              (fun d hd => hFibre b d hb' hd)
          calc
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
                mertensEndpointCrossCongruenceL1Mass b ≤
              ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
                ((b : ℝ) * B) :=
                  mul_le_mul_of_nonneg_left hL1 hdrop
            _ =
              ((((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
                (b : ℝ)) * B) := by ring
            _ ≤ (X : ℝ)⁻¹ * B := by
              apply mul_le_mul_of_nonneg_right ?_ hB
              simpa [X] using
                reciprocalEndpointDrop_mul_endpoint_le_dyadicLeftInv hb'
    _ = 8 * (((Finset.Ico X Y).card : ℝ) * ((X : ℝ)⁻¹ * B)) := by
      simp [nsmul_eq_mul]
    _ = 8 * B := by
      have hcard :
          (Finset.Ico X Y).card = X := by
        simpa [X, Y] using card_dyadicEndpointIco j
      rw [hcard]
      have hX0 : (X : ℝ) ≠ 0 := ne_of_gt hXRpos
      field_simp
      ring

/-- The uniform square-modulus AP supplier discharges the weighted congruence
L1 supplier. -/
theorem subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP
    (hAP : UniformDyadicSquareModulusMertensTwoPointAP) :
    SubpolynomialWeightedMertensEndpointCrossCongruenceL1 := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hAP δ hδ
  refine ⟨8 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  let B : ℝ := C * (((2 ^ j : ℕ) : ℝ) ^ δ)
  have hB : 0 ≤ B := by
    dsimp [B]
    positivity
  have hmajor :
      weightedMertensEndpointCrossCongruenceL1Majorant j ≤ 8 * B :=
    weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres
      hB
      (fun b d hb hd => by
        dsimp [B]
        exact hscale j b d hb hd)
  simpa [B, mul_assoc] using hmajor

/-- Consequently the same uniform AP supplier controls the preceding signed
congruence cross-collision interface. -/
theorem subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_uniformDyadicSquareModulusAP
    (hAP : UniformDyadicSquareModulusMertensTwoPointAP) :
    SubpolynomialWeightedMertensEndpointCongruenceCrossCollision :=
  subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_l1
    (subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP
      hAP)

/-- And therefore it controls the exact squarefree-midpoint cross-collision
interface as well. -/
theorem subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_uniformDyadicSquareModulusAP
    (hAP : UniformDyadicSquareModulusMertensTwoPointAP) :
    SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision :=
  subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_congruenceL1
    (subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP
      hAP)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.reciprocalEndpointDrop_mul_endpoint_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP
