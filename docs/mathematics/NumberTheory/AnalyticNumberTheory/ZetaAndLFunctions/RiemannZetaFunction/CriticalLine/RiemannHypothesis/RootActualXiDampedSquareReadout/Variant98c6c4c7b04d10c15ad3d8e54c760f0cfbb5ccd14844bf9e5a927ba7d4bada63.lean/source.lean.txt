import SourceActualXiDampedFiniteBound
import SourceActualXiHalfFiniteReadout

/-!
The same actual signed damped primitive has a joint real square-weighted
Mangoldt readout. The closed upper atom and lower prime seven are explicit;
the logarithmic main term remains. Positivity of the arithmetic weights
supplies no critical cancellation or undamped average witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiDampedSquareReadout
open ArithmeticFunction Set
open SourceActualXiDampedFiniteBound SourceActualXiHalfFiniteReadout
open SourceMangoldtAbel RootActualXiTailPrimitive RH16ActualPsiNegativeBlock WeightedPrimeMertens
noncomputable section

/-- Literal real square weight, combining both critical-half and inverse-square boundaries. -/
def actualDampedXiSquareKernel (Y : ℝ) (n : ℕ) : ℝ :=
  (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt Y) ^ 2

/-- The unchanged actual closed Mangoldt atoms strictly above the retained lower seven. -/
def actualDampedXiSquareWindowSeven (Y : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ) * actualDampedXiSquareKernel Y n

/-- These are genuine nonnegative real arithmetic squares for every finite cutoff. -/
theorem actualDampedXiSquareWindowSeven_nonneg (Y : ℝ) :
    0 ≤ actualDampedXiSquareWindowSeven Y := by
  unfold actualDampedXiSquareWindowSeven actualDampedXiSquareKernel
  exact Finset.sum_nonneg (fun n _ => mul_nonneg vonMangoldt_nonneg (sq_nonneg _))

/-- Every touching closed upper atom has exactly zero square weight. -/
theorem actualDampedXiSquareKernel_touching (n : ℕ) :
    actualDampedXiSquareKernel (n : ℝ) n = 0 := by
  simp [actualDampedXiSquareKernel]

private theorem closed_prefix_split {Y : ℝ} (hY : 7 ≤ Y) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Ioc 0 (Nat.floor Y), f n) =
      (∑ n ∈ Finset.Ioc 0 7, f n) + ∑ n ∈ Finset.Ioc 7 (Nat.floor Y), f n := by
  have hu : Finset.Ioc 0 (Nat.floor Y) = Finset.Ioc 0 7 ∪ Finset.Ioc 7 (Nat.floor Y) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_union]
    have hf : 7 ≤ Nat.floor Y := Nat.le_floor hY
    omega
  have hd : Disjoint (Finset.Ioc 0 7) (Finset.Ioc 7 (Nat.floor Y)) := by
    rw [Finset.disjoint_left]
    intro n hn hm
    simp only [Finset.mem_Ioc] at hn hm
    omega
  rw [hu, Finset.sum_union hd]

private theorem psi_window {Y : ℝ} (hY : 7 ≤ Y) :
    (∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ)) =
      Chebyshev.psi Y - Chebyshev.psi 7 := by
  have hs := closed_prefix_split hY (vonMangoldt : ℕ → ℝ)
  change _ = _ at hs
  simp only [Chebyshev.psi, Nat.floor_ofNat]
  linarith

private theorem error_window {Y : ℝ} (hY : 7 ≤ Y) :
    mangoldtLogError (Real.log Y) - mangoldtLogError (Real.log 7) =
      (∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ) / (n : ℝ)) -
        Real.log (Y / 7) := by
  have hp : 0 < Y := by linarith
  have hs := closed_prefix_split hY (fun n => (vonMangoldt n : ℝ) / (n : ℝ))
  unfold mangoldtLogError mangoldtLogPrefix weightedMangoldt
  rw [Real.exp_log hp, Real.exp_log (by norm_num : (0 : ℝ) < 7), Nat.floor_ofNat,
    Real.log_div hp.ne' (by norm_num : (7 : ℝ) ≠ 0)]
  linarith

/-- The exact square expansion retains both weighted sums and the complete closed psi boundary. -/
theorem actualDampedXiSquareWindowSeven_eq_expanded {Y : ℝ} (hY : 7 ≤ Y) :
    actualDampedXiSquareWindowSeven Y =
      (∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ) / (n : ℝ)) -
        2 * actualMangoldtHalfWindowSeven Y / Real.sqrt Y +
          (Chebyshev.psi Y - Chebyshev.psi 7) / Y := by
  have hp : 0 < Y := by linarith
  have hy := Real.sq_sqrt hp.le
  have hsy : Real.sqrt Y ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hterm (n : ℕ) (hn : n ∈ Finset.Ioc 7 (Nat.floor Y)) :
      (vonMangoldt n : ℝ) * actualDampedXiSquareKernel Y n =
        (vonMangoldt n : ℝ) / (n : ℝ) -
          2 * ((vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) / Real.sqrt Y +
            (vonMangoldt n : ℝ) / Y := by
    have hn0 : 0 < (n : ℝ) := by
      have hnat : 7 < n := (Finset.mem_Ioc.mp hn).1
      exact_mod_cast (show 0 < n by omega)
    have hsn : Real.sqrt (n : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hn0).ne'
    have hns := Real.sq_sqrt hn0.le
    unfold actualDampedXiSquareKernel
    field_simp
    ring_nf
    simp only [hns, hy]
    ring
  unfold actualDampedXiSquareWindowSeven
  rw [Finset.sum_congr rfl hterm]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
    ← Finset.sum_div, ← Finset.mul_sum]
  rw [psi_window hY]
  rfl

/-- The original signed primitive equals the joint actual square inventory minus its true main term. -/
theorem actualDampedXiFinitePrimitive_eq_square_readout {Y : ℝ} (hY : 7 ≤ Y) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive (Real.log Y) =
      actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) + 3 +
        shiftedActualChebyshev 7 / 7 +
          (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Y -
            2 * (Chebyshev.psi 7 + 7 +
              2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
                (Real.sqrt 7 * Real.sqrt Y) := by
  have hp : 0 < Y := by linarith
  have ht : Real.log 7 ≤ Real.log Y := Real.log_le_log (by norm_num) hY
  have he := actualDampedXiFinitePrimitive_closed_readout ht
  have hf := actualAnchoredXiTailPrimitive_eq_finite ht
  rw [Real.exp_log hp] at he hf
  have hpow : Real.exp (-Real.log Y / 2) = 1 / Real.sqrt Y := by
    rw [show -Real.log Y / 2 = -(Real.log Y / 2) by ring,
      Real.exp_neg, Real.exp_half, Real.exp_log hp]
    rfl
  rw [hf, hpow, error_window hY] at he
  rw [actualDampedXiSquareWindowSeven_eq_expanded hY]
  rw [he]
  unfold shiftedActualChebyshev
  have hs := Real.sq_sqrt hp.le
  have hn : Real.sqrt Y ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hn7 : Real.sqrt (7 : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num)).ne'
  field_simp
  ring_nf
  simp only [hs]
  ring

end
end FormalResearch.RiemannHypothesis.RootActualXiDampedSquareReadout
