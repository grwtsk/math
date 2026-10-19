import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Tactic.NormNum.Prime

/-! Finite actual positive proper-power atoms and elementary logarithm certificates.
Research direction grwtsk contributors; scratch construction OpenAI Codex.
No formal Stieltjes-limit/Laurent or actual arithmetic-intercept identification is imported. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ArithmeticInterceptFinite
open Finset

theorem log_two_lower : (6931:ℝ)/10000 ≤ Real.log 2 := by
  have h := Real.sum_range_le_log_div (x := (1:ℝ)/3) (by norm_num) (by norm_num) 5
  norm_num [Finset.sum_range_succ] at h ⊢
  linarith

theorem log_two_fine_lower : (693147:ℝ)/1000000 ≤ Real.log 2 := by
  have h := Real.sum_range_le_log_div (x := (1:ℝ)/3) (by norm_num) (by norm_num) 7
  norm_num [Finset.sum_range_succ] at h ⊢
  linarith

theorem log_two_upper : Real.log 2 ≤ (6932:ℝ)/10000 := by
  have h := Real.log_div_le_sum_range_add (x := (1:ℝ)/3) (by norm_num) (by norm_num) 5
  norm_num [Finset.sum_range_succ] at h ⊢
  linarith

theorem log_three_lower : (10985:ℝ)/10000 ≤ Real.log 3 := by
  have h := Real.sum_range_le_log_div (x := (1:ℝ)/2) (by norm_num) (by norm_num) 6
  norm_num [Finset.sum_range_succ] at h ⊢
  linarith

/-- The N=4 lower bound obtained from the ordinary decreasing-integral test. -/
def stieltjesLowerFour : ℝ := Real.log 2/2+Real.log 3/3-2*(Real.log 2)^2

theorem stieltjesLowerFour_gt_neg_quarter : -(1:ℝ)/4 < stieltjesLowerFour := by
  have h0 := Real.log_pos (by norm_num : (1:ℝ)<2)
  have hl := log_two_lower
  have hu := log_two_upper
  have h3 := log_three_lower
  have hsq : (Real.log 2)^2 ≤ ((6932:ℝ)/10000)^2 := by nlinarith
  unfold stieltjesLowerFour
  nlinarith

theorem stieltjesLowerFour_gt_neg_249 : -(249:ℝ)/1000 < stieltjesLowerFour := by
  have h0 := Real.log_pos (by norm_num : (1:ℝ)<2)
  have hl := log_two_lower
  have hu := log_two_upper
  have h3 := log_three_lower
  have hsq : (Real.log 2)^2 ≤ ((6932:ℝ)/10000)^2 := by nlinarith
  unfold stieltjesLowerFour
  nlinarith

theorem log_3_lower : (10986:ℝ)/10000 ≤ Real.log 3 := by
  have h := Real.sum_range_le_log_div (x := ((1:ℝ)/5)) (by norm_num) (by norm_num) 5
  have hid : Real.log 3 = 1*Real.log 2 + Real.log ((3:ℝ)/2) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (2:ℝ) = 1*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 1 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_5_lower : (16094:ℝ)/10000 ≤ Real.log 5 := by
  have h := Real.sum_range_le_log_div (x := ((1:ℝ)/9)) (by norm_num) (by norm_num) 5
  have hid : Real.log 5 = 2*Real.log 2 + Real.log ((5:ℝ)/4) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (4:ℝ) = 2*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 2 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_7_lower : (19459:ℝ)/10000 ≤ Real.log 7 := by
  have h := Real.sum_range_le_log_div (x := ((3:ℝ)/11)) (by norm_num) (by norm_num) 5
  have hid : Real.log 7 = 2*Real.log 2 + Real.log ((7:ℝ)/4) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (4:ℝ) = 2*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 2 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_11_lower : (23978:ℝ)/10000 ≤ Real.log 11 := by
  have h := Real.sum_range_le_log_div (x := ((3:ℝ)/19)) (by norm_num) (by norm_num) 5
  have hid : Real.log 11 = 3*Real.log 2 + Real.log ((11:ℝ)/8) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (8:ℝ) = 3*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 3 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_13_lower : (25649:ℝ)/10000 ≤ Real.log 13 := by
  have h := Real.sum_range_le_log_div (x := ((5:ℝ)/21)) (by norm_num) (by norm_num) 5
  have hid : Real.log 13 = 3*Real.log 2 + Real.log ((13:ℝ)/8) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (8:ℝ) = 3*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 3 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_17_lower : (28332:ℝ)/10000 ≤ Real.log 17 := by
  have h := Real.sum_range_le_log_div (x := ((1:ℝ)/33)) (by norm_num) (by norm_num) 5
  have hid : Real.log 17 = 4*Real.log 2 + Real.log ((17:ℝ)/16) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (16:ℝ) = 4*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 4 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_19_lower : (29444:ℝ)/10000 ≤ Real.log 19 := by
  have h := Real.sum_range_le_log_div (x := ((3:ℝ)/35)) (by norm_num) (by norm_num) 5
  have hid : Real.log 19 = 4*Real.log 2 + Real.log ((19:ℝ)/16) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (16:ℝ) = 4*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 4 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_23_lower : (31354:ℝ)/10000 ≤ Real.log 23 := by
  have h := Real.sum_range_le_log_div (x := ((7:ℝ)/39)) (by norm_num) (by norm_num) 5
  have hid : Real.log 23 = 4*Real.log 2 + Real.log ((23:ℝ)/16) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (16:ℝ) = 4*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 4 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_29_lower : (33672:ℝ)/10000 ≤ Real.log 29 := by
  have h := Real.sum_range_le_log_div (x := ((13:ℝ)/45)) (by norm_num) (by norm_num) 5
  have hid : Real.log 29 = 4*Real.log 2 + Real.log ((29:ℝ)/16) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (16:ℝ) = 4*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 4 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_31_lower : (34339:ℝ)/10000 ≤ Real.log 31 := by
  have h := Real.sum_range_le_log_div (x := ((15:ℝ)/47)) (by norm_num) (by norm_num) 5
  have hid : Real.log 31 = 4*Real.log 2 + Real.log ((31:ℝ)/16) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (16:ℝ) = 4*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 4 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_37_lower : (36109:ℝ)/10000 ≤ Real.log 37 := by
  have h := Real.sum_range_le_log_div (x := ((5:ℝ)/69)) (by norm_num) (by norm_num) 5
  have hid : Real.log 37 = 5*Real.log 2 + Real.log ((37:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_41_lower : (37135:ℝ)/10000 ≤ Real.log 41 := by
  have h := Real.sum_range_le_log_div (x := ((9:ℝ)/73)) (by norm_num) (by norm_num) 5
  have hid : Real.log 41 = 5*Real.log 2 + Real.log ((41:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_43_lower : (37611:ℝ)/10000 ≤ Real.log 43 := by
  have h := Real.sum_range_le_log_div (x := ((11:ℝ)/75)) (by norm_num) (by norm_num) 5
  have hid : Real.log 43 = 5*Real.log 2 + Real.log ((43:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_47_lower : (38501:ℝ)/10000 ≤ Real.log 47 := by
  have h := Real.sum_range_le_log_div (x := ((15:ℝ)/79)) (by norm_num) (by norm_num) 5
  have hid : Real.log 47 = 5*Real.log 2 + Real.log ((47:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_53_lower : (39702:ℝ)/10000 ≤ Real.log 53 := by
  have h := Real.sum_range_le_log_div (x := ((21:ℝ)/85)) (by norm_num) (by norm_num) 5
  have hid : Real.log 53 = 5*Real.log 2 + Real.log ((53:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_59_lower : (40775:ℝ)/10000 ≤ Real.log 59 := by
  have h := Real.sum_range_le_log_div (x := ((27:ℝ)/91)) (by norm_num) (by norm_num) 5
  have hid : Real.log 59 = 5*Real.log 2 + Real.log ((59:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_61_lower : (41108:ℝ)/10000 ≤ Real.log 61 := by
  have h := Real.sum_range_le_log_div (x := ((29:ℝ)/93)) (by norm_num) (by norm_num) 5
  have hid : Real.log 61 = 5*Real.log 2 + Real.log ((61:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_67_lower : (42046:ℝ)/10000 ≤ Real.log 67 := by
  have h := Real.sum_range_le_log_div (x := ((3:ℝ)/131)) (by norm_num) (by norm_num) 5
  have hid : Real.log 67 = 6*Real.log 2 + Real.log ((67:ℝ)/64) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (64:ℝ) = 6*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 6 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_71_lower : (42626:ℝ)/10000 ≤ Real.log 71 := by
  have h := Real.sum_range_le_log_div (x := ((7:ℝ)/135)) (by norm_num) (by norm_num) 5
  have hid : Real.log 71 = 6*Real.log 2 + Real.log ((71:ℝ)/64) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (64:ℝ) = 6*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 6 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_73_lower : (42904:ℝ)/10000 ≤ Real.log 73 := by
  have h := Real.sum_range_le_log_div (x := ((9:ℝ)/137)) (by norm_num) (by norm_num) 5
  have hid : Real.log 73 = 6*Real.log 2 + Real.log ((73:ℝ)/64) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (64:ℝ) = 6*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 6 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_79_lower : (43694:ℝ)/10000 ≤ Real.log 79 := by
  have h := Real.sum_range_le_log_div (x := ((15:ℝ)/143)) (by norm_num) (by norm_num) 5
  have hid : Real.log 79 = 6*Real.log 2 + Real.log ((79:ℝ)/64) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (64:ℝ) = 6*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 6 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_83_lower : (44188:ℝ)/10000 ≤ Real.log 83 := by
  have h := Real.sum_range_le_log_div (x := ((19:ℝ)/147)) (by norm_num) (by norm_num) 5
  have hid : Real.log 83 = 6*Real.log 2 + Real.log ((83:ℝ)/64) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (64:ℝ) = 6*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 6 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_89_lower : (44886:ℝ)/10000 ≤ Real.log 89 := by
  have h := Real.sum_range_le_log_div (x := ((25:ℝ)/153)) (by norm_num) (by norm_num) 5
  have hid : Real.log 89 = 6*Real.log 2 + Real.log ((89:ℝ)/64) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (64:ℝ) = 6*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 6 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

theorem log_97_lower : (45747:ℝ)/10000 ≤ Real.log 97 := by
  have h := Real.sum_range_le_log_div (x := ((33:ℝ)/161)) (by norm_num) (by norm_num) 5
  have hid : Real.log 97 = 6*Real.log 2 + Real.log ((97:ℝ)/64) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (64:ℝ) = 6*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 6 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

def primeInventory : Finset ℕ := {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97}

def certifiedLogLower (p : ℕ) : ℝ :=
  if p = 2 then (6931:ℝ)/10000 else if p = 3 then (10986:ℝ)/10000 else if p = 5 then (16094:ℝ)/10000 else if p = 7 then (19459:ℝ)/10000 else if p = 11 then (23978:ℝ)/10000 else if p = 13 then (25649:ℝ)/10000 else if p = 17 then (28332:ℝ)/10000 else if p = 19 then (29444:ℝ)/10000 else if p = 23 then (31354:ℝ)/10000 else if p = 29 then (33672:ℝ)/10000 else if p = 31 then (34339:ℝ)/10000 else if p = 37 then (36109:ℝ)/10000 else if p = 41 then (37135:ℝ)/10000 else if p = 43 then (37611:ℝ)/10000 else if p = 47 then (38501:ℝ)/10000 else if p = 53 then (39702:ℝ)/10000 else if p = 59 then (40775:ℝ)/10000 else if p = 61 then (41108:ℝ)/10000 else if p = 67 then (42046:ℝ)/10000 else if p = 71 then (42626:ℝ)/10000 else if p = 73 then (42904:ℝ)/10000 else if p = 79 then (43694:ℝ)/10000 else if p = 83 then (44188:ℝ)/10000 else if p = 89 then (44886:ℝ)/10000 else if p = 97 then (45747:ℝ)/10000 else 0

def powerCoefficient (p : ℕ) : ℝ := ∑ k ∈ range 11, (k+2:ℕ)/(p:ℝ)^(k+2)

def finiteProperPowerMoment : ℝ :=
  ∑ p ∈ primeInventory, (Real.log p)^2*powerCoefficient p

theorem inventory_primes : ∀ p ∈ primeInventory, Nat.Prime p := by
  intro p hp
  simp only [primeInventory, mem_insert, mem_singleton] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals norm_num

theorem inventory_log_lower : ∀ p ∈ primeInventory,
    0 ≤ certifiedLogLower p ∧ certifiedLogLower p ≤ Real.log p := by
  intro p hp
  simp only [primeInventory, mem_insert, mem_singleton] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · have h := log_two_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_3_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_5_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_7_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_11_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_13_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_17_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_19_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_23_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_29_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_31_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_37_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_41_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_43_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_47_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_53_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_59_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_61_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_67_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_71_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_73_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_79_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_83_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_89_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h
  · have h := log_97_lower
    norm_num [certifiedLogLower] at h ⊢
    exact h

theorem finiteProperPowerMoment_gt_nine_quarters : (9:ℝ)/4 < finiteProperPowerMoment := by
  have hsum : (∑ p ∈ primeInventory, (certifiedLogLower p)^2*powerCoefficient p)
      ≤ finiteProperPowerMoment := by
    unfold finiteProperPowerMoment
    apply Finset.sum_le_sum
    intro p hp
    have hl := inventory_log_lower p hp
    have hc : 0 ≤ powerCoefficient p := by
      unfold powerCoefficient
      apply Finset.sum_nonneg
      intro k hk
      positivity
    exact mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hl.1 hl.2 2) hc
  have hr : (9:ℝ)/4 < ∑ p ∈ primeInventory,
      (certifiedLogLower p)^2*powerCoefficient p := by
    norm_num [primeInventory, certifiedLogLower, powerCoefficient, Finset.sum_range_succ]
  exact lt_of_lt_of_le hr hsum

/-- The precise finite atom list, with real positive logarithms and multiplicities k. -/
theorem finiteProperPowerMoment_eq_atoms : finiteProperPowerMoment =
    ∑ p ∈ primeInventory, ∑ k ∈ range 11,
      (k+2:ℕ)*(Real.log p)^2/(p:ℝ)^(k+2) := by
  unfold finiteProperPowerMoment powerCoefficient
  apply Finset.sum_congr rfl
  intro p hp
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  ring

/-- Transparent consumer: the actual Stieltjes limit and infinite B1 bridges remain separate. -/
theorem intercept_positive_of_actual_bridges (g1 B1 : ℝ)
    (hg1 : stieltjesLowerFour ≤ g1) (hB1 : finiteProperPowerMoment ≤ B1) :
    0 < Real.eulerMascheroniConstant^2+2*g1+B1-2 := by
  have hg := Real.one_half_lt_eulerMascheroniConstant
  have hs := stieltjesLowerFour_gt_neg_quarter
  have hb := finiteProperPowerMoment_gt_nine_quarters
  have hgamma : (1:ℝ)/4 < Real.eulerMascheroniConstant^2 := by nlinarith
  nlinarith

theorem intercept_gt_one_five_hundred_of_actual_bridges (g1 B1 : ℝ)
    (hg1 : stieltjesLowerFour ≤ g1) (hB1 : finiteProperPowerMoment ≤ B1) :
    (1:ℝ)/500 < Real.eulerMascheroniConstant^2+2*g1+B1-2 := by
  have hg := Real.one_half_lt_eulerMascheroniConstant
  have hs := stieltjesLowerFour_gt_neg_249
  have hb := finiteProperPowerMoment_gt_nine_quarters
  have hgamma : (1:ℝ)/4 < Real.eulerMascheroniConstant^2 := by nlinarith
  nlinarith

end ContinuousResearch.ArithmeticInterceptFinite

-- Frozen public statements, full proof terms, and trusted dependencies.
#check ContinuousResearch.ArithmeticInterceptFinite.log_two_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_two_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_two_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_two_fine_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_two_fine_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_two_fine_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_two_upper
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_two_upper
#print ContinuousResearch.ArithmeticInterceptFinite.log_two_upper
#check ContinuousResearch.ArithmeticInterceptFinite.log_three_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_three_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_three_lower
#check ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour
#print axioms ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour
#print ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour
#check ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour_gt_neg_quarter
#print axioms ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour_gt_neg_quarter
#print ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour_gt_neg_quarter
#check ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour_gt_neg_249
#print axioms ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour_gt_neg_249
#print ContinuousResearch.ArithmeticInterceptFinite.stieltjesLowerFour_gt_neg_249
#check ContinuousResearch.ArithmeticInterceptFinite.log_3_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_3_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_3_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_5_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_5_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_5_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_7_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_7_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_7_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_11_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_11_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_11_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_13_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_13_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_13_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_17_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_17_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_17_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_19_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_19_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_19_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_23_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_23_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_23_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_29_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_29_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_29_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_31_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_31_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_31_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_37_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_37_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_37_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_41_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_41_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_41_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_43_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_43_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_43_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_47_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_47_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_47_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_53_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_53_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_53_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_59_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_59_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_59_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_61_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_61_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_61_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_67_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_67_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_67_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_71_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_71_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_71_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_73_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_73_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_73_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_79_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_79_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_79_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_83_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_83_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_83_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_89_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_89_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_89_lower
#check ContinuousResearch.ArithmeticInterceptFinite.log_97_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.log_97_lower
#print ContinuousResearch.ArithmeticInterceptFinite.log_97_lower
#check ContinuousResearch.ArithmeticInterceptFinite.primeInventory
#print axioms ContinuousResearch.ArithmeticInterceptFinite.primeInventory
#print ContinuousResearch.ArithmeticInterceptFinite.primeInventory
#check ContinuousResearch.ArithmeticInterceptFinite.certifiedLogLower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.certifiedLogLower
#print ContinuousResearch.ArithmeticInterceptFinite.certifiedLogLower
#check ContinuousResearch.ArithmeticInterceptFinite.powerCoefficient
#print axioms ContinuousResearch.ArithmeticInterceptFinite.powerCoefficient
#print ContinuousResearch.ArithmeticInterceptFinite.powerCoefficient
#check ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment
#print axioms ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment
#print ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment
#check ContinuousResearch.ArithmeticInterceptFinite.inventory_primes
#print axioms ContinuousResearch.ArithmeticInterceptFinite.inventory_primes
#print ContinuousResearch.ArithmeticInterceptFinite.inventory_primes
#check ContinuousResearch.ArithmeticInterceptFinite.inventory_log_lower
#print axioms ContinuousResearch.ArithmeticInterceptFinite.inventory_log_lower
#print ContinuousResearch.ArithmeticInterceptFinite.inventory_log_lower
#check ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment_gt_nine_quarters
#print axioms ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment_gt_nine_quarters
#print ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment_gt_nine_quarters
#check ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment_eq_atoms
#print axioms ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment_eq_atoms
#print ContinuousResearch.ArithmeticInterceptFinite.finiteProperPowerMoment_eq_atoms
#check ContinuousResearch.ArithmeticInterceptFinite.intercept_positive_of_actual_bridges
#print axioms ContinuousResearch.ArithmeticInterceptFinite.intercept_positive_of_actual_bridges
#print ContinuousResearch.ArithmeticInterceptFinite.intercept_positive_of_actual_bridges
#check ContinuousResearch.ArithmeticInterceptFinite.intercept_gt_one_five_hundred_of_actual_bridges
#print axioms ContinuousResearch.ArithmeticInterceptFinite.intercept_gt_one_five_hundred_of_actual_bridges
#print ContinuousResearch.ArithmeticInterceptFinite.intercept_gt_one_five_hundred_of_actual_bridges
