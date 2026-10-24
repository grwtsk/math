# Complete source: GRWTSK.NumberTheory.Moebius.PrimitiveIdentification

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f62de192d4ede827978dcd7d1e1e16b10b668349` · SHA-256 `0c5b362ce3ab76abe686d95837acc7db4a41499f5421e14e9a14c891f28ab31e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy
import GRWTSK.NumberTheory.Moebius.FiniteResponseSum
import GRWTSK.NumberTheory.Moebius.EnergyAbscissa

/-!
# Identification of the original material pickup with the CCC signed pickup

Both integral definitions are retained. Their independently proved closed finite
formulas identify the actual waveform on nonnegative real times. The unsigned
response kernels, signed coefficients, closed inventory, full Gram form and both
orders of the cross sum agree. Set integrals are converted to ordered interval
integrals only with the required endpoint ordering.

The complete signed comparison residual is zero. The original energy is the
same arithmetic observable; transporting its open budget supplies no independent
upper estimate and no unconditional Riemann-hypothesis proof.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set

open GRWTSK.ProofHorizon.CorkscrewChamberCap

theorem original_coefficient_eq (n : ℕ) :
    ArithmeticPickupSource.moebiusCoefficient n = moebiusReal n := rfl

theorem original_prefix_eq (x : ℝ) : ArithmeticPickupSource.mertens x = mertensPrefix x := rfl

theorem original_inventory_eq (T : ℝ) :
    ArithmeticPickupEnergy.inventory T = Finset.Icc 1 ⌊Real.exp T⌋₊ := rfl

/-- The response is unsigned; the Möbius coefficient remains outside it. -/
theorem original_response_eq (n : ℕ) (u : ℝ) :
    ArithmeticPickupEnergy.response n u = pickupResponse n u := by
  simp only [ArithmeticPickupEnergy.response, Set.indicator_apply, mem_Ici,
    ArithmeticPickupEnergy.responseKernel, pickupResponse, pickup_inverse_sqrt_eq_negative_half]

/-- Equality of the two actual integral definitions, including every touching atom. -/
theorem original_pickup_eq {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupSource.pickup T = wholePickup T := by
  rw [ArithmeticPickupSource.pickup_eq_closed_finite_sum hT, wholePickup_closed_prefix_rpow hT]
  rfl

theorem original_gram_eq {T : ℝ} (hT : 0 ≤ T) (m n : ℕ) :
    ArithmeticPickupEnergy.gram T m n = pickupResponseGram T m n := by
  unfold ArithmeticPickupEnergy.gram pickupResponseGram
  rw [intervalIntegral.integral_of_le hT]
  simp only [original_response_eq]

theorem original_diagonal_eq {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupEnergy.diagonal T = pickupDiagonal T := by
  simp only [ArithmeticPickupEnergy.diagonal, original_inventory_eq, original_coefficient_eq,
    original_gram_eq hT, pickupDiagonal]

theorem original_fullGram_eq {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupEnergy.fullGram T = pickupFullGram T := by
  simp only [ArithmeticPickupEnergy.fullGram, original_inventory_eq, original_coefficient_eq,
    original_gram_eq hT, pickupFullGram]

/-- The erased inner inventory and the conditional complete ordered sum agree;
neither an absolute value nor a single ordering replaces the signed cross term. -/
theorem original_cross_eq {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupEnergy.cross T = pickupCross T := by
  have h := ArithmeticPickupEnergy.full_gram_eq_diagonal_add_cross T
  rw [original_fullGram_eq hT, original_diagonal_eq hT, pickup_full_gram_split T]
    at h
  linarith

theorem original_energy_eq {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupEnergy.energy T = pickupEnergy T := by
  unfold ArithmeticPickupEnergy.energy pickupEnergy
  rw [intervalIntegral.integral_of_le hT]
  apply setIntegral_congr_fun measurableSet_Ioc
  intro u hu
  change |ArithmeticPickupSource.pickup u| ^ 2 = wholePickup u ^ 2
  rw [original_pickup_eq hu.1.le, sq_abs]

theorem original_localEnergy_eq {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in Ioc (max 0 (T - 1)) T, |ArithmeticPickupSource.pickup u| ^ 2) =
      pickupLocalEnergy T := by
  unfold pickupLocalEnergy
  rw [intervalIntegral.integral_of_le (max_le hT (by linarith))]
  apply setIntegral_congr_fun measurableSet_Ioc
  intro u hu
  change |ArithmeticPickupSource.pickup u| ^ 2 = wholePickup u ^ 2
  rw [original_pickup_eq (le_trans (le_max_left _ _) hu.1.le), sq_abs]

/-- This is the entire signed difference of the two defined observables. -/
def originalPickupResidual (u : ℝ) : ℝ := wholePickup u - ArithmeticPickupSource.pickup u

theorem originalPickupResidual_zero {u : ℝ} (hu : 0 ≤ u) :
    originalPickupResidual u = 0 := by
  rw [originalPickupResidual, original_pickup_eq hu, sub_self]

theorem originalPickupResidual_energy_zero {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in (0 : ℝ)..T, originalPickupResidual u ^ 2) = 0 := by
  rw [intervalIntegral.integral_of_le hT]
  calc
    _ = ∫ u in Ioc (0 : ℝ) T, (0 : ℝ) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro u hu
      change originalPickupResidual u ^ 2 = 0
      rw [originalPickupResidual_zero hu.1.le, zero_pow (by decide : 2 ≠ 0)]
    _ = 0 := by simp

/-- All rates are paid for the comparison residual, whose literal value is zero. -/
theorem originalPickupResidual_energy_subexp :
    SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, originalPickupResidual u ^ 2) := by
  intro ε _
  refine ⟨0, le_rfl, ?_⟩
  intro T hT
  change (∫ u in (0 : ℝ)..T, originalPickupResidual u ^ 2) ≤ 0 * Real.exp (ε * T)
  rw [originalPickupResidual_energy_zero hT, zero_mul]

theorem original_pickup_poly_iff : ArithmeticPickupSource.WholePickupPoly ↔ WholePickupPoly := by
  unfold ArithmeticPickupSource.WholePickupPoly WholePickupPoly
  constructor <;> rintro ⟨C, p, hC, hp, hb⟩ <;> refine ⟨C, p, hC, hp, ?_⟩
  · intro T hT
    simpa only [original_pickup_eq hT] using hb T hT
  · intro T hT
    simpa only [original_pickup_eq hT] using hb T hT

theorem original_cross_poly_iff : ArithmeticPickupEnergy.CrossPoly ↔ PickupCrossPoly := by
  unfold ArithmeticPickupEnergy.CrossPoly PickupCrossPoly
  constructor <;> rintro ⟨C, p, hC, hp, hb⟩ <;> refine ⟨C, p, hC, hp, ?_⟩
  · intro T hT
    simpa only [original_cross_eq hT] using hb T hT
  · intro T hT
    simpa only [original_cross_eq hT] using hb T hT

theorem original_return_poly_iff :
    ArithmeticPickupEnergy.AmplitudeReturnPoly ↔ PickupReturnPoly := by
  unfold ArithmeticPickupEnergy.AmplitudeReturnPoly PickupReturnPoly
  constructor <;> rintro ⟨C, p, hC, hp, hb⟩ <;> refine ⟨C, p, hC, hp, ?_⟩
  · intro T hT
    have h := hb T hT
    rw [original_localEnergy_eq hT, original_pickup_eq hT, sq_abs] at h
    exact h
  · intro T hT
    rw [original_localEnergy_eq hT, original_pickup_eq hT, sq_abs]
    exact hb T hT

theorem original_joint_budgets_iff :
    ArithmeticPickupEnergy.PickupEnergyBudgets ↔ PickupCrossPoly ∧ PickupReturnPoly := by
  exact and_congr original_cross_poly_iff original_return_poly_iff

/-- The hard all-rate upper estimate is exactly the same open arithmetic obligation. -/
theorem original_energy_subexp_iff :
    SubexponentialUpper ArithmeticPickupEnergy.energy ↔ PickupEnergySubexp := by
  unfold PickupEnergySubexp SubexponentialUpper
  constructor <;> intro hb ε hε <;> obtain ⟨C, hC, h⟩ := hb ε hε <;> refine ⟨C, hC, ?_⟩
  · intro T hT
    simpa only [original_energy_eq hT] using h T hT
  · intro T hT
    simpa only [original_energy_eq hT] using h T hT

/-- Every strictly positive damping rate refers to the identical whole waveform.
This equivalence asserts no integrability witness. -/
theorem original_weighted_energy_all_iff :
    (∀ σ : ℝ, 0 < σ → IntegrableOn
      (fun u ↦ Real.exp (-σ * u) * |ArithmeticPickupSource.pickup u| ^ 2) (Ici 0)) ↔
      PickupWeightedEnergyAll := by
  unfold PickupWeightedEnergyAll
  have heq (σ : ℝ) :
      IntegrableOn (fun u ↦ Real.exp (-σ * u) *
        |ArithmeticPickupSource.pickup u| ^ 2) (Ici 0) ↔
      IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0) := by
    apply integrableOn_congr_fun ?_ measurableSet_Ici
    intro u hu
    change Real.exp (-σ * u) * |ArithmeticPickupSource.pickup u| ^ 2 =
      Real.exp (-σ * u) * wholePickup u ^ 2
    rw [original_pickup_eq hu, sq_abs]
  constructor
  · intro h σ hσ
    exact (heq σ).mp (h σ hσ)
  · intro h σ hσ
    exact (heq σ).mpr (h σ hσ)

end GRWTSK.RiemannHypothesis.CCC
```
