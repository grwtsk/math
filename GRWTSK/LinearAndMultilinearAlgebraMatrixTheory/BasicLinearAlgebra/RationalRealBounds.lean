/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Data.Rat.BigOperators
import Mathlib.Data.Rat.Floor
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.NormNum

/-!
# Outward rational endpoint arithmetic for real finite sums and products

Addition and finite summation preserve each endpoint order. A product
lies between the extreme corner products, including for intervals
crossing zero. Positive reciprocation reverses endpoints. Rounding to
an integer multiple of a negative power of two uses a floor below and
a ceiling above.

The statements transport exact scalar observations to finite matrix
entries. The elementary observations and any subsequent finite sign
remain separate premises. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

abbrev Bounds := ℚ × ℚ

def Encloses (a : Bounds) (x : ℝ) : Prop := (a.1 : ℝ) ≤ x ∧ x ≤ (a.2 : ℝ)

def point (c : ℚ) : Bounds := (c, c)

def add (a b : Bounds) : Bounds := (a.1 + b.1, a.2 + b.2)

def neg (a : Bounds) : Bounds := (-a.2, -a.1)

def sub (a b : Bounds) : Bounds := add a (neg b)

def mul (a b : Bounds) : Bounds :=
  (min (min (a.1 * b.1) (a.2 * b.1)) (min (a.1 * b.2) (a.2 * b.2)),
   max (max (a.1 * b.1) (a.2 * b.1)) (max (a.1 * b.2) (a.2 * b.2)))

def scale (c : ℚ) (a : Bounds) : Bounds := mul (point c) a

def sum {ι : Type*} (s : Finset ι) (f : ι → Bounds) : Bounds :=
  (∑ i ∈ s, (f i).1, ∑ i ∈ s, (f i).2)

def inv (a : Bounds) : Bounds := (a.2⁻¹, a.1⁻¹)

/-- Round both endpoints outward on the grid of step `2^(-bits)`. -/
def round (bits : ℕ) (a : Bounds) : Bounds :=
  (⌊2 ^ bits * a.1⌋ / (2 : ℚ) ^ bits, ⌈2 ^ bits * a.2⌉ / (2 : ℚ) ^ bits)

theorem point_sound (c : ℚ) : Encloses (point c) (c : ℝ) := ⟨le_rfl, le_rfl⟩

theorem add_sound {a b : Bounds} {x y : ℝ} (ha : Encloses a x) (hb : Encloses b y) :
    Encloses (add a b) (x + y) := by
  simp only [Encloses, add, Rat.cast_add]
  exact ⟨add_le_add ha.1 hb.1, add_le_add ha.2 hb.2⟩

theorem neg_sound {a : Bounds} {x : ℝ} (ha : Encloses a x) :
    Encloses (neg a) (-x) := by
  simp only [Encloses, neg, Rat.cast_neg]
  exact ⟨neg_le_neg ha.2, neg_le_neg ha.1⟩

theorem sub_sound {a b : Bounds} {x y : ℝ} (ha : Encloses a x) (hb : Encloses b y) :
    Encloses (sub a b) (x - y) := by
  simpa only [sub, sub_eq_add_neg] using add_sound ha (neg_sound hb)

private theorem mul_slice {a b x : ℝ} (h₁ : a ≤ x) (h₂ : x ≤ b) (c : ℝ) :
    min (a*c) (b*c) ≤ x*c ∧ x*c ≤ max (a*c) (b*c) := by
  rcases le_total 0 c with hc | hc
  · exact ⟨(min_le_left _ _).trans (mul_le_mul_of_nonneg_right h₁ hc),
      (mul_le_mul_of_nonneg_right h₂ hc).trans (le_max_right _ _)⟩
  · exact ⟨(min_le_right _ _).trans (mul_le_mul_of_nonpos_right h₂ hc),
      (mul_le_mul_of_nonpos_right h₁ hc).trans (le_max_left _ _)⟩

theorem mul_sound {a b : Bounds} {x y : ℝ} (ha : Encloses a x) (hb : Encloses b y) :
    Encloses (mul a b) (x * y) := by
  have hL := mul_slice ha.1 ha.2 (b.1 : ℝ)
  have hU := mul_slice ha.1 ha.2 (b.2 : ℝ)
  have h := mul_slice hb.1 hb.2 x
  simp only [Encloses, mul, Rat.cast_min, Rat.cast_max, Rat.cast_mul]
  constructor
  · refine (le_min ((min_le_left _ _).trans hL.1) ((min_le_right _ _).trans hU.1)).trans ?_
    simpa only [mul_comm] using h.1
  · refine le_trans ?_ (max_le (hL.2.trans (le_max_left _ _)) (hU.2.trans (le_max_right _ _)))
    simpa only [mul_comm] using h.2

theorem scale_sound (c : ℚ) {a : Bounds} {x : ℝ} (ha : Encloses a x) :
    Encloses (scale c a) ((c : ℝ) * x) :=
  mul_sound (point_sound c) ha

theorem sum_sound {ι : Type*} (s : Finset ι) {a : ι → Bounds} {x : ι → ℝ}
    (h : ∀ i ∈ s, Encloses (a i) (x i)) :
    Encloses (sum s a) (∑ i ∈ s, x i) := by
  simp only [Encloses, sum, Rat.cast_sum]
  exact ⟨Finset.sum_le_sum (fun i hi => (h i hi).1), Finset.sum_le_sum (fun i hi => (h i hi).2)⟩

theorem inv_sound {a : Bounds} {x : ℝ} (ha : Encloses a x) (hpos : 0 < (a.1 : ℝ)) :
    Encloses (inv a) x⁻¹ := by
  simp only [Encloses, inv, Rat.cast_inv]
  rw [← one_div, ← one_div, ← one_div]
  exact ⟨one_div_le_one_div_of_le (hpos.trans_le ha.1) ha.2,
    one_div_le_one_div_of_le hpos ha.1⟩

theorem round_sound (bits : ℕ) {a : Bounds} {x : ℝ} (ha : Encloses a x) :
    Encloses (round bits a) x := by
  have hGrid : (0 : ℚ) < 2 ^ bits := pow_pos (by norm_num) _
  have hL : (⌊2 ^ bits * a.1⌋ : ℚ) / (2 : ℚ) ^ bits ≤ a.1 := by
    rw [div_le_iff₀ hGrid, mul_comm a.1]
    exact Int.floor_le _
  have hU : a.2 ≤ (⌈2 ^ bits * a.2⌉ : ℚ) / (2 : ℚ) ^ bits := by
    rw [le_div_iff₀ hGrid, mul_comm a.2]
    exact Int.le_ceil _
  have hLo : (round bits a).1 ≤ a.1 := hL
  have hHi : a.2 ≤ (round bits a).2 := hU
  exact ⟨(Rat.cast_le.mpr hLo).trans ha.1, ha.2.trans (Rat.cast_le.mpr hHi)⟩

theorem mul_comm_bounds (a b : Bounds) : mul a b = mul b a := by
  unfold mul
  congr 1
  · simp only [mul_comm, min_comm, min_left_comm]
  · simp only [mul_comm, max_comm, max_left_comm]

theorem add_comm_bounds (a b : Bounds) : add a b = add b a := by
  simp only [add, add_comm]

end GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
