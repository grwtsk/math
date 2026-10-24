# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.4SourceHankelLocalization.Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7571140908b4fa723225c10195a805dea55ff639` · SHA-256 `7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceHankelReflection
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# Exact overlap localization of actual source Hankel profiles

Finite signed translate/reflection rows whose indices are at least B interact
only on [log B-A,A-log B]. Indicator localization keeps the joint product and
its signed L² polarization exact. This is a support theorem, not a
classification theorem, a finite-rank claim, or a uniform arithmetic bound.
The indicator-truncated individual profiles need not remain translates of the
original source; the joint equality is the reason scalar Fourier identities
may subsequently be transported.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceHankelLocalization

open MeasureTheory Set
open scoped InnerProductSpace
open SourcePairing SourceHankelReflection
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- The exact common interaction interval, including its support seams. -/
def overlapWindow (A : ℝ) (B : ℕ) : Set ℝ :=
  Icc (Real.log (B : ℝ) - A) (A - Real.log (B : ℝ))

/-- The interval remains measurable, even when its endpoints are reversed. -/
theorem overlapWindow_measurable (A : ℝ) (B : ℕ) : MeasurableSet (overlapWindow A B) :=
  measurableSet_Icc

/-- The exact window is empty precisely when the two source edges cross. -/
theorem overlapWindow_empty_iff (A : ℝ) (B : ℕ) :
    overlapWindow A B = ∅ ↔ A < Real.log (B : ℝ) := by
  rw [overlapWindow, Icc_eq_empty_iff]
  constructor <;> intro h <;> linarith

/-- Every forward atom vanishes at and to the left of the common lower edge. -/
theorem forward_atom_zero_of_le {A : ℝ} (hA : 0 < A) {B m : ℕ}
    (hB : 0 < B) (hBm : B ≤ m) {x : ℝ} (hx : x ≤ Real.log (B : ℝ) - A) :
    normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ)) = 0 := by
  have hlog := Real.log_le_log (by exact_mod_cast hB : 0 < (B : ℝ))
    (by exact_mod_cast hBm : (B : ℝ) ≤ m)
  apply normalizedTest_zero_of_le_abs A _ hA
  have hab := neg_le_abs (x - Real.log (m : ℝ))
  linarith

/-- Every reflected atom vanishes at and to the right of the common upper edge. -/
theorem reflected_atom_zero_of_le {A : ℝ} (hA : 0 < A) {B n : ℕ}
    (hB : 0 < B) (hBn : B ≤ n) {x : ℝ} (hx : A - Real.log (B : ℝ) ≤ x) :
    normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ)) = 0 := by
  have hlog := Real.log_le_log (by exact_mod_cast hB : 0 < (B : ℝ))
    (by exact_mod_cast hBn : (B : ℝ) ≤ n)
  apply normalizedTest_zero_of_le_abs A _ hA
  have hab := le_abs_self (x + Real.log (n : ℝ))
  linarith

/-- Signed finite summation cannot introduce a forward tail beyond the lower edge. -/
theorem forwardProfile_zero_of_le {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s : Finset ℕ) (c : ℕ → ℝ) (hs : ∀ m ∈ s, B ≤ m)
    {x : ℝ} (hx : x ≤ Real.log (B : ℝ) - A) : forwardProfile A s c x = 0 := by
  unfold forwardProfile
  apply Finset.sum_eq_zero
  intro m hm
  rw [forward_atom_zero_of_le hA hB (hs m hm) hx, mul_zero]

/-- The reflected row has no upper tail at or beyond the common upper edge. -/
theorem reflectedProfile_zero_of_le {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (t : Finset ℕ) (d : ℕ → ℝ) (ht : ∀ n ∈ t, B ≤ n)
    {x : ℝ} (hx : A - Real.log (B : ℝ) ≤ x) : reflectedProfile A t d x = 0 := by
  unfold reflectedProfile
  apply Finset.sum_eq_zero
  intro n hn
  rw [reflected_atom_zero_of_le hA hB (ht n hn) hx, mul_zero]

/-- Exact pointwise joint support, with no absolute value applied to either signed row. -/
theorem profile_product_zero_outside {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n)
    {x : ℝ} (hx : x ∉ overlapWindow A B) :
    forwardProfile A s c x * reflectedProfile A t d x = 0 := by
  have he : x < Real.log (B : ℝ) - A ∨ A - Real.log (B : ℝ) < x := by
    simpa only [overlapWindow, mem_Icc, not_and_or, not_le] using hx
  rcases he with hl | hr
  · rw [forwardProfile_zero_of_le hA hB s c hs hl.le, zero_mul]
  · rw [reflectedProfile_zero_of_le hA hB t d ht hr.le, mul_zero]

/-- Literal zero extension of the forward row restricted to the overlap. -/
def localizedForwardProfile (A : ℝ) (B : ℕ) (s : Finset ℕ) (c : ℕ → ℝ) : ℝ → ℝ :=
  (overlapWindow A B).indicator (forwardProfile A s c)

/-- Literal zero extension of the reflected row restricted to the same overlap. -/
def localizedReflectedProfile (A : ℝ) (B : ℕ) (t : Finset ℕ) (d : ℕ → ℝ) : ℝ → ℝ :=
  (overlapWindow A B).indicator (reflectedProfile A t d)

/-- Localization changes neither the pointwise joint product nor its internal signs. -/
theorem localized_product_eq {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n) (x : ℝ) :
    localizedForwardProfile A B s c x * localizedReflectedProfile A B t d x =
      forwardProfile A s c x * reflectedProfile A t d x := by
  by_cases hx : x ∈ overlapWindow A B
  · simp only [localizedForwardProfile, localizedReflectedProfile, indicator_of_mem hx]
  · rw [profile_product_zero_outside hA hB s t c d hs ht hx]
    simp only [localizedForwardProfile, localizedReflectedProfile, indicator_of_notMem hx, mul_zero]

/-- The global pairing is exactly its set integral over the common interaction window. -/
theorem pairing_eq_overlap_integral {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n) :
    (∫ x, forwardProfile A s c x * reflectedProfile A t d x) =
      ∫ x in overlapWindow A B, forwardProfile A s c x * reflectedProfile A t d x := by
  rw [← integral_indicator (overlapWindow_measurable A B)]
  apply integral_congr_ae
  filter_upwards [] with x
  by_cases hx : x ∈ overlapWindow A B
  · rw [indicator_of_mem hx]
  · rw [indicator_of_notMem hx, profile_product_zero_outside hA hB s t c d hs ht hx]

/-- The localized forward state is genuinely in real L². -/
theorem localizedForwardProfile_memLp {A : ℝ} (hA : 0 < A)
    (B : ℕ) (s : Finset ℕ) (c : ℕ → ℝ) :
    MemLp (localizedForwardProfile A B s c) 2 volume :=
  (forwardProfile_memLp hA s c).indicator (overlapWindow_measurable A B)

/-- The localized reflected state is genuinely in real L². -/
theorem localizedReflectedProfile_memLp {A : ℝ} (hA : 0 < A)
    (B : ℕ) (t : Finset ℕ) (d : ℕ → ℝ) :
    MemLp (localizedReflectedProfile A B t d) 2 volume :=
  (reflectedProfile_memLp hA t d).indicator (overlapWindow_measurable A B)

/-- The localized state retains its actual finite coefficients, without renormalization. -/
def localizedForwardL2 (A : ℝ) (hA : 0 < A) (B : ℕ) (s : Finset ℕ) (c : ℕ → ℝ) :
    Lp ℝ 2 (volume : Measure ℝ) :=
  (localizedForwardProfile_memLp hA B s c).toLp (localizedForwardProfile A B s c)

/-- The reflected localized L² state uses the identical interval indicator. -/
def localizedReflectedL2 (A : ℝ) (hA : 0 < A) (B : ℕ) (t : Finset ℕ) (d : ℕ → ℝ) :
    Lp ℝ 2 (volume : Measure ℝ) :=
  (localizedReflectedProfile_memLp hA B t d).toLp (localizedReflectedProfile A B t d)

/-- Joint localization preserves the exact real L² interaction. -/
theorem localized_l2_inner_eq_pairing {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n) :
    ⟪localizedForwardL2 A hA B s c, localizedReflectedL2 A hA B t d⟫_ℝ =
      ∫ x, forwardProfile A s c x * reflectedProfile A t d x := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [(localizedForwardProfile_memLp hA B s c).coeFn_toLp,
    (localizedReflectedProfile_memLp hA B t d).coeFn_toLp] with x hf hg
  change inner ℝ ((localizedForwardProfile_memLp hA B s c).toLp _ x)
    ((localizedReflectedProfile_memLp hA B t d).toLp _ x) = _
  rw [hf, hg, Real.inner_apply]
  exact localized_product_eq hA hB s t c d hs ht x

/-- The localized square sectors remain signed and coupled in exact polarization. -/
theorem localized_signed_l2_energy_surplus {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n) :
    (∫ x, forwardProfile A s c x * reflectedProfile A t d x) =
      (‖localizedForwardL2 A hA B s c + localizedReflectedL2 A hA B t d‖ ^ 2 -
        ‖localizedForwardL2 A hA B s c - localizedReflectedL2 A hA B t d‖ ^ 2) / 4 := by
  rw [← localized_l2_inner_eq_pairing hA hB s t c d hs ht]
  exact FormalResearch.MathematicalTooling.Reflection.real_inner_eq_signed_norm_square _ _

/-- Both localized squared sectors are integrable before their signed subtraction. -/
theorem localized_square_sectors_integrable {A : ℝ} (hA : 0 < A)
    (B : ℕ) (s t : Finset ℕ) (c d : ℕ → ℝ) :
    Integrable (fun x ↦ (localizedForwardProfile A B s c x +
      localizedReflectedProfile A B t d x) ^ 2) ∧
    Integrable (fun x ↦ (localizedForwardProfile A B s c x -
      localizedReflectedProfile A B t d x) ^ 2) := by
  exact ⟨((localizedForwardProfile_memLp hA B s c).add
    (localizedReflectedProfile_memLp hA B t d)).integrable_sq,
    ((localizedForwardProfile_memLp hA B s c).sub
      (localizedReflectedProfile_memLp hA B t d)).integrable_sq⟩

/-- The two localized scalar square sectors retain exactly the original signed pairing. -/
theorem localized_signed_integral_surplus {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n) :
    (∫ x, forwardProfile A s c x * reflectedProfile A t d x) =
      ((∫ x, (localizedForwardProfile A B s c x +
        localizedReflectedProfile A B t d x) ^ 2) -
        (∫ x, (localizedForwardProfile A B s c x -
          localizedReflectedProfile A B t d x) ^ 2)) / 4 := by
  obtain ⟨hp, hm⟩ := localized_square_sectors_integrable hA B s t c d
  calc
    _ = ∫ x, ((localizedForwardProfile A B s c x + localizedReflectedProfile A B t d x) ^ 2 -
        (localizedForwardProfile A B s c x - localizedReflectedProfile A B t d x) ^ 2) / 4 := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [← localized_product_eq hA hB s t c d hs ht x]
      ring
    _ = _ := by rw [integral_div, integral_sub hp hm]

/-- The unchanged normalized source is nonzero at the unit-scale center. -/
theorem normalized_source_one_zero_ne :
    normalizedTest explicitSecondDerivative 1 0 ≠ 0 := by
  rw [normalizedTest_eq_indicator 1 (by norm_num),
    indicator_of_mem (by norm_num : (0 : ℝ) ∈ Icc (-1) 1)]
  have hN := source_normalization_pos 1 (by norm_num)
  have hs : Real.sqrt (sourceNormalization 1) ≠ 0 := ne_of_gt (Real.sqrt_pos.2 hN)
  norm_num [normalizedInterior, secondInterior, bumpInterior, hs]

/-- Hostile fixture: overlap localization changes an individual actual source translate.
This guards the original per-profile Fourier multiplier; only the joint pairing
has been proved invariant under localization. -/
theorem localized_forward_atom_ne_original :
    localizedForwardProfile 1 1 {3} (fun _ ↦ 1) ≠ forwardProfile 1 {3} (fun _ ↦ 1) := by
  intro h
  have he := congrFun h (Real.log 3)
  have hl : (1 : ℝ) < Real.log 3 := by
    exact (Real.lt_log_iff_exp_lt (by norm_num)).2 Real.exp_one_lt_three
  have hx : Real.log 3 ∉ overlapWindow 1 1 := by
    simp only [overlapWindow, Nat.cast_one, Real.log_one, zero_sub, sub_zero, mem_Icc]
    exact fun hmem ↦ (not_le_of_gt hl) hmem.2
  simp only [localizedForwardProfile, indicator_of_notMem hx, forwardProfile,
    Finset.sum_singleton, Nat.cast_ofNat, sub_self, one_mul] at he
  exact normalized_source_one_zero_ne he.symm

end
end FormalResearch.RiemannHypothesis.SourceHankelLocalization
```
