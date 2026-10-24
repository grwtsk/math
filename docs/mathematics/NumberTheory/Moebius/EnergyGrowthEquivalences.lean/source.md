# Complete source: GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8334ab2bdf2b2b40366934bcfc5d46fa935c6e50` · SHA-256 `ea9ed777d5451c8fe9413fa7064798460b2fbc15c733fac74df5f8e04584a345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth
import GRWTSK.Analysis.InnerProductSpace.CausalResponseGram
import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# CCC exact conditional pickup-energy budgets

The actual causal pickup, independently defined diagonal and complete ordered
cross contribution are retained. The known diagonal allowance is proved in
ArithmeticPickupDiagonal. The conditional consumers preserve the specified
constants and establish an equivalence of existential growth classes; neither
class receives a witness. In particular the signed cross upper budget and
pointwise return remain open, and no RH consumer is asserted here.

Research direction: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupBudget

open MeasureTheory Set
open ArithmeticPickupSource ArithmeticPickupEnergy ArithmeticPickupGram

noncomputable section

theorem local_pickup_square_nonnegative (T : ℝ) :
    0 ≤ ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2 := by
  apply integral_nonneg
  intro u
  exact sq_nonneg _

theorem local_pickup_square_le_energy (T : ℝ) :
    (∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) ≤ energy T := by
  have hsubset : Ioc (max 0 (T - 1)) T ⊆ Ioc 0 T := by
    intro u hu
    exact ⟨lt_of_le_of_lt (le_max_left _ _) hu.1, hu.2⟩
  unfold energy
  exact setIntegral_mono_set (pickup_square_integrable T)
    (Filter.Eventually.of_forall (fun u ↦ sq_nonneg |pickup u|))
    (Filter.Eventually.of_forall (fun u hu ↦ hsubset hu))

theorem rpow_square {x : ℝ} (hx : 0 ≤ x) (p : ℝ) :
    (x ^ p) ^ 2 = x ^ (2 * p) := by
  rw [← Real.rpow_mul_natCast hx p 2]
  congr 1
  ring

theorem growth_square_bound {C p : ℝ} (hC : 0 ≤ C)
    (bound : ∀ T : ℝ, 0 ≤ T → |pickup T| ≤ C * (1 + T) ^ p)
    {T : ℝ} (hT : 0 ≤ T) :
    |pickup T| ^ 2 ≤ C ^ 2 * (1 + T) ^ (2 * p) := by
  have hbase : 0 ≤ 1 + T := by linarith
  have squared := (sq_le_sq₀ (abs_nonneg (pickup T))
    (mul_nonneg hC (Real.rpow_nonneg hbase p))).2 (bound T hT)
  simpa only [mul_pow, rpow_square hbase p] using squared

theorem model_integrable (T q : ℝ) :
    IntegrableOn (fun u : ℝ ↦ (1 + u) ^ q) (Ioc 0 T) := by
  have continuous : ContinuousOn (fun u : ℝ ↦ (1 + u) ^ q) (Icc 0 T) :=
    (continuous_const.add continuous_id).continuousOn.rpow_const
      (fun u hu ↦ Or.inl (by linarith [hu.1] : 1 + u ≠ 0))
  exact continuous.integrableOn_Icc.mono_set Ioc_subset_Icc_self

theorem model_integral {T q : ℝ} (hT : 0 ≤ T) (hq : -1 < q) :
    (∫ u in Ioc 0 T, (1 + u) ^ q) =
      ((1 + T) ^ (q + 1) - 1) / (q + 1) := by
  rw [← intervalIntegral.integral_of_le hT]
  calc
    (∫ u in (0 : ℝ)..T, (1 + u) ^ q) =
        ∫ u in (0 : ℝ)..T, (u + 1) ^ q := by
      congr 1
      funext u
      rw [add_comm]
    _ = ∫ u in (0 + 1 : ℝ)..(T + 1), u ^ q :=
      intervalIntegral.integral_comp_add_right (fun u : ℝ ↦ u ^ q) 1
    _ = ((1 + T) ^ (q + 1) - 1) / (q + 1) := by
      rw [integral_rpow (Or.inl hq)]
      simp only [zero_add, Real.one_rpow, add_comm T 1]

theorem growth_energy_bound {C p : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (bound : ∀ T : ℝ, 0 ≤ T → |pickup T| ≤ C * (1 + T) ^ p)
    {T : ℝ} (hT : 0 ≤ T) :
    energy T ≤ C ^ 2 * (((1 + T) ^ (2 * p + 1) - 1) / (2 * p + 1)) := by
  unfold energy
  calc
    (∫ u in Ioc 0 T, |pickup u| ^ 2) ≤
        ∫ u in Ioc 0 T, C ^ 2 * (1 + u) ^ (2 * p) := by
      apply setIntegral_mono_on (pickup_square_integrable T)
        ((model_integrable T (2 * p)).const_mul (C ^ 2)) measurableSet_Ioc
      intro u hu
      exact growth_square_bound hC bound hu.1.le
    _ = C ^ 2 * (((1 + T) ^ (2 * p + 1) - 1) / (2 * p + 1)) := by
      rw [integral_const_mul, model_integral hT (by linarith : -1 < 2 * p)]

/-- The improved forward cross constant is exactly C²/(2p+1). -/
theorem whole_pickup_poly_implies_budgets (growth : WholePickupPoly) :
    PickupEnergyBudgets := by
  rcases growth with ⟨C, p, hC, hp, bound⟩
  have hden : 0 < 2 * p + 1 := by linarith
  constructor
  · refine ⟨C ^ 2 / (2 * p + 1), 2 * p + 1,
      div_nonneg (sq_nonneg _) hden.le, hden.le, ?_⟩
    intro T hT
    have hcross : cross T ≤ energy T := by
      have hdiag := actual_diagonal_nonnegative T
      rw [energy_eq_diagonal_add_cross]
      linarith
    calc
      cross T ≤ energy T := hcross
      _ ≤ C ^ 2 * (((1 + T) ^ (2 * p + 1) - 1) / (2 * p + 1)) :=
        growth_energy_bound hC hp bound hT
      _ ≤ (C ^ 2 / (2 * p + 1)) * (1 + T) ^ (2 * p + 1) := by
        have hallowance : 0 ≤ C ^ 2 / (2 * p + 1) := div_nonneg (sq_nonneg _) hden.le
        calc
          _ = (C ^ 2 / (2 * p + 1)) * ((1 + T) ^ (2 * p + 1) - 1) := by ring
          _ ≤ _ := mul_le_mul_of_nonneg_left (by linarith) hallowance
  · refine ⟨C ^ 2, 2 * p, sq_nonneg _, mul_nonneg zero_le_two hp, ?_⟩
    intro T hT
    have hbase : 0 ≤ 1 + T := by linarith
    calc
      |pickup T| ^ 2 ≤ C ^ 2 * (1 + T) ^ (2 * p) := growth_square_bound hC bound hT
      _ ≤ C ^ 2 * (1 + T) ^ (2 * p) *
          (1 + ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) := by
        have hfactor : 1 ≤ 1 + ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2 := by
          linarith [local_pickup_square_nonnegative T]
        exact le_mul_of_one_le_right
          (mul_nonneg (sq_nonneg _) (Real.rpow_nonneg hbase _)) hfactor

/-- The genuine diagonal estimate remains an explicit source-level hypothesis. -/
theorem budgets_imply_whole_pickup_poly_of_diagonal_bound
    (diagonalBound : ∀ T : ℝ, 0 ≤ T → diagonal T ≤ 2 * (1 + T) ^ 2)
    (budgets : PickupEnergyBudgets) : WholePickupPoly := by
  rcases budgets with ⟨⟨C_X, r, hCX, hr, crossBound⟩,
    ⟨C_R, s, hCR, hs, returnBound⟩⟩
  have hq : 0 ≤ max r (2 : ℝ) := (by norm_num : (0 : ℝ) ≤ 2).trans (le_max_right _ _)
  have hK : 0 ≤ C_R * (1 + C_X + 2) := mul_nonneg hCR (by linarith)
  refine ⟨Real.sqrt (C_R * (1 + C_X + 2)), (s + max r 2) / 2,
    Real.sqrt_nonneg _, div_nonneg (add_nonneg hs hq) zero_le_two, ?_⟩
  intro T hT
  have hbase1 : 1 ≤ 1 + T := by linarith
  have hbase0 : 0 ≤ 1 + T := by linarith
  have hbasePos : 0 < 1 + T := by linarith
  have hdiagPower : (1 + T) ^ 2 ≤ (1 + T) ^ (max r (2 : ℝ)) := by
    simpa only [Real.rpow_two] using
      Real.rpow_le_rpow_of_exponent_le hbase1 (le_max_right r (2 : ℝ))
  have hcrossPower : (1 + T) ^ r ≤ (1 + T) ^ (max r (2 : ℝ)) :=
    Real.rpow_le_rpow_of_exponent_le hbase1 (le_max_left _ _)
  have henergy : energy T ≤ (C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by
    rw [energy_eq_diagonal_add_cross]
    calc
      diagonal T + cross T ≤ 2 * (1 + T) ^ 2 + C_X * (1 + T) ^ r :=
        add_le_add (diagonalBound T hT) (crossBound T hT)
      _ ≤ 2 * (1 + T) ^ (max r (2 : ℝ)) + C_X * (1 + T) ^ (max r (2 : ℝ)) :=
        add_le_add (mul_le_mul_of_nonneg_left hdiagPower zero_le_two)
          (mul_le_mul_of_nonneg_left hcrossPower hCX)
      _ = (C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by ring
  have hfactor :
      1 + (∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) ≤
        (1 + C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by
    have hlocal := local_pickup_square_le_energy T
    have hone := Real.one_le_rpow hbase1 hq
    nlinarith
  have hsquare : |pickup T| ^ 2 ≤
      (C_R * (1 + C_X + 2)) * (1 + T) ^ (s + max r 2) := by
    calc
      |pickup T| ^ 2 ≤ C_R * (1 + T) ^ s *
          (1 + ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) := returnBound T hT
      _ ≤ C_R * (1 + T) ^ s * ((1 + C_X + 2) * (1 + T) ^ (max r (2 : ℝ))) :=
        mul_le_mul_of_nonneg_left hfactor (mul_nonneg hCR (Real.rpow_nonneg hbase0 _))
      _ = (C_R * (1 + C_X + 2)) * (1 + T) ^ (s + max r 2) := by
        rw [Real.rpow_add hbasePos]
        ring
  have htarget : 0 ≤ Real.sqrt (C_R * (1 + C_X + 2)) *
      (1 + T) ^ ((s + max r 2) / 2) :=
    mul_nonneg (Real.sqrt_nonneg _) (Real.rpow_nonneg hbase0 _)
  have htargetSquare :
      (Real.sqrt (C_R * (1 + C_X + 2)) * (1 + T) ^ ((s + max r 2) / 2)) ^ 2 =
        (C_R * (1 + C_X + 2)) * (1 + T) ^ (s + max r 2) := by
    rw [mul_pow, Real.sq_sqrt hK, rpow_square hbase0]
    congr 2
    ring
  apply (sq_le_sq₀ (abs_nonneg (pickup T)) htarget).mp
  rw [htargetSquare]
  exact hsquare

theorem whole_pickup_poly_iff_budgets_of_diagonal_bound
    (diagonalBound : ∀ T : ℝ, 0 ≤ T → diagonal T ≤ 2 * (1 + T) ^ 2) :
    WholePickupPoly ↔ PickupEnergyBudgets :=
  ⟨whole_pickup_poly_implies_budgets,
    budgets_imply_whole_pickup_poly_of_diagonal_bound diagonalBound⟩

/-- The reverse consumer now uses the genuine proved native diagonal allowance.
The two requested arithmetic budgets remain its explicit open input. -/
theorem budgets_imply_whole_pickup_poly (budgets : PickupEnergyBudgets) : WholePickupPoly :=
  budgets_imply_whole_pickup_poly_of_diagonal_bound
    (fun _ hT ↦ ArithmeticPickupDiagonal.diagonal_upper_bound hT) budgets

/-- Equivalence of open growth classes does not supply a witness to either class. -/
theorem whole_pickup_poly_iff_budgets : WholePickupPoly ↔ PickupEnergyBudgets :=
  ⟨whole_pickup_poly_implies_budgets, budgets_imply_whole_pickup_poly⟩

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupBudget
```
