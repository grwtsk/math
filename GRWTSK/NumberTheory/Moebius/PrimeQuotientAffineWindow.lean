/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity

/-!
# Exact positive-affine normalization of the prime quotient window

The ordinary affine theorem in openai/math family 007 has NATURAL nonnegative
offsets. The source mu(d*v-h) has a negative offset before translation.
Set c=floor(h/d)+1, retain the first admissible term v=c, and translate only
the remaining tail. Both affine offsets are then nonnegative and the exact
nonproportionality determinant is h. Repeated primes remain in a multiplicative
prime-exclusion mask. No growing-form uniformity or nonpretentiousness result
is asserted. The first term and the empty-window case are never dropped.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity

/-- Same real finite expression as the complex OAI affineSum, before scalar inclusion. -/
def affineSum (f g : ℕ → ℝ) (a₁ a₂ b₁ b₂ N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, f (a₁ * n + b₁) * g (a₂ * n + b₂)

def anchor (d h : ℕ) : ℕ := h / d + 1

def quotientWindow (d h M : ℕ) (f g : ℕ → ℝ) : ℝ :=
  ∑ v ∈ Finset.Icc 1 M, if h < d * v then f (d * v - h) * g v else 0

def excludePrime (p : ℕ) (f : ℕ → ℝ) (n : ℕ) : ℝ :=
  if p ∣ n then 0 else f n

theorem anchor_positive (d h : ℕ) : 0 < anchor d h := by simp [anchor]

theorem anchor_upper (d h : ℕ) (hd : 0 < d) : h < d * anchor d h := by
  have he := Nat.mod_add_div h d
  have hr := Nat.mod_lt h hd
  unfold anchor
  nlinarith

theorem cutoff_iff_anchor_le (d h v : ℕ) (hd : 0 < d) :
    h < d * v ↔ anchor d h ≤ v := by
  constructor
  · intro hv
    by_contra hc
    have hvq : v ≤ h / d := by unfold anchor at hc; omega
    have hm := Nat.mul_le_mul_left d hvq
    have hlow : d * (h / d) ≤ h := by
      simpa only [Nat.mul_comm] using Nat.div_mul_le_self h d
    omega
  · intro hv
    exact (anchor_upper d h hd).trans_le (Nat.mul_le_mul_left d hv)

/-- The tail has a positive first affine offset, with no truncated-subtraction ambiguity. -/
theorem translated_argument (d h n : ℕ) (hd : 0 < d) :
    d * (anchor d h + n) - h = d * n + (d * anchor d h - h) := by
  have hu := anchor_upper d h hd
  rw [Nat.mul_add]
  omega

/-- The determinant is h; h=0 is intentionally excluded from this application. -/
theorem translated_forms_nonproportional (d h : ℕ) (hd : 0 < d) (hh : 0 < h) :
    d * anchor d h ≠ 1 * (d * anchor d h - h) := by
  have hu := anchor_upper d h hd
  simp only [one_mul]
  omega

/-- Split off the first admissible term before converting to an Icc 1 tail. -/
theorem sum_Icc_anchor (c M : ℕ) (F : ℕ → ℝ) (hc : c ≤ M) :
    (∑ v ∈ Finset.Icc c M, F v) =
      F c + ∑ n ∈ Finset.Icc 1 (M - c), F (c + n) := by
  have hset : Finset.Icc c M = insert c (Finset.Icc (c + 1) M) := by
    ext v
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  have hnot : c ∉ Finset.Icc (c + 1) M := by simp
  rw [hset, Finset.sum_insert hnot]
  apply congrArg (fun z : ℝ => F c + z)
  apply Finset.sum_bij (fun v _ => v - c)
  · intro v hv
    have := Finset.mem_Icc.mp hv
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro v hv w hw he
    have := Finset.mem_Icc.mp hv
    have := Finset.mem_Icc.mp hw
    omega
  · intro n hn
    have := Finset.mem_Icc.mp hn
    exact ⟨c + n, Finset.mem_Icc.mpr ⟨by omega, by omega⟩, by omega⟩
  · intro v hv
    have := Finset.mem_Icc.mp hv
    congr 1
    omega

theorem quotientWindow_zero (d h M : ℕ) (f g : ℕ → ℝ) (hd : 0 < d)
    (hM : M < anchor d h) : quotientWindow d h M f g = 0 := by
  unfold quotientWindow
  apply Finset.sum_eq_zero
  intro v hv
  have hvM := (Finset.mem_Icc.mp hv).2
  have hcut : ¬ h < d * v := by rw [cutoff_iff_anchor_le d h v hd]; omega
  simp only [if_neg hcut]

/-- Exact identity; the finite first-term payment is part of the conclusion. -/
theorem quotientWindow_eq_affine_tail (d h M : ℕ) (f g : ℕ → ℝ) (hd : 0 < d)
    (hM : anchor d h ≤ M) :
    quotientWindow d h M f g =
      f (d * anchor d h - h) * g (anchor d h) +
        affineSum f g d 1 (d * anchor d h - h) (anchor d h) (M - anchor d h) := by
  have hfilter : (Finset.Icc 1 M).filter (fun v => h < d * v) =
      Finset.Icc (anchor d h) M := by
    ext v
    simp only [Finset.mem_filter, Finset.mem_Icc, cutoff_iff_anchor_le d h v hd]
    have hc := anchor_positive d h
    omega
  unfold quotientWindow
  rw [← Finset.sum_filter, hfilter, sum_Icc_anchor _ _ _ hM]
  apply congrArg (fun z : ℝ => f (d * anchor d h - h) * g (anchor d h) + z)
  unfold affineSum
  apply Finset.sum_congr rfl
  intro n _
  rw [translated_argument d h n hd, one_mul, Nat.add_comm (anchor d h) n]

/-- Empty and nonempty source windows use one explicit piecewise identity. -/
theorem quotientWindow_eq_guarded_affine (d h M : ℕ) (f g : ℕ → ℝ) (hd : 0 < d) :
    quotientWindow d h M f g =
      if anchor d h ≤ M then
        f (d * anchor d h - h) * g (anchor d h) +
          affineSum f g d 1 (d * anchor d h - h) (anchor d h) (M - anchor d h)
      else 0 := by
  by_cases hM : anchor d h ≤ M
  · rw [if_pos hM]; exact quotientWindow_eq_affine_tail d h M f g hd hM
  · rw [if_neg hM]; exact quotientWindow_zero d h M f g hd (Nat.lt_of_not_ge hM)

/-- One-bounded factors pay at most one per translated first term, NOT per packet. -/
theorem first_term_abs_le_one (d h : ℕ) (f g : ℕ → ℝ) (hd : 0 < d)
    (hf : ∀ n, 0 < n → |f n| ≤ 1) (hg : ∀ n, 0 < n → |g n| ≤ 1) :
    |f (d * anchor d h - h) * g (anchor d h)| ≤ 1 := by
  have ha := anchor_upper d h hd
  rw [abs_mul]
  simpa only [one_mul] using mul_le_mul
    (hf _ (by omega)) (hg _ (anchor_positive d h)) (abs_nonneg _) zero_le_one

/-- Prime exclusion is compatible with the positive multiplicativity hypothesis
of the upstream theorem. No nonpretentiousness premise is manufactured. -/
theorem excludePrime_multiplicative {p : ℕ} (hp : Nat.Prime p) (f : ℕ → ℝ)
    (hf : ∀ m n : ℕ, 0 < m → 0 < n → Nat.Coprime m n → f (m * n) = f m * f n) :
    ∀ m n : ℕ, 0 < m → 0 < n → Nat.Coprime m n →
      excludePrime p f (m * n) = excludePrime p f m * excludePrime p f n := by
  intro m n hm hn hcop
  by_cases hpm : p ∣ m <;> by_cases hpn : p ∣ n <;>
    simp [excludePrime, hp.dvd_mul, hpm, hpn, hf m n hm hn hcop]

theorem excludePrime_oneBounded (p : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n, 0 < n → |f n| ≤ 1) :
    ∀ n, 0 < n → |excludePrime p f n| ≤ 1 := by
  intro n hn
  unfold excludePrime
  split_ifs
  · norm_num
  · exact hf n hn

/-- The source input is the actual imported Mobius function. -/
theorem moebiusReal_multiplicative :
    ∀ m n : ℕ, 0 < m → 0 < n → Nat.Coprime m n →
      moebiusReal (m * n) = moebiusReal m * moebiusReal n := by
  intro m n _ _ hcop
  have he := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop
  have hc := congrArg (fun z : ℤ => (z : ℝ)) he
  simpa only [moebiusReal, Int.cast_mul] using hc

/-- Exact real-to-complex alignment with the upstream affineSum convention. -/
theorem complex_affine_alignment (f g : ℕ → ℝ) (a₁ a₂ b₁ b₂ N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, (f (a₁ * n + b₁) : ℂ) * (g (a₂ * n + b₂) : ℂ)) =
      (affineSum f g a₁ a₂ b₁ b₂ N : ℂ) := by
  unfold affineSum
  push_cast

/-- The actual denominator-free one-prime term has exactly these masked windows. -/
theorem bandMoment_zero_eq_windows (j h N : ℕ) :
    bandMomentPrefix 0 j h N =
      ∑ p ∈ primeBand j, quotientWindow p h ((N + h) / p)
        moebiusReal (excludePrime p moebiusReal) := by
  unfold bandMomentPrefix quotientWindow excludePrime
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro m _
  by_cases hcut : h < p * m <;> by_cases hrep : p ∣ m <;> simp [hcut, hrep]

/-- All first terms, floors, masks and empty cases are retained in the source bridge. -/
theorem bandMoment_zero_eq_affine_tails (j h N : ℕ) :
    bandMomentPrefix 0 j h N =
      ∑ p ∈ primeBand j,
        if anchor p h ≤ (N + h) / p then
          moebiusReal (p * anchor p h - h) * excludePrime p moebiusReal (anchor p h) +
            affineSum moebiusReal (excludePrime p moebiusReal) p 1
              (p * anchor p h - h) (anchor p h) ((N + h) / p - anchor p h)
        else 0 := by
  rw [bandMoment_zero_eq_windows]
  apply Finset.sum_congr rfl
  intro p hp
  exact quotientWindow_eq_guarded_affine p h ((N + h) / p)
    moebiusReal (excludePrime p moebiusReal) (primeBand_prime hp).pos

end GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow
