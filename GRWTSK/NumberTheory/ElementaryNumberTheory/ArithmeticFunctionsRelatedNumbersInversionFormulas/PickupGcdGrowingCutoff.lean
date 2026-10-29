/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupGcdRowTail
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupOctaveGcdCorrelation
import GRWTSK.RealFunctions.ReciprocalCubeTail

/-!
# A growing gcd cutoff in the actual signed endpoint octave

The head and tail partition the original gcd labels, with no change to either
ordered quotient variable, the source products, the masks or the cell kernel.
Only the explicitly separated proper tail is paid in absolute value. A row
costs at most 4*N/d^3. The finite reciprocal-cube telescope then costs at most
2*N/D^2 per cell and 4*M^2/D^2 over M cells M<=N<2*M.

The head is kept signed. Its growing-cutoff power saving is not supplied here;
neither an RH wrapper nor a new cancellation hypothesis is introduced. The
endpoint conclusion uses the maintained exact source identity, with no added
quadrature allowance. Positive integer cutoffs include D>=N, empty tails and
the first octave j=0.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupGcdGrowingCutoff

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector
open GRWTSK.NumberTheory.Moebius.PickupGcdRowTail
open GRWTSK.NumberTheory.Moebius.PickupOctaveGcdCorrelation
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.Analysis.Series.ReciprocalCubeTail

/-- Original signed rows at gcd labels at most D; no absolute value is taken. -/
def gcdCellHead (D N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, if d ≤ D then gcdCellBlock N d else 0

/-- Original signed rows at gcd labels strictly greater than D. -/
def gcdCellTail (D N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, if D < d then gcdCellBlock N d else 0

/-- The separate absolute price of precisely the proper tail. -/
def gcdCellTailMass (D N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, if D < d then |gcdCellBlock N d| else 0

private theorem sum_cut_le_eq_Icc_min (f : ℕ → ℝ) (D N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, if d ≤ D then f d else 0) =
      ∑ d ∈ Finset.Icc 1 (min D N), f d := by
  have hsub : Finset.Icc 1 (min D N) ⊆ Finset.Icc 1 N := by
    intro d hd
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hd).1,
      (Finset.mem_Icc.mp hd).2.trans (min_le_right _ _)⟩
  calc
    _ = ∑ d ∈ Finset.Icc 1 (min D N), if d ≤ D then f d else 0 := by
      symm
      apply Finset.sum_subset hsub
      intro d hd hnot
      have hd1 := (Finset.mem_Icc.mp hd).1
      have hdN := (Finset.mem_Icc.mp hd).2
      have hdD : ¬ d ≤ D := by
        intro h
        exact hnot (Finset.mem_Icc.mpr ⟨hd1, le_min h hdN⟩)
      exact if_neg hdD
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      exact if_pos ((Finset.mem_Icc.mp hd).2.trans (min_le_left _ _))

private theorem sum_cut_gt_eq_Icc (f : ℕ → ℝ) (D N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, if D < d then f d else 0) =
      ∑ d ∈ Finset.Icc (D + 1) N, f d := by
  have hsub : Finset.Icc (D + 1) N ⊆ Finset.Icc 1 N := by
    intro d hd
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hd).1; omega,
      (Finset.mem_Icc.mp hd).2⟩
  calc
    _ = ∑ d ∈ Finset.Icc (D + 1) N, if D < d then f d else 0 := by
      symm
      apply Finset.sum_subset hsub
      intro d hd hnot
      have hdN := (Finset.mem_Icc.mp hd).2
      have hDd : ¬ D < d := by
        intro h
        exact hnot (Finset.mem_Icc.mpr ⟨by omega, hdN⟩)
      exact if_neg hDd
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      exact if_pos (by have := (Finset.mem_Icc.mp hd).1; omega)

/-- The head has the literal cutoff 1<=d<=min(D,N). -/
theorem gcdCellHead_eq_sum_Icc_min (D N : ℕ) :
    gcdCellHead D N = ∑ d ∈ Finset.Icc 1 (min D N), gcdCellBlock N d :=
  sum_cut_le_eq_Icc_min _ D N

/-- The original proper tail, without any sign change. -/
theorem gcdCellTail_eq_sum_Icc (D N : ℕ) :
    gcdCellTail D N = ∑ d ∈ Finset.Icc (D + 1) N, gcdCellBlock N d :=
  sum_cut_gt_eq_Icc _ D N

/-- The absolute budget reads exactly D<d<=N, rather than a different source. -/
theorem gcdCellTailMass_eq_sum_Icc (D N : ℕ) :
    gcdCellTailMass D N = ∑ d ∈ Finset.Icc (D + 1) N, |gcdCellBlock N d| :=
  sum_cut_gt_eq_Icc _ D N

/-- Consume the maintained gcd identity and partition its actual rows. -/
theorem birthExpression_eq_head_add_tail (D : ℕ) {N : ℕ} (hN : 1 ≤ N) :
    birthExpression N = gcdCellHead D N + gcdCellTail D N := by
  rw [birthExpression_eq_gcdCellSum hN]
  unfold gcdCellHead gcdCellTail
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d _
  by_cases h : d ≤ D
  · simp only [if_pos h, if_neg (not_lt.mpr h), add_zero]
  · simp only [if_neg h, if_pos (lt_of_not_ge h), zero_add]

/-- Source weights and all zero coefficients stay inside the signed head. -/
theorem gcdCellHead_eq_squarefree_correlation (D N : ℕ) :
    gcdCellHead D N = ∑ d ∈ Finset.Icc 1 (min D N),
      moebiusReal d ^ 2 * coprimeCellCorrelation N d := by
  rw [gcdCellHead_eq_sum_Icc_min]
  exact Finset.sum_congr rfl (fun d _ => gcdCellBlock_eq_squarefree_weight N d)

/-- Only the tail is bounded absolutely. No sign assertion is made for it. -/
theorem abs_gcdCellTail_le_mass (D N : ℕ) :
    |gcdCellTail D N| ≤ gcdCellTailMass D N := by
  rw [gcdCellTail_eq_sum_Icc, gcdCellTailMass_eq_sum_Icc]
  exact Finset.abs_sum_le_sum_abs _ _

/-- The exact finite reciprocal-cube estimate pays the proper cell tail. -/
theorem gcdCellTailMass_le {D N : ℕ} (hD : 1 ≤ D) (hN : 1 ≤ N) :
    gcdCellTailMass D N ≤ 2 * (N : ℝ) / (D : ℝ) ^ 2 := by
  have hDpos : (0 : ℝ) < D := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hD)
  rw [gcdCellTailMass_eq_sum_Icc]
  calc
    _ ≤ ∑ d ∈ Finset.Icc (D + 1) N, 4 * (N : ℝ) * (1 / (d : ℝ) ^ 3) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd1 : 1 ≤ d := by have := (Finset.mem_Icc.mp hd).1; omega
      simpa only [div_eq_mul_inv, one_div] using
        gcdCellBlock_abs_le_cubic_row_budget hN hd1
    _ = 4 * (N : ℝ) *
        (∑ d ∈ Finset.Icc (D + 1) N, 1 / (d : ℝ) ^ 3) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ 4 * (N : ℝ) * (1 / (2 * (D : ℝ) ^ 2)) :=
      mul_le_mul_of_nonneg_left (sum_Icc_reciprocal_cube_le hD) (by positivity)
    _ = 2 * (N : ℝ) / (D : ℝ) ^ 2 := by
      field_simp [hDpos.ne']
      <;> ring

/-- Growing gcd head over the original M cells, M=2^j. -/
def gcdOctaveHead (j D : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j), gcdCellHead D (2 ^ j + k)

/-- Signed proper tail over the same original M cells. -/
def gcdOctaveTail (j D : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j), gcdCellTail D (2 ^ j + k)

/-- Total absolute row budget only over the removed proper tail. -/
def gcdOctaveTailMass (j D : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j), gcdCellTailMass D (2 ^ j + k)

/-- Exact signed full increment=head+tail. No sector sign is used or assumed. -/
theorem dyadic_increment_eq_head_add_tail (j D : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j =
      gcdOctaveHead j D + gcdOctaveTail j D := by
  rw [dyadicBirthSum_sub]
  unfold gcdOctaveHead gcdOctaveTail
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  apply birthExpression_eq_head_add_tail
  have : 0 < 2 ^ j := by positivity
  omega

/-- The endpoint specialization consumes the actual dyadic source identity. -/
theorem endpoint_increment_eq_head_add_tail (j D : ℕ) :
    endpointSum (dyadicTime (j + 1)) - endpointSum (dyadicTime j) =
      gcdOctaveHead j D + gcdOctaveTail j D := by
  rw [endpoint_dyadic_eq_birthSum, endpoint_dyadic_eq_birthSum]
  exact dyadic_increment_eq_head_add_tail j D

/-- Exact squarefree weighted signed head with both quotient orders and masks. -/
theorem gcdOctaveHead_eq_squarefree_correlation (j D : ℕ) :
    gcdOctaveHead j D = ∑ k ∈ Finset.range (2 ^ j),
      ∑ d ∈ Finset.Icc 1 (min D (2 ^ j + k)),
        moebiusReal d ^ 2 * coprimeCellCorrelation (2 ^ j + k) d := by
  unfold gcdOctaveHead
  exact Finset.sum_congr rfl (fun k _ => gcdCellHead_eq_squarefree_correlation D _)

/-- M cells with N<2*M cost at most 4*M^2/D^2, including j=0. -/
theorem gcdOctaveTailMass_le (j : ℕ) {D : ℕ} (hD : 1 ≤ D) :
    gcdOctaveTailMass j D ≤ 4 * ((2 ^ j : ℕ) : ℝ) ^ 2 / (D : ℝ) ^ 2 := by
  let M : ℕ := 2 ^ j
  have hM : 1 ≤ M := by dsimp [M]; positivity
  unfold gcdOctaveTailMass
  change (∑ k ∈ Finset.range M, gcdCellTailMass D (M + k)) ≤ _
  calc
    _ ≤ ∑ _k ∈ Finset.range M, 4 * (M : ℝ) / (D : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      have hN : 1 ≤ M + k := by omega
      have hkM : k < M := Finset.mem_range.mp hk
      have hNM : ((M + k : ℕ) : ℝ) ≤ 2 * (M : ℝ) := by
        exact_mod_cast (show M + k ≤ 2 * M by omega)
      apply (gcdCellTailMass_le hD hN).trans
      apply div_le_div_of_nonneg_right _ (sq_nonneg _)
      linarith
    _ = 4 * ((2 ^ j : ℕ) : ℝ) ^ 2 / (D : ℝ) ^ 2 := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      dsimp [M]
      ring

/-- The proposed proper-tail estimate with both original positive cutoffs
written out. There is no absolute-value replacement of the signed head. -/
theorem sum_octave_proper_gcd_abs_le (j : ℕ) {D : ℕ} (hD : 1 ≤ D) :
    (∑ k ∈ Finset.range (2 ^ j),
      ∑ d ∈ Finset.Icc (D + 1) (2 ^ j + k), |gcdCellBlock (2 ^ j + k) d|) ≤
      4 * ((2 ^ j : ℕ) : ℝ) ^ 2 / (D : ℝ) ^ 2 := by
  simpa only [gcdOctaveTailMass, gcdCellTailMass_eq_sum_Icc] using
    gcdOctaveTailMass_le j hD

/-- The signed proper tail is paid by precisely its absolute row budget. -/
theorem abs_gcdOctaveTail_le_mass (j D : ℕ) :
    |gcdOctaveTail j D| ≤ gcdOctaveTailMass j D := by
  unfold gcdOctaveTail gcdOctaveTailMass
  exact (Finset.abs_sum_le_sum_abs _ _).trans
    (Finset.sum_le_sum (fun k _ => abs_gcdCellTail_le_mass D _))

/-- A source-preserving truncation error bound for the actual endpoint
increment. The growing signed head remains unestimated. -/
theorem abs_endpoint_increment_sub_head_le (j : ℕ) {D : ℕ} (hD : 1 ≤ D) :
    |(endpointSum (dyadicTime (j + 1)) - endpointSum (dyadicTime j)) -
      gcdOctaveHead j D| ≤ 4 * ((2 ^ j : ℕ) : ℝ) ^ 2 / (D : ℝ) ^ 2 := by
  rw [endpoint_increment_eq_head_add_tail]
  have hid : gcdOctaveHead j D + gcdOctaveTail j D - gcdOctaveHead j D =
      gcdOctaveTail j D := by ring
  rw [hid]
  exact (abs_gcdOctaveTail_le_mass j D).trans (gcdOctaveTailMass_le j hD)

end GRWTSK.NumberTheory.Moebius.PickupGcdGrowingCutoff
