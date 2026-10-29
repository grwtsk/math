/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.LogarithmicPickupSeries
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCellCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CenteredSieveRecovery

/-!
# Actual signed pickup density as a quadratic between source births

The five coefficients below come from the literal closed Mobius inventory.
The square is formed BEFORE subtracting the complete diagonal; all ordered
mixed terms remain. On [log N,log(N+1)] the source is quadratic in exp(-u/2).
The right-endpoint birth has zero response, so both endpoints are legitimate.
This supplies an actual polynomial to the interpolation/cell machinery.
No all-scale growth or sign theorem for that polynomial is assumed.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupCellQuadratic

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.ErrorBounds.QuadraticCellCertificate

/-- Complete off-diagonal density at one fixed final inventory. -/
def crossDensity (T u : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n * pickupResponse n u) ^ 2 -
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (moebiusReal n * pickupResponse n u) ^ 2

theorem crossDensity_continuous (T : ℝ) : Continuous (crossDensity T) := by
  unfold crossDensity
  apply Continuous.sub
  · apply Continuous.pow
    apply continuous_finsetSum
    intro n hn
    exact continuous_const.mul (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)
  · apply continuous_finsetSum
    intro n hn
    exact (continuous_const.mul (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)).pow 2

/-- This is the complete ordered cross sum, not a diagonal-only surrogate. -/
theorem crossDensity_eq_ordered (T u : ℝ) :
    crossDensity T u =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          if m ≠ n then moebiusReal m * moebiusReal n *
            (pickupResponse m u * pickupResponse n u) else 0 := by
  have hs : (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * pickupResponse n u) ^ 2 =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          moebiusReal m * moebiusReal n * (pickupResponse m u * pickupResponse n u) := by
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    apply Finset.sum_congr rfl
    intro n _
    ring
  have hd : (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      (moebiusReal n * pickupResponse n u) ^ 2) =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        moebiusReal n ^ 2 * (pickupResponse n u * pickupResponse n u) := by
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [crossDensity, hs, hd, complete_gram_split]
  ring

/-- Finite integral interchange returns exactly the old RH-facing cross energy. -/
theorem integral_crossDensity (T : ℝ) :
    (∫ u in (0 : ℝ)..T, crossDensity T u) = pickupCross T := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hc (m : ℕ) (hm : m ∈ S) (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u => if m ≠ n then moebiusReal m * moebiusReal n *
        (pickupResponse m u * pickupResponse n u) else 0) := by
    by_cases h : m ≠ n
    · simp only [if_pos h]
      exact continuous_const.mul
        ((pickupResponse_continuous (Finset.mem_Icc.mp hm).1).mul
          (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
    · simp only [if_neg h]
      exact continuous_const
  simp_rw [crossDensity_eq_ordered]
  change (∫ u in (0 : ℝ)..T, ∑ m ∈ S, ∑ n ∈ S,
      if m ≠ n then moebiusReal m * moebiusReal n *
        (pickupResponse m u * pickupResponse n u) else 0) = _
  rw [intervalIntegral.integral_finsetSum]
  · unfold pickupCross pickupResponseGram
    apply Finset.sum_congr rfl
    intro m hm
    rw [intervalIntegral.integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro n _
      by_cases h : m ≠ n
      · simp only [if_pos h, intervalIntegral.integral_const_mul]
      · simp only [if_neg h, intervalIntegral.integral_zero]
    · intro n hn
      exact (hc m hm n hn).intervalIntegrable 0 T
  · intro m hm
    exact (continuous_finsetSum S (fun n hn => hc m hm n hn)).intervalIntegrable 0 T

/-- A not-yet-born response is zero even at its closed birth endpoint. -/
theorem response_zero_before_or_at {n : ℕ} (hn : 1 ≤ n)
    {u : ℝ} (hu : u ≤ Real.log (n : ℝ)) : pickupResponse n u = 0 := by
  by_cases he : Real.log (n : ℝ) ≤ u
  · have hu' : u = Real.log (n : ℝ) := le_antisymm hu he
    rw [hu']
    exact pickupResponse_at_event hn
  · simp [pickupResponse, he]

/-- Source moments share exactly the same integer inventory and signs. -/
def signedMass (N : ℕ) : ℝ := ∑ n ∈ Finset.Icc 1 N, moebiusReal n

def weightedMass (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, moebiusReal n * (Real.sqrt n)⁻¹

def squareMoment (N : ℕ) (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, moebiusReal n ^ 2 * ((Real.sqrt n)⁻¹) ^ j


private theorem closed_sum_step (f : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 (N + 1), f n) = (∑ n ∈ Finset.Icc 1 N, f n) + f (N + 1) := by
  have hs : Finset.Icc 1 (N + 1) = insert (N + 1) (Finset.Icc 1 N) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  have hn : N + 1 ∉ Finset.Icc 1 N := by simp
  rw [hs, Finset.sum_insert hn]
  ring

/-- The actual signed moments update by the new impulse, not by refitting a curve. -/
theorem signedMass_step (N : ℕ) :
    signedMass (N + 1) = signedMass N + moebiusReal (N + 1) :=
  closed_sum_step moebiusReal N

theorem weightedMass_step (N : ℕ) :
    weightedMass (N + 1) = weightedMass N + moebiusReal (N + 1) * (Real.sqrt (N + 1 : ℕ))⁻¹ :=
  closed_sum_step (fun n => moebiusReal n * (Real.sqrt n)⁻¹) N

theorem squareMoment_step (N j : ℕ) :
    squareMoment (N + 1) j = squareMoment N j +
      moebiusReal (N + 1) ^ 2 * ((Real.sqrt (N + 1 : ℕ))⁻¹) ^ j :=
  closed_sum_step (fun n => moebiusReal n ^ 2 * ((Real.sqrt n)⁻¹) ^ j) N

/-- The changing prime-square sieve supplies the SAME moments; no survivor normalization. -/
def sieveMoment (P : Finset ℕ) (N exponent order : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    (GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery.sieveCoefficient P n : ℝ) ^ exponent *
      ((Real.sqrt n)⁻¹) ^ order

theorem sieveMoment_eq (P : Finset ℕ) (hp : ∀ p ∈ P, p.Prime) (N exponent order : ℕ) :
    sieveMoment P N exponent order =
      ∑ n ∈ Finset.Icc 1 N, moebiusReal n ^ exponent * ((Real.sqrt n)⁻¹) ^ order := by
  simp only [sieveMoment, GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery.sieveCoefficient_eq P hp,
    moebiusReal]

/-- Changing the sieve support leaves each of the five polynomial moments exact. -/
theorem sieveMoment_stage_invariant (P Q : Finset ℕ)
    (hp : ∀ p ∈ P, p.Prime) (hq : ∀ p ∈ Q, p.Prime) (N exponent order : ℕ) :
    sieveMoment P N exponent order = sieveMoment Q N exponent order := by
  rw [sieveMoment_eq P hp, sieveMoment_eq Q hq]

def coefficient0 (N : ℕ) : ℝ := 4 * (weightedMass N ^ 2 - squareMoment N 2)
def coefficient1 (N : ℕ) : ℝ := -8 * (weightedMass N * signedMass N - squareMoment N 1)
def coefficient2 (N : ℕ) : ℝ := 4 * (signedMass N ^ 2 - squareMoment N 0)

def polynomial (N : ℕ) (x : ℝ) : ℝ :=
  coefficient0 N + coefficient1 N * x + coefficient2 N * x ^ 2

/-- The literal five-moment polynomial keeps the full signed diagonal subtraction. -/
theorem polynomial_eq_square_sub_diagonal (N : ℕ) (x : ℝ) :
    polynomial N x =
      (∑ n ∈ Finset.Icc 1 N, moebiusReal n * (2 * ((Real.sqrt n)⁻¹ - x))) ^ 2 -
      ∑ n ∈ Finset.Icc 1 N, (moebiusReal n * (2 * ((Real.sqrt n)⁻¹ - x))) ^ 2 := by
  have hs : (∑ n ∈ Finset.Icc 1 N,
      moebiusReal n * (2 * ((Real.sqrt n)⁻¹ - x))) =
      2 * (weightedMass N - x * signedMass N) := by
    calc
      _ = ∑ n ∈ Finset.Icc 1 N,
          (2 * (moebiusReal n * (Real.sqrt n)⁻¹) - 2 * x * moebiusReal n) := by
        apply Finset.sum_congr rfl
        intro n _
        ring
      _ = _ := by
        rw [Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.mul_sum]
        simp only [weightedMass, signedMass]
        ring
  have hd : (∑ n ∈ Finset.Icc 1 N,
      (moebiusReal n * (2 * ((Real.sqrt n)⁻¹ - x))) ^ 2) =
      4 * squareMoment N 2 - 8 * x * squareMoment N 1 + 4 * x ^ 2 * squareMoment N 0 := by
    calc
      _ = ∑ n ∈ Finset.Icc 1 N,
          (4 * (moebiusReal n ^ 2 * ((Real.sqrt n)⁻¹) ^ 2) -
            8 * x * (moebiusReal n ^ 2 * ((Real.sqrt n)⁻¹) ^ 1) +
            4 * x ^ 2 * (moebiusReal n ^ 2 * ((Real.sqrt n)⁻¹) ^ 0)) := by
        apply Finset.sum_congr rfl
        intro n _
        ring
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
        simp only [← Finset.mul_sum, squareMoment]
  rw [hs, hd]
  simp only [polynomial, coefficient0, coefficient1, coefficient2]
  ring

/-- Exact source matching on a complete closed birth cell. -/
theorem crossDensity_eq_polynomial {T u : ℝ} {N : ℕ}
    (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (hlo : Real.log (N : ℝ) ≤ u) (hhi : u ≤ Real.log ((N + 1 : ℕ) : ℝ)) :
    crossDensity T u = polynomial N (Real.exp (-u / 2)) := by
  have hsub : Finset.Icc 1 N ⊆ Finset.Icc 1 ⌊Real.exp T⌋₊ := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hNT⟩
  have hactive (n : ℕ) (hn : n ∈ Finset.Icc 1 N) :
      pickupResponse n u = 2 * ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) := by
    have hn1 := (Finset.mem_Icc.mp hn).1
    have hpos : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
    have hle : Real.log (n : ℝ) ≤ Real.log (N : ℝ) :=
      Real.log_le_log hpos (by exact_mod_cast (Finset.mem_Icc.mp hn).2)
    simp [pickupResponse, hle.trans hlo]
  have hinactive (n : ℕ) (hn : n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊)
      (hnN : n ∉ Finset.Icc 1 N) : pickupResponse n u = 0 := by
    have hn1 := (Finset.mem_Icc.mp hn).1
    have hlt : N < n := by
      by_contra h
      exact hnN (Finset.mem_Icc.mpr ⟨hn1, by omega⟩)
    have hNpos : (0 : ℝ) < N := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
    have hnext : (0 : ℝ) < (N + 1 : ℕ) :=
      hNpos.trans_le (by exact_mod_cast Nat.le_succ N)
    have hlog : Real.log ((N + 1 : ℕ) : ℝ) ≤ Real.log (n : ℝ) :=
      Real.log_le_log hnext (by exact_mod_cast (Nat.succ_le_of_lt hlt))
    exact response_zero_before_or_at hn1 (hhi.trans hlog)
  have hs : (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n * pickupResponse n u) =
      ∑ n ∈ Finset.Icc 1 N, moebiusReal n * pickupResponse n u := by
    symm
    apply Finset.sum_subset hsub
    intro n hn hnN
    simp [hinactive n hn hnN]
  have hd : (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (moebiusReal n * pickupResponse n u) ^ 2) =
      ∑ n ∈ Finset.Icc 1 N, (moebiusReal n * pickupResponse n u) ^ 2 := by
    symm
    apply Finset.sum_subset hsub
    intro n hn hnN
    simp [hinactive n hn hnN]
  rw [crossDensity, hs, hd, polynomial_eq_square_sub_diagonal]
  have he := Finset.sum_congr rfl (fun n hn =>
    congrArg (fun r : ℝ => moebiusReal n * r) (hactive n hn))
  have he2 := Finset.sum_congr rfl (fun n hn =>
    congrArg (fun r : ℝ => (moebiusReal n * r) ^ 2) (hactive n hn))
  rw [he, he2]


/-- Consecutive curves synchronize at the genuine birth, where the new response is zero.
This is value matching, not a claim that derivatives match across a Mobius impulse. -/
theorem polynomial_birth_sync {N : ℕ} (hN : 1 ≤ N) :
    polynomial N ((Real.sqrt (N + 1 : ℕ))⁻¹) =
      polynomial (N + 1) ((Real.sqrt (N + 1 : ℕ))⁻¹) := by
  have hp : (0 : ℝ) < (N + 1 : ℕ) := by positivity
  have hcut : ⌊Real.exp (Real.log ((N + 1 : ℕ) : ℝ))⌋₊ = N + 1 := by
    rw [Real.exp_log hp, Nat.floor_natCast]
  have hlog : Real.log (N : ℝ) ≤ Real.log ((N + 1 : ℕ) : ℝ) :=
    Real.log_le_log (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN))
      (by exact_mod_cast Nat.le_succ N)
  have hnext : Real.log ((N + 1 : ℕ) : ℝ) ≤ Real.log ((N + 1 + 1 : ℕ) : ℝ) :=
    Real.log_le_log hp (by exact_mod_cast Nat.le_succ (N + 1))
  have hleft := crossDensity_eq_polynomial
    (T := Real.log ((N + 1 : ℕ) : ℝ)) (u := Real.log ((N + 1 : ℕ) : ℝ))
    hN (by rw [hcut]; exact Nat.le_succ N) hlog le_rfl
  have hright := crossDensity_eq_polynomial
    (T := Real.log ((N + 1 : ℕ) : ℝ)) (u := Real.log ((N + 1 : ℕ) : ℝ))
    (N := N + 1) (by omega) (by rw [hcut]) le_rfl hnext
  have he := hleft.symm.trans hright
  rwa [pickup_exp_negative_log_half (n := N + 1) (by omega)] at he

/-- An actual source polynomial, normalized to one chosen physical subinterval. -/
def cellControls (N : ℕ) (a b : ℝ) : Controls :=
  onInterval (coefficient0 N) (coefficient1 N) (coefficient2 N)
    (Real.exp (-b / 2)) (Real.exp (-a / 2))

def cellUpper (N : ℕ) (a b : ℝ) (depth : ℕ) : ℝ :=
  refinedUpper depth (cellControls N a b)

theorem crossDensity_le_cellUpper {T a b u : ℝ} {N : ℕ}
    (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (hleft : Real.log (N : ℝ) ≤ a) (hright : b ≤ Real.log ((N + 1 : ℕ) : ℝ))
    (hu : u ∈ Icc a b) (depth : ℕ) :
    crossDensity T u ≤ cellUpper N a b depth := by
  rw [crossDensity_eq_polynomial hN hNT (hleft.trans hu.1) (hu.2.trans hright)]
  exact quadratic_le_refinedUpper _ _ _ _ _ _ depth
    (Real.exp_le_exp.mpr (by linarith)) (Real.exp_le_exp.mpr (by linarith))

/-- Negative upper values are retained; no positive-part replacement is made. -/
theorem integral_crossDensity_le_cell {T a b : ℝ} {N : ℕ}
    (hab : a ≤ b) (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (hleft : Real.log (N : ℝ) ≤ a) (hright : b ≤ Real.log ((N + 1 : ℕ) : ℝ))
    (depth : ℕ) :
    (∫ u in a..b, crossDensity T u) ≤ (b - a) * cellUpper N a b depth := by
  have h := intervalIntegral.integral_mono_on hab
    ((crossDensity_continuous T).intervalIntegrable a b)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => cellUpper N a b depth) volume a b)
    (fun u hu => crossDensity_le_cellUpper hN hNT hleft hright hu depth)
  simpa only [intervalIntegral.integral_const, smul_eq_mul] using h


/-- A cell certified nonpositive makes no positive contribution to the signed budget. -/
theorem nonpositive_cell {T a b : ℝ} {N : ℕ}
    (hab : a ≤ b) (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (hleft : Real.log (N : ℝ) ≤ a) (hright : b ≤ Real.log ((N + 1 : ℕ) : ℝ))
    (depth : ℕ) (hupper : cellUpper N a b depth ≤ 0) :
    (∫ u in a..b, crossDensity T u) ≤ 0 :=
  (integral_crossDensity_le_cell hab hN hNT hleft hright depth).trans
    (mul_nonpos_of_nonneg_of_nonpos (sub_nonneg.mpr hab) hupper)

theorem cellUpper_refinement_le (N : ℕ) (a b : ℝ) {d e : ℕ} (hde : d ≤ e) :
    cellUpper N a b e ≤ cellUpper N a b d :=
  refinedUpper_antitone (cellControls N a b) hde


def cellLower (N : ℕ) (a b : ℝ) (depth : ℕ) : ℝ :=
  refinedLower depth (cellControls N a b)

theorem cellLower_le_crossDensity {T a b u : ℝ} {N : ℕ}
    (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (hleft : Real.log (N : ℝ) ≤ a) (hright : b ≤ Real.log ((N + 1 : ℕ) : ℝ))
    (hu : u ∈ Icc a b) (depth : ℕ) :
    cellLower N a b depth ≤ crossDensity T u := by
  rw [crossDensity_eq_polynomial hN hNT (hleft.trans hu.1) (hu.2.trans hright)]
  exact refinedLower_le_quadratic _ _ _ _ _ _ depth
    (Real.exp_le_exp.mpr (by linarith)) (Real.exp_le_exp.mpr (by linarith))

theorem cell_le_integral_crossDensity {T a b : ℝ} {N : ℕ}
    (hab : a ≤ b) (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (hleft : Real.log (N : ℝ) ≤ a) (hright : b ≤ Real.log ((N + 1 : ℕ) : ℝ))
    (depth : ℕ) :
    (b - a) * cellLower N a b depth ≤ ∫ u in a..b, crossDensity T u := by
  have h := intervalIntegral.integral_mono_on hab
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => cellLower N a b depth) volume a b)
    ((crossDensity_continuous T).intervalIntegrable a b)
    (fun u hu => cellLower_le_crossDensity hN hNT hleft hright hu depth)
  simpa only [intervalIntegral.integral_const, smul_eq_mul] using h

theorem cellLower_refinement_le (N : ℕ) (a b : ℝ) {d e : ℕ} (hde : d ≤ e) :
    cellLower N a b d ≤ cellLower N a b e :=
  refinedLower_monotone (cellControls N a b) hde

/-- The interpolation curve is the actual physical-source polynomial in its normalized coordinate. -/
theorem cellControls_curve (N : ℕ) (a b t : ℝ) :
    curve (cellControls N a b) t = polynomial N
      (Real.exp (-b / 2) + (Real.exp (-a / 2) - Real.exp (-b / 2)) * t) :=
  curve_onInterval _ _ _ _ _ _

/-- Observation errors are returned on the actual normalized arithmetic curve. -/
theorem actual_cell_sample_error (N : ℕ) (a b y0 ym y1 ε : ℝ)
    (hε : 0 ≤ ε)
    (h0 : |y0 - polynomial N (Real.exp (-b / 2))| ≤ ε)
    (hm : |ym - polynomial N ((Real.exp (-b / 2) + Real.exp (-a / 2)) / 2)| ≤ ε)
    (h1 : |y1 - polynomial N (Real.exp (-a / 2))| ≤ ε)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    |curve (fromSamples y0 ym y1) t - curve (cellControls N a b) t| ≤ (5 / 4) * ε := by
  apply three_sample_error _ _ _ _ _ hε ?_ ?_ ?_ ht0 ht1
  · simpa only [cellControls_curve, mul_zero, add_zero] using h0
  · have he : Real.exp (-b / 2) +
        (Real.exp (-a / 2) - Real.exp (-b / 2)) * (1 / 2) =
        (Real.exp (-b / 2) + Real.exp (-a / 2)) / 2 := by ring
    simpa only [cellControls_curve, he] using hm
  · have he : Real.exp (-b / 2) +
        (Real.exp (-a / 2) - Real.exp (-b / 2)) * 1 = Real.exp (-a / 2) := by ring
    simpa only [cellControls_curve, he] using h1

/-- The inherited exact signed sample is the same affine source at the left event. -/
theorem sampleResidue_eq_moment_difference (N : ℕ) :
    sampleResidue N = weightedMass N - (Real.sqrt N)⁻¹ * signedMass N := by
  simp only [sampleResidue, weightedMass, signedMass, mertensPrefix, Nat.floor_natCast]

end GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
