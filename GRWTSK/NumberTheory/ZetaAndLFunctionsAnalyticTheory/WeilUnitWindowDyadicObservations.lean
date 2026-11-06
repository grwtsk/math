/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowFirstStage
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDLRows

/-!
# Integer accounting for the radius-one observation packet

The centers and entry radii are in units of `2^-40`. The head and remote
budgets are row sums on that grid. The observed residual budget is a sum
of squares and therefore uses units of `2^-80`. Expanding the same
rational first-stage lower matrix places it on the common `2^-86` grid.
In that identity, the scalar corrections are paid once on the diagonal
of the full augmented matrix.

The source interval comparison is an explicit analytic input. A center
can be retained by rounding up the two distances to its proved interval
endpoints. The integer budgets and the common-grid minorant check then
consume the enlarged radii. Independent analytical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowDyadicObservations

open OddInclusionWindow OddSchurAccounting OddRemoteAllowanceMatrix OddLiteralCofinal
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.LinearAlgebra.SchurObserver

abbrev Head := Fin 256 ⊕ Unit
abbrev Observed := Fin (512 - 256)

/-- Packet order lists the 256 physical coordinates before the scalar pole. -/
def headIndex : Head ≃ Fin 257 :=
  (Equiv.sumCongr (Equiv.refl (Fin 256)) (Equiv.ofUnique Unit (Fin 1))).trans finSumFinEquiv

@[simp] theorem headIndex_mode (i : Fin 256) : headIndex (Sum.inl i) = i.castSucc := rfl

@[simp] theorem headIndex_pole : headIndex (Sum.inr ()) = Fin.last 256 := rfl

set_option maxRecDepth 4096 in
/-- Preserve the LDL identity under the packet's physical-then-pole indexing. -/
theorem check_flat_sound {target factor : Matrix (Fin 257) (Fin 257) ℤ}
    {pivots : Fin 257 → ℤ} (h : check target factor pivots = true) :
    check (target.submatrix headIndex headIndex) (factor.submatrix headIndex headIndex)
      (pivots ∘ headIndex) = true := by
  have hRow : ∀ i, checkRow target factor pivots i = true :=
    @of_decide_eq_true _ Fintype.decidableForallFintype h
  obtain ⟨hp, hGram⟩ := checkRows_data hRow
  rw [← gramNumerator_eq_matrix_mul] at hGram
  unfold check
  apply decide_eq_true
  intro i
  unfold checkRow
  apply decide_eq_true
  refine ⟨hp (headIndex i), fun j => ?_⟩
  change target (headIndex i) (headIndex j) = _
  rw [hGram]
  exact (headIndex.sum_comp (fun k => factor (headIndex i) k * pivots k *
    factor (headIndex j) k)).symm

/-- Integer observation data on the fixed first-stage grids. -/
structure Packet where
  upper : Matrix Head Head ℤ
  upperRadius : Matrix Head Head ℤ
  rows : Matrix Observed Head ℤ
  rowRadius : Matrix Observed Head ℤ
  remote : Matrix Head Head ℤ
  remoteRadius : Matrix Head Head ℤ
  headBudget : ℤ
  residualBudget : ℤ
  remoteBudget : ℤ

/-- The radius numerator required to cover both endpoints around a fixed center. -/
def requiredRadius (center : ℤ) (lower upper : ℚ) : ℤ :=
  max ⌈(center : ℚ) - 2 ^ (40 : ℕ) * lower⌉
    ⌈2 ^ (40 : ℕ) * upper - (center : ℚ)⌉

theorem abs_sub_dyadic_le_of_interval {x : ℝ} {lower upper : ℚ} {center radius : ℤ}
    (hl : (lower : ℝ) ≤ x) (hu : x ≤ (upper : ℝ))
    (hr : requiredRadius center lower upper ≤ radius) :
    |x - (dyadic 40 center : ℝ)| ≤ (dyadic 40 radius : ℝ) := by
  have hLeft : (center : ℚ) - 2 ^ (40 : ℕ) * lower ≤ (radius : ℚ) :=
    (Int.le_ceil _).trans (by exact_mod_cast (le_max_left _ _).trans hr)
  have hRight : 2 ^ (40 : ℕ) * upper - (center : ℚ) ≤ (radius : ℚ) :=
    (Int.le_ceil _).trans (by exact_mod_cast (le_max_right _ _).trans hr)
  have hL : (center : ℝ) - 2 ^ (40 : ℕ) * (lower : ℝ) ≤ (radius : ℝ) := by
    exact_mod_cast hLeft
  have hU : 2 ^ (40 : ℕ) * (upper : ℝ) - (center : ℝ) ≤ (radius : ℝ) := by
    exact_mod_cast hRight
  rw [abs_le]
  norm_num [dyadic] at hL hU ⊢
  constructor <;> linarith

/-- Test one symmetric radius row and its budget in integer arithmetic. -/
def checkRadiusRow (radius : Matrix Head Head ℤ) (budget : ℤ) (i : Head) : Bool :=
  decide ((∀ j, radius i j = radius j i) ∧ ∑ j, radius i j ≤ budget)

/-- The squared numerator of one observed residual row. -/
def residualRowSq (p : Packet) (i : Observed) : ℤ := ∑ j, (p.rowRadius i j) ^ 2

def checkResidualBudget (p : Packet) : Bool :=
  decide ((∑ i, residualRowSq p i) ≤ p.residualBudget)

/-- Permit independent replay of the squared residual budget one row at a time. -/
theorem checkResidualBudget_of_rows (p : Packet) (rowBudgets : Observed → ℤ)
    (hRows : ∀ i, residualRowSq p i ≤ rowBudgets i)
    (hSum : (∑ i, rowBudgets i) ≤ p.residualBudget) : checkResidualBudget p = true :=
  decide_eq_true ((Finset.sum_le_sum fun i _ => hRows i).trans hSum)

private theorem checkRadiusRow_sound {radius : Matrix Head Head ℤ} {budget : ℤ} {i : Head}
    (h : checkRadiusRow radius budget i = true) :
    (∀ j, dyadic 40 (radius i j) = dyadic 40 (radius j i)) ∧
      (∑ j, dyadic 40 (radius i j)) ≤ dyadic 40 budget := by
  obtain ⟨hSymm, hSum⟩ : (∀ j, radius i j = radius j i) ∧ ∑ j, radius i j ≤ budget :=
    of_decide_eq_true h
  refine ⟨fun j => congrArg (dyadic 40) (hSymm j), ?_⟩
  unfold dyadic
  rw [← Finset.sum_div]
  exact div_le_div_of_nonneg_right (by exact_mod_cast hSum) (by positivity)

private theorem checkResidualBudget_sound {p : Packet} (h : checkResidualBudget p = true) :
    (∑ i, ∑ j, (dyadic 40 (p.rowRadius i j)) ^ 2) ≤ dyadic 80 p.residualBudget := by
  have hSum : (∑ i, ∑ j, (p.rowRadius i j) ^ 2) ≤ p.residualBudget := of_decide_eq_true h
  unfold dyadic
  simp only [div_pow, ← Finset.sum_div]
  rw [show ((2 : ℚ) ^ (40 : ℕ)) ^ (2 : ℕ) = 2 ^ (80 : ℕ) by norm_num]
  exact div_le_div_of_nonneg_right (by exact_mod_cast hSum) (by positivity)

/-- Integer numerator of the exact paid lower on the grid with denominator `2^86`. -/
def lowerNumerator (p : Packet) : Matrix Head Head ℤ :=
  fun i j => 2 ^ (46 : ℕ) * p.upper i j - 165 * (p.rows.transpose * p.rows) i j -
    160 * 2 ^ (40 : ℕ) * p.remote i j -
    if i = j then 2 ^ (46 : ℕ) * p.headBudget + 5280 * p.residualBudget +
      160 * 2 ^ (40 : ℕ) * p.remoteBudget else 0

def packetLower (p : Packet) : Matrix Head Head ℚ :=
  UnitWindowFirstStage.lowerMatrix (dyadic 40 p.headBudget) (dyadic 80 p.residualBudget)
    (dyadic 40 p.remoteBudget) (p.upper.map (dyadic 40)) (p.remote.map (dyadic 40))
    (p.rows.map (dyadic 40))

private theorem gram_entry_grid (R : Matrix Observed Head ℤ) (i j : Head) :
    ((R.map (dyadic 40)).transpose * R.map (dyadic 40)) i j =
      dyadic 80 ((R.transpose * R) i j) := by
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, dyadic, Int.cast_sum,
    Int.cast_mul]
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro k _
  norm_num
  ring

theorem packetLower_eq_grid (p : Packet) : packetLower p = (lowerNumerator p).map (dyadic 86) := by
  ext i j
  simp only [packetLower, UnitWindowFirstStage.lowerMatrix, assembleLowerMatrix_entry,
    gram_entry_grid, Matrix.map_apply, lowerNumerator]
  by_cases hij : i = j
  · subst j
    norm_num [dyadic]
    ring
  · norm_num [dyadic, hij]
    ring

/-- The target grid is shifted by 14 bits and the margin is exactly one eighth. -/
def checkPacketMinorant (p : Packet) (target : Matrix Head Head ℤ) : Bool :=
  checkCommonGrid (lowerNumerator p) (target.map (fun n => 2 ^ (14 : ℕ) * n)) (2 ^ (83 : ℕ))

theorem checkPacketMinorant_sound {p : Packet} {target : Matrix Head Head ℤ}
    (h : checkPacketMinorant p target = true) :
    checkMinorant (packetLower p) (targetValue 24 target) (1/8) = true := by
  have hCheck := checkCommonGrid_implies_checkMinorant 86 h
  rw [packetLower_eq_grid]
  have ht : (target.map (fun n => (2 : ℤ) ^ (14 : ℕ) * n)).map (dyadic 86) =
      targetValue 24 target := by
    ext i j
    norm_num [dyadic, targetValue]
    ring
  rw [ht, show dyadic 86 (2 ^ (83 : ℕ)) = 1 / 8 by norm_num [dyadic]] at hCheck
  exact hCheck

/-- A passing integer budget, LDL identity and paid comparison certify the
first stage once the actual source entries lie in the packet intervals. -/
theorem stageLower_zero_of_packet (p : Packet) (target factor : Matrix Head Head ℤ)
    (pivots : Head → ℤ)
    (hupper : ∀ i j, |shiftedBlock (borderedSourceMatrix 1 256) poleShiftMetric (-1) i j -
      (dyadic 40 (p.upper i j) : ℝ)| ≤ (dyadic 40 (p.upperRadius i j) : ℝ))
    (hrows : ∀ i j, |literalResidualMatrix 1 256 512 i j - (dyadic 40 (p.rows i j) : ℝ)| ≤
      (dyadic 40 (p.rowRadius i j) : ℝ))
    (hremote : ∀ i j, |completeRemoteMatrix 256 512 2048 1 (1/4) i j -
      (dyadic 40 (p.remote i j) : ℝ)| ≤ (dyadic 40 (p.remoteRadius i j) : ℝ))
    (hHead : ∀ i, checkRadiusRow p.upperRadius p.headBudget i = true)
    (hResidual : checkResidualBudget p = true)
    (hRemote : ∀ i, checkRadiusRow p.remoteRadius p.remoteBudget i = true)
    (hLDL : check target factor pivots = true)
    (hMinorant : checkPacketMinorant p target = true) :
    StageLower 0 :=
  UnitWindowFirstStage.stageLower_zero_of_dyadicLDL (dyadic 40 p.headBudget)
    (dyadic 80 p.residualBudget) (dyadic 40 p.remoteBudget) (p.upper.map (dyadic 40))
    (p.upperRadius.map (dyadic 40)) (p.remote.map (dyadic 40)) (p.remoteRadius.map (dyadic 40))
    (p.rows.map (dyadic 40)) (p.rowRadius.map (dyadic 40))
    target factor pivots hupper (fun i => (checkRadiusRow_sound (hHead i)).1)
    (fun i => (checkRadiusRow_sound (hHead i)).2)
    hrows (checkResidualBudget_sound hResidual)
    hremote (fun i => (checkRadiusRow_sound (hRemote i)).1)
    (fun i => (checkRadiusRow_sound (hRemote i)).2) hLDL (checkPacketMinorant_sound hMinorant)

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowDyadicObservations
