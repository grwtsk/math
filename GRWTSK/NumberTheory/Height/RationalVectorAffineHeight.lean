/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Explicit rational affine coordinate height: H(x) is the height of [1:x],
NOT the homogeneous height of [x]. The common denominator is the actual LCM
of reduced Rat.den values. Its primitive integer representative is supplied.
This is a fixed-frame arithmetic construction, not a model-height theorem.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Algebra.GCDMonoid.Nat
import Mathlib.Data.Rat.Lemmas
import Mathlib.Analysis.SpecialFunctions.Log.Basic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Height.RationalVectorAffineHeight

open GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm

/-- A scalar clearing witness is an actual integer, not a small real error. -/
def ClearsValue (d : ℕ) (q : ℚ) : Prop := ∃ z : ℤ, (d : ℚ) * q = (z : ℚ)

theorem clearsValue_iff (d : ℕ) (q : ℚ) : ClearsValue d q ↔ q.den ∣ d := by
  constructor
  · rintro ⟨z, hz⟩
    by_cases hd : d = 0
    · simp [hd]
    have hq : q = (z : ℚ) / (d : ℚ) :=
      (eq_div_iff (Nat.cast_ne_zero.mpr hd)).mpr (by simpa [mul_comm] using hz)
    rw [hq]
    have h := Rat.den_dvd z (d : ℤ)
    rw [← Rat.intCast_div_eq_divInt, Int.cast_natCast] at h
    exact Int.natCast_dvd_natCast.mp h
  · rintro ⟨t, ht⟩
    refine ⟨q.num * (t : ℤ), ?_⟩
    rw [ht, Nat.cast_mul]
    calc
      (q.den : ℚ) * (t : ℚ) * q = (q * (q.den : ℚ)) * (t : ℚ) := by ring
      _ = (q.num : ℚ) * (t : ℚ) := by rw [Rat.mul_den_eq_num]
      _ = ((q.num * (t : ℤ) : ℤ) : ℚ) := by simp

theorem clears_add (d : ℕ) (x y : ℚ) (hx : ClearsValue d x) (hy : ClearsValue d y) :
    ClearsValue d (x + y) := by
  rcases hx with ⟨u, hu⟩
  rcases hy with ⟨v, hv⟩
  refine ⟨u + v, ?_⟩
  simp only [mul_add, hu, hv, Int.cast_add]

theorem clears_sub (d : ℕ) (x y : ℚ) (hx : ClearsValue d x) (hy : ClearsValue d y) :
    ClearsValue d (x - y) := by
  rcases hx with ⟨u, hu⟩
  rcases hy with ⟨v, hv⟩
  refine ⟨u - v, ?_⟩
  simp only [mul_sub, hu, hv, Int.cast_sub]

theorem clears_int_mul (d : ℕ) (z : ℤ) (x : ℚ) (hx : ClearsValue d x) :
    ClearsValue d ((z : ℚ) * x) := by
  rcases hx with ⟨u, hu⟩
  refine ⟨z * u, ?_⟩
  calc
    (d : ℚ) * ((z : ℚ) * x) = (z : ℚ) * ((d : ℚ) * x) := by ring
    _ = ((z * u : ℤ) : ℚ) := by rw [hu, Int.cast_mul]

/-- Charge a genuine divisor of the clearing integer, including its sign. -/
theorem clears_divisor (d C : ℕ) (z : ℤ) (hz : z ≠ 0) (hzC : z ∣ (C : ℤ))
    (x : ℚ) (hx : ClearsValue d x) : ClearsValue (C * d) (x / (z : ℚ)) := by
  rcases hx with ⟨u, hu⟩
  obtain ⟨t, ht⟩ := hzC
  have htq : (C : ℚ) = (z : ℚ) * (t : ℚ) := by exact_mod_cast ht
  have hzq : (z : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hz
  refine ⟨t * u, ?_⟩
  calc
    ((C * d : ℕ) : ℚ) * (x / (z : ℚ)) =
        ((C : ℚ) / (z : ℚ)) * ((d : ℚ) * x) := by push_cast; ring
    _ = ((t * u : ℤ) : ℚ) := by rw [htq, hu]; simp [hzq]

/-- A reciprocal detects its FULL signed denominator, not merely occupied primes. -/
theorem clears_reciprocal_iff (d : ℕ) (z : ℤ) (hz : z ≠ 0) :
    ClearsValue d (1 / (z : ℚ)) ↔ z ∣ (d : ℤ) := by
  have hzq : (z : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hz
  constructor
  · rintro ⟨t, ht⟩
    have hq : (d : ℚ) = (z : ℚ) * (t : ℚ) := by
      have h := (div_eq_iff hzq).mp (by simpa [div_eq_mul_inv] using ht)
      simpa only [mul_comm] using h
    exact ⟨t, by exact_mod_cast hq⟩
  · rintro ⟨t, ht⟩
    refine ⟨t, ?_⟩
    have hq : (d : ℚ) = (z : ℚ) * (t : ℚ) := by exact_mod_cast ht
    rw [hq]
    field_simp

section Denominator
variable {ι : Type*} [Fintype ι]

/-- Least positive common denominator of the original, reduced rational coordinates. -/
def denominator (x : ι → ℚ) : ℕ := Finset.univ.lcm (fun i => (x i).den)

theorem denominator_ne_zero (x : ι → ℚ) : denominator x ≠ 0 := by
  simp [denominator, Finset.lcm_eq_zero_iff]

theorem denominator_dvd_iff (x : ι → ℚ) (d : ℕ) :
    denominator x ∣ d ↔ ∀ i, (x i).den ∣ d := by simp [denominator]

/-- Exact divisibility, including d=0; zero is NOT a positive denominator. -/
theorem denominator_dvd_iff_clears (x : ι → ℚ) (d : ℕ) :
    denominator x ∣ d ↔ ∀ i, ClearsValue d (x i) := by
  rw [denominator_dvd_iff]
  simp_rw [clearsValue_iff]

theorem denominator_clears (x : ι → ℚ) (i : ι) : ClearsValue (denominator x) (x i) :=
  (denominator_dvd_iff_clears x _).mp (dvd_refl _) i

@[simp] theorem denominator_int (x : ι → ℤ) : denominator (fun i => (x i : ℚ)) = 1 := by
  apply Nat.dvd_one.mp
  exact (denominator_dvd_iff _ 1).mpr (fun _ => by simp)

def numerator (x : ι → ℚ) (i : ι) : ℤ := ((denominator x : ℚ) * x i).num

theorem numerator_spec (x : ι → ℚ) (i : ι) :
    (denominator x : ℚ) * x i = (numerator x i : ℚ) := by
  obtain ⟨z, hz⟩ := denominator_clears x i
  simp [numerator, hz]

/-- Positive first coordinate and all numerator coordinates of [1:x]. -/
def representative (x : ι → ℚ) : Option ι → ℤ
  | none => (denominator x : ℤ)
  | some i => numerator x i

/-- Every positive common divisor is one: no hidden gcd correction remains. -/
theorem representative_primitive (x : ι → ℚ) (d : ℕ)
    (h : ∀ j, (d : ℤ) ∣ representative x j) : d = 1 := by
  have hdD : d ∣ denominator x := Int.natCast_dvd_natCast.mp (h none)
  obtain ⟨t, ht⟩ := hdD
  have hdt : d * t ≠ 0 := by rw [← ht]; exact denominator_ne_zero x
  have hd0 : d ≠ 0 := left_ne_zero_of_mul hdt
  have ht0 : t ≠ 0 := right_ne_zero_of_mul hdt
  have hclear : ∀ i, ClearsValue t (x i) := by
    intro i
    obtain ⟨z, hz⟩ := h (some i)
    change numerator x i = (d : ℤ) * z at hz
    refine ⟨z, ?_⟩
    apply mul_left_cancel₀ (Nat.cast_ne_zero.mpr hd0 : (d : ℚ) ≠ 0)
    calc
      (d : ℚ) * ((t : ℚ) * x i) = (denominator x : ℚ) * x i := by
        rw [ht, Nat.cast_mul]; ring
      _ = (numerator x i : ℚ) := numerator_spec x i
      _ = (d : ℚ) * (z : ℚ) := by exact_mod_cast hz
  have hdiv : denominator x ∣ t := (denominator_dvd_iff_clears x t).mpr hclear
  have hle := Nat.le_of_dvd (Nat.pos_of_ne_zero ht0) hdiv
  have hdpos := Nat.pos_of_ne_zero hd0
  have htpos := Nat.pos_of_ne_zero ht0
  nlinarith

end Denominator

section Height
variable {ι κ : Type*} [Fintype ι] [Nonempty ι] [Fintype κ] [Nonempty κ]

/-- Multiplicative affine height of [1:x] in this named coordinate frame. -/
def height (x : ι → ℚ) : ℚ := (denominator x : ℚ) * max 1 (maxAbs x)

def logHeight (x : ι → ℚ) : ℝ := Real.log (height x : ℝ)

theorem height_one_le (x : ι → ℚ) : 1 ≤ height x := by
  have hd : (1 : ℚ) ≤ denominator x := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (denominator_ne_zero x))
  simpa only [one_mul] using
    mul_le_mul hd (le_max_left (1 : ℚ) (maxAbs x)) (by norm_num) (Nat.cast_nonneg _)

/-- This formula is the maximum of the PRIMITIVE integer representative, not a surrogate cost. -/
theorem representative_height (x : ι → ℚ) :
    maxAbs (fun j => (representative x j : ℚ)) = height x := by
  let M := maxAbs (fun j => (representative x j : ℚ))
  have hd : (0 : ℚ) < denominator x := Nat.cast_pos.mpr (Nat.pos_of_ne_zero (denominator_ne_zero x))
  have hn (i : ι) : |(numerator x i : ℚ)| = (denominator x : ℚ) * |x i| := by
    rw [← numerator_spec, abs_mul, abs_of_pos hd]
  apply le_antisymm
  · apply (maxAbs_le_iff _ _).mpr
    intro j
    cases j with
    | none =>
      change |(denominator x : ℚ)| ≤ (denominator x : ℚ) * max 1 (maxAbs x)
      rw [abs_of_pos hd]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left (le_max_left (1 : ℚ) _) hd.le
    | some i =>
      change |(numerator x i : ℚ)| ≤ _
      rw [hn]
      exact mul_le_mul_of_nonneg_left ((entry_le x i).trans (le_max_right _ _)) hd.le
  · have hD : (denominator x : ℚ) ≤ M := by
      simpa [representative, abs_of_pos hd] using
        entry_le (fun j => (representative x j : ℚ)) none
    have hx : maxAbs x ≤ M / (denominator x : ℚ) := by
      apply (maxAbs_le_iff _ _).mpr
      intro i
      apply (le_div_iff₀ hd).mpr
      have hi := entry_le (fun j => (representative x j : ℚ)) (some i)
      change |(numerator x i : ℚ)| ≤ M at hi
      simpa only [hn, mul_comm] using hi
    have hDx : (denominator x : ℚ) * maxAbs x ≤ M := by
      simpa only [mul_comm] using (le_div_iff₀ hd).mp hx
    rcases le_total (maxAbs x) 1 with h | h
    · simpa [height, max_eq_left h] using hD
    · simpa [height, max_eq_right h] using hDx

@[simp] theorem height_zero : height (fun _ : ι => (0 : ℚ)) = 1 := by
  have hd : denominator (fun _ : ι => (0 : ℚ)) = 1 := by
    simpa using denominator_int (fun _ : ι => (0 : ℤ))
  simp [height, hd, maxAbs]

@[simp] theorem height_integer (x : ι → ℤ) :
    height (fun i => (x i : ℚ)) = max 1 (maxAbs (fun i => (x i : ℚ))) := by
  rw [height, denominator_int]; simp

/-- A declared denominator factor AND archimedean factor are both required. -/
theorem height_le_of_denominator_dvd (x : ι → ℚ) (y : κ → ℚ) (C : ℕ) (hC : 0 < C)
    (B : ℚ) (hB : 1 ≤ B) (hd : denominator y ∣ C * denominator x)
    (hm : maxAbs y ≤ B * maxAbs x) : height y ≤ (C : ℚ) * B * height x := by
  have hD : (denominator y : ℚ) ≤ (C : ℚ) * (denominator x : ℚ) := by
    exact_mod_cast (Nat.le_of_dvd (Nat.mul_pos hC (Nat.pos_of_ne_zero (denominator_ne_zero x))) hd)
  have hM : max 1 (maxAbs y) ≤ B * max 1 (maxAbs x) := by
    apply max_le
    · have h : B ≤ B * max 1 (maxAbs x) := by
        simpa only [mul_one] using
          mul_le_mul_of_nonneg_left (le_max_left (1 : ℚ) (maxAbs x)) (by linarith : 0 ≤ B)
      exact hB.trans h
    · exact hm.trans (mul_le_mul_of_nonneg_left (le_max_right (1 : ℚ) (maxAbs x)) (by linarith))
  calc
    height y ≤ ((C : ℚ) * (denominator x : ℚ)) * (B * max 1 (maxAbs x)) :=
      mul_le_mul hD hM (le_trans (by norm_num) (le_max_left _ _)) (by positivity)
    _ = (C : ℚ) * B * height x := by unfold height; ring

/-- Exact logarithmic consequence in the affine, not homogeneous-projective convention. -/
theorem logHeight_le_of_height_le (x : ι → ℚ) (y : κ → ℚ) (A : ℚ) (hA : 0 < A)
    (h : height y ≤ A * height x) : logHeight y ≤ logHeight x + Real.log (A : ℝ) := by
  have hx : (0 : ℝ) < (height x : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num) (height_one_le x))
  have hy : (0 : ℝ) < (height y : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num) (height_one_le y))
  have ha : (0 : ℝ) < (A : ℝ) := by exact_mod_cast hA
  have hc : (height y : ℝ) ≤ (A : ℝ) * (height x : ℝ) := by exact_mod_cast h
  have hl := Real.log_le_log hy hc
  rw [Real.log_mul ha.ne' hx.ne'] at hl
  simpa only [logHeight, add_comm] using hl

/-- Scaling x is NOT projective scaling of the homogeneous vector (1,x). -/
theorem affine_scaling_fixture :
    height (fun _ : Fin 1 => (1 : ℚ)) = 1 ∧ height (fun _ : Fin 1 => (2 : ℚ)) = 2 := by
  constructor
  · simpa using height_integer (fun _ : Fin 1 => (1 : ℤ))
  · have h := height_integer (fun _ : Fin 1 => (2 : ℤ))
    simpa [maxAbs] using h

end Height
end GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
