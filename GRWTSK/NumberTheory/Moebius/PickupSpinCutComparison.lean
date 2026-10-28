/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
import GRWTSK.NumberTheory.Moebius.PickupSignedCertificate

/-!
# The actual pickup as a weighted spin cut, with a priced return to Mobius

The graph is the original ordered source-pair inventory. Both orientations,
zero coefficients, the diagonal deletion and the causal Gram weights remain.
No Gaussian disorder, regular graph, random Mobius law or SK universality is
asserted. An optimized or circuit-sampled spin is not the fixed source spin:
the exact signed difference of their cut values is retained below.

This applies the existing Boolean spin algebra to the actual arithmetic
source, rather than assuming a generic source-return field. The final growth
estimate is still a premise; no unconditional DyadicBirthBound is supplied.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupSignedCertificate

/-- A zero source has a label but still has zero interaction weight. -/
def signLabel (x : ℝ) : Bool := by
  classical
  exact decide (0 ≤ x)

def sourceSpin (n : ℕ) : Bool := signLabel (moebiusReal n)

theorem real_eq_abs_mul_spin (x : ℝ) : x = |x| * spin (signLabel x) := by
  by_cases hx : 0 ≤ x
  · simp [signLabel, hx, spin, abs_of_nonneg hx]
  · simp [signLabel, hx, spin, abs_of_neg (lt_of_not_ge hx)]

theorem spin_product_eq_cut (a b : Bool) :
    spin a * spin b = 1 - 2 * cutIndicator a b := by
  cases a <;> cases b <;> norm_num [spin, cutIndicator]

theorem cutIndicator_bounds (a b : Bool) :
    0 ≤ cutIndicator a b ∧ cutIndicator a b ≤ 1 := by
  cases a <;> cases b <;> norm_num [cutIndicator]

/-- The sign comes from the source and entrywise nonnegative kernel, not PSD alone. -/
theorem scalar_signed_cut (x y g : ℝ) (hg : 0 ≤ g) :
    x * y * g = |x * y * g| *
      (1 - 2 * cutIndicator (signLabel x) (signLabel y)) := by
  have ha : |x * y * g| = |x| * |y| * g := by
    rw [abs_mul, abs_mul, abs_of_nonneg hg]
  rw [ha, ← spin_product_eq_cut]
  calc
    x * y * g = (|x| * spin (signLabel x)) *
        (|y| * spin (signLabel y)) * g := by
      rw [← real_eq_abs_mul_spin x, ← real_eq_abs_mul_spin y]
    _ = _ := by ring

/-- Complete ordered, weighted cut on the unchanged finite inventory. -/
def orderedCut (T : ℝ) (σ : ℕ → Bool) : ℝ :=
  ∑ z ∈ sourcePairs T,
    |signedAtom T z.1 z.2| * cutIndicator (σ z.1) (σ z.2)

theorem orderedCut_bounds (T : ℝ) (σ : ℕ → Bool) :
    0 ≤ orderedCut T σ ∧ orderedCut T σ ≤ absoluteCross T := by
  constructor
  · exact Finset.sum_nonneg (fun z _ =>
      mul_nonneg (abs_nonneg _) (cutIndicator_bounds _ _).1)
  · apply Finset.sum_le_sum
    intro z _
    have h := mul_le_mul_of_nonneg_left (cutIndicator_bounds (σ z.1) (σ z.2)).2
      (abs_nonneg (signedAtom T z.1 z.2))
    simpa only [mul_one] using h

theorem atom_eq_weight_sub_twice_cut {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) :
    signedAtom T m n = |signedAtom T m n| -
      2 * (|signedAtom T m n| * cutIndicator (sourceSpin m) (sourceSpin n)) := by
  unfold signedAtom
  by_cases hmn : m ≠ n
  · simp only [if_pos hmn]
    have h := scalar_signed_cut (moebiusReal m) (moebiusReal n)
      (pickupResponseGram T m n) (responseGram_nonneg hm hn hT)
    dsimp only [sourceSpin]
    nlinarith [h]
  · simp [hmn]

/-- Every negative ordered interaction is retained, not only prime-multiple pairs. -/
theorem cross_eq_absolute_sub_twice_sourceCut {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T = absoluteCross T - 2 * orderedCut T sourceSpin := by
  rw [← sum_signedAtom_eq_cross]
  calc
    (∑ z ∈ sourcePairs T, signedAtom T z.1 z.2) =
        ∑ z ∈ sourcePairs T, (|signedAtom T z.1 z.2| -
          2 * (|signedAtom T z.1 z.2| *
            cutIndicator (sourceSpin z.1) (sourceSpin z.2))) := by
      apply Finset.sum_congr rfl
      intro z hz
      obtain ⟨hm, hn⟩ := Finset.mem_product.mp hz
      exact atom_eq_weight_sub_twice_cut hT
        (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1
    _ = absoluteCross T - 2 * orderedCut T sourceSpin := by
      rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
      rfl

/-- This is an antiferromagnetic weighted objective, not an iid Gaussian SK matrix. -/
def trialCross (T : ℝ) (σ : ℕ → Bool) : ℝ :=
  absoluteCross T - 2 * orderedCut T σ

/-- A derived signed return cost, not a freely chosen error allowance. -/
def returnDefect (T : ℝ) (σ : ℕ → Bool) : ℝ :=
  2 * (orderedCut T σ - orderedCut T sourceSpin)

theorem trial_source_eq_cross {T : ℝ} (hT : 0 ≤ T) :
    trialCross T sourceSpin = pickupCross T :=
  (cross_eq_absolute_sub_twice_sourceCut hT).symm

/-- Changing the spin never changes the source after the exact return is paid. -/
theorem source_return_exact {T : ℝ} (hT : 0 ≤ T) (σ : ℕ → Bool) :
    pickupCross T = trialCross T σ + returnDefect T σ := by
  rw [cross_eq_absolute_sub_twice_sourceCut hT]
  unfold trialCross returnDefect
  ring

/-- An improved cut gives a LOWER trial energy; it is not an upper bound for Mobius. -/
theorem better_cut_gives_lower_energy {T : ℝ} (hT : 0 ≤ T) (σ : ℕ → Bool)
    (hbetter : orderedCut T sourceSpin ≤ orderedCut T σ) :
    trialCross T σ ≤ pickupCross T ∧ 0 ≤ returnDefect T σ := by
  rw [cross_eq_absolute_sub_twice_sourceCut hT]
  unfold trialCross returnDefect
  constructor <;> linarith

/-- Endpoint curvature is preserved signed, with its already established bound. -/
theorem endpoint_spin_return {T : ℝ} (hT : 0 ≤ T) (σ : ℕ → Bool) :
    endpointSum T = trialCross T σ + returnDefect T σ + curvatureCorrection T := by
  rw [endpoint_eq_cross_add_curvature hT, source_return_exact hT σ]

/-- A normalized finite law includes circuit measurement laws once their
normalization and source configuration map have actually been proved.
Nonnegative probabilities are needed for probability interpretations; this
identity itself even allows signed normalized coefficients. -/
theorem averaged_source_return {ι : Type*} (s : Finset ι) (w : ι → ℝ)
    (σ : ι → ℕ → Bool) (hw : ∑ i ∈ s, w i = 1)
    {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T = (∑ i ∈ s, w i * trialCross T (σ i)) +
      ∑ i ∈ s, w i * returnDefect T (σ i) := by
  calc
    pickupCross T = (∑ i ∈ s, w i) * pickupCross T := by rw [hw, one_mul]
    _ = ∑ i ∈ s, w i * pickupCross T := Finset.sum_mul _ _ _
    _ = ∑ i ∈ s, (w i * trialCross T (σ i) + w i * returnDefect T (σ i)) := by
      apply Finset.sum_congr rfl
      intro i _
      rw [source_return_exact hT (σ i), mul_add]
    _ = _ := Finset.sum_add_distrib

/-- A complete signed trial-and-return allowance suffices. The choice of spin
may change with j; every comparison is still with the fixed Mobius source. -/
theorem dyadicBirthBound_of_trial_and_return (σ : ℕ → ℕ → Bool)
    (h : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      trialCross (dyadicTime j) (σ j) + returnDefect (dyadicTime j) (σ j) ≤
        C * (2 : ℝ) ^ (δ * (j : ℝ))) : DyadicBirthBound := by
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := h δ hδ
  refine ⟨C + 1 / 4, by linarith, ?_⟩
  intro j
  have he := (abs_le.mp (endpointSum_error (dyadicTime_nonnegative j))).2
  rw [endpoint_dyadic_eq_birthSum] at he
  have hs := hb j
  rw [← source_return_exact (dyadicTime_nonnegative j) (σ j)] at hs
  have hone : 1 ≤ (2 : ℝ) ^ (δ * (j : ℝ)) := by
    rw [← dyadic_rate]
    exact Real.one_le_exp_iff.mpr (mul_nonneg hδ.le (dyadicTime_nonnegative j))
  nlinarith

/-- All prime-credit slack is exactly the additional full source-cut credit. -/
theorem signedUpper_slack_eq_cut_credit {T : ℝ} (hT : 0 ≤ T) (P : Finset ℕ) :
    signedUpper T P - pickupCross T =
      2 * (orderedCut T sourceSpin - primePairCredit T P) := by
  rw [cross_eq_absolute_sub_twice_sourceCut hT]
  unfold signedUpper
  ring

/-- Prime selection is dominated by the full source cut when its prime guards hold. -/
theorem primeCredit_le_sourceCut {T : ℝ} (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) : primePairCredit T P ≤ orderedCut T sourceSpin := by
  have hb := cross_le_signedUpper hT P hP
  have he := signedUpper_slack_eq_cut_credit hT P
  linarith

/-- Literal two-clause, width-two CNF for the cut event (exclusive-or). -/
def cutCNF (a b : Bool) : Bool := (a || b) && ((!a) || (!b))

theorem cutIndicator_eq_cnf (a b : Bool) :
    cutIndicator a b = if cutCNF a b then (1 : ℝ) else 0 := by
  cases a <;> cases b <;> norm_num [cutCNF, cutIndicator]

/-- SAT has to preserve the actual assignment and real weights. Counting all
satisfying assignments is a different observable from this weighted evaluation. -/
def weightedCNFCut (T : ℝ) (σ : ℕ → Bool) : ℝ :=
  ∑ z ∈ sourcePairs T,
    |signedAtom T z.1 z.2| * (if cutCNF (σ z.1) (σ z.2) then 1 else 0)

theorem weightedCNFCut_eq (T : ℝ) (σ : ℕ → Bool) :
    weightedCNFCut T σ = orderedCut T σ := by
  unfold weightedCNFCut orderedCut
  simp_rw [cutIndicator_eq_cnf]

theorem cross_eq_weightedCNF {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T = absoluteCross T - 2 * weightedCNFCut T sourceSpin := by
  rw [weightedCNFCut_eq]
  exact cross_eq_absolute_sub_twice_sourceCut hT

/-- The arithmetic objective is a half-total-weight lower bound for the
FIXED source cut, not a claim that this cut approximately maximizes the graph. -/
def SourceCutHalfBound : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
    absoluteCross (dyadicTime j) / 2 - C * (2 : ℝ) ^ (δ * (j : ℝ)) ≤
      orderedCut (dyadicTime j) sourceSpin

/-- An exact alternative terminal objective, with only the existing quarter
curvature allowance. No stronger near-optimal-spin premise is imposed. -/
theorem dyadicBirthBound_iff_source_half_cut : DyadicBirthBound ↔ SourceCutHalfBound := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨(C + 1 / 4) / 2, by positivity, ?_⟩
    intro j
    have he := (abs_le.mp (endpointSum_error (dyadicTime_nonnegative j))).1
    rw [endpoint_dyadic_eq_birthSum] at he
    have hx := cross_eq_absolute_sub_twice_sourceCut (dyadicTime_nonnegative j)
    have hs := hb j
    have hone : 1 ≤ (2 : ℝ) ^ (δ * (j : ℝ)) := by
      rw [← dyadic_rate]
      exact Real.one_le_exp_iff.mpr (mul_nonneg hδ.le (dyadicTime_nonnegative j))
    nlinarith
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨2 * C + 1 / 4, by positivity, ?_⟩
    intro j
    have he := (abs_le.mp (endpointSum_error (dyadicTime_nonnegative j))).2
    rw [endpoint_dyadic_eq_birthSum] at he
    have hx := cross_eq_absolute_sub_twice_sourceCut (dyadicTime_nonnegative j)
    have hs := hb j
    have hone : 1 ≤ (2 : ℝ) ^ (δ * (j : ℝ)) := by
      rw [← dyadic_rate]
      exact Real.one_le_exp_iff.mpr (mul_nonneg hδ.le (dyadicTime_nonnegative j))
    nlinarith

end GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison
