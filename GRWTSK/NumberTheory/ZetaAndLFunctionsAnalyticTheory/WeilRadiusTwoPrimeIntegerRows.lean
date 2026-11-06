/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeGridSums

/-!
# Integer evaluation of the radius-two prime observations

The stored logarithm has denominator `2^64` and the physical sine phase
has denominator `2^65`. Euclidean integer quotients give the same
rounding as the rational phase reduction, including for negative
centered phases and negative rotation outputs. The two accumulators
use a shared integer scale and round only after their sums. The final
formulas preserve the signed prime signal and its contribution to
the diagonal.

The mathematical return compares the executable integer evaluator
with the exact rational observation. The evaluator accepts integer trigonometric anchors, logarithms, and
weights. A return for an archived array also needs the source bindings
for those inputs and the comparisons against the archived output digits.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeIntegerRows

open RadiusTwoPrimeSeedTrig RadiusTwoPrimeDyadicRotation RadiusTwoPrimeGridSums

/-- Denominator of the archived trigonometric and row digits. -/
def scale : ℕ := 2^50

private def phaseScale : ℕ := 2^65
private def cellScale : ℕ := 2^52
private def halfPhase : ℤ := 2^64

/-- Decode an archived integer row digit as its exact rational value. -/
def decode (z : ℤ) : ℚ := (z : ℚ) / (scale : ℚ)

/-- Decode the integer numerator before phase reduction. -/
def phase (p : ℤ) : ℚ := (p : ℚ) / (phaseScale : ℚ)

private def turn (p : ℤ) : ℤ := (p+halfPhase)/(phaseScale : ℤ)
private def centered (p : ℤ) : ℤ := p-turn p*(phaseScale : ℤ)
private def address (p : ℤ) : ℤ := centered p/(cellScale : ℤ)
private def short (p : ℤ) : ℤ := centered p-address p*(cellScale : ℤ)
private def sign (t : ℤ) : ℤ := if t % 2 = 0 then 1 else -1

private def piDigit : ℤ := 3537118876014220

private def tDigit (p : ℤ) : ℤ := piDigit*short p/(phaseScale : ℤ)

private def aDigit (p : ℤ) : ℤ := (scale : ℤ) - (tDigit p)^2 / (2*(scale : ℤ))

/-- Integer rotation in the same phase cell and floor grid as the source checker. -/
def rotate (s c : ℤ → ℤ) (p : ℤ) : ℤ × ℤ :=
  let i := address p
  let a := aDigit p
  let t := tDigit p
  let z := sign (turn p)
  (z*((a*s i+t*c i)/(scale : ℤ)), z*((a*c i-t*s i)/(scale : ℤ)))

private theorem decode_mulInt (z x : ℤ) :
    decode (z*x) = (z : ℚ) * decode x := by
  simp only [decode, Int.cast_mul]
  ring

private theorem grid50_decode_div (x : ℤ) (n : ℕ) :
    grid50 (decode x / (n : ℚ)) = decode (x / (n : ℤ)) := by
  unfold grid50
  have h : (2 : ℚ)^50 * (decode x/(n : ℚ)) = (x : ℚ)/(n : ℚ) := by
    unfold decode scale
    push_cast
    ring
  rw [h, Rat.floor_intCast_div_natCast]
  rfl

private theorem turn_eq (p : ℤ) : UnitWindowPrimeTrig.angleTurn (phase p) = turn p := by
  unfold UnitWindowPrimeTrig.angleTurn phase turn
  have h : (p : ℚ) / (phaseScale : ℚ) + 1/2 =
      (((p+halfPhase : ℤ) : ℚ)) / (phaseScale : ℚ) := by
    push_cast [phaseScale,halfPhase]
    ring
  rw [h, Rat.floor_intCast_div_natCast]

private theorem centered_eq (p : ℤ) :
    phase p - (turn p : ℚ) = (centered p : ℚ) / (phaseScale : ℚ) := by
  unfold phase centered phaseScale
  push_cast
  ring

private theorem address_eq (p : ℤ) : anchor (phase p) = address p := by
  unfold anchor address
  rw [turn_eq, centered_eq]
  have h : 8192*((centered p : ℚ)/(phaseScale : ℚ)) =
      (centered p : ℚ)/(cellScale : ℚ) := by
    unfold phaseScale cellScale
    push_cast
    ring
  rw [h, Rat.floor_intCast_div_natCast]

private theorem short_eq (p : ℤ) : remainder (phase p) = (short p : ℚ)/(phaseScale : ℚ) := by
  unfold remainder short
  rw [turn_eq, centered_eq, address_eq]
  unfold phaseScale cellScale
  push_cast
  ring

private theorem sign_eq (t : ℤ) : (sign t : ℚ) = (-1 : ℚ)^t := by
  rw [neg_one_zpow_eq_ite]
  by_cases h : t % 2 = 0
  · have he : Even t := ⟨t/2, by omega⟩
    simp [sign,h,he]
  · have he : ¬Even t := by
      rintro ⟨z,hz⟩
      omega
    simp [sign,h,he]

private theorem piDigit_eq : decode piDigit = grid50 3.14159265358979323846 := by
  decide +kernel

private theorem tDigit_eq (p : ℤ) :
    decode (tDigit p) = grid50 (grid50 3.14159265358979323846 * remainder (phase p)) := by
  rw [← piDigit_eq, short_eq]
  unfold tDigit
  rw [← grid50_decode_div, decode_mulInt]
  congr 1
  unfold decode
  ring

private theorem aDigit_eq (p : ℤ) :
    decode (aDigit p) = 1-grid50 ((decode (tDigit p))^2/2) := by
  unfold aDigit
  have h : ((decode (tDigit p))^2 / 2) =
      decode ((tDigit p)^2) / ((2*scale : ℕ) : ℚ) := by
    unfold decode scale
    push_cast
    ring
  rw [h, grid50_decode_div]
  unfold decode scale
  push_cast
  ring

private theorem decode_products (a t x y : ℤ) :
    decode a*decode x+decode t*decode y = decode (a*x+t*y)/(scale : ℚ) := by
  simp only [decode, Int.cast_add, Int.cast_mul]
  ring

/-- The two signed integer output digits exactly decode to the dyadic rotation. -/
theorem rotate_eq (s c : ℤ → ℤ) (p : ℤ) :
    (decode (rotate s c p).1, decode (rotate s c p).2) =
      dyadicRotationCenter (decode ∘ s) (decode ∘ c) (phase p) := by
  let i := anchor (phase p)
  let z := (-1 : ℚ)^UnitWindowPrimeTrig.angleTurn (phase p)
  let t := grid50 (grid50 3.14159265358979323846 * remainder (phase p))
  let a := 1-grid50 (t^2/2)
  change (decode (rotate s c p).1, decode (rotate s c p).2) =
    (z*grid50 (a*decode (s i)+t*decode (c i)), z*grid50 (a*decode (c i)-t*decode (s i)))
  have hi : i = address p := address_eq p
  have ht : t = decode (tDigit p) := (tDigit_eq p).symm
  have ha : a = decode (aDigit p) := by
    unfold a
    rw [ht, aDigit_eq]
  have hz : z = (sign (turn p) : ℚ) := by
    unfold z
    rw [turn_eq, sign_eq]
  rw [hi,ha,ht,hz]
  simp only [rotate, decode_mulInt, Prod.mk.injEq]
  constructor
  · rw [decode_products, grid50_decode_div]
  · simp only [sub_eq_add_neg, ← mul_neg]
    rw [show -decode (s (address p)) = decode (-s (address p)) by
      unfold decode; push_cast; ring, decode_products, grid50_decode_div]


private def sumRange (f : ℕ → ℤ) : ℕ → ℤ
  | 0 => 0
  | n + 1 => sumRange f n + f n

private theorem sumRange_eq (f : ℕ → ℤ) (n : ℕ) :
    sumRange f n = ∑ q ∈ Finset.range n, f q := by
  induction n with
  | zero => simp [sumRange]
  | succ n ih => rw [sumRange, ih, Finset.sum_range_succ]

private theorem sumInventory_eq (f : ℕ → ℤ) :
    sumRange (fun q => f (q+2)) 53 = ∑ q ∈ Finset.Icc 2 54, f q := by
  rw [sumRange_eq]
  refine Finset.sum_bij (fun q _ => q+2) ?_ ?_ ?_ ?_
  · intro q hq
    simp only [Finset.mem_range, Finset.mem_Icc] at *
    omega
  · intro i _ j _ h
    omega
  · intro q hq
    simp only [Finset.mem_Icc] at hq
    exact ⟨q-2, Finset.mem_range.mpr (by omega), by omega⟩
  · intro q _
    rfl

private def weighted (w r : ℕ → ℤ) : ℤ :=
  sumRange (fun i =>
    let q := i+2
    let z := w q
    if z = 0 then 0 else z * r q) 53 / (scale : ℤ)

private theorem weighted_eq (w r : ℕ → ℤ) :
    decode (weighted w r) = grid50 (∑ q ∈ Finset.Icc 2 54, decode (w q)*decode (r q)) := by
  unfold weighted
  rw [sumInventory_eq (fun q => if w q = 0 then 0 else w q * r q), ← grid50_decode_div]
  congr 1
  have h (q : ℕ) : (if w q = 0 then 0 else w q * r q) = w q * r q := by
    split_ifs with hz
    · simp [hz]
    · rfl
  simp only [h, decode, Int.cast_sum, Int.cast_mul, div_eq_mul_inv, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro q _
  ring

private def sine (s c : ℤ → ℤ) (logNum w : ℕ → ℤ) (n : ℕ) : ℤ :=
  weighted w (fun q => (rotate s c (logNum q*(n : ℤ))).1)

private def cosine (s c : ℤ → ℤ) (logNum v : ℕ → ℤ) (n : ℕ) : ℤ :=
  weighted v (fun q => (rotate s c (logNum q*(n : ℤ))).2)

private def invPiDigit : ℤ := 358385071201416
private def twoInvPiDigit : ℤ := 716770142402832

private theorem invPiDigit_eq : decode invPiDigit = grid50 (1/3.14159265358979323846) := by
  decide +kernel

private theorem twoInvPiDigit_eq : decode twoInvPiDigit = grid50 (2/3.14159265358979323846) := by
  decide +kernel

/-- The signed scaled prime signal evaluated with Euclidean integer quotients. -/
def scaledSignalDigit (s c : ℤ → ℤ) (logNum w : ℕ → ℤ) (n : ℕ) : ℤ :=
  twoInvPiDigit * sine s c logNum w n / (scale : ℤ)

/-- The prime contribution to the diagonal, rounded on its original grid. -/
def diagonalDigit (s c : ℤ → ℤ) (logNum w v : ℕ → ℤ) (n : ℕ) : ℤ :=
  cosine s c logNum v n + invPiDigit * sine s c logNum w n / ((scale : ℤ) * (n : ℤ))

private theorem sine_eq (s c : ℤ → ℤ) (logNum w : ℕ → ℤ) (n : ℕ) :
    decode (sine s c logNum w n) = grid50 (∑ q ∈ Finset.Icc 2 54,
      decode (w q) * (dyadicRotationCenter (decode ∘ s) (decode ∘ c)
        (phase (logNum q*(n : ℤ)))).1) := by
  unfold sine
  rw [weighted_eq]
  congr 1
  apply Finset.sum_congr rfl
  intro q _
  rw [← (congrArg Prod.fst (rotate_eq s c (logNum q*(n : ℤ))))]

private theorem cosine_eq (s c : ℤ → ℤ) (logNum v : ℕ → ℤ) (n : ℕ) :
    decode (cosine s c logNum v n) = grid50 (∑ q ∈ Finset.Icc 2 54,
      decode (v q) * (dyadicRotationCenter (decode ∘ s) (decode ∘ c)
        (phase (logNum q*(n : ℤ)))).2) := by
  unfold cosine
  rw [weighted_eq]
  congr 1
  apply Finset.sum_congr rfl
  intro q _
  rw [← (congrArg Prod.snd (rotate_eq s c (logNum q*(n : ℤ))))]

/-- The scaled prime signal agrees exactly with the rational recipe at the same input phase. -/
theorem scaledSignalDigit_eq (s c : ℤ → ℤ) (logNum w : ℕ → ℤ) (n : ℕ) :
    decode (scaledSignalDigit s c logNum w n) = grid50 (grid50 (2/3.14159265358979323846) *
      grid50 (∑ q ∈ Finset.Icc 2 54, decode (w q) *
        (dyadicRotationCenter (decode ∘ s) (decode ∘ c) (phase (logNum q*(n : ℤ)))).1)) := by
  unfold scaledSignalDigit
  rw [← grid50_decode_div, ← twoInvPiDigit_eq, ← sine_eq, decode_mulInt]
  unfold decode
  congr 1
  ring

/-- The prime diagonal agrees exactly with the rational recipe at the same input phase. -/
theorem diagonalDigit_eq (s c : ℤ → ℤ) (logNum w v : ℕ → ℤ) (n : ℕ) :
    decode (diagonalDigit s c logNum w v n) =
      grid50 (∑ q ∈ Finset.Icc 2 54, decode (v q) *
        (dyadicRotationCenter (decode ∘ s) (decode ∘ c) (phase (logNum q*(n : ℤ)))).2) +
      grid50 (grid50 (1/3.14159265358979323846) *
        grid50 (∑ q ∈ Finset.Icc 2 54, decode (w q) *
          (dyadicRotationCenter (decode ∘ s) (decode ∘ c) (phase (logNum q*(n : ℤ)))).1) / n) := by
  unfold diagonalDigit
  rw [show ∀ x y : ℤ, decode (x+y) = decode x + decode y by
      intros; simp only [decode, Int.cast_add, add_div],
    ← cosine_eq, ← sine_eq, ← invPiDigit_eq, ← Int.natCast_mul, ← grid50_decode_div]
  congr 2
  simp only [decode, Int.cast_mul, Nat.cast_mul]
  ring

/-- Decode the phase from an archived numerator of the logarithm on its (2^{64}) grid. -/
theorem phase_log (logNum : ℤ) (n : ℕ) :
    phase (logNum*(n : ℤ)) = (n : ℚ)/2*((logNum : ℚ)/2^64) := by
  unfold phase phaseScale
  push_cast
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeIntegerRows
