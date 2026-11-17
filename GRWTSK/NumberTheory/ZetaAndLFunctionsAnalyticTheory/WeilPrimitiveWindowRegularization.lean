/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWindowEndpointDecay

/-! # Uniform C¹ error of regularizing the cubic window divisor -/

set_option autoImplicit false

open Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

private noncomputable def gap (T x : ℝ) : ℝ := T ^ 2 - x ^ 2

/-- Retain the cubic factor while adding a positive cube to its denominator
on the original closed window. -/
noncomputable def cubicWindowRegularization (T η : ℝ) (f : ℝ → ℝ) (x : ℝ) : ℝ :=
  (gap T x ^ 3 / (gap T x ^ 3 + η ^ 3)) * f x

private theorem gap_mul_loss_le {s η : ℝ} (hs : 0 ≤ s) (hη : 0 < η) :
    s * (η ^ 3 / (s ^ 3 + η ^ 3)) ≤ η := by
  have hden : 0 < s ^ 3 + η ^ 3 := by positivity
  rw [← mul_div_assoc, div_le_iff₀ hden]
  rcases le_or_gt s η with h | h
  · have hh := mul_le_mul_of_nonneg_right h (pow_nonneg hη.le 3)
    nlinarith [mul_nonneg hη.le (pow_nonneg hs 3)]
  · have hh : η ^ 2 ≤ s ^ 2 := pow_le_pow_left₀ hη.le h.le _
    have hmul := mul_le_mul_of_nonneg_left hh (mul_nonneg hs hη.le)
    nlinarith [mul_nonneg hη.le (pow_nonneg hη.le 3)]

private theorem gap_bounds {T x : ℝ} (hT : 0 < T) (hx : x ∈ Icc (-T) T) :
    0 ≤ gap T x ∧ T * (T - |x|) ≤ gap T x := by
  have hx' : |x| ≤ T := abs_le.mpr hx
  have hr : 0 ≤ T - |x| := sub_nonneg.mpr hx'
  have hsq : x ^ 2 = |x| ^ 2 := (sq_abs x).symm
  unfold gap
  constructor <;> nlinarith [mul_nonneg hr (abs_nonneg x), mul_nonneg hT.le hr]

private theorem hasDerivAt_cubic_ratio {T η x : ℝ}
    (hden : 0 < gap T x ^ 3 + η ^ 3) :
    HasDerivAt (fun y => gap T y ^ 3 / (gap T y ^ 3 + η ^ 3))
      (-6 * x * gap T x ^ 2 * η ^ 3 / (gap T x ^ 3 + η ^ 3) ^ 2) x := by
  have hgap : HasDerivAt (gap T) (-2*x) x := by
    have h := (hasDerivAt_const x (T ^ 2)).sub ((hasDerivAt_id x).pow 2)
    convert h using 1 <;> first | rfl | simp
  have hu : HasDerivAt (fun y => gap T y ^ 3) (-6*x*gap T x ^ 2) x := by
    convert hgap.pow 3 using 1
    norm_num
    ring
  convert hu.div (hu.add_const (η ^ 3)) hden.ne' using 1
  ring

/-- One source-dependent constant controls both errors at every positive
regularization width on the complete original window. -/
theorem admissible_cubicWindowRegularization_error
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 0 < T) {f : ℝ → ℝ} (hf : Admissible χ T f) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ η : ℝ, 0 < η → ∀ x ∈ Icc (-T) T,
      |cubicWindowRegularization T η f x - f x| ≤ M * η ∧
      |deriv (cubicWindowRegularization T η f) x - deriv f x| ≤ M * η := by
  obtain ⟨C, hC, hb⟩ := admissible_endpoint_decay χ hT hf
  have hdiff := hf.2.1.differentiable (by norm_num)
  refine ⟨C + 7 * C / T, by positivity, fun η hη x hx => ?_⟩
  let s := gap T x
  let r := T - |x|
  let L := η ^ 3 / (s ^ 3 + η ^ 3)
  let A := s ^ 3 / (s ^ 3 + η ^ 3)
  have hr : 0 ≤ r := sub_nonneg.mpr (abs_le.mpr hx)
  have hrT : r ≤ T := sub_le_self _ (abs_nonneg _)
  obtain ⟨hs, hrs⟩ := gap_bounds hT hx
  have hden : 0 < s ^ 3 + η ^ 3 := by positivity
  have hL : 0 ≤ L := by positivity
  have hA : 0 ≤ A := by positivity
  have hA1 : A ≤ 1 := by
    apply (div_le_iff₀ hden).mpr
    simp only [one_mul]
    linarith [pow_nonneg hη.le 3]
  have hAL : A - 1 = -L := by
    dsimp [A, L]
    field_simp
    ring
  have hsr : r ≤ s / T := (le_div_iff₀ hT).mpr (by simpa [mul_comm] using hrs)
  have hsL : s * L ≤ η := gap_mul_loss_le hs hη
  have hrL : r * L ≤ η / T := by
    calc
      _ ≤ (s / T) * L := mul_le_mul_of_nonneg_right hsr hL
      _ = (s * L) / T := by ring
      _ ≤ _ := div_le_div_of_nonneg_right hsL hT.le
  have hv : |f x| * L ≤ C * η := by
    calc
      _ ≤ C * r ^ 2 * L := mul_le_mul_of_nonneg_right (hb x hx).1 hL
      _ = (C * r) * (r * L) := by ring
      _ ≤ (C * T) * (η / T) :=
        mul_le_mul (mul_le_mul_of_nonneg_left hrT hC) hrL (mul_nonneg hr hL)
          (mul_nonneg hC hT.le)
      _ = _ := by field_simp
  have hd : |deriv f x| * L ≤ (C / T) * η := by
    calc
      _ ≤ C * r * L := mul_le_mul_of_nonneg_right (hb x hx).2 hL
      _ = C * (r * L) := by ring
      _ ≤ C * (η / T) := mul_le_mul_of_nonneg_left hrL hC
      _ = _ := by ring
  have hr2 : r ^ 2 ≤ (s / T) ^ 2 := pow_le_pow_left₀ hr hsr _
  have hfac : (6 * |x| * s ^ 2 * η ^ 3 / (s ^ 3 + η ^ 3) ^ 2) *
      (C * (s / T) ^ 2) = (6 * |x| * C / T ^ 2) * (A * (s * L)) := by
    dsimp [A, L]
    field_simp [hT.ne', hden.ne']
  have hprod : (6 * |x| * s ^ 2 * η ^ 3 / (s ^ 3 + η ^ 3) ^ 2) * |f x| ≤
      (6 * C / T) * η := by
    have hcoeff : 6 * |x| * C / T ^ 2 ≤ 6 * C / T := by
      calc
        _ ≤ 6 * T * C / T ^ 2 := by gcongr; exact abs_le.mpr hx
        _ = _ := by field_simp
    have hALs : A * (s * L) ≤ η := by
      simpa only [one_mul] using mul_le_mul hA1 hsL (mul_nonneg hs hL) zero_le_one
    calc
      _ ≤ (6 * |x| * s ^ 2 * η ^ 3 / (s ^ 3 + η ^ 3) ^ 2) *
          (C * (s / T) ^ 2) :=
        mul_le_mul_of_nonneg_left ((hb x hx).1.trans (mul_le_mul_of_nonneg_left hr2 hC))
          (by positivity)
      _ = _ := hfac
      _ ≤ _ := mul_le_mul hcoeff hALs (by positivity) (by positivity)
  have hactual :
      deriv (cubicWindowRegularization T η f) x =
        (-6 * x * s ^ 2 * η ^ 3 / (s ^ 3 + η ^ 3) ^ 2) * f x + A * deriv f x :=
    ((hasDerivAt_cubic_ratio hden).mul (hdiff x).hasDerivAt).deriv
  constructor
  · change |A * f x - f x| ≤ _
    rw [show A * f x - f x = (A - 1) * f x by ring, hAL, abs_mul, abs_neg,
      abs_of_nonneg hL, mul_comm]
    exact hv.trans (mul_le_mul_of_nonneg_right
      (le_add_of_nonneg_right (div_nonneg (by positivity) hT.le)) hη.le)
  · rw [hactual, add_sub_assoc,
      show A * deriv f x - deriv f x = (A - 1) * deriv f x by ring, hAL]
    apply (abs_add_le _ _).trans
    simp only [abs_mul, abs_div, abs_neg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 6),
      abs_of_nonneg hL, abs_of_nonneg (sq_nonneg s),
      abs_of_nonneg (sq_nonneg (s ^ 3 + η ^ 3)), abs_of_nonneg (pow_nonneg hη.le 3)]
    calc
      _ ≤ (6 * C / T) * η + (C / T) * η := add_le_add hprod (by simpa [mul_comm] using hd)
      _ ≤ _ := by
        have hn := mul_nonneg hC hη.le
        rw [show 6 * C / T = 6 * (C / T) by ring, show 7 * C / T = 7 * (C / T) by ring]
        nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
