import scratch.common_mean_20261004.FiveModeSource

/-!
Exact oriented interval integrals for the five unchanged Legendre source modes.
Originating mathematical direction, theorem selection, corrections and evaluation:
grwtsk contributors. Scratch formalization assistance: OpenAI Codex.
Every coefficient identity below is proved from the mode definition by polynomial
expansion and intervalIntegral.integral_pow. Archived rational coefficients are
statement targets, not hypotheses. The raw positive-branch polynomial is not even.
For h outside [0,2], these oriented interval integrals are not zero-extended mode
correlations. No explicit-formula adapter, arithmetic bound or RH proof is asserted.
-/

set_option autoImplicit false
set_option maxHeartbeats 8000000
noncomputable section
namespace CommonMeanScratch
open MeasureTheory Set

/-- Oriented polynomial interval integral. The zero-extended correlation adapter
must retain 0 ≤ h ≤ 2; this definition is deliberately meaningful for every real h. -/
def rawCorrelation (i j : Fin 5) (h : ℝ) : ℝ :=
  ∫ y in (h-1)..1, mode i y * mode j (y-h)

/-- Exact degree-0/0 positive-branch coefficient polynomial. -/
theorem rawCorrelation_0_0 (h : ℝ) :
    rawCorrelation 0 0 h = 2 + -1 * h := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 0 y * mode 0 (y-h)) =
      (fun y => 1) := by
    funext y
    simp only [mode_zero]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-0/2 positive-branch coefficient polynomial. -/
theorem rawCorrelation_0_2 (h : ℝ) :
    rawCorrelation 0 1 h = -1 * h + (3 / 2) * h^2 + (-1 / 2) * h^3 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 0 y * mode 1 (y-h)) =
      (fun y => (-1 / 2) + (3 / 2) * h^2 +
        (-3 * h) * y^1 +
        ((3 / 2)) * y^2) := by
    funext y
    simp only [mode_zero, mode_two]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-0/4 positive-branch coefficient polynomial. -/
theorem rawCorrelation_0_4 (h : ℝ) :
    rawCorrelation 0 2 h = -1 * h + 5 * h^2 + (-15 / 2) * h^3 + (35 / 8) * h^4 + (-7 / 8) * h^5 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 0 y * mode 2 (y-h)) =
      (fun y => (3 / 8) + (-15 / 4) * h^2 + (35 / 8) * h^4 +
        ((15 / 2) * h + (-35 / 2) * h^3) * y^1 +
        ((-15 / 4) + (105 / 4) * h^2) * y^2 +
        ((-35 / 2) * h) * y^3 +
        ((35 / 8)) * y^4) := by
    funext y
    simp only [mode_zero, mode_four]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-0/6 positive-branch coefficient polynomial. -/
theorem rawCorrelation_0_6 (h : ℝ) :
    rawCorrelation 0 3 h = -1 * h + (21 / 2) * h^2 + -35 * h^3 + (105 / 2) * h^4 + (-315 / 8) * h^5 + (231 / 16) * h^6 + (-33 / 16) * h^7 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 0 y * mode 3 (y-h)) =
      (fun y => (-5 / 16) + (105 / 16) * h^2 + (-315 / 16) * h^4 + (231 / 16) * h^6 +
        ((-105 / 8) * h + (315 / 4) * h^3 + (-693 / 8) * h^5) * y^1 +
        ((105 / 16) + (-945 / 8) * h^2 + (3465 / 16) * h^4) * y^2 +
        ((315 / 4) * h + (-1155 / 4) * h^3) * y^3 +
        ((-315 / 16) + (3465 / 16) * h^2) * y^4 +
        ((-693 / 8) * h) * y^5 +
        ((231 / 16)) * y^6) := by
    funext y
    simp only [mode_zero, mode_six]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-0/8 positive-branch coefficient polynomial. -/
theorem rawCorrelation_0_8 (h : ℝ) :
    rawCorrelation 0 4 h = -1 * h + 18 * h^2 + -105 * h^3 + (1155 / 4) * h^4 + (-3465 / 8) * h^5 + (3003 / 8) * h^6 + (-3003 / 16) * h^7 + (6435 / 128) * h^8 + (-715 / 128) * h^9 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 0 y * mode 4 (y-h)) =
      (fun y => (35 / 128) + (-315 / 32) * h^2 + (3465 / 64) * h^4 + (-3003 / 32) * h^6 + (6435 / 128) * h^8 +
        ((315 / 16) * h + (-3465 / 16) * h^3 + (9009 / 16) * h^5 + (-6435 / 16) * h^7) * y^1 +
        ((-315 / 32) + (10395 / 32) * h^2 + (-45045 / 32) * h^4 + (45045 / 32) * h^6) * y^2 +
        ((-3465 / 16) * h + (15015 / 8) * h^3 + (-45045 / 16) * h^5) * y^3 +
        ((3465 / 64) + (-45045 / 32) * h^2 + (225225 / 64) * h^4) * y^4 +
        ((9009 / 16) * h + (-45045 / 16) * h^3) * y^5 +
        ((-3003 / 32) + (45045 / 32) * h^2) * y^6 +
        ((-6435 / 16) * h) * y^7 +
        ((6435 / 128)) * y^8) := by
    funext y
    simp only [mode_zero, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-2/2 positive-branch coefficient polynomial. -/
theorem rawCorrelation_2_2 (h : ℝ) :
    rawCorrelation 1 1 h = (2 / 5) + -1 * h + (1 / 2) * h^3 + (-3 / 40) * h^5 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 1 y * mode 1 (y-h)) =
      (fun y => (1 / 4) + (-3 / 4) * h^2 +
        ((3 / 2) * h) * y^1 +
        ((-3 / 2) + (9 / 4) * h^2) * y^2 +
        ((-9 / 2) * h) * y^3 +
        ((9 / 4)) * y^4) := by
    funext y
    simp only [mode_two]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-2/4 positive-branch coefficient polynomial. -/
theorem rawCorrelation_2_4 (h : ℝ) :
    rawCorrelation 1 2 h = -1 * h + (7 / 2) * h^2 + -3 * h^3 + (5 / 8) * h^5 + (-1 / 16) * h^7 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 1 y * mode 2 (y-h)) =
      (fun y => (-3 / 16) + (15 / 8) * h^2 + (-35 / 16) * h^4 +
        ((-15 / 4) * h + (35 / 4) * h^3) * y^1 +
        ((39 / 16) + (-75 / 4) * h^2 + (105 / 16) * h^4) * y^2 +
        (20 * h + (-105 / 4) * h^3) * y^3 +
        ((-125 / 16) + (315 / 8) * h^2) * y^4 +
        ((-105 / 4) * h) * y^5 +
        ((105 / 16)) * y^6) := by
    funext y
    simp only [mode_two, mode_four]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-2/6 positive-branch coefficient polynomial. -/
theorem rawCorrelation_2_6 (h : ℝ) :
    rawCorrelation 1 3 h = -1 * h + 9 * h^2 + -25 * h^3 + (231 / 8) * h^4 + (-105 / 8) * h^5 + (21 / 16) * h^7 + (-11 / 128) * h^9 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 1 y * mode 3 (y-h)) =
      (fun y => (5 / 32) + (-105 / 32) * h^2 + (315 / 32) * h^4 + (-231 / 32) * h^6 +
        ((105 / 16) * h + (-315 / 8) * h^3 + (693 / 16) * h^5) * y^1 +
        ((-15 / 4) + (2205 / 32) * h^2 + (-2205 / 16) * h^4 + (693 / 32) * h^6) * y^2 +
        ((-945 / 16) * h + (525 / 2) * h^3 + (-2079 / 16) * h^5) * y^3 +
        ((315 / 16) + (-9135 / 32) * h^2 + (10395 / 32) * h^4) * y^4 +
        ((2583 / 16) * h + (-3465 / 8) * h^3) * y^5 +
        ((-147 / 4) + (10395 / 32) * h^2) * y^6 +
        ((-2079 / 16) * h) * y^7 +
        ((693 / 32)) * y^8) := by
    funext y
    simp only [mode_two, mode_six]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-2/8 positive-branch coefficient polynomial. -/
theorem rawCorrelation_2_8 (h : ℝ) :
    rawCorrelation 1 4 h = -1 * h + (33 / 2) * h^2 + (-175 / 2) * h^3 + (429 / 2) * h^4 + (-2205 / 8) * h^5 + (3003 / 16) * h^6 + (-231 / 4) * h^7 + (429 / 128) * h^9 + (-39 / 256) * h^11 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 1 y * mode 4 (y-h)) =
      (fun y => (-35 / 256) + (315 / 64) * h^2 + (-3465 / 128) * h^4 + (3003 / 64) * h^6 + (-6435 / 256) * h^8 +
        ((-315 / 32) * h + (3465 / 32) * h^3 + (-9009 / 32) * h^5 + (6435 / 32) * h^7) * y^1 +
        ((1365 / 256) + (-2835 / 16) * h^2 + (100485 / 128) * h^4 + (-27027 / 32) * h^6 + (19305 / 256) * h^8) * y^2 +
        ((2205 / 16) * h + (-40425 / 32) * h^3 + (9009 / 4) * h^5 + (-19305 / 32) * h^7) * y^3 +
        ((-5355 / 128) + (38115 / 32) * h^2 + (-495495 / 128) * h^4 + (135135 / 64) * h^6) * y^4 +
        ((-4851 / 8) * h + (135135 / 32) * h^3 + (-135135 / 32) * h^5) * y^5 +
        ((16401 / 128) + (-45045 / 16) * h^2 + (675675 / 128) * h^4) * y^6 +
        ((16731 / 16) * h + (-135135 / 32) * h^3) * y^7 +
        ((-42471 / 256) + (135135 / 64) * h^2) * y^8 +
        ((-19305 / 32) * h) * y^9 +
        ((19305 / 256)) * y^10) := by
    funext y
    simp only [mode_two, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-4/4 positive-branch coefficient polynomial. -/
theorem rawCorrelation_4_4 (h : ℝ) :
    rawCorrelation 2 2 h = (2 / 9) + -1 * h + (5 / 3) * h^3 + (-9 / 8) * h^5 + (5 / 16) * h^7 + (-35 / 1152) * h^9 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 2 y * mode 2 (y-h)) =
      (fun y => (9 / 64) + (-45 / 32) * h^2 + (105 / 64) * h^4 +
        ((45 / 16) * h + (-105 / 16) * h^3) * y^1 +
        ((-45 / 16) + (765 / 32) * h^2 + (-525 / 32) * h^4) * y^2 +
        ((-555 / 16) * h + (525 / 8) * h^3) * y^3 +
        ((555 / 32) + (-3675 / 32) * h^2 + (1225 / 64) * h^4) * y^4 +
        ((1575 / 16) * h + (-1225 / 16) * h^3) * y^5 +
        ((-525 / 16) + (3675 / 32) * h^2) * y^6 +
        ((-1225 / 16) * h) * y^7 +
        ((1225 / 64)) * y^8) := by
    funext y
    simp only [mode_four]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-4/6 positive-branch coefficient polynomial. -/
theorem rawCorrelation_4_6 (h : ℝ) :
    rawCorrelation 2 3 h = -1 * h + (11 / 2) * h^2 + (-15 / 2) * h^3 + (35 / 8) * h^5 + (-7 / 4) * h^7 + (45 / 128) * h^9 + (-7 / 256) * h^11 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 2 y * mode 3 (y-h)) =
      (fun y => (-15 / 128) + (315 / 128) * h^2 + (-945 / 128) * h^4 + (693 / 128) * h^6 +
        ((-315 / 64) * h + (945 / 32) * h^3 + (-2079 / 64) * h^5) * y^1 +
        ((465 / 128) + (-2205 / 32) * h^2 + (19845 / 128) * h^4 + (-3465 / 64) * h^6) * y^2 +
        ((315 / 4) * h + (-12915 / 32) * h^3 + (10395 / 32) * h^5) * y^3 +
        ((-2135 / 64) + (35385 / 64) * h^2 + (-114975 / 128) * h^4 + (8085 / 128) * h^6) * y^4 +
        ((-12327 / 32) * h + (45675 / 32) * h^3 + (-24255 / 64) * h^5) * y^5 +
        ((6909 / 64) + (-42525 / 32) * h^2 + (121275 / 128) * h^4) * y^6 +
        ((5355 / 8) * h + (-40425 / 32) * h^3) * y^7 +
        ((-17955 / 128) + (121275 / 128) * h^2) * y^8 +
        ((-24255 / 64) * h) * y^9 +
        ((8085 / 128)) * y^10) := by
    funext y
    simp only [mode_four, mode_six]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-4/8 positive-branch coefficient polynomial. -/
theorem rawCorrelation_4_8 (h : ℝ) :
    rawCorrelation 2 4 h = -1 * h + 13 * h^2 + (-105 / 2) * h^3 + (715 / 8) * h^4 + (-245 / 4) * h^5 + (63 / 4) * h^7 + (-495 / 128) * h^9 + (143 / 256) * h^11 + (-35 / 1024) * h^13 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 2 y * mode 4 (y-h)) =
      (fun y => (105 / 1024) + (-945 / 256) * h^2 + (10395 / 512) * h^4 + (-9009 / 256) * h^6 + (19305 / 1024) * h^8 +
        ((945 / 128) * h + (-10395 / 128) * h^3 + (27027 / 128) * h^5 + (-19305 / 128) * h^7) * y^1 +
        ((-2415 / 512) + (40635 / 256) * h^2 + (-93555 / 128) * h^4 + (225225 / 256) * h^6 + (-96525 / 512) * h^8) * y^2 +
        ((-19845 / 128) * h + (24255 / 16) * h^3 + (-405405 / 128) * h^5 + (96525 / 64) * h^7) * y^3 +
        ((59815 / 1024) + (-229005 / 128) * h^2 + (1749825 / 256) * h^4 + (-1456455 / 256) * h^6 + (225225 / 1024) * h^8) * y^4 +
        ((71001 / 64) * h + (-578655 / 64) * h^3 + (1666665 / 128) * h^5 + (-225225 / 128) * h^7) * y^5 +
        ((-72009 / 256) + (925155 / 128) * h^2 + (-2477475 / 128) * h^4 + (1576575 / 256) * h^6) * y^6 +
        ((-205425 / 64) * h + (75075 / 4) * h^3 + (-1576575 / 128) * h^5) * y^7 +
        ((622215 / 1024) + (-2927925 / 256) * h^2 + (7882875 / 512) * h^4) * y^8 +
        ((508365 / 128) * h + (-1576575 / 128) * h^3) * y^9 +
        ((-306735 / 512) + (1576575 / 256) * h^2) * y^10 +
        ((-225225 / 128) * h) * y^11 +
        ((225225 / 1024)) * y^12) := by
    funext y
    simp only [mode_four, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-6/6 positive-branch coefficient polynomial. -/
theorem rawCorrelation_6_6 (h : ℝ) :
    rawCorrelation 3 3 h = (2 / 13) + -1 * h + (7 / 2) * h^3 + (-21 / 4) * h^5 + (15 / 4) * h^7 + (-175 / 128) * h^9 + (63 / 256) * h^11 + (-231 / 13312) * h^13 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 3 y * mode 3 (y-h)) =
      (fun y => (25 / 256) + (-525 / 256) * h^2 + (1575 / 256) * h^4 + (-1155 / 256) * h^6 +
        ((525 / 128) * h + (-1575 / 64) * h^3 + (3465 / 128) * h^5) * y^1 +
        ((-525 / 128) + (20475 / 256) * h^2 + (-1575 / 8) * h^4 + (24255 / 256) * h^6) * y^2 +
        ((-14175 / 128) * h + (19425 / 32) * h^3 + (-72765 / 128) * h^5) * y^3 +
        ((14175 / 256) + (-124425 / 128) * h^2 + (231525 / 128) * h^4 + (-72765 / 256) * h^6) * y^4 +
        ((51345 / 64) * h + (-55125 / 16) * h^3 + (218295 / 128) * h^5) * y^5 +
        ((-17115 / 64) + (491715 / 128) * h^2 + (-72765 / 16) * h^4 + (53361 / 256) * h^6) * y^6 +
        ((-147735 / 64) * h + (218295 / 32) * h^3 + (-160083 / 128) * h^5) * y^7 +
        ((147735 / 256) + (-1528065 / 256) * h^2 + (800415 / 256) * h^4) * y^8 +
        ((363825 / 128) * h + (-266805 / 64) * h^3) * y^9 +
        ((-72765 / 128) + (800415 / 256) * h^2) * y^10 +
        ((-160083 / 128) * h) * y^11 +
        ((53361 / 256)) * y^12) := by
    funext y
    simp only [mode_six]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-6/8 positive-branch coefficient polynomial. -/
theorem rawCorrelation_6_8 (h : ℝ) :
    rawCorrelation 3 4 h = -1 * h + (15 / 2) * h^2 + -14 * h^3 + (63 / 4) * h^5 + (-105 / 8) * h^7 + (825 / 128) * h^9 + (-231 / 128) * h^11 + (273 / 1024) * h^13 + (-33 / 2048) * h^15 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 3 y * mode 4 (y-h)) =
      (fun y => (-175 / 2048) + (1575 / 512) * h^2 + (-17325 / 1024) * h^4 + (15015 / 512) * h^6 + (-32175 / 2048) * h^8 +
        ((-1575 / 256) * h + (17325 / 256) * h^3 + (-45045 / 256) * h^5 + (32175 / 256) * h^7) * y^1 +
        ((9975 / 2048) + (-42525 / 256) * h^2 + (814275 / 1024) * h^4 + (-135135 / 128) * h^6 + (675675 / 2048) * h^8) * y^2 +
        ((1575 / 8) * h + (-513975 / 256) * h^3 + (585585 / 128) * h^5 + (-675675 / 256) * h^7) * y^3 +
        ((-177975 / 2048) + (1415925 / 512) * h^2 + (-5838525 / 512) * h^4 + (2837835 / 256) * h^6 + (-2027025 / 2048) * h^8) * y^4 +
        ((-508095 / 256) * h + (2234925 / 128) * h^3 + (-945945 / 32) * h^5 + (2027025 / 256) * h^7) * y^5 +
        ((1192695 / 2048) + (-2075535 / 128) * h^2 + (26413695 / 512) * h^4 + (-3720717 / 128) * h^6 + (1486485 / 2048) * h^8) * y^6 +
        ((267795 / 32) * h + (-7494795 / 128) * h^3 + (8135127 / 128) * h^5 + (-1486485 / 256) * h^7) * y^7 +
        ((-3767445 / 2048) + (21320145 / 512) * h^2 + (-91756665 / 1024) * h^4 + (10405395 / 512) * h^6) * y^8 +
        ((-4313925 / 256) * h + (21126105 / 256) * h^3 + (-10405395 / 256) * h^5) * y^9 +
        ((6060285 / 2048) + (-12297285 / 256) * h^2 + (52026975 / 1024) * h^4) * y^10 +
        ((513513 / 32) * h + (-10405395 / 256) * h^3) * y^11 +
        ((-4801797 / 2048) + (10405395 / 512) * h^2) * y^12 +
        ((-1486485 / 256) * h) * y^13 +
        ((1486485 / 2048)) * y^14) := by
    funext y
    simp only [mode_six, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-8/8 positive-branch coefficient polynomial. -/
theorem rawCorrelation_8_8 (h : ℝ) :
    rawCorrelation 4 4 h = (2 / 17) + -1 * h + 6 * h^3 + (-63 / 4) * h^5 + (165 / 8) * h^7 + (-1925 / 128) * h^9 + (819 / 128) * h^11 + (-1617 / 1024) * h^13 + (429 / 2048) * h^15 + (-6435 / 557056) * h^17 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 4 y * mode 4 (y-h)) =
      (fun y => (1225 / 16384) + (-11025 / 4096) * h^2 + (121275 / 8192) * h^4 + (-105105 / 4096) * h^6 + (225225 / 16384) * h^8 +
        ((11025 / 2048) * h + (-121275 / 2048) * h^3 + (315315 / 2048) * h^5 + (-225225 / 2048) * h^7) * y^1 +
        ((-11025 / 2048) + (760725 / 4096) * h^2 + (-3759525 / 4096) * h^4 + (5360355 / 4096) * h^6 + (-2027025 / 4096) * h^8) * y^2 +
        ((-518175 / 2048) * h + (2708475 / 1024) * h^3 + (-12927915 / 2048) * h^5 + (2027025 / 512) * h^7) * y^3 +
        ((518175 / 4096) + (-16857225 / 4096) * h^2 + (145408725 / 8192) * h^4 + (-38783745 / 2048) * h^6 + (22297275 / 8192) * h^8) * y^4 +
        ((6864165 / 2048) * h + (-63426825 / 2048) * h^3 + (59594535 / 1024) * h^5 + (-22297275 / 1024) * h^7) * y^5 +
        ((-2288055 / 2048) + (134154405 / 4096) * h^2 + (-237432195 / 2048) * h^4 + (174116943 / 2048) * h^6 + (-19324305 / 4096) * h^8) * y^6 +
        ((-39372795 / 2048) * h + (76621545 / 512) * h^3 + (-210188979 / 1024) * h^5 + (19324305 / 512) * h^7) * y^7 +
        ((39372795 / 8192) + (-495810315 / 4096) * h^2 + (2665267605 / 8192) * h^4 + (-560404845 / 4096) * h^6 + (41409225 / 16384) * h^8) * y^8 +
        ((114189075 / 2048) * h + (-695179485 / 2048) * h^3 + (599053455 / 2048) * h^5 + (-41409225 / 2048) * h^7) * y^9 +
        ((-22837815 / 2048) + (920134215 / 4096) * h^2 + (-1642565925 / 4096) * h^4 + (289864575 / 4096) * h^6) * y^10 +
        ((-175107933 / 2048) * h + (367161795 / 1024) * h^3 + (-289864575 / 2048) * h^5) * y^11 +
        ((58369311 / 4096) + (-830945115 / 4096) * h^2 + (1449322875 / 8192) * h^4) * y^12 +
        ((135270135 / 2048) * h + (-289864575 / 2048) * h^3) * y^13 +
        ((-19324305 / 2048) + (289864575 / 4096) * h^2) * y^14 +
        ((-41409225 / 2048) * h) * y^15 +
        ((41409225 / 16384)) * y^16) := by
    funext y
    simp only [mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Reversing the two even modes preserves the oriented integral for every real h. -/
theorem rawCorrelation_symm (i j : Fin 5) (h : ℝ) :
    rawCorrelation i j h = rawCorrelation j i h := by
  have change := intervalIntegral.integral_comp_sub_left
    (fun y : ℝ => mode i y * mode j (y-h)) (a := h-1) (b := 1) h
  have hb : h - (h-1) = 1 := by ring
  rw [hb] at change
  unfold rawCorrelation
  rw [← change]
  apply intervalIntegral.integral_congr
  intro y _
  have hi : mode i (h-y) = mode i (y-h) := by
    rw [show h-y = -(y-h) by ring, mode_even]
  have hj : mode j (h-y-h) = mode j y := by
    rw [show h-y-h = -y by ring, mode_even]
  dsimp only
  rw [hi, hj, mul_comm]

/-- Touching interval endpoints contribute exactly zero. -/
theorem rawCorrelation_endpoint (i j : Fin 5) : rawCorrelation i j 2 = 0 := by
  norm_num [rawCorrelation]

/-- Exact origin values, including all off-diagonal orthogonality identities. -/
theorem rawCorrelation_origin (i j : Fin 5) :
    rawCorrelation i j 0 = if i = j then 2 / modeWeight i else 0 := by
  fin_cases i <;> fin_cases j
  · change rawCorrelation 0 0 0 = 2 / modeWeight 0
    rw [rawCorrelation_0_0]
    norm_num [modeWeight]
  · change rawCorrelation 0 1 0 = 0
    rw [rawCorrelation_0_2]
    norm_num [modeWeight]
  · change rawCorrelation 0 2 0 = 0
    rw [rawCorrelation_0_4]
    norm_num [modeWeight]
  · change rawCorrelation 0 3 0 = 0
    rw [rawCorrelation_0_6]
    norm_num [modeWeight]
  · change rawCorrelation 0 4 0 = 0
    rw [rawCorrelation_0_8]
    norm_num [modeWeight]
  · change rawCorrelation 1 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_2]
    norm_num [modeWeight]
  · change rawCorrelation 1 1 0 = 2 / modeWeight 1
    rw [rawCorrelation_2_2]
    norm_num [modeWeight]
  · change rawCorrelation 1 2 0 = 0
    rw [rawCorrelation_2_4]
    norm_num [modeWeight]
  · change rawCorrelation 1 3 0 = 0
    rw [rawCorrelation_2_6]
    norm_num [modeWeight]
  · change rawCorrelation 1 4 0 = 0
    rw [rawCorrelation_2_8]
    norm_num [modeWeight]
  · change rawCorrelation 2 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_4]
    norm_num [modeWeight]
  · change rawCorrelation 2 1 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_2_4]
    norm_num [modeWeight]
  · change rawCorrelation 2 2 0 = 2 / modeWeight 2
    rw [rawCorrelation_4_4]
    norm_num [modeWeight]
  · change rawCorrelation 2 3 0 = 0
    rw [rawCorrelation_4_6]
    norm_num [modeWeight]
  · change rawCorrelation 2 4 0 = 0
    rw [rawCorrelation_4_8]
    norm_num [modeWeight]
  · change rawCorrelation 3 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 1 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_2_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 2 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_4_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 3 0 = 2 / modeWeight 3
    rw [rawCorrelation_6_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 4 0 = 0
    rw [rawCorrelation_6_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 1 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_2_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 2 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_4_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 3 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_6_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 4 0 = 2 / modeWeight 4
    rw [rawCorrelation_8_8]
    norm_num [modeWeight]

/-- The raw positive-branch polynomial itself is demonstrably not even. -/
theorem rawCorrelation_zero_not_even : rawCorrelation 0 0 (-1) ≠ rawCorrelation 0 0 1 := by
  norm_num [rawCorrelation_0_0]

end CommonMeanScratch
