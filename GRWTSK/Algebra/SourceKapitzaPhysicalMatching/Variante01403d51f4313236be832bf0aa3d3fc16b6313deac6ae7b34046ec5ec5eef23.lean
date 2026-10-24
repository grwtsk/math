import FormalResearch.RiemannHypothesis.SourceKapitzaCumulativeMatching
import FormalResearch.RiemannHypothesis.SourceKapitzaFiniteFilter
import FormalResearch.RiemannHypothesis.SourceKapitzaQuadratureCurvature
import Mathlib.Algebra.BigOperators.Intervals

/-!
# Physical K-C6 source rows and their exact matching consumer

CSE-RH16-20261007. Research direction: grwtsk contributors.
The physical weight and complete signed row inventory are unchanged. The
native finite matching is applied to those rows under explicit row-sign and
packet premises. Their source suppliers and the eventual signed residual
lower budget remain independent arithmetic obligations.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaPhysicalMatching
open scoped BigOperators
open SourceKapitzaCumulativeMatching SourcePairing SourceKapitzaCompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimatePrimeSmoothDefect

/-- The closed physical integer inventory; its unit weight is zero. -/
def physicalWeight (A : ℝ) (n : ℕ) : ℝ :=
  if 2 ≤ n ∧ n ≤ ⌊Real.exp (2 * A)⌋₊ then
    sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n else 0

/-- The analytic Euler function retains its distinct unit endpoint. -/
def analyticWeight (A x : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log x) / Real.sqrt x

@[simp] theorem physicalWeight_one (A : ℝ) : physicalWeight A 1 = 0 := by
  simp [physicalWeight]

theorem analyticWeight_one (A : ℝ) (hA : 1 ≤ A) : analyticWeight A 1 = 1 := by
  simp [analyticWeight, EstimateCorrelation.actual_correlation_at_zero A hA]

theorem physicalWeight_eq (A : ℝ) {n : ℕ}
    (hn : n ∈ primePowerInventory (2 * A)) :
    physicalWeight A n =
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n) := by
  have hb : 2 ≤ n ∧ n ≤ ⌊Real.exp (2 * A)⌋₊ := Finset.mem_Icc.mp hn
  rw [physicalWeight, if_pos hb, exponentialTest_log _ n (by omega)]

/-- Exact binding to every signed natural coefficient of the unchanged source. -/
theorem physical_compensated_eq (A : ℝ) :
    (∑ n ∈ primePowerInventory (2 * A),
      (ArithmeticFunction.vonMangoldt n - 1) * physicalWeight A n) =
      compensatedSourceSum A := by
  apply Finset.sum_congr rfl
  intro n hn
  rw [physicalWeight_eq A hn]

/-- Complete proper-cofactor physical row, with no prime restriction on the cofactor. -/
def physicalRow (A : ℝ) (d : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 2 (⌊Real.exp (2 * A)⌋₊ / d),
    if Nat.Coprime m 6 then physicalWeight A (d * m) else 0

/-- Outer prime powers of two and three remain in the genuine row contribution. -/
def weightedRow (A : ℝ) (d : ℕ) : ℝ := ArithmeticFunction.vonMangoldt d * physicalRow A d

/-- Complete weighted physical residual up to the literal floor cutoff divided by five. -/
def physicalResidual (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 2 (⌊Real.exp (2 * A)⌋₊ / 5), weightedRow A d

/-- Weighted row sum over the closed head interval from two to D. -/
def head (A : ℝ) (D : ℕ) : ℝ := ∑ d ∈ Finset.Icc 2 D, weightedRow A d

/-- Weighted row sum over the half-open middle interval (D, B]. -/
def middle (A : ℝ) (D B : ℕ) : ℝ := ∑ d ∈ Finset.Ioc D B, weightedRow A d

/-- Weighted row sum over the half-open top interval (B, U]. -/
def top (A : ℝ) (B U : ℕ) : ℝ := ∑ d ∈ Finset.Ioc B U, weightedRow A d

/-- The floors used by the physical paper supplier remain explicit source quantities. -/
def headCutoff (A : ℝ) : ℕ := ⌊Real.exp (A / 10)⌋₊

/-- Floor cutoff for the top strip used by the physical source supplier. -/
def topCutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * A) / (5 * Real.exp 5)⌋₊

theorem physicalResidual_three_strip (A : ℝ) (D B : ℕ)
    (hD : 2 ≤ D) (hDB : D ≤ B) (hBU : B ≤ ⌊Real.exp (2 * A)⌋₊ / 5) :
    physicalResidual A = head A D + middle A D B +
      top A B (⌊Real.exp (2 * A)⌋₊ / 5) :=
  three_strip_identity _ D B _ hD hDB hBU

/-- Every source atom beyond the physical closed cutoff vanishes discretely. -/
theorem physicalWeight_zero_above (A : ℝ) {n : ℕ}
    (hn : ⌊Real.exp (2 * A)⌋₊ < n) : physicalWeight A n = 0 := by
  simp [physicalWeight, not_le_of_gt hn]

theorem physical_cutoff_ge_two (A : ℝ) (hA : 1 ≤ A) :
    2 ≤ ⌊Real.exp (2 * A)⌋₊ := by
  apply (Nat.le_floor_iff (Real.exp_pos _).le).mpr
  have he := Real.add_one_le_exp (2 * A)
  norm_num at *
  linarith

/-- The physical J uses the complete discrete two-three filter, including its unit convention. -/
def physicalJ (A : ℝ) : ℝ :=
  SourceKapitzaFiniteFilter.finiteJ (physicalWeight A) ⌊Real.exp (2 * A)⌋₊

/-- Finite divisor reconstruction agrees with the literal clipped cofactor inventory. -/
theorem physicalResidual_eq_finiteResidual (A : ℝ) :
    physicalResidual A = SourceKapitzaFiniteFilter.finiteResidual
      (physicalWeight A) ⌊Real.exp (2 * A)⌋₊ := by
  apply Finset.sum_congr rfl
  intro d hd
  rw [SourceKapitzaFiniteFilter.properRow_eq_clipped _ _ d
    (by have := (Finset.mem_Icc.mp hd).1; omega)
    (fun _ hn => physicalWeight_zero_above A hn)]
  rfl

/-- Exact genuine divisor identity for the unchanged physical compensated source. -/
theorem physical_divisor_balance (A : ℝ) (hA : 1 ≤ A) :
    physicalJ A = compensatedSourceSum A + physicalResidual A := by
  have hb := SourceKapitzaFiniteFilter.finite_divisor_balance (physicalWeight A)
    ⌊Real.exp (2 * A)⌋₊ (physical_cutoff_ge_two A hA)
    (fun _ hn => physicalWeight_zero_above A hn)
  rw [← physicalResidual_eq_finiteResidual A] at hb
  have hz : SourceKapitzaFiniteFilter.finiteZ (physicalWeight A)
      ⌊Real.exp (2 * A)⌋₊ = compensatedSourceSum A := physical_compensated_eq A
  rw [hz] at hb
  exact hb

theorem compensated_eq_physicalJ_sub_residual (A : ℝ) (hA : 1 ≤ A) :
    compensatedSourceSum A = physicalJ A - physicalResidual A := by
  have h := physical_divisor_balance A hA
  linarith

/-- Zero extension permits the cumulative theorem without inventing new demand. -/
def demandAtom (rows : ℕ → ℝ) (D i : ℕ) : ℝ := if i < D - 1 then -rows (i + 2) else 0

/-- Top-strip supply row indexed from B plus one, with zero beyond U. -/
def supplyAtom (rows : ℕ → ℝ) (B U j : ℕ) : ℝ :=
  if j < U - B then rows (B + 1 + j) else 0

/-- Sum of the first k atoms, excluding the endpoint k. -/
def cumulative (atoms : ℕ → ℝ) (k : ℕ) : ℝ := ∑ i ∈ Finset.range k, atoms i

@[simp] theorem cumulative_zero (atoms : ℕ → ℝ) : cumulative atoms 0 = 0 := by
  simp [cumulative]

theorem cumulative_monotone (atoms : ℕ → ℝ) (ha : ∀ i, 0 ≤ atoms i) :
    Monotone (cumulative atoms) := by
  intro i j hij
  apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hij)
  intro k _ _
  exact ha k

theorem demandAtom_nonneg (rows : ℕ → ℝ) (D : ℕ) (hD : 2 ≤ D)
    (hrows : ∀ d ∈ Finset.Icc 2 D, rows d ≤ 0) (i : ℕ) :
    0 ≤ demandAtom rows D i := by
  unfold demandAtom
  split_ifs with hi
  · exact neg_nonneg.mpr (hrows _ (Finset.mem_Icc.mpr ⟨by omega, by omega⟩))
  · exact le_rfl

theorem supplyAtom_nonneg (rows : ℕ → ℝ) (B U : ℕ)
    (hrows : ∀ d ∈ Finset.Ioc B U, 0 ≤ rows d) (j : ℕ) :
    0 ≤ supplyAtom rows B U j := by
  unfold supplyAtom
  split_ifs with hj
  · exact hrows _ (Finset.mem_Ioc.mpr ⟨by omega, by omega⟩)
  · exact le_rfl

theorem demand_total (rows : ℕ → ℝ) (D : ℕ) (hD : 2 ≤ D) :
    cumulative (demandAtom rows D) (D - 1) = -∑ d ∈ Finset.Icc 2 D, rows d := by
  have he : Finset.Icc 2 D = Finset.Ico 2 (D + 1) := by
    ext d
    simp only [Finset.mem_Icc, Finset.mem_Ico]
    omega
  rw [cumulative, he, Finset.sum_Ico_eq_sum_range]
  have hn : D + 1 - 2 = D - 1 := by omega
  rw [hn, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  simp only [demandAtom, if_pos (Finset.mem_range.mp hi), add_comm i 2]

theorem supply_total (rows : ℕ → ℝ) (B U : ℕ) (hBU : B ≤ U) :
    cumulative (supplyAtom rows B U) (U - B) = ∑ d ∈ Finset.Ioc B U, rows d := by
  have he : Finset.Ioc B U = Finset.Ico (B + 1) (U + 1) := by
    ext d
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  rw [cumulative, he, Finset.sum_Ico_eq_sum_range]
  have hn : U + 1 - (B + 1) = U - B := by omega
  rw [hn]
  apply Finset.sum_congr rfl
  intro j hj
  simp only [supplyAtom, if_pos (Finset.mem_range.mp hj)]

/-- Apply the finite matching to every complete physical head and top row. -/
theorem physical_matching_return (A : ℝ) (D B : ℕ)
    (hD : 2 ≤ D) (hDB : D ≤ B) (hBU : B ≤ ⌊Real.exp (2 * A)⌋₊ / 5)
    (hhead : ∀ d ∈ Finset.Icc 2 D, weightedRow A d ≤ 0)
    (htop : ∀ d ∈ Finset.Ioc B (⌊Real.exp (2 * A)⌋₊ / 5), 0 ≤ weightedRow A d)
    (hpacket : 0 ≤ head A D + top A B (⌊Real.exp (2 * A)⌋₊ / 5)) :
    physicalResidual A = middle A D B +
      ∑ j ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ / 5 - B),
        unusedSupply (cumulative (demandAtom (weightedRow A) D))
          (cumulative (supplyAtom (weightedRow A) B (⌊Real.exp (2 * A)⌋₊ / 5)))
          (D - 1) j := by
  let U := ⌊Real.exp (2 * A)⌋₊ / 5
  let demand := cumulative (demandAtom (weightedRow A) D)
  let supply := cumulative (supplyAtom (weightedRow A) B U)
  have hd : Monotone demand := cumulative_monotone _ (demandAtom_nonneg _ D hD hhead)
  have hs : Monotone supply := cumulative_monotone _ (supplyAtom_nonneg _ B U htop)
  have hd0 : demand 0 = 0 := cumulative_zero _
  have hs0 : supply 0 = 0 := cumulative_zero _
  have hh : head A D = -demand (D - 1) := by
    dsimp only [demand]
    rw [demand_total _ D hD]
    simp [head]
  have ht : top A B U = supply (U - B) := (supply_total _ B U hBU).symm
  have hp : demand (D - 1) ≤ supply (U - B) := by rw [hh, ht] at hpacket; linarith
  rw [physicalResidual_three_strip A D B hD hDB hBU]
  exact residual_eq_middle_add_unused _ _ _ demand supply (D - 1) (U - B)
    hd hs hd0 hs0 hh ht hp

/-- A supplied physical signed residual budget uses the direct price exactly once. -/
theorem estimate_of_physical_residual_budget (R K : ℝ) (hR : 200 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → physicalJ A ≤ (123 / 5 : ℝ) + 64 / A)
    (hresidual : ∀ A : ℝ, R ≤ A → -K ≤ physicalResidual A) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceKapitzaQuadratureCurvature.estimate_of_compensated_cap R
    (K + 123 / 5 + 64 / R) (by linarith)
  intro A hRA
  have hi : 64 / A ≤ 64 / R := div_le_div_of_nonneg_left (by norm_num)
    (by linarith) hRA
  have hj := hJ A hRA
  rw [compensated_eq_physicalJ_sub_residual A (by linarith)]
  have hr := hresidual A hRA
  linarith

end FormalResearch.RiemannHypothesis.SourceKapitzaPhysicalMatching
