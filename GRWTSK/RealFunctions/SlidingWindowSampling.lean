/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their attribution and licenses. -/
import GRWTSK.RealFunctions.DyadicBlockSquareMaximal

/-!
# From sliding-window mean squares to a fixed grid of contrasts

An elementary finite bridge motivated by the exact sampling mismatch in
arXiv:1501.04585v4 and arXiv:2607.15574v1. No analytic paper theorem is
imported. The common center is arbitrary and is not assumed small.
All windows read the actual sequence; the averaging radius is an integer,
and 1 <= R <= H is explicit. The grid is deterministic, not randomly shifted.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSums.SlidingWindowSampling
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- Half-open window in zero-based coordinates. For f(n)=mu(n+1) this is (o,o+H]. -/
def windowSum (f : ℕ → ℝ) (o H : ℕ) : ℝ :=
  finitePrefixSum (shiftedSequence f o) H

def centeredWindow (f : ℕ → ℝ) (c : ℝ) (o H : ℕ) : ℝ :=
  windowSum f o H - (H : ℝ) * c

/-- Every integer origin in [o,o+T) occurs, with its original length H. -/
def slidingEnergy (f : ℕ → ℝ) (c : ℝ) (o H T : ℕ) : ℝ :=
  ∑ n ∈ Finset.range T, centeredWindow f c (o + n) H ^ 2

/-- K fixed origins separated by exactly H. -/
def sampledEnergy (f : ℕ → ℝ) (c : ℝ) (o H K : ℕ) : ℝ :=
  ∑ k ∈ Finset.range K, centeredWindow f c (o + k * H) H ^ 2

/-- Contrast energies of J consecutive pairs; denominator is the parent length 2H. -/
def gridContrastEnergy (f : ℕ → ℝ) (o H J : ℕ) : ℝ :=
  ∑ i ∈ Finset.range J,
    (windowSum f (o + (2 * i) * H) H -
      windowSum f (o + (2 * i + 1) * H) H) ^ 2 / (2 * (H : ℝ))

theorem windowSum_eq_prefix_difference (f : ℕ → ℝ) (o H : ℕ) :
    windowSum f o H = finitePrefixSum f (o + H) - finitePrefixSum f o := by
  have h := finitePrefixSum_add f o H
  change finitePrefixSum (shiftedSequence f o) H = _
  linarith

/-- Only the two moving boundary strips change when the origin moves. -/
theorem window_shift_identity (f : ℕ → ℝ) (o H r : ℕ) :
    windowSum f (o + r) H - windowSum f o H =
      windowSum f (o + H) r - windowSum f o r := by
  simp only [windowSum_eq_prefix_difference]
  rw [show o + r + H = o + H + r by omega]
  ring

theorem abs_windowSum_le_length (f : ℕ → ℝ)
    (hf : ∀ n, |f n| ≤ 1) (o H : ℕ) : |windowSum f o H| ≤ (H : ℝ) := by
  unfold windowSum finitePrefixSum shiftedSequence
  calc
    _ ≤ ∑ n ∈ Finset.range H, |f (o + n)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ Finset.range H, (1 : ℝ) := Finset.sum_le_sum (fun n _ => hf _)
    _ = _ := by simp

theorem centeredWindow_abs_le (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H : ℕ) :
    |centeredWindow f c o H| ≤ (H : ℝ) * (1 + |c|) := by
  have h := (abs_sub (windowSum f o H) ((H : ℝ) * c)).trans
    (add_le_add_right (abs_windowSum_le_length f hf o H) _)
  simpa only [centeredWindow, abs_mul, abs_of_nonneg (Nat.cast_nonneg H),
    mul_add, mul_one] using h

/-- The common centering term cancels exactly; no estimate for c is required. -/
theorem centered_shift_le (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H r : ℕ) :
    |centeredWindow f c o H - centeredWindow f c (o + r) H| ≤ 2 * (r : ℝ) := by
  have he : centeredWindow f c o H - centeredWindow f c (o + r) H =
      -(windowSum f (o + H) r - windowSum f o r) := by
    have hs := window_shift_identity f o H r
    unfold centeredWindow
    linarith
  rw [he, abs_neg]
  exact (abs_sub _ _).trans (by
    have ha := abs_windowSum_le_length f hf (o + H) r
    have hb := abs_windowSum_le_length f hf o r
    linarith)

theorem centered_square_le_shift (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H r R : ℕ) (hr : r ≤ R) :
    centeredWindow f c o H ^ 2 ≤
      2 * centeredWindow f c (o + r) H ^ 2 + 8 * (R : ℝ) ^ 2 := by
  have hd := centered_shift_le f hf c o H r
  have hrR : (r : ℝ) ≤ (R : ℝ) := by exact_mod_cast hr
  have hlarge : |centeredWindow f c o H - centeredWindow f c (o + r) H| ≤
      2 * (R : ℝ) := by linarith
  have hs := (sq_le_sq₀ (abs_nonneg _) (by positivity : 0 ≤ 2 * (R : ℝ))).mpr hlarge
  rw [sq_abs] at hs
  nlinarith [sq_nonneg (centeredWindow f c o H - 2 * centeredWindow f c (o + r) H)]

theorem slidingEnergy_nonneg (f : ℕ → ℝ) (c : ℝ) (o H T : ℕ) :
    0 ≤ slidingEnergy f c o H T := Finset.sum_nonneg (fun _ _ => sq_nonneg _)

/-- Exact integer-radius averaging. R=0 is allowed here, but not when dividing by R. -/
theorem radius_mul_centered_square_le (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H R : ℕ) :
    (R : ℝ) * centeredWindow f c o H ^ 2 ≤
      2 * slidingEnergy f c o H R + 8 * (R : ℝ) ^ 3 := by
  calc
    _ = ∑ r ∈ Finset.range R, centeredWindow f c o H ^ 2 := by simp
    _ ≤ ∑ r ∈ Finset.range R,
        (2 * centeredWindow f c (o + r) H ^ 2 + 8 * (R : ℝ) ^ 2) := by
      apply Finset.sum_le_sum
      intro r hr
      exact centered_square_le_shift f hf c o H r R (Finset.mem_range.mp hr).le
    _ = _ := by
      simp only [slidingEnergy, Finset.sum_add_distrib, ← Finset.mul_sum,
        Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      ring

/-- Consecutive grid cells tile all integer origins, without a density inference. -/
theorem sum_tiles (F : ℕ → ℝ) (o H K : ℕ) :
    (∑ k ∈ Finset.range K, ∑ r ∈ Finset.range H, F (o + k * H + r)) =
      ∑ n ∈ Finset.range (K * H), F (o + n) := by
  induction K with
  | zero => simp
  | succ K ih =>
      rw [Finset.sum_range_succ, Nat.succ_mul, Finset.sum_range_add, ih]
      simp only [Nat.add_assoc]

/-- R<=H prevents overlap between the sampled origin neighborhoods. -/
theorem cloud_energy_le_sliding (f : ℕ → ℝ) (c : ℝ) (o H K R : ℕ)
    (hRH : R ≤ H) :
    (∑ k ∈ Finset.range K, slidingEnergy f c (o + k * H) H R) ≤
      slidingEnergy f c o H (K * H) := by
  calc
    _ ≤ ∑ k ∈ Finset.range K, slidingEnergy f c (o + k * H) H H := by
      apply Finset.sum_le_sum
      intro k _
      unfold slidingEnergy
      exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hRH)
        (fun _ _ _ => sq_nonneg _)
    _ = _ := by
      exact sum_tiles (fun x => centeredWindow f c x H ^ 2) o H K

/-- Finite mean-square input controls the fixed grid, with its full sampling loss. -/
theorem radius_mul_sampledEnergy_le (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H K R : ℕ) (hRH : R ≤ H) :
    (R : ℝ) * sampledEnergy f c o H K ≤
      2 * slidingEnergy f c o H (K * H) + 8 * (K : ℝ) * (R : ℝ) ^ 3 := by
  have hcloud := cloud_energy_le_sliding f c o H K R hRH
  calc
    _ = ∑ k ∈ Finset.range K, (R : ℝ) * centeredWindow f c (o + k * H) H ^ 2 := by
      simp only [sampledEnergy, Finset.mul_sum]
    _ ≤ ∑ k ∈ Finset.range K,
        (2 * slidingEnergy f c (o + k * H) H R + 8 * (R : ℝ) ^ 3) := by
      exact Finset.sum_le_sum (fun k _ => radius_mul_centered_square_le f hf c _ H R)
    _ = 2 * (∑ k ∈ Finset.range K, slidingEnergy f c (o + k * H) H R) +
        8 * (K : ℝ) * (R : ℝ) ^ 3 := by
      simp only [Finset.sum_add_distrib, ← Finset.mul_sum, Finset.sum_const,
        Finset.card_range, nsmul_eq_mul]
      ring
    _ ≤ _ := by linarith

/-- Pair adjacent sampled squares exactly; both children are retained. -/
theorem pair_sum (F : ℕ → ℝ) (J : ℕ) :
    (∑ i ∈ Finset.range J, (F (2 * i) + F (2 * i + 1))) =
      ∑ k ∈ Finset.range (2 * J), F k := by
  induction J with
  | zero => simp
  | succ J ih =>
      rw [Finset.sum_range_succ, show 2 * (J + 1) = (2 * J + 1) + 1 by omega,
        Finset.sum_range_succ, Finset.sum_range_succ, ih]
      ring

/-- A common local mean cancels between the children, rather than being set to zero. -/
theorem length_mul_gridContrastEnergy_le (f : ℕ → ℝ) (c : ℝ) (o H J : ℕ)
    (hH : 0 < H) :
    (H : ℝ) * gridContrastEnergy f o H J ≤ sampledEnergy f c o H (2 * J) := by
  have hHr : (0 : ℝ) < H := by exact_mod_cast hH
  have hp := pair_sum (fun k => centeredWindow f c (o + k * H) H ^ 2) J
  unfold sampledEnergy
  rw [← hp]
  unfold gridContrastEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  have he : (H : ℝ) *
      ((windowSum f (o + 2 * i * H) H - windowSum f (o + (2 * i + 1) * H) H)^2 /
        (2 * (H : ℝ))) =
      (centeredWindow f c (o + 2 * i * H) H -
        centeredWindow f c (o + (2 * i + 1) * H) H)^2 / 2 := by
    unfold centeredWindow
    field_simp [ne_of_gt hHr]
    <;> ring
  rw [he]
  nlinarith [sq_nonneg (centeredWindow f c (o + 2 * i * H) H +
    centeredWindow f c (o + (2 * i + 1) * H) H)]

/-- The principal sampling theorem. All origin, radius and parent-length factors remain. -/
theorem gridContrastEnergy_le_sliding (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H J R : ℕ) (hR : 0 < R) (hRH : R ≤ H) :
    gridContrastEnergy f o H J ≤
      (2 * slidingEnergy f c o H ((2 * J) * H) +
        16 * (J : ℝ) * (R : ℝ)^3) / ((R : ℝ) * (H : ℝ)) := by
  have hH : 0 < H := hR.trans_le hRH
  have hRr : (0 : ℝ) < R := by exact_mod_cast hR
  have hHr : (0 : ℝ) < H := by exact_mod_cast hH
  apply (le_div_iff₀ (mul_pos hRr hHr)).mpr
  have hg := mul_le_mul_of_nonneg_left
    (length_mul_gridContrastEnergy_le f c o H J hH) hRr.le
  have hs := radius_mul_sampledEnergy_le f hf c o H (2 * J) R hRH
  simp only [Nat.cast_mul, Nat.cast_ofNat] at hs
  nlinarith

/-- Normalized sampling loss: a supplied mean square eta yields
2*eta*H/R + 8*(R/H)^2 on any fixed aligned grid. Integer radius is retained. -/
theorem normalized_grid_contrast_bound (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c η : ℝ) (o H J R : ℕ) (hJ : 0 < J) (hR : 0 < R) (hRH : R ≤ H)
    (hE : slidingEnergy f c o H ((2 * J) * H) ≤
      η * (2 * (J : ℝ) * (H : ℝ)) * (H : ℝ)^2) :
    gridContrastEnergy f o H J / (2 * (J : ℝ) * (H : ℝ)) ≤
      2 * η * (H : ℝ) / (R : ℝ) + 8 * ((R : ℝ) / (H : ℝ))^2 := by
  have hJr : (0 : ℝ) < J := by exact_mod_cast hJ
  have hRr : (0 : ℝ) < R := by exact_mod_cast hR
  have hHr : (0 : ℝ) < H := by exact_mod_cast (hR.trans_le hRH)
  have hb := gridContrastEnergy_le_sliding f hf c o H J R hR hRH
  have hnum : 2 * slidingEnergy f c o H ((2 * J) * H) + 16 * (J : ℝ) * (R : ℝ)^3 ≤
      2 * (η * (2 * (J : ℝ) * (H : ℝ)) * (H : ℝ)^2) +
        16 * (J : ℝ) * (R : ℝ)^3 := by linarith
  have hh := hb.trans (div_le_div_of_nonneg_right hnum (mul_pos hRr hHr).le)
  have hd := div_le_div_of_nonneg_right hh
    (show 0 ≤ 2 * (J : ℝ) * (H : ℝ) by positivity)
  have he :
      ((2 * (η * (2 * (J : ℝ) * (H : ℝ)) * (H : ℝ)^2) +
        16 * (J : ℝ) * (R : ℝ)^3) / ((R : ℝ) * (H : ℝ))) /
          (2 * (J : ℝ) * (H : ℝ)) =
      2 * η * (H : ℝ) / (R : ℝ) + 8 * ((R : ℝ) / (H : ℝ))^2 := by
    field_simp [ne_of_gt hJr, ne_of_gt hRr, ne_of_gt hHr]
    <;> ring
  exact hd.trans_eq he

/-- Signed pairing on one fixed layer; the actual coefficient row may be used as w. -/
def gridPairing (w f : ℕ → ℝ) (o H J : ℕ) : ℝ :=
  ∑ i ∈ Finset.range J,
    ((windowSum w (o + (2*i)*H) H - windowSum w (o + (2*i+1)*H) H) *
      (windowSum f (o + (2*i)*H) H - windowSum f (o + (2*i+1)*H) H)) /
        (2 * (H : ℝ))

theorem gridContrastEnergy_nonneg (f : ℕ → ℝ) (o H J : ℕ) :
    0 ≤ gridContrastEnergy f o H J := by
  unfold gridContrastEnergy
  exact Finset.sum_nonneg (fun _ _ => div_nonneg (sq_nonneg _) (by positivity))

/-- The same parent normalization occurs in both energies; no count-of-levels loss. -/
theorem gridPairing_sq_le (w f : ℕ → ℝ) (o H J : ℕ) :
    gridPairing w f o H J ^ 2 ≤
      gridContrastEnergy w o H J * gridContrastEnergy f o H J := by
  let a : ℕ → ℝ := fun i =>
    windowSum w (o + (2*i)*H) H - windowSum w (o + (2*i+1)*H) H
  let b : ℕ → ℝ := fun i =>
    windowSum f (o + (2*i)*H) H - windowSum f (o + (2*i+1)*H) H
  have hs := Finset.sum_mul_sq_le_sq_mul_sq (Finset.range J) a b
  have hd := div_le_div_of_nonneg_right hs (sq_nonneg (2 * (H : ℝ)))
  convert hd using 1 <;>
    simp only [gridPairing, gridContrastEnergy, ← Finset.sum_div,
      div_pow, div_eq_mul_inv, inv_pow, a, b] <;> ring

/-- A single global sliding moment prices the whole fixed layer, not every node separately. -/
theorem gridPairing_sq_le_sliding (w f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H J R : ℕ) (hR : 0 < R) (hRH : R ≤ H) :
    gridPairing w f o H J ^ 2 ≤ gridContrastEnergy w o H J *
      ((2 * slidingEnergy f c o H ((2 * J) * H) +
        16 * (J : ℝ) * (R : ℝ)^3) / ((R : ℝ) * (H : ℝ))) :=
  (gridPairing_sq_le w f o H J).trans
    (mul_le_mul_of_nonneg_left (gridContrastEnergy_le_sliding f hf c o H J R hR hRH)
      (gridContrastEnergy_nonneg w o H J))

/-- The two-child specialization is a direct input for a dyadic-node budget. -/
theorem contrast_sq_le_sliding (f : ℕ → ℝ) (hf : ∀ n, |f n| ≤ 1)
    (c : ℝ) (o H R : ℕ) (hR : 0 < R) (hRH : R ≤ H) :
    (windowSum f o H - windowSum f (o + H) H)^2 ≤
      4 * slidingEnergy f c o H (2 * H) / (R : ℝ) + 32 * (R : ℝ)^2 := by
  have hH : 0 < H := hR.trans_le hRH
  have hRr : (0 : ℝ) < R := by exact_mod_cast hR
  have hHr : (0 : ℝ) < H := by exact_mod_cast hH
  have h := gridContrastEnergy_le_sliding f hf c o H 1 R hR hRH
  simp only [gridContrastEnergy, Finset.sum_range_one, Nat.mul_zero, Nat.add_zero,
    Nat.zero_add, Nat.zero_mul, Nat.one_mul, Nat.mul_one, Nat.cast_one, mul_one] at h
  have he : (2 * (H : ℝ)) *
      ((2 * slidingEnergy f c o H (2 * H) + 16 * (R : ℝ)^3) /
        ((R : ℝ) * (H : ℝ))) =
      4 * slidingEnergy f c o H (2 * H) / (R : ℝ) + 32 * (R : ℝ)^2 := by
    field_simp [ne_of_gt hRr, ne_of_gt hHr]
    <;> ring
  have hm := mul_le_mul_of_nonneg_left h (by positivity : 0 ≤ 2 * (H : ℝ))
  have hc : (2 * (H : ℝ)) *
      ((windowSum f o H - windowSum f (o + H) H)^2 / (2 * (H : ℝ))) =
      (windowSum f o H - windowSum f (o + H) H)^2 := by
    field_simp [ne_of_gt hHr]
  rw [hc, he] at hm
  exact hm

/-- An inclusive lower endpoint costs one original coefficient; it is not a free convention change. -/
theorem drop_left_endpoint {B v c H A : ℝ}
    (hclosed : |B + v - H * c| ≤ A) (hv : |v| ≤ 1) :
    |B - H * c| ≤ A + 1 := by
  have he : B - H * c = (B + v - H * c) - v := by ring
  rw [he]
  exact (abs_sub _ _).trans (add_le_add hclosed hv)

/-- Converts an explicit exceptional-set count to an ordinary discrete second moment.
The baseline and exceptional allowances are both charged; no probability model is used. -/
theorem finite_exceptional_square_bound (F : ℕ → ℝ) (T : ℕ) (bad : Finset ℕ)
    {A B : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B)
    (hgood : ∀ n ∈ Finset.range T, n ∉ bad → |F n| ≤ A)
    (hall : ∀ n ∈ Finset.range T, |F n| ≤ B) :
    (∑ n ∈ Finset.range T, F n ^ 2) ≤
      (T : ℝ) * A ^ 2 + (bad.card : ℝ) * B ^ 2 := by
  classical
  have ht : ∀ n ∈ Finset.range T,
      F n ^ 2 ≤ A ^ 2 + (if n ∈ bad then B ^ 2 else 0) := by
    intro n hn
    by_cases hb : n ∈ bad
    · rw [if_pos hb]
      have hs := (sq_le_sq₀ (abs_nonneg _) hB).mpr (hall n hn)
      rw [sq_abs] at hs
      nlinarith [sq_nonneg A]
    · rw [if_neg hb, add_zero]
      simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg _) hA).mpr (hgood n hn hb)
  have hi : (∑ n ∈ Finset.range T, if n ∈ bad then B ^ 2 else 0) ≤
      (bad.card : ℝ) * B ^ 2 := by
    rw [← Finset.sum_filter]
    calc
      _ ≤ ∑ _n ∈ bad, B ^ 2 := by
        apply Finset.sum_le_sum_of_subset_of_nonneg
        · intro n hn; exact (Finset.mem_filter.mp hn).2
        · intro _ _ _; exact sq_nonneg B
      _ = _ := by simp
  calc
    _ ≤ ∑ n ∈ Finset.range T, (A ^ 2 + (if n ∈ bad then B ^ 2 else 0)) :=
      Finset.sum_le_sum ht
    _ = (T : ℝ) * A ^ 2 + ∑ n ∈ Finset.range T, if n ∈ bad then B ^ 2 else 0 := by
      simp only [Finset.sum_add_distrib, Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    _ ≤ _ := add_le_add_left hi _

end GRWTSK.Analysis.FiniteSums.SlidingWindowSampling
