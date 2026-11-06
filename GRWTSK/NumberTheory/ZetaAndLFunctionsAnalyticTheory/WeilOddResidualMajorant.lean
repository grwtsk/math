/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualRows

set_option autoImplicit false
noncomputable section

/-!
# Cubic remainder for the bordered odd Weil coefficient expression

The proof retains the entire finite trial. The prime remainder uses the
existing von Mangoldt signal bound and the linear buffer. The boundary
remainder uses the squared buffer and the decreasing nonnegative boundary
signal. The high-signal correction pays the separate estimate on
`g_m - T/(4*m)`. The scalar pole cost involves only the auxiliary coordinate.
This is the per-row estimate in Sections 4–5 of the odd pole displacement
note, with the exact low values `g_n` retained in the weights.

The source row identification and the Parseval comparison are separate
from the coefficient estimate. Independent analytical review and novelty
assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualMajorant

open LowSchur OddOutputTrace OddBoundarySignalBounds OddResidualRows OddResidualSummation

private theorem abs_oddPrimeRow_le (T : ℝ) {m n : ℝ} (hn : 0 ≤ n) (hmn : n < m) :
    |oddPrimeRow T m n| ≤ (primeMass T / 2) / (m - n) := by
  have hm := hn.trans_lt hmn
  have hd : 0 < m ^ 2 - n ^ 2 := by nlinarith
  rw [oddPrimeRow_split T m n hm.ne' hd.ne']
  calc
    _ ≤ |primeSignal T n / m| + |oddPrimeRemainder T m n| := abs_add_le _ _
    _ ≤ (primeMass T / 2) / m +
        (primeMass T / 2) * (n / (m * (m - n))) := by
      rw [abs_div, abs_of_pos hm]
      exact add_le_add (div_le_div_of_nonneg_right (abs_primeSignal_le T n) hm.le)
        (abs_oddPrimeRemainder_le T hn hmn)
    _ = _ := by
      field_simp [hm.ne', (sub_pos.mpr hmn).ne']
      ring

private theorem abs_physicalRowRemainder_le (T : ℝ) (hT : 0 < T)
    {m n : ℕ} (hmn : n < m) {theta theta₂ : ℝ} (htheta : 0 < theta) (htheta₂ : 0 < theta₂)
    (hbuffer : theta * (m : ℝ) ≤ (m : ℝ) - n)
    (hbuffer₂ : theta₂ * (m : ℝ) ^ 2 ≤ (m : ℝ) ^ 2 - (n : ℝ) ^ 2)
    (hgm : 0 ≤ boundarySignal T m) (hgnm : boundarySignal T m ≤ boundarySignal T n) :
    |physicalRowRemainder T m n| ≤
      ((2 / T) * (n : ℝ) ^ 3 * boundarySignal T n / theta₂ +
        (primeMass T / Real.pi) * (n : ℝ) ^ 2 / theta) / (m : ℝ) ^ 3 := by
  have hm : (0 : ℝ) < m := by exact_mod_cast Nat.zero_lt_of_lt hmn
  have hn := Nat.cast_nonneg (α := ℝ) n
  have hmnR : (n : ℝ) < m := by exact_mod_cast hmn
  have hd : 0 < (m : ℝ) ^ 2 - (n : ℝ) ^ 2 := by nlinarith
  have hK := primeMass_nonneg T
  have hgn := hgm.trans hgnm
  have hden : 0 < (m : ℝ) * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) := mul_pos hm hd
  have hden₂ : theta₂ * (m : ℝ) ^ 3 ≤ (m : ℝ) * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) := by
    calc
      _ = (m : ℝ) * (theta₂ * (m : ℝ) ^ 2) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hbuffer₂ hm.le
  have hboundary :
      |-(2 / T) * (n : ℝ) ^ 3 * (boundarySignal T n - boundarySignal T m) /
        ((m : ℝ) * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2))| ≤
      ((2 / T) * (n : ℝ) ^ 3 * boundarySignal T n / theta₂) / (m : ℝ) ^ 3 := by
    rw [abs_div, abs_mul, abs_mul, abs_neg, abs_of_nonneg (by positivity : 0 ≤ 2 / T),
      abs_of_nonneg (pow_nonneg hn _), abs_of_nonneg (sub_nonneg.mpr hgnm), abs_of_pos hden]
    calc
      _ ≤ ((2 / T) * (n : ℝ) ^ 3 * boundarySignal T n) /
          ((m : ℝ) * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2)) := by
        gcongr
        exact sub_le_self _ hgm
      _ ≤ ((2 / T) * (n : ℝ) ^ 3 * boundarySignal T n) /
          (theta₂ * (m : ℝ) ^ 3) :=
        div_le_div_of_nonneg_left (by positivity) (by positivity) hden₂
      _ = _ := by ring
  have hprime :
      |(2 / Real.pi) * (n : ℝ) ^ 2 * oddPrimeRow T m n / (m : ℝ) ^ 2| ≤
      ((primeMass T / Real.pi) * (n : ℝ) ^ 2 / theta) / (m : ℝ) ^ 3 := by
    have hr := (abs_oddPrimeRow_le T hn hmnR).trans
      (div_le_div_of_nonneg_left (by positivity : 0 ≤ primeMass T / 2)
        (by positivity : 0 < theta * (m : ℝ)) hbuffer)
    rw [abs_div, abs_mul, abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 / Real.pi),
      abs_of_nonneg (sq_nonneg (n : ℝ)), abs_of_nonneg (sq_nonneg (m : ℝ))]
    calc
      _ ≤ (2 / Real.pi) * (n : ℝ) ^ 2 * ((primeMass T / 2) / (theta * (m : ℝ))) /
          (m : ℝ) ^ 2 := by gcongr
      _ = _ := by ring
  unfold physicalRowRemainder
  calc
    _ ≤ _ := abs_sub _ _
    _ ≤ _ := add_le_add hboundary hprime
    _ = _ := by ring

/-- The low coordinates use a linear and a squared denominator buffer. -/
def residualBuffer (M L : ℕ) : ℝ := 1 - (M : ℝ) / ((L : ℝ) + 1)

def squaredResidualBuffer (M L : ℕ) : ℝ := 1 - ((M : ℝ) / ((L : ℝ) + 1)) ^ 2

private theorem buffers_pos {M L : ℕ} (hML : M ≤ L) :
    0 < residualBuffer M L ∧ 0 < squaredResidualBuffer M L := by
  have hMR : (M : ℝ) ≤ L := by exact_mod_cast hML
  have hfrac : (M : ℝ) / ((L : ℝ) + 1) < 1 := by
    apply (div_lt_iff₀ (by positivity)).2
    linarith
  have hnonneg : 0 ≤ (M : ℝ) / ((L : ℝ) + 1) := by positivity
  unfold residualBuffer squaredResidualBuffer
  exact ⟨sub_pos.mpr hfrac, sub_pos.mpr (by nlinarith)⟩

private theorem buffers_le {M L m n : ℕ} (hm : L < m) (hn : n ≤ M) :
    residualBuffer M L * (m : ℝ) ≤ (m : ℝ) - n ∧
      squaredResidualBuffer M L * (m : ℝ) ^ 2 ≤ (m : ℝ) ^ 2 - (n : ℝ) ^ 2 := by
  have hnR : (n : ℝ) ≤ M := by exact_mod_cast hn
  have hmR : (L : ℝ) + 1 ≤ m := by exact_mod_cast Nat.succ_le_of_lt hm
  have hmpos : (0 : ℝ) < m := by exact_mod_cast Nat.zero_lt_of_lt hm
  have hdiv : (n : ℝ) / m ≤ (M : ℝ) / ((L : ℝ) + 1) :=
    (div_le_div_of_nonneg_right hnR hmpos.le).trans
      (div_le_div_of_nonneg_left (Nat.cast_nonneg _) (by positivity) hmR)
  have hnfrac := (div_le_iff₀ hmpos).1 hdiv
  have hnonneg : 0 ≤ (M : ℝ) / ((L : ℝ) + 1) * (m : ℝ) := by positivity
  have hnfrac₂ := pow_le_pow_left₀ (Nat.cast_nonneg (α := ℝ) n) hnfrac 2
  unfold residualBuffer squaredResidualBuffer
  constructor <;> nlinarith [mul_pow ((M : ℝ) / ((L : ℝ) + 1)) (m : ℝ) 2]

def remainderWeight (M L : ℕ) (T : ℝ) (n : ℕ) : ℝ :=
  (2 / T) * (n : ℝ) ^ 3 * boundarySignal T n / squaredResidualBuffer M L +
    (primeMass T / Real.pi) * (n : ℝ) ^ 2 / residualBuffer M L

/-- The separately priced high-signal approximation after multiplication by `m²`. -/
def boundaryErrorScale (T : ℝ) : ℝ :=
  (1 + Real.exp (-T) / (1 - Real.exp (-4 * T))) * (T ^ 2 / Real.pi ^ 2)

def remainderEnvelope (M L : ℕ) (T : ℝ) (x : ℕ → ℝ) (a : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 M, |x n| * remainderWeight M L T n) +
    (2 / T) * boundaryErrorScale T * |derivativeTrace M x| + poleScale T * |a| * poleNode T

theorem abs_remoteRemainder_le {M L m : ℕ} (hML : M ≤ L) (hm : L < m)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a : ℝ) :
    |remoteRemainder M T x a m| ≤ remainderEnvelope M L T x a / (m : ℝ) ^ 3 := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast Nat.zero_lt_of_lt hm
  have hp := buffers_pos hML
  have hgm := boundarySignal_nonneg T hT.le m
  have hMono := boundarySignal_antitone T hT
  have hApprox : |boundarySignal T m - T / (4 * (m : ℝ))| ≤
      boundaryErrorScale T / (m : ℝ) ^ 2 := by
    convert abs_boundarySignal_sub_le T hT (Nat.zero_lt_of_lt hm) using 1
    unfold boundaryErrorScale
    ring
  have hsum :
      |∑ n ∈ Finset.Icc 1 M, (-1 : ℝ) ^ n * x n * physicalRowRemainder T m n| ≤
        (∑ n ∈ Finset.Icc 1 M, |x n| * remainderWeight M L T n) / (m : ℝ) ^ 3 := by
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    simp only [div_eq_mul_inv, Finset.sum_mul]
    apply Finset.sum_le_sum
    intro n hn
    have hnM := (Finset.mem_Icc.mp hn).2
    have hnm := hnM.trans_lt (hML.trans_lt hm)
    have hb := buffers_le hm hnM
    have hr := abs_physicalRowRemainder_le T hT hnm hp.1 hp.2 hb.1 hb.2 hgm (hMono hnm.le)
    simp only [abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
    rw [mul_assoc]
    exact mul_le_mul_of_nonneg_left (by simpa only [remainderWeight, div_eq_mul_inv] using hr) (abs_nonneg _)
  have hboundary :
      |boundaryCorrection T m * derivativeTrace M x| ≤
        ((2 / T) * boundaryErrorScale T * |derivativeTrace M x|) / (m : ℝ) ^ 3 := by
    unfold boundaryCorrection
    rw [abs_mul, abs_div, abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 / T), abs_of_pos hmR]
    calc
      _ ≤ ((2 / T) * (boundaryErrorScale T / (m : ℝ) ^ 2) / (m : ℝ)) * |derivativeTrace M x| := by gcongr
      _ = _ := by ring
  have hpole := abs_poleRemainder_le T hT (Nat.zero_lt_of_lt hm) a
  unfold remoteRemainder remainderEnvelope
  calc
    _ ≤ _ := (abs_add_le _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ ≤ _ := add_le_add (add_le_add hsum hboundary) hpole
    _ = _ := by ring

/-- Quadratic price for the finite trial and the auxiliary pole coordinate. -/
def remainderQuadraticAllowance (M L : ℕ) (T : ℝ) (x : ℕ → ℝ) (a : ℝ) : ℝ :=
  3 * ((∑ n ∈ Finset.Icc 1 M, remainderWeight M L T n) *
        (∑ n ∈ Finset.Icc 1 M, remainderWeight M L T n * (x n) ^ 2) +
      ((2 / T) * boundaryErrorScale T) ^ 2 * (derivativeTrace M x) ^ 2 +
      (poleScale T * poleNode T) ^ 2 * a ^ 2)

theorem remainderEnvelope_sq_le {M L : ℕ} (hML : M ≤ L)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a : ℝ) :
    (remainderEnvelope M L T x a) ^ 2 ≤ remainderQuadraticAllowance M L T x a := by
  obtain ⟨hbuffer, hbuffer₂⟩ := buffers_pos hML
  have hw (n : ℕ) : 0 ≤ remainderWeight M L T n := by
    have hg := boundarySignal_nonneg T hT.le n
    have hK := primeMass_nonneg T
    unfold remainderWeight
    positivity
  have hc := Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul (Finset.Icc 1 M)
    (r := fun n => |x n| * remainderWeight M L T n)
    (f := remainderWeight M L T)
    (g := fun n => remainderWeight M L T n * (x n) ^ 2)
    (fun n _ => hw n) (fun n _ => mul_nonneg (hw n) (sq_nonneg _))
    (fun n _ => by rw [mul_pow, sq_abs]; ring_nf; exact le_rfl)
  have hsum := three_prices_square
    (∑ n ∈ Finset.Icc 1 M, |x n| * remainderWeight M L T n)
    ((2 / T) * boundaryErrorScale T * |derivativeTrace M x|)
    (poleScale T * |a| * poleNode T)
  unfold remainderEnvelope remainderQuadraticAllowance
  simp only [mul_pow, sq_abs] at hsum
  nlinarith

/-- The two-trace remote allowance retains the signed cross term through `J`. -/
def completeRemoteAllowance (M L J : ℕ) (T : ℝ) (x : ℕ → ℝ) (a s : ℝ) : ℝ :=
  (1 + s) *
    ((∑ n ∈ Finset.range (J - L),
      (leadingRow (firstTrace M T x a) (derivativeTrace M x)
        (derivativeWeight T) (L + 1 + n)) ^ 2) +
      2 * (firstTrace M T x a) ^ 2 / (J : ℝ) +
      2 * (1 / 2 + primeMass T / Real.pi) ^ 2 * (derivativeTrace M x) ^ 2 /
        (3 * (J : ℝ) ^ 3)) +
    (1 + s⁻¹) * remainderQuadraticAllowance M L T x a / (5 * (L : ℝ) ^ 5)

/-- Bounds the complete infinite tail of the bordered coefficient expression
for every finite trial and auxiliary coordinate, with explicit cutoffs. -/
theorem augmentedRemoteRow_complete_tail_bound {M L J : ℕ} (hML : M ≤ L)
    (hL : 0 < L) (hLJ : L ≤ J) (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ)
    (a s : ℝ) (hs : 0 < s) :
    Summable (fun n : ℕ => (augmentedRemoteRow M T x a (L + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (augmentedRemoteRow M T x a (L + 1 + n)) ^ 2) ≤
        completeRemoteAllowance M L J T x a s := by
  exact augmentedRemoteRow_tail_bound hML hL hLJ T hT x a _
    (remainderQuadraticAllowance M L T x a) s hs
    (fun _ hm => abs_remoteRemainder_le hML hm T hT x a)
    (remainderEnvelope_sq_le hML T hT x a)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualMajorant
