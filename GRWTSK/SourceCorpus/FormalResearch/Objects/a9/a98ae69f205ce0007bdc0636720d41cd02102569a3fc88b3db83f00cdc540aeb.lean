import FormalResearch.RiemannHypothesis.ThetaPhiRankFivePolynomialBounds
import FormalResearch.RiemannHypothesis.ThetaPhiRankFiveSourceObstruction

/-! # Rational interval enclosure of the first four literal source modes
Every operation has a proved real-valued soundness theorem. Closed certificates
are checked by kernel reduction, independently of the external Python script.
-/
namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
namespace RankFiveRationalInterval

/-- A center-radius enclosure with exact rational coordinates.
Membership is empty when the radius is negative. -/
structure I where
  /-- The center of the enclosure. -/
  c : ℚ
  /-- The radius used by the real-valued membership predicate. -/
  r : ℚ
  deriving DecidableEq

/-- Real membership in the closed center-radius enclosure. -/
def Contains (a : I) (x : ℝ) : Prop := |x - a.c| ≤ a.r

/-- The radius-zero enclosure of one exact scalar. -/
def point (z : ℚ) : I := ⟨z, 0⟩
/-- Interval addition, adding centers and radii. -/
def add (a b : I) : I := ⟨a.c + b.c, a.r + b.r⟩
/-- Interval multiplication with radius bounding both linear errors and their product. -/
def mul (a b : I) : I :=
  ⟨a.c * b.c, |a.c| * b.r + |b.c| * a.r + a.r * b.r⟩

theorem point_sound (z : ℚ) : Contains (point z) z := by
  simp [Contains, point]

theorem add_sound {a b : I} {x y : ℝ}
    (hx : Contains a x) (hy : Contains b y) : Contains (add a b) (x + y) := by
  dsimp [Contains, add] at *
  push_cast
  calc
    |x + y - (a.c + b.c)| = |(x - a.c) + (y - b.c)| := by congr 1; ring
    _ ≤ |x - a.c| + |y - b.c| := abs_add_le _ _
    _ ≤ a.r + b.r := add_le_add hx hy

theorem mul_sound {a b : I} {x y : ℝ}
    (hx : Contains a x) (hy : Contains b y) : Contains (mul a b) (x * y) := by
  dsimp [Contains, mul] at *
  push_cast
  have ha : (0 : ℝ) ≤ a.r := (abs_nonneg _).trans hx
  have hb : (0 : ℝ) ≤ b.r := (abs_nonneg _).trans hy
  calc
    |x * y - a.c * b.c| =
        |(a.c : ℝ) * (y - b.c) + (b.c : ℝ) * (x - a.c) +
          (x - a.c) * (y - b.c)| := by congr 1; ring
    _ ≤ |(a.c : ℝ) * (y - b.c)| + |(b.c : ℝ) * (x - a.c)| +
          |(x - a.c) * (y - b.c)| :=
      (abs_add_le _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ = |(a.c : ℝ)| * |y - b.c| + |(b.c : ℝ)| * |x - a.c| +
          |x - a.c| * |y - b.c| := by simp only [abs_mul]
    _ ≤ |(a.c : ℝ)| * b.r + |(b.c : ℝ)| * a.r + a.r * b.r := by
      exact add_le_add
        (add_le_add (mul_le_mul_of_nonneg_left hy (abs_nonneg _))
          (mul_le_mul_of_nonneg_left hx (abs_nonneg _)))
        (mul_le_mul hx hy (abs_nonneg _) ha)

/-- Recursive interval sum over a finite family, starting from the exact zero enclosure. -/
def sum : {n : ℕ} → (Fin n → I) → I
  | 0, _ => point 0
  | n + 1, f => add (f 0) (sum (fun i : Fin n => f i.succ))

theorem sum_sound {n : ℕ} (a : Fin n → I) (x : Fin n → ℝ)
    (h : ∀ i, Contains (a i) (x i)) : Contains (sum a) (∑ i, x i) := by
  induction n with
  | zero => simpa [sum] using point_sound 0
  | succ n ih =>
      rw [Fin.sum_univ_succ]
      exact add_sound (h 0) (ih _ _ (fun i => h i.succ))


/-- Repeated interval multiplication enclosing a nonnegative integer power. -/
def pow (a : I) : ℕ → I
  | 0 => point 1
  | n + 1 => mul (pow a n) a

theorem pow_sound {a : I} {x : ℝ} (h : Contains a x) (n : ℕ) :
    Contains (pow a n) (x ^ n) := by
  induction n with
  | zero => simpa [pow] using point_sound 1
  | succ n ih => simpa [pow, pow_succ] using mul_sound ih h

/-- Interval Horner evaluation of coefficients listed in ascending degree. -/
def horner (a : List ℚ) (x : I) : I :=
  a.foldr (fun z acc => add (point z) (mul x acc)) (point 0)

/-- Real Horner evaluation of the same rational coefficient list. -/
def realHorner (a : List ℚ) (x : ℝ) : ℝ :=
  a.foldr (fun z acc => (z : ℝ) + x * acc) 0

theorem horner_sound (a : List ℚ) {b : I} {x : ℝ} (h : Contains b x) :
    Contains (horner a b) (realHorner a x) := by
  induction a with
  | nil => simpa [horner, realHorner] using point_sound 0
  | cons z zs ih => exact add_sound (point_sound z) (mul_sound h ih)

/-- The integer coefficient list, in ascending degree. -/
def coefficients : ℕ → List ℚ
  | 0 => [-3, 2]
  | 1 => [-15, 30, -8]
  | 2 => [-75, 330, -224, 32]
  | 3 => [-375, 3270, -4232, 1440, -128]
  | 4 => [-1875, 30930, -68096, 41408, -8448, 512]
  | 5 => [-9375, 285870, -1008968, 976320, -343040, 46592, -2048]
  | 6 => [-46875, 2610330, -14260064, 20633312, -11109120, 2536960, -245760, 8192]
  | 7 => [-234375, 23680470, -195822152, 407806560,
    -315824768, 107860480, -17274880, 1253376, -32768]
  | 8 => [-1171875, 214061730, -2640409856, 7716000128,
    -8263546368, 3959811072, -932413440, 110460928, -6225920, 131072]
  | _ => []

/-- The finite interval evaluator uses exactly the source polynomials. -/
theorem realHorner_eq (n : Fin 9) (y : ℝ) :
    realHorner (coefficients n.val) y = (thetaPhiDerivativePolynomial n.val).eval y := by
  rw [thetaRankFivePolynomial_eq]
  fin_cases n <;> norm_num [realHorner, coefficients, thetaRankFivePolynomial] <;> ring

/-- Twenty-decimal rational bounds from Mathlib's pi theorem. -/
def piBox : I := ⟨628318530717958647693 / 200000000000000000000,
  1 / 200000000000000000000⟩

/-- The independently established exponential enclosure used as finite input. -/
def expBox : I := ⟨8642783652754449955 / 200000000000000000000,
  1 / 200000000000000000000⟩

/-- Interval evaluation of derivative order n in the theta mode with integer index m. -/
def modeBox (n m : ℕ) : I :=
  let y := mul piBox (point ((m : ℚ) ^ 2))
  mul (mul y (horner (coefficients n) y)) (pow expBox (m ^ 2))

theorem modeBox_sound (n : Fin 9) (m : ℕ) {p q : ℝ}
    (hp : Contains piBox p) (hq : Contains expBox q) :
    Contains (modeBox n.val m)
      ((p * (m : ℝ) ^ 2) *
        (thetaPhiDerivativePolynomial n.val).eval (p * (m : ℝ) ^ 2) *
          q ^ (m ^ 2)) := by
  have hm : Contains (point ((m : ℚ) ^ 2)) ((m : ℝ) ^ 2) := by
    unfold Contains point
    push_cast
    simp
  have hy := mul_sound hp hm
  have hpoly := horner_sound (coefficients n.val) hy
  rw [realHorner_eq] at hpoly
  exact mul_sound (mul_sound hy hpoly) (pow_sound hq (m ^ 2))

/-- The interval sum of the first four positive-integer theta modes. -/
def finiteBox (n : ℕ) : I := sum (fun m : Fin 4 => modeBox n (m.val + 1))

theorem finiteBox_sound (n : Fin 9) {p q : ℝ}
    (hp : Contains piBox p) (hq : Contains expBox q) :
    Contains (finiteBox n.val)
      (∑ m : Fin 4, (p * ((m.val + 1 : ℕ) : ℝ) ^ 2) *
        (thetaPhiDerivativePolynomial n.val).eval (p * ((m.val + 1 : ℕ) : ℝ) ^ 2) *
          q ^ ((m.val + 1) ^ 2)) := by
  exact sum_sound _ _ (fun m => modeBox_sound n (m.val + 1) hp hq)

/-- The order-dependent rational error bound for all theta modes with integer index at
least five. -/
def tailRadius (n : ℕ) : ℚ :=
  6 * ((coefficients n).map abs).sum * 100 ^ (n + 2) / 10 ^ 33

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
-- Exact finite arithmetic certificates require an unrestricted tactic heartbeat budget.
/-- Fully rational check that the first four modes plus the entire analytic
tail fit inside the nine determinant-coordinate boxes. -/
theorem finiteBox_with_tail_inside (n : Fin 9) :
    |2000000 * (finiteBox n.val).c - (RankFiveInterval.jetBox n.val).c| +
      2000000 * ((finiteBox n.val).r + tailRadius n.val) ≤
        (RankFiveInterval.jetBox n.val).r := by
  fin_cases n <;> decide +kernel

theorem tailRadius_cast (n : Fin 9) : (tailRadius n.val : ℝ) =
    6 * thetaRankFiveCoefficientNorm n.val * 100 ^ (n.val + 2) / 10 ^ 33 := by
  fin_cases n <;> norm_num [tailRadius, coefficients, thetaRankFiveCoefficientNorm]

/-- Transfer of the rational finite computation and analytic tail into the
integer boxes used by the rank-five determinant certificate. -/
theorem jetBox_of_finite_and_tail (n : Fin 9) (x f : ℝ)
    (hf : Contains (finiteBox n.val) f)
    (ht : |x - f| ≤ (tailRadius n.val : ℝ)) :
    RankFiveInterval.Contains (RankFiveInterval.jetBox n.val) (2000000 * x) := by
  have hcert :
      |2000000 * ((finiteBox n.val).c : ℝ) - (RankFiveInterval.jetBox n.val).c| +
        2000000 * (((finiteBox n.val).r : ℝ) + (tailRadius n.val : ℝ)) ≤
          (RankFiveInterval.jetBox n.val).r := by
    exact_mod_cast finiteBox_with_tail_inside n
  have hxf : |x - (finiteBox n.val).c| ≤
      (tailRadius n.val : ℝ) + (finiteBox n.val).r := by
    calc
      |x - (finiteBox n.val).c| = |(x - f) + (f - (finiteBox n.val).c)| := by
        congr 1; ring
      _ ≤ |x - f| + |f - (finiteBox n.val).c| := abs_add_le _ _
      _ ≤ (tailRadius n.val : ℝ) + (finiteBox n.val).r := add_le_add ht hf
  unfold RankFiveInterval.Contains
  calc
    |2000000 * x - (RankFiveInterval.jetBox n.val).c| =
        |2000000 * (x - (finiteBox n.val).c) +
          (2000000 * (finiteBox n.val).c - (RankFiveInterval.jetBox n.val).c)| := by
      congr 1; ring
    _ ≤ |2000000 * (x - (finiteBox n.val).c)| +
        |2000000 * ((finiteBox n.val).c : ℝ) - (RankFiveInterval.jetBox n.val).c| := abs_add_le _ _
    _ ≤ (RankFiveInterval.jetBox n.val).r := by
      rw [abs_mul]
      norm_num
      linarith

end RankFiveRationalInterval
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
