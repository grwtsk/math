/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #489. Direct stacked parent: draft PR #485 at
`2e09c78468034572ae88d63ac88d53cc463440d7`.
-/
import GRWTSK.NumberTheory.Moebius.SignedAbelDepthWeightedDispersion

/-!
# Abel shift-mass telescope and global weighted quadratic energy

The concrete weighted-dispersion majorant from the parent has two factors at
each prefix depth:

* a weighted quadratic energy of the actual two-point Möbius prefixes;
* the total Abel-drop mass over all admissible shifts.

The second factor is not an arithmetic mystery. Because the Abel weights are
successive differences of one monotone dyadic kernel, their sum over the shift
variable telescopes. At every depth in the inherited dyadic range it is at most
the reciprocal right endpoint.

A second finite Cauchy--Schwarz inequality over the depth variable therefore
reduces the complete dispersion majorant to the square root of one global
Abel-weighted quadratic energy.

No estimate of that global energy is supplied.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact shift-mass target after telescoping. The final depth outside the
triangular support contributes zero. -/
def weightedMertensSignedAbelDepthTelescopedMass
    (j t : ℕ) : ℝ :=
  if t + 2 ≤ 2 ^ (j + 1) then
    dyadicMertensShiftWeight j (t + 2)
  else 0

/-- Reindex the zero-extended positive-shift weight into a range starting at
shift one. This helper exposes exactly the finite interval on which the Abel
drops telescope. -/
private theorem weightedMertensSignedAbelDepthMass_eq_dropRange
    {j t : ℕ} (ht : t + 2 ≤ 2 ^ (j + 1)) :
    weightedMertensSignedAbelDepthMass j t =
      ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        dyadicMertensShiftWeightDrop j (k + 1) t := by
  let Y : ℕ := 2 ^ (j + 1)
  let N : ℕ := Y - t - 2
  have htY : t + 2 ≤ Y := by simpa [Y] using ht
  have hNY : N ≤ Y - 1 := by
    dsimp [N]
    omega
  unfold weightedMertensSignedAbelDepthMass
  rw [show 2 ^ (j + 1) = Y by rfl, Finset.sum_Ico_eq_sum_range]
  have hext :=
    sum_range_eq_sum_range_indicator_of_le
      (fun k : ℕ => dyadicMertensShiftWeightDrop j (k + 1) t)
      hNY
  rw [hext]
  apply Finset.sum_congr rfl
  intro k hk
  unfold signedAbelDepthWeight
  have hkY : k < Y - 1 := Finset.mem_range.mp hk
  by_cases hkN : k < N
  · have hsupp : t < Y - (k + 1) - 1 := by
      dsimp [N] at hkN
      omega
    simp only [Nat.add_comm 1 k, ← show Y = 2 ^ (j + 1) from rfl,
      if_pos hsupp, if_pos hkN]
  · have hsupp : ¬ t < Y - (k + 1) - 1 := by
      dsimp [N] at hkN
      omega
    simp only [Nat.add_comm 1 k, ← show Y = 2 ^ (j + 1) from rfl,
      if_neg hsupp, if_neg hkN]

/-- The exact Abel mass over the growing shift family telescopes to one kernel
weight, with a zero convention after the triangular support has ended. -/
theorem weightedMertensSignedAbelDepthMass_eq_telescoped
    (j t : ℕ) :
    weightedMertensSignedAbelDepthMass j t =
      weightedMertensSignedAbelDepthTelescopedMass j t := by
  let Y : ℕ := 2 ^ (j + 1)
  by_cases ht : t + 2 ≤ Y
  · have hrange :=
      weightedMertensSignedAbelDepthMass_eq_dropRange
        (j := j) (t := t) (by simpa [Y] using ht)
    rw [hrange]
    let N : ℕ := Y - t - 2
    let q : ℕ → ℝ := fun k =>
      dyadicMertensShiftWeight j (t + 2 + k)
    have htel := finiteWeightDropTelescope q N
    have htY : t + 2 ≤ Y := ht
    have hindex : t + 2 + N = Y := by
      dsimp [N]
      omega
    have hterminal : q N = 0 := by
      dsimp [q]
      rw [hindex, show Y = 2 ^ (j + 1) by rfl,
        dyadicMertensShiftWeight_at_right]
    have hdrop :
        (Finset.range N).sum (fun k =>
          dyadicMertensShiftWeightDrop j (k + 1) t) =
        (Finset.range N).sum (fun k => q k - q (k + 1)) := by
      apply Finset.sum_congr rfl
      intro k _hk
      simp [q, dyadicMertensShiftWeightDrop, Nat.add_assoc,
        Nat.add_comm, Nat.add_left_comm]
    calc
      (Finset.range N).sum (fun k =>
          dyadicMertensShiftWeightDrop j (k + 1) t) =
        (Finset.range N).sum (fun k => q k - q (k + 1)) := hdrop
      _ = q 0 - q N := htel
      _ = dyadicMertensShiftWeight j (t + 2) := by
        simp [hterminal, q]
      _ = weightedMertensSignedAbelDepthTelescopedMass j t := by
        simp [weightedMertensSignedAbelDepthTelescopedMass, Y, ht]
  · have hzero : weightedMertensSignedAbelDepthMass j t = 0 := by
      unfold weightedMertensSignedAbelDepthMass signedAbelDepthWeight
      apply Finset.sum_eq_zero
      intro h hh
      have hh' := Finset.mem_Ico.mp hh
      have htY : Y < t + 2 := Nat.lt_of_not_ge ht
      have hlow : 1 ≤ h := hh'.1
      have hsupp : ¬ t < 2 ^ (j + 1) - h - 1 := by
        change ¬ t < Y - h - 1
        omega
      simp [hsupp]
    rw [hzero]
    simp [weightedMertensSignedAbelDepthTelescopedMass, Y, ht]

/-- The total Abel mass at every depth is at most the reciprocal dyadic right
endpoint. -/
theorem weightedMertensSignedAbelDepthMass_le_right_inv
    (j t : ℕ) :
    weightedMertensSignedAbelDepthMass j t ≤
      (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [weightedMertensSignedAbelDepthMass_eq_telescoped]
  unfold weightedMertensSignedAbelDepthTelescopedMass
  by_cases ht : t + 2 ≤ 2 ^ (j + 1)
  · rw [if_pos ht]
    apply dyadicMertensShiftWeight_le_right_inv
    omega
  · rw [if_neg ht]
    positivity

/-- The global arithmetic quantity left after the Abel mass has been paid:
weighted squared two-point Möbius prefixes, summed over every depth. -/
def weightedMertensSignedAbelGlobalQuadraticEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    weightedMertensSignedAbelDepthQuadraticEnergy j t

theorem weightedMertensSignedAbelGlobalQuadraticEnergy_nonneg
    (j : ℕ) :
    0 ≤ weightedMertensSignedAbelGlobalQuadraticEnergy j := by
  unfold weightedMertensSignedAbelGlobalQuadraticEnergy
  exact Finset.sum_nonneg fun t _ht =>
    weightedMertensSignedAbelDepthQuadraticEnergy_nonneg j t

/-- One dispersion radius squared is paid by the quadratic energy times the
exact reciprocal endpoint. -/
theorem weightedMertensSignedAbelDepthDispersionRadius_sq_le
    (j t : ℕ) :
    weightedMertensSignedAbelDepthDispersionRadius j t ^ 2 ≤
      weightedMertensSignedAbelDepthQuadraticEnergy j t *
        (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  unfold weightedMertensSignedAbelDepthDispersionRadius
  rw [Real.sq_sqrt]
  · exact mul_le_mul_of_nonneg_left
      (weightedMertensSignedAbelDepthMass_le_right_inv j t)
      (weightedMertensSignedAbelDepthQuadraticEnergy_nonneg j t)
  · exact mul_nonneg
      (weightedMertensSignedAbelDepthQuadraticEnergy_nonneg j t)
      (weightedMertensSignedAbelDepthMass_nonneg j t)

/-- Finite Cauchy over the complete depth range cancels the number of depths
against the reciprocal endpoint supplied by the Abel mass telescope. -/
theorem weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic
    (j : ℕ) :
    weightedMertensDyadicSignedAbelDispersionMajorant j ^ 2 ≤
      weightedMertensSignedAbelGlobalQuadraticEnergy j := by
  let Y : ℕ := 2 ^ (j + 1)
  have hYpos : 0 < Y := by
    dsimp [Y]
    positivity
  have hcauchy :
      weightedMertensDyadicSignedAbelDispersionMajorant j ^ 2 ≤
        (Y : ℝ) *
          ∑ t ∈ Finset.range Y,
            weightedMertensSignedAbelDepthDispersionRadius j t ^ 2 := by
    unfold weightedMertensDyadicSignedAbelDispersionMajorant
    rw [show 2 ^ (j + 1) = Y by rfl]
    simpa using
      (sq_sum_le_card_mul_sum_sq
        (s := Finset.range Y)
        (f := fun t => weightedMertensSignedAbelDepthDispersionRadius j t))
  have hsum :
      (∑ t ∈ Finset.range Y,
          weightedMertensSignedAbelDepthDispersionRadius j t ^ 2) ≤
        weightedMertensSignedAbelGlobalQuadraticEnergy j *
          (Y : ℝ)⁻¹ := by
    calc
      (∑ t ∈ Finset.range Y,
          weightedMertensSignedAbelDepthDispersionRadius j t ^ 2) ≤
        ∑ t ∈ Finset.range Y,
          weightedMertensSignedAbelDepthQuadraticEnergy j t *
            (Y : ℝ)⁻¹ := by
          apply Finset.sum_le_sum
          intro t _ht
          simpa [Y] using
            weightedMertensSignedAbelDepthDispersionRadius_sq_le j t
      _ = weightedMertensSignedAbelGlobalQuadraticEnergy j *
          (Y : ℝ)⁻¹ := by
          simp [weightedMertensSignedAbelGlobalQuadraticEnergy, Y,
            Finset.sum_mul]
  calc
    weightedMertensDyadicSignedAbelDispersionMajorant j ^ 2 ≤
        (Y : ℝ) *
          ∑ t ∈ Finset.range Y,
            weightedMertensSignedAbelDepthDispersionRadius j t ^ 2 := hcauchy
    _ ≤ (Y : ℝ) *
        (weightedMertensSignedAbelGlobalQuadraticEnergy j *
          (Y : ℝ)⁻¹) := by
      exact mul_le_mul_of_nonneg_left hsum (Nat.cast_nonneg Y)
    _ = weightedMertensSignedAbelGlobalQuadraticEnergy j := by
      have hYne : (Y : ℝ) ≠ 0 := by positivity
      field_simp

/-- Equivalent square-root presentation of the previous finite comparison. -/
theorem weightedMertensDyadicSignedAbelDispersionMajorant_le_sqrtGlobalQuadratic
    (j : ℕ) :
    weightedMertensDyadicSignedAbelDispersionMajorant j ≤
      Real.sqrt (weightedMertensSignedAbelGlobalQuadraticEnergy j) := by
  exact Real.le_sqrt_of_sq_le
    (weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic j)

/-- Remaining all-scale arithmetic supplier, now stated on one global
Abel-weighted quadratic energy. -/
def SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensSignedAbelGlobalQuadraticEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- A squared subpolynomial bound for the global weighted quadratic energy
supplies the concrete weighted-dispersion premise with the same constant and
exponent. -/
theorem subpolynomialDyadicSignedAbelWeightedDispersion_of_globalQuadratic
    (hQuad : SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy) :
    SubpolynomialDyadicSignedAbelWeightedDispersion := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hQuad δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  have hsq :=
    (weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic j).trans
      (hscale j)
  have hmajorant :=
    weightedMertensDyadicSignedAbelDispersionMajorant_nonneg j
  have hbudget :
      0 ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
    exact mul_nonneg hC (Real.rpow_nonneg (Nat.cast_nonneg _) _)
  exact (sq_le_sq₀ hmajorant hbudget).mp hsq

/-- Conditional RH endpoint from the global Abel-weighted quadratic-energy
supplier. The supplier itself remains open. -/
theorem riemannHypothesis_of_subpolynomialDyadicSignedAbelGlobalQuadraticEnergy
    (hQuad : SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelWeightedDispersion
    (subpolynomialDyadicSignedAbelWeightedDispersion_of_globalQuadratic hQuad)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensSignedAbelDepthMass_eq_telescoped
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensSignedAbelDepthMass_le_right_inv
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicSignedAbelGlobalQuadraticEnergy
