/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #397 / #391 / #388 / #373 / #369 / #366 / #357 / #354 /
  #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicUniformMertensTwoPointPrefix

/-!
# Mean finite two-point Möbius-prefix supplier

The uniform maximum from the preceding module is weakened to one envelope per
positive shift, with only the normalized sum of those envelopes controlled.
This permits a sparse family of comparatively bad shifts while retaining every
shift and every admissible prefix length.

The exact signed shift packet remains the criterion. Absolute values enter only
inside this stronger sufficient supplier. No converse from the packet, the
energy criterion, or RH to the mean envelope is claimed.

All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- A finite two-point-prefix envelope for one positive shift at one dyadic
scale. The shift-validity hypotheses are carried by consumers. -/
def MertensTwoPointShiftEnvelope (j h : ℕ) (U : ℝ) : Prop :=
  0 ≤ U ∧
    ∀ N : ℕ, N ≤ 2 ^ (j + 1) - h - 1 →
      |mertensTwoPointPrefix h N| ≤ U

/-- A normalized `L¹` mean of shift-wise envelopes. Every positive shift below
the right endpoint receives its own nonnegative prefix envelope. -/
def DyadicMertensTwoPointMeanEnvelope (j : ℕ) (B : ℝ) : Prop :=
  0 ≤ B ∧
    ∃ U : ℕ → ℝ,
      (∀ h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
        MertensTwoPointShiftEnvelope j h (U h)) ∧
      (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)), U h) ≤
        B * ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The all-scale averaged-shift supplier. -/
def SubpolynomialDyadicMeanMertensTwoPointPrefix : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧
    ∀ j : ℕ,
      DyadicMertensTwoPointMeanEnvelope j
        (A * (((2 ^ j : ℕ) : ℝ) ^ δ))

/-- The prior uniform envelope supplies the mean envelope by choosing one
constant shift-wise envelope. -/
theorem dyadicMertensTwoPointMeanEnvelope_of_uniform
    {j : ℕ} {U : ℝ}
    (henv : DyadicMertensTwoPointEnvelope j U) :
    DyadicMertensTwoPointMeanEnvelope j U := by
  let Y : ℕ := 2 ^ (j + 1)
  have hY : 1 ≤ Y := by
    dsimp [Y]
    positivity
  refine ⟨henv.1, fun _ => U, ?_, ?_⟩
  · intro h hh hhY
    exact ⟨henv.1, fun N hN => henv.2 h N hh hhY hN⟩
  · have hcard : (Finset.Ico 1 Y).card = Y - 1 := by
      rw [Finset.card_Ico]
    rw [show 2 ^ (j + 1) = Y by rfl]
    calc
      (∑ _h ∈ Finset.Ico 1 Y, U) =
          (((Finset.Ico 1 Y).card : ℕ) : ℝ) * U := by
        simp only [Finset.sum_const, nsmul_eq_mul, Nat.cast_ofNat]
      _ = (((Y - 1 : ℕ) : ℝ)) * U := by rw [hcard]
      _ ≤ (Y : ℝ) * U := by
        apply mul_le_mul_of_nonneg_right
        · exact_mod_cast Nat.sub_le Y 1
        · exact henv.1
      _ = U * (Y : ℝ) := by ring

/-- Finite Abel summation with the terminal term retained. -/
private theorem finite_abel_prefix_mean
    (x q : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, x k * q k) =
      (∑ t ∈ Finset.range N,
        (∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))) +
        (∑ k ∈ Finset.range N, x k) * q N := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ]
      rw [ih]
      ring

private theorem finite_weight_drop_telescope_mean
    (q : ℕ → ℝ) (N : ℕ) :
    (∑ t ∈ Finset.range N, q t - q (t + 1)) =
      q 0 - q N := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      ring

/-- A nonincreasing finite weight pays one shift from a bound on every prefix. -/
private theorem abs_weighted_sum_le_of_shift_prefix_bound
    (x q : ℕ → ℝ) (N : ℕ) {U : ℝ}
    (hU : 0 ≤ U)
    (hprefix : ∀ n : ℕ, n ≤ N →
      |∑ k ∈ Finset.range n, x k| ≤ U)
    (hdrop : ∀ t : ℕ, t < N → 0 ≤ q t - q (t + 1))
    (hterminal : q N = 0) :
    |∑ k ∈ Finset.range N, x k * q k| ≤ U * q 0 := by
  rw [finite_abel_prefix_mean, hterminal, mul_zero, add_zero]
  calc
    |∑ t ∈ Finset.range N,
        (∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))| ≤
      ∑ t ∈ Finset.range N,
        |(∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ t ∈ Finset.range N,
        |∑ k ∈ Finset.range (t + 1), x k| *
          (q t - q (t + 1)) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [abs_mul, abs_of_nonneg (hdrop t (Finset.mem_range.mp ht))]
    _ ≤ ∑ t ∈ Finset.range N,
        U * (q t - q (t + 1)) := by
      apply Finset.sum_le_sum
      intro t ht
      exact mul_le_mul_of_nonneg_right
        (hprefix (t + 1) (by omega))
        (hdrop t (Finset.mem_range.mp ht))
    _ = U * (∑ t ∈ Finset.range N, q t - q (t + 1)) := by
      rw [← Finset.mul_sum]
    _ = U * (q 0 - q N) := by
      rw [finite_weight_drop_telescope_mean]
    _ = U * q 0 := by rw [hterminal, sub_zero]

/-- One shift-wise envelope pays the corresponding weighted shift contribution. -/
theorem abs_weightedMertensDyadicShiftContribution_le_of_shiftEnvelope
    {j h : ℕ} {U : ℝ}
    (hh : 1 ≤ h) (hhY : h < 2 ^ (j + 1))
    (henv : MertensTwoPointShiftEnvelope j h U) :
    |weightedMertensDyadicShiftContribution j h| ≤
      2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  let Y : ℕ := 2 ^ (j + 1)
  let N : ℕ := Y - h - 1
  let x : ℕ → ℝ := fun a =>
    moebiusReal (a + 1) * moebiusReal (a + 1 + h)
  let q : ℕ → ℝ := fun a =>
    dyadicMertensShiftWeight j (a + 1 + h)
  have hprefix : ∀ n : ℕ, n ≤ N →
      |∑ a ∈ Finset.range n, x a| ≤ U := by
    intro n hn
    simpa [mertensTwoPointPrefix, x, N, Y] using henv.2 n hn
  have hdrop : ∀ t : ℕ, t < N → 0 ≤ q t - q (t + 1) := by
    intro t ht
    dsimp [q]
    have hs := dyadicMertensShiftWeight_step_antitone
      (j := j) (b := t + 1 + h)
    linarith
  have hterminal : q N = 0 := by
    have hindex : N + 1 + h = Y := by
      dsimp [N, Y]
      omega
    dsimp [q]
    rw [hindex, show Y = 2 ^ (j + 1) by rfl,
      dyadicMertensShiftWeight_at_right]
  have hq0 : q 0 ≤ (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
    dsimp [q]
    apply dyadicMertensShiftWeight_le_right_inv
    dsimp [Y] at hhY ⊢
    omega
  have hab := abs_weighted_sum_le_of_shift_prefix_bound
    x q N henv.1 hprefix hdrop hterminal
  rw [weightedMertensDyadicShiftContribution_eq_range hh hhY]
  change |2 * ∑ a ∈ Finset.range N, x a * q a| ≤
    2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹
  simp only [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    2 * |∑ a ∈ Finset.range N, x a * q a| ≤
        2 * (U * q 0) :=
      mul_le_mul_of_nonneg_left hab (by norm_num)
    _ ≤ 2 * (U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul_of_nonneg_left hq0 henv.1
      · norm_num
    _ = 2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by ring

/-- The normalized mean of shift-wise envelopes pays the complete packet. -/
theorem abs_weightedMertensDyadicShiftPacket_le_of_meanEnvelope
    {j : ℕ} {B : ℝ}
    (henv : DyadicMertensTwoPointMeanEnvelope j B) :
    |weightedMertensDyadicShiftPacket j| ≤ 2 * B := by
  let Y : ℕ := 2 ^ (j + 1)
  obtain ⟨hB, U, hshift, hmean⟩ := henv
  have hY : 1 ≤ Y := by
    dsimp [Y]
    positivity
  unfold weightedMertensDyadicShiftPacket
  rw [show 2 ^ (j + 1) = Y by rfl]
  calc
    |∑ h ∈ Finset.Ico 1 Y,
        weightedMertensDyadicShiftContribution j h| ≤
      ∑ h ∈ Finset.Ico 1 Y,
        |weightedMertensDyadicShiftContribution j h| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ h ∈ Finset.Ico 1 Y,
        2 * U h * (Y : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro h hh
      exact abs_weightedMertensDyadicShiftContribution_le_of_shiftEnvelope
        (Finset.mem_Ico.mp hh).1 (Finset.mem_Ico.mp hh).2
        (hshift h (Finset.mem_Ico.mp hh).1 (Finset.mem_Ico.mp hh).2)
    _ = 2 * (∑ h ∈ Finset.Ico 1 Y, U h) * (Y : ℝ)⁻¹ := by
      rw [Finset.mul_sum, Finset.sum_mul]
    _ ≤ 2 * (B * (Y : ℝ)) * (Y : ℝ)⁻¹ := by
      apply mul_le_mul_of_nonneg_right
      · exact mul_le_mul_of_nonneg_left hmean (by norm_num)
      · exact inv_nonneg.mpr (Nat.cast_nonneg Y)
    _ = 2 * B := by
      field_simp [show (Y : ℝ) ≠ 0 by positivity]
      ring

/-- The preceding uniform supplier is a special case of the mean supplier. -/
theorem subpolynomialDyadicMeanMertensTwoPointPrefix_of_uniform
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    SubpolynomialDyadicMeanMertensTwoPointPrefix := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := huniform δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact dyadicMertensTwoPointMeanEnvelope_of_uniform (henv j)

/-- The averaged-shift premise supplies the exact signed packet criterion. -/
theorem subpolynomialDyadicMertensShiftPacket_of_meanTwoPointPrefix
    (hmean : SubpolynomialDyadicMeanMertensTwoPointPrefix) :
    SubpolynomialDyadicMertensShiftPacket := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := hmean δ hδ
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  have habs :=
    abs_weightedMertensDyadicShiftPacket_le_of_meanEnvelope (henv j)
  calc
    weightedMertensDyadicShiftPacket j ≤
        |weightedMertensDyadicShiftPacket j| := le_abs_self _
    _ ≤ 2 * (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) := habs
    _ = (2 * A) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Conditional terminal return through the exact signed packet. -/
theorem riemannHypothesis_of_subpolynomialDyadicMeanMertensTwoPointPrefix
    (hmean : SubpolynomialDyadicMeanMertensTwoPointPrefix) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket
    (subpolynomialDyadicMertensShiftPacket_of_meanTwoPointPrefix hmean)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_weightedMertensDyadicShiftContribution_le_of_shiftEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_weightedMertensDyadicShiftPacket_le_of_meanEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicMertensShiftPacket_of_meanTwoPointPrefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicMeanMertensTwoPointPrefix
