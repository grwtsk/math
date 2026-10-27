/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.DyadicVariance
import GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-!
# Exact selected dyadic contrasts of a finite signed pairing

Use the existing ordinary prefix and translation conventions. The root mean
and every selected or omitted contrast are accounted for exactly. The energy
is orthogonal contrast energy, NOT the old sum of all unnormalised block
squares. No smallness, independence, entropy or arithmetic cancellation is
assumed. The Cauchy comparison introduces no number-of-levels multiplier,
but both omitted energies remain payable quantities.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement
open GRWTSK.Analysis.FiniteSums.DyadicVariance
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- Ordinary sum on the actual interval [o,o+2^m), with no periodic extension. -/
def blockSum (m o : ℕ) (f : ℕ → ℝ) : ℝ :=
  finitePrefixSum (shiftedSequence f o) (2 ^ m)

/-- Difference of the two child SUMS, not their unnormalised square energy. -/
def blockContrast (m o : ℕ) (f : ℕ → ℝ) : ℝ :=
  blockSum m o f - blockSum m (o + 2 ^ m) f

/-- Root contribution: block length times the product of the two block means. -/
def rootPairing (m o : ℕ) (f g : ℕ → ℝ) : ℝ :=
  blockSum m o f * blockSum m o g / ((2 ^ m : ℕ) : ℝ)

/-- A single contrast product uses the PARENT length as denominator. -/
def localDetail (m o : ℕ) (f g : ℕ → ℝ) : ℝ :=
  blockContrast m o f * blockContrast m o g / ((2 ^ (m + 1) : ℕ) : ℝ)

/-- A node is indexed by its parent height and ordinary left endpoint.
The selector need not be fixed across applications and need not be a subtree. -/
def detailPairing (select : ℕ → ℕ → Prop) : ℕ → ℕ → (ℕ → ℝ) → (ℕ → ℝ) → ℝ
  | 0, _, _, _ => 0
  | m + 1, o, f, g =>
      (if select (m + 1) o then localDetail m o f g else 0) +
      detailPairing select m o f g +
      detailPairing select m (o + 2 ^ m) f g

/-- The root is always retained, even when no details are selected. -/
def selectedPairing (select : ℕ → ℕ → Prop) (m o : ℕ) (f g : ℕ → ℝ) : ℝ :=
  rootPairing m o f g + detailPairing select m o f g

@[simp] theorem blockSum_height_zero (o : ℕ) (f : ℕ → ℝ) :
    blockSum 0 o f = f o := by
  simp [blockSum, finitePrefixSum, shiftedSequence]

@[simp] theorem blockSum_offset_zero (m : ℕ) (f : ℕ → ℝ) :
    blockSum m 0 f = finitePrefixSum f (2 ^ m) := by
  simp [blockSum, finitePrefixSum, shiftedSequence]

theorem blockSum_succ (m o : ℕ) (f : ℕ → ℝ) :
    blockSum (m + 1) o f = blockSum m o f + blockSum m (o + 2 ^ m) f := by
  have hp : 2 ^ (m + 1) = 2 ^ m + 2 ^ m := by rw [pow_succ]; omega
  simp only [blockSum, hp, finitePrefixSum, shiftedSequence, Finset.sum_range_add,
    Nat.add_assoc]

/-- Every interval sum is an exact difference of ordinary prefixes. -/
theorem blockSum_eq_prefix_difference (m o : ℕ) (f : ℕ → ℝ) :
    blockSum m o f = finitePrefixSum f (o + 2 ^ m) - finitePrefixSum f o := by
  rw [finitePrefixSum_add]
  change blockSum m o f = finitePrefixSum f o + blockSum m o f - finitePrefixSum f o
  ring

/-- A contrast is a three-prefix second difference, with all endpoints present. -/
theorem contrast_eq_prefix_second_difference (m o : ℕ) (f : ℕ → ℝ) :
    blockContrast m o f =
      2 * finitePrefixSum f (o + 2 ^ m) - finitePrefixSum f o -
        finitePrefixSum f (o + 2 ^ (m + 1)) := by
  have hp : o + 2 ^ m + 2 ^ m = o + 2 ^ (m + 1) := by rw [pow_succ]; omega
  rw [blockContrast, blockSum_eq_prefix_difference, blockSum_eq_prefix_difference, hp]
  ring

/-- Polarisation of the already maintained equal-cell variance identity. -/
theorem pair_product_split (a b c d w : ℝ) :
    (w / 2) * (a * c + b * d) =
      w * pairMean a b * pairMean c d + (w / 4) * (a - b) * (c - d) := by
  have hsum := pair_centered_split (a + c) (b + d) 0 w
  have ha := pair_centered_split a b 0 w
  have hc := pair_centered_split c d 0 w
  unfold pairMean at *
  nlinarith

/-- One exact orthogonal split, including the mean rather than setting it to zero. -/
theorem rootPairing_refinement (m o : ℕ) (f g : ℕ → ℝ) :
    rootPairing m o f g + rootPairing m (o + 2 ^ m) f g =
      rootPairing (m + 1) o f g + localDetail m o f g := by
  have hD : (((2 ^ m : ℕ) : ℝ)) ≠ 0 := by positivity
  have h := pair_product_split (blockSum m o f) (blockSum m (o + 2 ^ m) f)
    (blockSum m o g) (blockSum m (o + 2 ^ m) g) (2 / (((2 ^ m : ℕ) : ℝ)))
  simp only [rootPairing, localDetail, blockContrast, blockSum_succ]
  simp only [pow_succ, Nat.cast_mul, Nat.cast_ofNat]
  convert h using 1 <;> unfold pairMean <;> field_simp [hD] <;> ring

/-- Exact full-tree identity; it is a signed pairing, not an inequality. -/
theorem pairing_eq_root_add_details (m o : ℕ) (f g : ℕ → ℝ) :
    blockSum m o (fun n => f n * g n) =
      rootPairing m o f g + detailPairing (fun _ _ => True) m o f g := by
  induction m generalizing o with
  | zero => simp [rootPairing, detailPairing]
  | succ m ih =>
      rw [blockSum_succ m o (fun n => f n * g n), ih o, ih (o + 2 ^ m)]
      simp only [detailPairing, if_true]
      have h := rootPairing_refinement m o f g
      linarith

/-- Selection and its literal complement partition every contrast exactly once. -/
theorem detailPairing_add_complement (select : ℕ → ℕ → Prop)
    (m o : ℕ) (f g : ℕ → ℝ) :
    detailPairing select m o f g + detailPairing (fun r a => ¬ select r a) m o f g =
      detailPairing (fun _ _ => True) m o f g := by
  induction m generalizing o with
  | zero => simp [detailPairing]
  | succ m ih =>
      have hl := ih o
      have hr := ih (o + 2 ^ m)
      by_cases hs : select (m + 1) o <;>
        simp only [detailPairing, hs, not_true_eq_false, not_false_eq_true,
          if_true, if_false] <;> linarith

/-- The residual of selected features is the signed omitted pairing itself. -/
theorem pairing_sub_selected (select : ℕ → ℕ → Prop)
    (m o : ℕ) (f g : ℕ → ℝ) :
    blockSum m o (fun n => f n * g n) - selectedPairing select m o f g =
      detailPairing (fun r a => ¬ select r a) m o f g := by
  rw [pairing_eq_root_add_details, ← detailPairing_add_complement select]
  unfold selectedPairing
  ring

theorem localDetail_self_nonneg (m o : ℕ) (f : ℕ → ℝ) :
    0 ≤ localDetail m o f f := by
  unfold localDetail
  exact div_nonneg (mul_self_nonneg _) (by positivity)

theorem rootPairing_self_nonneg (m o : ℕ) (f : ℕ → ℝ) :
    0 ≤ rootPairing m o f f := by
  unfold rootPairing
  exact div_nonneg (mul_self_nonneg _) (by positivity)

theorem detailPairing_self_nonneg (select : ℕ → ℕ → Prop)
    (m o : ℕ) (f : ℕ → ℝ) : 0 ≤ detailPairing select m o f f := by
  induction m generalizing o with
  | zero => simp [detailPairing]
  | succ m ih =>
      simp only [detailPairing]
      apply add_nonneg (add_nonneg _ (ih o)) (ih (o + 2 ^ m))
      split_ifs
      · exact localDetail_self_nonneg m o f
      · exact le_rfl

theorem localDetail_sq (m o : ℕ) (f g : ℕ → ℝ) :
    localDetail m o f g ^ 2 = localDetail m o f f * localDetail m o g g := by
  unfold localDetail
  ring

private theorem three_term_cauchy
    {x y z A B C U V W : ℝ}
    (hA : 0 ≤ A) (hB : 0 ≤ B) (hC : 0 ≤ C)
    (hU : 0 ≤ U) (hV : 0 ≤ V) (hW : 0 ≤ W)
    (hx : x ^ 2 ≤ A * U) (hy : y ^ 2 ≤ B * V) (hz : z ^ 2 ≤ C * W) :
    (x + y + z) ^ 2 ≤ (A + B + C) * (U + V + W) := by
  have h := Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul (Finset.univ : Finset (Fin 3))
    (r := ![x, y, z]) (f := ![A, B, C]) (g := ![U, V, W])
    (by intro i _; fin_cases i <;> simp_all)
    (by intro i _; fin_cases i <;> simp_all)
    (by intro i _; fin_cases i <;> simp_all)
  simpa [Fin.sum_univ_succ, add_assoc] using h

/-- The selected-detail Cauchy bound has NO factor counting the levels. -/
theorem detailPairing_sq_le (select : ℕ → ℕ → Prop)
    (m o : ℕ) (f g : ℕ → ℝ) :
    detailPairing select m o f g ^ 2 ≤
      detailPairing select m o f f * detailPairing select m o g g := by
  induction m generalizing o with
  | zero => simp [detailPairing]
  | succ m ih =>
      have hf : 0 ≤ (if select (m + 1) o then localDetail m o f f else 0) := by
        split_ifs
        · exact localDetail_self_nonneg m o f
        · exact le_rfl
      have hg : 0 ≤ (if select (m + 1) o then localDetail m o g g else 0) := by
        split_ifs
        · exact localDetail_self_nonneg m o g
        · exact le_rfl
      have hroot : (if select (m + 1) o then localDetail m o f g else 0) ^ 2 ≤
          (if select (m + 1) o then localDetail m o f f else 0) *
          (if select (m + 1) o then localDetail m o g g else 0) := by
        split_ifs
        · exact (localDetail_sq m o f g).le
        · norm_num
      simp only [detailPairing]
      exact three_term_cauchy hf (detailPairing_self_nonneg select m o f)
        (detailPairing_self_nonneg select m (o + 2 ^ m) f)
        hg (detailPairing_self_nonneg select m o g)
        (detailPairing_self_nonneg select m (o + 2 ^ m) g)
        hroot (ih o) (ih (o + 2 ^ m))

/-- Full pointwise energy is divided into root, retained details and omitted details. -/
theorem energy_partition (select : ℕ → ℕ → Prop) (m o : ℕ) (f : ℕ → ℝ) :
    blockSum m o (fun n => f n ^ 2) = rootPairing m o f f +
      detailPairing select m o f f + detailPairing (fun r a => ¬ select r a) m o f f := by
  have h := pairing_eq_root_add_details m o f f
  rw [← detailPairing_add_complement select] at h
  simpa only [pow_two, add_assoc] using h

/-- No omitted energy can exceed the original pointwise square energy. -/
theorem omitted_energy_le_total (select : ℕ → ℕ → Prop) (m o : ℕ) (f : ℕ → ℝ) :
    detailPairing (fun r a => ¬ select r a) m o f f ≤ blockSum m o (fun n => f n ^ 2) := by
  rw [energy_partition select]
  linarith [rootPairing_self_nonneg m o f, detailPairing_self_nonneg select m o f]

/-- An optional scalar budget for the exact omitted observable. -/
theorem abs_pairing_sub_selected_le (select : ℕ → ℕ → Prop)
    (m o : ℕ) (f g : ℕ → ℝ) {ε : ℝ} (hε : 0 ≤ ε)
    (henergy : detailPairing (fun r a => ¬ select r a) m o f f *
      detailPairing (fun r a => ¬ select r a) m o g g ≤ ε ^ 2) :
    |blockSum m o (fun n => f n * g n) - selectedPairing select m o f g| ≤ ε := by
  rw [pairing_sub_selected]
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp
    (by simpa only [sq_abs] using (detailPairing_sq_le (fun r a => ¬ select r a) m o f g).trans henergy)

@[simp] theorem blockSum_const (m o : ℕ) (c : ℝ) :
    blockSum m o (fun _ => c) = (((2 ^ m : ℕ) : ℝ)) * c := by
  simp [blockSum, finitePrefixSum, shiftedSequence]

@[simp] theorem blockContrast_const (m o : ℕ) (c : ℝ) :
    blockContrast m o (fun _ => c) = 0 := by simp [blockContrast]

/-- Constant inputs have no details but may have a nonzero root mean. -/
theorem detailPairing_const_right (select : ℕ → ℕ → Prop)
    (m o : ℕ) (f : ℕ → ℝ) (c : ℝ) :
    detailPairing select m o f (fun _ => c) = 0 := by
  induction m generalizing o with
  | zero => simp [detailPairing]
  | succ m ih => simp [detailPairing, localDetail, ih]

/-- A mean-zero input can still carry nonzero detail energy. -/
theorem mean_zero_does_not_remove_details :
    let f : ℕ → ℝ := fun n => if n = 0 then 1 else -1
    rootPairing 1 0 f f = 0 ∧ detailPairing (fun _ _ => True) 1 0 f f = 2 := by
  norm_num [rootPairing, detailPairing, localDetail, blockContrast, blockSum,
    finitePrefixSum, shiftedSequence, Finset.sum_range_succ]

/-- Nonnegative detail energies are monotone with respect to node selection. -/
theorem detail_energy_mono (select keep : ℕ → ℕ → Prop)
    (hsub : ∀ r o, select r o → keep r o) (m o : ℕ) (f : ℕ → ℝ) :
    detailPairing select m o f f ≤ detailPairing keep m o f f := by
  induction m generalizing o with
  | zero => simp [detailPairing]
  | succ m ih =>
      have hroot : (if select (m + 1) o then localDetail m o f f else 0) ≤
          (if keep (m + 1) o then localDetail m o f f else 0) := by
        by_cases hs : select (m + 1) o
        · simp [hs, hsub _ _ hs]
        · by_cases hk : keep (m + 1) o
          · simpa [hs, hk] using localDetail_self_nonneg m o f
          · simp [hs, hk]
      exact add_le_add (add_le_add hroot (ih o)) (ih (o + 2 ^ m))

/-- More retained features need not improve the absolute SCALAR error.
The full pairing and empty-detail model are zero; keeping only the left
child contrast gives two. This is not a counterexample about Mobius. -/
theorem selection_can_increase_scalar_error :
    let f : ℕ → ℝ := fun n => if n % 2 = 0 then 1 else -1
    let g : ℕ → ℝ := fun n => if n = 0 ∨ n = 3 then 1 else -1
    blockSum 2 0 (fun n => f n * g n) = 0 ∧
      selectedPairing (fun _ _ => False) 2 0 f g = 0 ∧
      selectedPairing (fun r o => r = 1 ∧ o = 0) 2 0 f g = 2 := by
  norm_num [selectedPairing, rootPairing, detailPairing, localDetail,
    blockContrast, blockSum, finitePrefixSum, shiftedSequence, Finset.sum_range_succ]

end GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement
