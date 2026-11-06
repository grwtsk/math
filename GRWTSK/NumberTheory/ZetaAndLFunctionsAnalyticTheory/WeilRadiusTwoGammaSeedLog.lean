/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoMultiplierHighBracket
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# Fixed-grid logarithms for the radius-two gamma diagonal

A sixty-term logarithm sum encloses each mantissa node on the 50-bit
grid. Integer quotient inequalities put every positive mode between
two neighboring nodes after exact binary scaling. Monotonicity then
encloses the mode logarithm from the two endpoint observations. The
same Taylor sum supplies the common logarithm of two. Cancelling the
logarithm of pi in the shared gamma term keeps the harmonic-sum and
Euler-constant residual explicit. The final endpoints preserve the
signed image contribution and the multiplier remainder.

The Taylor remainder uses Mathlib's
Real.abs_log_sub_add_sum_range_le. Local attribution is to grwtsk
contributors. Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGammaSeedLog

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open OddOutputTrace OddRootProjection RadiusTwoMultiplierHighBracket

private def error : ℚ := 1 / 2^60

private def logOneMinusApprox (x : ℚ) : ℚ :=
  -(∑ i ∈ Finset.range 60, x^(i+1) / (i+1 : ℕ))

private theorem logOneMinus_error {x : ℚ} (hx : 0 ≤ x) (hx' : x ≤ 1/2) :
    |Real.log (1-(x:ℝ)) - (logOneMinusApprox x:ℝ)| ≤ (error:ℝ) := by
  have hx0 : (0:ℝ) ≤ (x:ℝ) := by exact_mod_cast hx
  have hx1 : (x:ℝ) ≤ 1/2 := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using (Rat.cast_le (K := ℝ)).2 hx'
  have ha : |(x:ℝ)| ≤ 1/2 := by rwa [abs_of_nonneg hx0]
  have h := Real.abs_log_sub_add_sum_range_le (ha.trans_lt (by norm_num)) 60
  have hEq : Real.log (1-(x:ℝ)) - (logOneMinusApprox x:ℝ) =
      (∑ i ∈ Finset.range 60, (x:ℝ)^(i+1)/((i:ℝ)+1)) + Real.log (1-(x:ℝ)) := by
    simp [logOneMinusApprox, add_comm]
  rw [hEq]
  refine h.trans ?_
  calc
    _ ≤ (1/2:ℝ)^61 / (1-|(x:ℝ)|) :=
      div_le_div_of_nonneg_right (pow_le_pow_left₀ (abs_nonneg _) ha 61) (by linarith only [ha])
    _ ≤ (1/2:ℝ)^61 / (1/2:ℝ) :=
      div_le_div_of_nonneg_left (by positivity) (by norm_num) (by linarith only [ha])
    _ = _ := by norm_num [error]

private def logTwoApprox : ℚ := -logOneMinusApprox (1/2)

private theorem logTwo_error :
    |Real.log 2 - (logTwoApprox:ℝ)| ≤ (error:ℝ) := by
  have h := logOneMinus_error (x := 1/2) (by norm_num) (by norm_num)
  have heq : Real.log 2 - (logTwoApprox:ℝ) =
      -(Real.log (1-((1/2:ℚ):ℝ)) - (logOneMinusApprox (1/2):ℝ)) := by
    rw [logTwoApprox, Rat.cast_neg, show 1-((1/2:ℚ):ℝ) = (2:ℝ)⁻¹ by norm_num,
      Real.log_inv]
    ring
  rwa [heq, abs_neg]

private def reducedApprox (r : ℚ) : ℚ := logOneMinusApprox (1-r/2) + logTwoApprox

private theorem reduced_error {r : ℚ} (hr : 1 ≤ r) (hr' : r ≤ 2) :
    |Real.log (r:ℝ) - (reducedApprox r:ℝ)| ≤ 2*(error:ℝ) := by
  have hrR : (1:ℝ) ≤ r := by exact_mod_cast hr
  have hx : 0 ≤ 1-r/2 := by linarith only [hr']
  have hx' : 1-r/2 ≤ (1/2:ℚ) := by linarith only [hr]
  have hLog : Real.log (r:ℝ) =
      Real.log (1-((1-r/2:ℚ):ℝ)) + Real.log 2 := by
    push_cast
    rw [sub_sub_cancel, Real.log_div (by linarith only [hrR]) (by norm_num)]
    ring
  rw [hLog]
  push_cast [reducedApprox]
  have hEq : Real.log (1-(1-(r:ℝ)/2)) + Real.log 2 -
      ((logOneMinusApprox (1-r/2):ℝ)+(logTwoApprox:ℝ)) =
      (Real.log (1-((1-r/2:ℚ):ℝ))-(logOneMinusApprox (1-r/2):ℝ))+
        (Real.log 2-(logTwoApprox:ℝ)) := by push_cast; ring
  rw [hEq]
  exact (abs_add_le _ _).trans
    ((add_le_add (logOneMinus_error hx hx') logTwo_error).trans_eq (by ring))

private def around (c r : ℚ) : Bounds := (c-r,c+r)

private theorem around_sound {c r : ℚ} {x : ℝ} (h : |x-(c:ℝ)| ≤ (r:ℝ)) :
    Encloses (around c r) x := by
  rw [abs_le] at h
  simp only [Encloses, around, Rat.cast_sub, Rat.cast_add]
  constructor <;> linarith only [h.1, h.2]

/-- The common 50-bit logarithm of two endpoints. -/
def logTwoBounds : Bounds := round 50 (around logTwoApprox error)

theorem logTwoBounds_sound : Encloses logTwoBounds (Real.log 2) :=
  round_sound 50 (around_sound logTwo_error)

/-- The exact 50-bit node interval for the log of i divided by 1024. -/
def mantissaBounds (i : ℕ) : Bounds :=
  round 50 (around (reducedApprox ((i:ℚ)/1024)) (2*error))

theorem mantissaBounds_sound {i : ℕ} (hi : 1024 ≤ i) (hi' : i ≤ 2048) :
    Encloses (mantissaBounds i) (Real.log ((i:ℝ)/1024)) := by
  have hiQ : (1024:ℚ) ≤ i := by exact_mod_cast hi
  have hiQ' : (i:ℚ) ≤ 2048 := by exact_mod_cast hi'
  have h := reduced_error (r := (i:ℚ)/1024) (by linarith only [hiQ]) (by linarith only [hiQ'])
  unfold mantissaBounds
  apply round_sound 50
  apply around_sound
  simpa only [Rat.cast_div, Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_mul] using h

/-- The left node number, before subtracting 1024 for a zero-based table. -/
def mantissaIndex (n : ℕ) : ℕ := n*1024 / 2^n.log2

/-- Binary scaling chooses two adjacent grid points bracketing the mantissa. -/
theorem mantissaIndex_bounds {n : ℕ} (hn : 0 < n) :
    let i := mantissaIndex n
    1024 ≤ i ∧ i < 2048 ∧
      (i:ℝ)/1024 ≤ (n:ℝ)/2^n.log2 ∧
      (n:ℝ)/2^n.log2 ≤ ((i+1:ℕ):ℝ)/1024 := by
  dsimp only
  let s : ℕ := 2^n.log2
  let i : ℕ := n*1024/s
  have hs : 0 < s := by unfold s; positivity
  have hsR : (0:ℝ) < (s:ℝ) := Nat.cast_pos.mpr hs
  have hPow : (s:ℝ) = (2:ℝ)^n.log2 := by unfold s; norm_cast
  have hn0 : s ≤ n := by
    unfold s
    rw [Nat.log2_eq_log_two]
    exact Nat.pow_log_le_self 2 hn.ne'
  have hn1 : n < 2*s := by
    unfold s
    rw [Nat.log2_eq_log_two, ← pow_succ']
    exact Nat.lt_pow_succ_log_self (by decide : 1 < 2) n
  have hi0 : 1024 ≤ i := by
    apply (Nat.le_div_iff_mul_le hs).2
    rw [mul_comm 1024 s]
    exact Nat.mul_le_mul_right _ hn0
  have hi1 : i < 2048 := by
    apply (Nat.div_lt_iff_lt_mul hs).2
    calc
      n*1024 < (2*s)*1024 := Nat.mul_lt_mul_of_pos_right hn1 (by decide)
      _ = 2048*s := by ring
  have hLo : (i:ℝ)*(s:ℝ) ≤ (n:ℝ)*1024 := by
    exact_mod_cast (Nat.div_mul_le_self (n*1024) s : i*s ≤ n*1024)
  have hHi : (n:ℝ)*1024 ≤ ((i:ℝ)+1)*(s:ℝ) := by
    have h := (Nat.div_lt_iff_lt_mul hs).1 (Nat.lt_succ_self i : n*1024/s < i+1)
    exact_mod_cast h.le
  change 1024 ≤ i ∧ i < 2048 ∧
    (i:ℝ)/1024 ≤ (n:ℝ)/2^n.log2 ∧ (n:ℝ)/2^n.log2 ≤ ((i+1:ℕ):ℝ)/1024
  rw [← hPow]
  exact ⟨hi0, hi1, (div_le_div_iff₀ (by norm_num) hsR).2 hLo,
    (div_le_div_iff₀ hsR (by norm_num)).2 (by push_cast; exact hHi)⟩

/-- The mode log from two neighboring observations and a common log of two. -/
def logBoundsFrom (two : Bounds) (nodes : ℕ → Bounds) (n : ℕ) : Bounds :=
  let i := mantissaIndex n
  let k : ℚ := n.log2
  (k*two.1+(nodes i).1, k*two.2+(nodes (i+1)).2)

theorem logBoundsFrom_sound {two : Bounds} {nodes : ℕ → Bounds}
    (hTwo : Encloses two (Real.log 2))
    (hNodes : ∀ i, 1024 ≤ i → i ≤ 2048 →
      Encloses (nodes i) (Real.log ((i:ℝ)/1024))) {n : ℕ} (hn : 0 < n) :
    Encloses (logBoundsFrom two nodes n) (Real.log (n:ℝ)) := by
  let i := mantissaIndex n
  let k := n.log2
  obtain ⟨hi0, hi1, hLo, hHi⟩ := mantissaIndex_bounds hn
  have hPos : (0:ℝ) < n := by exact_mod_cast hn
  have hiR : (0:ℝ) < i := Nat.cast_pos.mpr (by omega : 0 < i)
  have hMantissa : Encloses ((nodes i).1,(nodes (i+1)).2) (Real.log ((n:ℝ)/2^k)) := by
    exact ⟨(hNodes i hi0 hi1.le).1.trans (Real.log_le_log (by positivity) hLo),
      (Real.log_le_log (by positivity) hHi).trans (hNodes (i+1) (by omega) (by omega)).2⟩
  have hEq : Real.log (n:ℝ) = (k:ℝ)*Real.log 2 + Real.log ((n:ℝ)/2^k) := by
    rw [Real.log_div hPos.ne' (by positivity), Real.log_pow]
    ring
  rw [hEq]
  simp only [Encloses, logBoundsFrom, Rat.cast_add, Rat.cast_mul, Rat.cast_natCast]
  exact ⟨add_le_add (mul_le_mul_of_nonneg_left hTwo.1 (Nat.cast_nonneg k)) hMantissa.1,
    add_le_add (mul_le_mul_of_nonneg_left hTwo.2 (Nat.cast_nonneg k)) hMantissa.2⟩

/-- The fixed mantissa grid encloses every positive integer mode logarithm. -/
theorem modeLog_sound {n : ℕ} (hn : 0 < n) :
    Encloses (logBoundsFrom logTwoBounds mantissaBounds n) (Real.log (n:ℝ)) :=
  logBoundsFrom_sound logTwoBounds_sound (fun _ => mantissaBounds_sound) hn

/-- The constant term of the high gamma diagonal after reducing the mode log. -/
def gammaShared : ℝ :=
  gammaConstant 1 0 + ((saturatedPartial 256:ℝ) + Real.log (Real.pi/1025))

private def log1025Approx : ℚ := reducedApprox (1025/1024) + 10*logTwoApprox

private theorem log1025_error :
    |Real.log 1025 - (log1025Approx:ℝ)| ≤ 12*(error:ℝ) := by
  have h := reduced_error (r := 1025/1024) (by norm_num) (by norm_num)
  have hLog : Real.log 1025 = Real.log (1025/1024) + 10*Real.log 2 := by
    rw [Real.log_div (by norm_num) (by norm_num), show (1024:ℝ) = 2^10 by norm_num,
      Real.log_pow]
    norm_num
  rw [hLog]
  push_cast [log1025Approx]
  rw [show Real.log (1025/1024) + 10*Real.log 2 -
      ((reducedApprox (1025/1024):ℝ) + 10*(logTwoApprox:ℝ)) =
      (Real.log (1025/1024) - (reducedApprox (1025/1024):ℝ)) +
        10*(Real.log 2 - (logTwoApprox:ℝ)) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_of_nonneg (by norm_num : (0:ℝ) ≤ 10)]
  have hReduced : |Real.log (1025/1024) - (reducedApprox (1025/1024):ℝ)| ≤ 2*(error:ℝ) := by
    simpa only [Rat.cast_div, Rat.cast_ofNat] using h
  exact (add_le_add hReduced (mul_le_mul_of_nonneg_left logTwo_error (by norm_num))).trans_eq (by ring)

private def harmonicGrid (n : ℕ) : Bounds :=
  sum (Finset.range n) (fun j => round 48 (point (((j+1:ℕ):ℚ)⁻¹)))

private theorem harmonicGrid_sound (n : ℕ) :
    Encloses (harmonicGrid n) (harmonic n:ℝ) := by
  unfold harmonicGrid harmonic
  push_cast
  exact sum_sound (Finset.range n) (fun j _ => by
    simpa only [Rat.cast_inv, Rat.cast_natCast, Rat.cast_add, Rat.cast_one, Nat.cast_add,
      Nat.cast_one] using round_sound 48 (point_sound (((j+1:ℕ):ℚ)⁻¹)))

private theorem eulerResidual :
    let E := (harmonic 1024:ℝ) - 10*Real.log 2 - Real.eulerMascheroniConstant
    0 ≤ E ∧ E ≤ 1/1024 := by
  have hLog : Real.log 1024 = 10*Real.log 2 := by
    rw [show (1024:ℝ) = 2^10 by norm_num, Real.log_pow]
    norm_num
  have hLower := Real.eulerMascheroniSeq_lt_eulerMascheroniConstant 1024
  have hUpper := Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' 1024
  unfold Real.eulerMascheroniSeq at hLower
  unfold Real.eulerMascheroniSeq' at hUpper
  norm_num only [Nat.cast_ofNat, ne_eq, Nat.reduceEqDiff, not_false_eq_true, ite_eq_right] at hUpper
  norm_num only [Nat.cast_ofNat, Nat.cast_one] at hLower
  have hStep := Real.log_le_sub_one_of_pos (x := (1025:ℝ)/1024) (by norm_num)
  rw [Real.log_div (by norm_num) (by norm_num)] at hStep
  dsimp only
  rw [← hLog]
  constructor <;> linarith only [hLower, hUpper, hStep]

private def piLo : ℚ := 3.14159265358979323846

private def sharedApprox : ℚ :=
  saturatedPartial 256 + 7*logTwoApprox - piLo/2 - log1025Approx

/-- The fixed 50-bit shared gamma endpoints, with the cancellation of log π. -/
def gammaSharedBounds : Bounds :=
  let H := harmonicGrid 1024
  round 50 (sharedApprox-H.2-19*error-1/(2*10^20),
    sharedApprox-H.1+19*error+1/1024)

theorem gammaSharedBounds_sound : Encloses gammaSharedBounds gammaShared := by
  have hEq : gammaShared =
      (saturatedPartial 256:ℝ) + 7*Real.log 2 - Real.pi/2 - Real.log 1025 -
        (harmonic 1024:ℝ) +
        ((harmonic 1024:ℝ) - 10*Real.log 2 - Real.eulerMascheroniConstant) := by
    unfold gammaShared
    rw [gammaConstant_one_zero_eq, Real.log_div Real.pi_pos.ne' (by norm_num)]
    ring
  have hp0 : (piLo:ℝ) ≤ Real.pi := Real.pi_gt_d20.le
  have hp1 : Real.pi ≤ (piLo:ℝ) + 1/10^20 := by
    convert Real.pi_lt_d20.le using 1
    norm_num [piLo]
  have hl := abs_le.mp logTwo_error
  have h1025 := abs_le.mp log1025_error
  have hh := harmonicGrid_sound 1024
  have he := eulerResidual
  rw [hEq]
  unfold gammaSharedBounds
  apply round_sound 50
  simp only [Encloses, sharedApprox, Rat.cast_sub, Rat.cast_add, Rat.cast_div, Rat.cast_mul,
    Rat.cast_ofNat, Rat.cast_one, Rat.cast_pow]
  constructor <;> linarith only [hp0, hp1, hl.1, hl.2, h1025.1, h1025.2, hh.1, hh.2, he.1, he.2]

private def up (q : ℚ) : ℚ := (round 50 (point q)).2

private theorem up_sound (q : ℚ) : (q:ℝ) ≤ (up q:ℝ) :=
  (round_sound 50 (point_sound q)).2

/-- High gamma endpoints from two shared observations and four upward
rounded rational allowances. The lower allowance keeps the negative
image series and the upper allowance keeps the multiplier remainder. -/
def gammaDiagonalFrom (shared modeLog : Bounds) (n : ℕ) : Bounds :=
  let q : ℚ := n
  (shared.1+modeLog.1-up (1/(2*q))-up (1/q^2),
    shared.2+modeLog.2+up (6/1025)+up (1/(18*q^2)))

theorem gammaDiagonalFrom_sound {shared modeLog : Bounds} {n : ℕ}
    (hn : 327 ≤ n) (hShared : Encloses shared gammaShared)
    (hLog : Encloses modeLog (Real.log (n:ℝ))) :
    Encloses (gammaDiagonalFrom shared modeLog n)
      (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n) := by
  have hn0 : 0 < n := by omega
  have hnR : (0:ℝ) < n := Nat.cast_pos.mpr hn0
  have hp : 9 ≤ Real.pi^2 := by nlinarith only [Real.pi_gt_three, sq_nonneg (Real.pi-3)]
  have hD : 18*(n:ℝ)^2 ≤ 8*frequency 2 n^2 := by
    unfold frequency
    nlinarith only [mul_nonneg (sub_nonneg.mpr hp) (sq_nonneg (n:ℝ))]
  have hW : (0:ℝ) < 18*(n:ℝ)^2 := by positivity
  have hW' := hW.trans_le hD
  have hAllowance : 1/(8*frequency 2 n^2) ≤ 1/(18*(n:ℝ)^2) :=
    one_div_le_one_div_of_le hW hD
  have h₁ := up_sound (1/(2*(n:ℚ)))
  have h₂ := up_sound (1/(n:ℚ)^2)
  have h₃ := up_sound (6/1025)
  have h₄ := up_sound (1/(18*(n:ℚ)^2))
  obtain ⟨hLo, hHi⟩ := radiusTwo_gammaDiagonal_high_bracket hn
  rw [radiusTwo_highCenter_eq hn0] at hLo hHi
  have hBase : gammaConstant 1 0 +
      (((saturatedPartial 256:ℝ)+Real.log (Real.pi/1025))+Real.log (n:ℝ)) =
        gammaShared+Real.log (n:ℝ) := by unfold gammaShared; ring
  rw [hBase] at hLo hHi
  simp only [Encloses, gammaDiagonalFrom, Rat.cast_add, Rat.cast_sub]
  push_cast at h₁ h₂ h₃ h₄
  constructor
  · linarith only [hLo, hShared.1, hLog.1, h₁, h₂]
  · have hPrice : (3/(1025/2:ℝ)) = 6/1025 := by norm_num
    rw [hPrice] at hHi
    linarith only [hHi, hShared.2, hLog.2, hAllowance, h₃, h₄]

/-- The fixed arithmetic high gamma enclosure for every mode from 327 onward. -/
theorem gammaDiagonalHigh_sound {n : ℕ} (hn : 327 ≤ n) :
    Encloses (gammaDiagonalFrom gammaSharedBounds (logBoundsFrom logTwoBounds mantissaBounds n) n)
      (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n) :=
  gammaDiagonalFrom_sound hn gammaSharedBounds_sound (modeLog_sound (by omega))

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGammaSeedLog
