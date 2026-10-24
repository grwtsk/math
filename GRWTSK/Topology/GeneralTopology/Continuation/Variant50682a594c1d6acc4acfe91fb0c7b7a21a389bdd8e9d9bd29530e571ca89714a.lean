import FormalResearch.RiemannHypothesis.Laplace.InitialFormula
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn
import Mathlib.Topology.LocallyFinite

/-!
# B3.3 candidate-free normal continuation

The exact equation-(20) occurrence family is continued from `Re s > 1` to
the positive half-plane away from the displayed candidate singularities

`0`, `2 * shiftedValue o`, and `-2 * shiftedValue o`.

The candidate family is locally finite.  On every compact subset of its
complement the complete continued summands satisfy one sixth-power zero tail
bound, including both shifted `J_k` terms and the unshifted mixed term.
Consequently the full occurrence sum converges normally and locally uniformly,
and its sum is analytic there.

The resulting analytic function agrees with the genuine support-radius Laplace
integral on the original half-plane `Re s > 1`.

This module does not claim that every excluded candidate is a pole.  Isolation,
collision accounting, and the nonzero ninth-order pole certificate are
subsequent B3.3 steps.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.Continuation

open Set Filter Metric
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSummability
open Algebra Kernel Expansion InitialFormula

noncomputable section

/-- The finite radial shells exhaust every analytic-multiplicity occurrence
slot, hence the occurrence type is countable. -/
instance zeroOccurrence_countable : Countable ZeroOccurrence := by
  let : ∀ n : ℕ, Finite (ZeroShell n) := zeroShell_finite
  let f : ZeroOccurrence → Σ n : ℕ, ZeroShell n :=
    fun o ↦ ⟨shellIndex o, ⟨o, rfl⟩⟩
  apply Function.Injective.countable (f := f)
  intro o p h
  exact congrArg
    (fun q : Σ n : ℕ, ZeroShell n ↦ q.2.val) h

/-- Every bounded radial set contains only finitely many actual occurrence
slots. -/
theorem finite_occurrences_norm_le (R : ℝ) :
    {o : ZeroOccurrence | ‖shiftedValue o‖ ≤ R}.Finite := by
  let := zeroBallPoints_finite R
  let T := Σ p : ZeroBallPoints R, Fin (multiplicity p.val)
  let f :
      {o : ZeroOccurrence | ‖shiftedValue o‖ ≤ R} → T :=
    fun o ↦ ⟨⟨o.val.1, o.property⟩, o.val.2⟩
  apply Set.finite_coe_iff.mpr
  apply Finite.of_injective f
  intro o p h
  apply Subtype.ext
  exact congrArg
    (fun q : T ↦ (⟨q.1.val, q.2⟩ : ZeroOccurrence)) h

theorem finite_occurrences_scaled_norm_le
    (c : ℂ) (hc : c ≠ 0) (R : ℝ) :
    {o : ZeroOccurrence |
      ‖c * shiftedValue o‖ ≤ R}.Finite := by
  apply (finite_occurrences_norm_le (R / ‖c‖)).subset
  intro o ho
  apply (le_div_iff₀ (norm_pos_iff.mpr hc)).mpr
  simpa only [Set.mem_ofPred_eq, norm_mul, mul_comm] using ho

/-- The multiplicity-bearing scaled candidate family is locally finite. -/
theorem locallyFinite_scaled_values
    (c : ℂ) (hc : c ≠ 0) :
    LocallyFinite
      (fun o : ZeroOccurrence ↦
        ({c * shiftedValue o} : Set ℂ)) := by
  intro s
  refine ⟨ball s 1, ball_mem_nhds s zero_lt_one, ?_⟩
  apply
    (finite_occurrences_scaled_norm_le c hc (‖s‖ + 1)).subset
  rintro o ⟨w, hw, hb⟩
  simp only [mem_singleton_iff] at hw
  subst w
  have hdist :
      ‖c * shiftedValue o - s‖ < 1 :=
    mem_ball_iff_norm.mp hb
  have hnorm :=
    norm_add_le (c * shiftedValue o - s) s
  rw [sub_add_cancel] at hnorm
  change ‖c * shiftedValue o‖ ≤ ‖s‖ + 1
  linarith

theorem isClosed_scaled_range
    (c : ℂ) (hc : c ≠ 0) :
    IsClosed
      (range (fun o : ZeroOccurrence ↦
        c * shiftedValue o)) := by
  have h :=
    (locallyFinite_scaled_values c hc).isClosed_iUnion
      (fun _ ↦ isClosed_singleton)
  simpa only [iUnion_singleton_eq_range] using h

/-- Displayed candidate singularities of equation (20). -/
def candidateSingularities : Set ℂ :=
  {0} ∪
    range (fun o : ZeroOccurrence ↦ 2 * shiftedValue o) ∪
    range (fun o : ZeroOccurrence ↦ -2 * shiftedValue o)

/-- Positive half-plane with all displayed candidates removed. -/
def convergenceDomain : Set ℂ :=
  {s : ℂ | 0 < s.re} \ candidateSingularities

theorem isClosed_candidateSingularities :
    IsClosed candidateSingularities := by
  exact
    (isClosed_singleton.union
      (isClosed_scaled_range 2 (by norm_num))).union
      (isClosed_scaled_range (-2) (by norm_num))

theorem isOpen_convergenceDomain :
    IsOpen convergenceDomain :=
  (isOpen_lt continuous_const Complex.continuous_re).sdiff
    isClosed_candidateSingularities

theorem mem_convergenceDomain_iff (s : ℂ) :
    s ∈ convergenceDomain ↔
      0 < s.re ∧
      s ≠ 0 ∧
      (∀ o : ZeroOccurrence,
        s ≠ 2 * shiftedValue o) ∧
      (∀ o : ZeroOccurrence,
        s ≠ -2 * shiftedValue o) := by
  simp [convergenceDomain, candidateSingularities,
    not_or, and_assoc, eq_comm]

/-- The initial convergence half-plane avoids all displayed candidates. -/
theorem initial_halfPlane_subset_domain
    {s : ℂ} (hs : 1 < s.re) :
    s ∈ convergenceDomain := by
  apply (mem_convergenceDomain_iff s).mpr
  refine ⟨by linarith, ?_, ?_, ?_⟩
  · intro h
    norm_num [h] at hs
  · intro o h
    have hr := congrArg Complex.re h
    norm_num [Complex.mul_re] at hr
    linarith [(shiftedValue_strip o).2]
  · intro o h
    have hr := congrArg Complex.re h
    norm_num [Complex.mul_re] at hr
    linarith [(shiftedValue_strip o).1]

/-- The exact source kernel `J_k` is analytic away from its displayed
singularity at zero. -/
theorem J_analytic
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    AnalyticAt ℂ (J k) w := by
  apply (laplaceKernel_analytic k w hw).congr
  filter_upwards [compl_singleton_mem_nhds_iff.mpr hw] with z hz
  exact laplaceKernel_eq_J k z hz

theorem polynomialKernel_analytic
    (p : ℂ[X]) (w : ℂ) (hw : w ≠ 0) :
    AnalyticAt ℂ (polynomialKernel p) w := by
  exact Finset.analyticAt_fun_sum _
    (fun k _ ↦
      analyticAt_const.mul (J_analytic k w hw))

/-- One complete equation-(20) occurrence is analytic wherever its three
denominators are nonzero. -/
theorem sourceKernel_analytic_of_denominators
    (z s : ℂ)
    (hs : s ≠ 0)
    (hminus : s - 2 * z ≠ 0)
    (hplus : s + 2 * z ≠ 0) :
    AnalyticAt ℂ (sourceKernel z) s := by
  have hleft :
      AnalyticAt ℂ
        (fun t ↦
          polynomialKernel (positivePolynomial z)
            (t - 2 * z)) s :=
    (polynomialKernel_analytic _ _ hminus).comp
      (f := fun t : ℂ ↦ t - 2 * z)
      (x := s)
      (analyticAt_id.sub analyticAt_const)
  have hright :
      AnalyticAt ℂ
        (fun t ↦
          polynomialKernel (positivePolynomial (-z))
            (t + 2 * z)) s :=
    (polynomialKernel_analytic _ _ hplus).comp
      (f := fun t : ℂ ↦ t + 2 * z)
      (x := s)
      (analyticAt_id.add analyticAt_const)
  exact analyticAt_const.mul
    ((hleft.add hright).sub
      (analyticAt_const.mul
        (polynomialKernel_analytic _ _ hs)))

theorem sourceKernel_analytic_on_domain
    (o : ZeroOccurrence) (s : ℂ)
    (hs : s ∈ convergenceDomain) :
    AnalyticAt ℂ
      (sourceKernel (shiftedValue o)) s := by
  obtain ⟨_, hs0, hpos, hneg⟩ :=
    (mem_convergenceDomain_iff s).mp hs
  have hp :
      s - 2 * shiftedValue o ≠ 0 :=
    sub_ne_zero.mpr (hpos o)
  have hn :
      s + 2 * shiftedValue o ≠ 0 := by
    intro h
    apply hneg o
    linear_combination h
  exact sourceKernel_analytic_of_denominators
    (shiftedValue o) s hs0 hp hn

/-- Historical recursive kernel bound, now used only to estimate the exact
`J_k` expression. -/
theorem laplaceKernel_norm_le_factorial
    (k : ℕ) (w : ℂ) (hw : 1 ≤ ‖w‖) :
    ‖laplaceKernel k w‖ ≤
      ((k + 1).factorial : ℝ) *
        Real.exp (-w.re) := by
  have hwpos : 0 < ‖w‖ := by linarith
  have hw0 : w ≠ 0 := norm_pos_iff.mp hwpos
  induction k with
  | zero =>
      rw [laplaceKernel_zero, norm_div,
        Complex.norm_exp]
      simp only [Complex.neg_re, Nat.zero_add,
        Nat.factorial_one, Nat.cast_one, one_mul]
      exact div_le_self (Real.exp_pos _).le hw
  | succ k ih =>
      rw [laplaceKernel_succ k w hw0, norm_div]
      calc
        _ ≤
            (‖Complex.exp (-w)‖ +
              ‖((k + 1 : ℕ) : ℂ) *
                laplaceKernel k w‖) / ‖w‖ := by
          gcongr
          exact norm_add_le _ _
        _ =
            (Real.exp (-w.re) +
              (k + 1 : ℕ) *
                ‖laplaceKernel k w‖) / ‖w‖ := by
          simp only [Complex.norm_exp, Complex.neg_re,
            norm_mul, Complex.norm_natCast]
        _ ≤
            (Real.exp (-w.re) +
              (k + 1 : ℕ) *
                (((k + 1).factorial : ℝ) *
                  Real.exp (-w.re))) / 1 := by
          gcongr
        _ ≤ _ := by
          have hf :
              (1 : ℝ) ≤ (k + 1).factorial := by
            exact_mod_cast Nat.factorial_pos (k + 1)
          simp only [div_one, Nat.factorial_succ,
            Nat.cast_mul, Nat.cast_add, Nat.cast_one] at *
          nlinarith [Real.exp_pos (-w.re)]

theorem J_norm_le_factorial
    (k : ℕ) (w : ℂ) (hw : 1 ≤ ‖w‖) :
    ‖J k w‖ ≤
      ((k + 1).factorial : ℝ) *
        Real.exp (-w.re) := by
  have hw0 : w ≠ 0 :=
    norm_pos_iff.mp (zero_lt_one.trans_le hw)
  rw [← laplaceKernel_eq_J k w hw0]
  exact laplaceKernel_norm_le_factorial k w hw

theorem J_norm_le
    (k : ℕ) (hk : k ≤ 8)
    (w : ℂ) (hw : 1 ≤ ‖w‖) :
    ‖J k w‖ ≤
      362880 * Real.exp (-w.re) := by
  have hf :
      ((k + 1).factorial : ℝ) ≤ 362880 := by
    interval_cases k <;> norm_num
  exact (J_norm_le_factorial k w hw).trans
    (mul_le_mul_of_nonneg_right hf
      (Real.exp_pos _).le)

/-- All positive-polynomial coefficients obey one degree-eight bound. -/
theorem positivePolynomial_coeff_norm_le
    (z : ℂ) (hz : 1 ≤ ‖z‖)
    (k : ℕ) (hk : k ≤ 8) :
    ‖(positivePolynomial z).coeff k‖ ≤
      22050 * ‖z‖ ^ 8 := by
  rw [positivePolynomial_coeff z k hk, norm_mul,
    norm_pow]
  have hp :
      ‖z‖ ^ k ≤ ‖z‖ ^ 8 :=
    pow_le_pow_right₀ hz hk
  have hr : ‖rCoeff k‖ ≤ 22050 := by
    interval_cases k <;> norm_num [rCoeff]
  calc
    ‖rCoeff k‖ * ‖z‖ ^ k ≤ 22050 * ‖z‖ ^ k :=
      mul_le_mul_of_nonneg_right hr (pow_nonneg (norm_nonneg z) _)
    _ ≤ 22050 * ‖z‖ ^ 8 :=
      mul_le_mul_of_nonneg_left hp (by norm_num)

theorem mixedPolynomial_coeff_norm_le
    (z : ℂ) (hz : 1 ≤ ‖z‖)
    (k : ℕ) (hk : k ≤ 8) :
    ‖(mixedPolynomial z).coeff k‖ ≤
      22050 * ‖z‖ ^ 8 := by
  rw [mixedPolynomial_coeff z k hk, norm_mul,
    norm_pow]
  have hp :
      ‖z‖ ^ k ≤ ‖z‖ ^ 8 :=
    pow_le_pow_right₀ hz hk
  have hs : ‖sCoeff k‖ ≤ 22050 := by
    interval_cases k <;> norm_num [sCoeff]
  calc
    ‖sCoeff k‖ * ‖z‖ ^ k ≤ 22050 * ‖z‖ ^ k :=
      mul_le_mul_of_nonneg_right hs (pow_nonneg (norm_nonneg z) _)
    _ ≤ 22050 * ‖z‖ ^ 8 :=
      mul_le_mul_of_nonneg_left hp (by norm_num)

theorem polynomialKernel_norm_le
    (p : ℂ[X]) (w : ℂ) (C B : ℝ)
    (hc : ∀ k ≤ 8, ‖p.coeff k‖ ≤ C)
    (hb : ∀ k ≤ 8, ‖J k w‖ ≤ B) :
    ‖polynomialKernel p w‖ ≤ 9 * C * B := by
  have hC : 0 ≤ C :=
    (norm_nonneg _).trans (hc 0 (by omega))
  unfold polynomialKernel
  calc
    _ ≤
        ∑ k ∈ Finset.range 9,
          ‖p.coeff k * J k w‖ :=
      norm_sum_le _ _
    _ ≤
        ∑ _k ∈ Finset.range 9, C * B := by
      apply Finset.sum_le_sum
      intro k hk
      have hk8 :
          k ≤ 8 :=
        Nat.le_of_lt_succ (Finset.mem_range.mp hk)
      rw [norm_mul]
      exact mul_le_mul
        (hc k hk8) (hb k hk8)
        (norm_nonneg _) hC
    _ = _ := by simp; ring

theorem shifted_norm_ge_one
    (M : ℝ) (hM : 0 ≤ M)
    (s z : ℂ)
    (hs : ‖s‖ ≤ M)
    (hz : M + 1 ≤ ‖z‖) :
    1 ≤ ‖s - 2 * z‖ := by
  have h := norm_sub_norm_le (2 * z) s
  rw [norm_sub_rev] at h
  norm_num [norm_mul] at h
  linarith

theorem shifted_J_norm_le
    (M : ℝ) (hM : 0 ≤ M)
    (s z : ℂ)
    (hs : ‖s‖ ≤ M)
    (hz : M + 1 ≤ ‖z‖)
    (hzre : z.re ≤ 1 / 2)
    (k : ℕ) (hk : k ≤ 8) :
    ‖J k (s - 2 * z)‖ ≤
      362880 * Real.exp (M + 1) := by
  have hsre : -s.re ≤ M := by
    have h := Complex.re_le_norm (-s)
    simp only [Complex.neg_re, norm_neg] at h
    exact h.trans hs
  have hre :
      -(s - 2 * z).re ≤ M + 1 := by
    norm_num [Complex.mul_re]
    linarith
  exact
    (J_norm_le k hk _
      (shifted_norm_ge_one M hM s z hs hz)).trans
      (mul_le_mul_of_nonneg_left
        (Real.exp_le_exp.mpr hre) (by norm_num))

def tailConstant (M B : ℝ) : ℝ :=
  64 * 589824 * 396900 *
    (362880 * Real.exp (M + 1) + B)

theorem tailConstant_nonneg
    (M B : ℝ) (hB : 0 ≤ B) :
    0 ≤ tailConstant M B := by
  unfold tailConstant
  positivity

/-- Complete three-term continued occurrence bound with sixth-power zero
decay. -/
theorem sourceKernel_norm_le
    (M B : ℝ) (hM : 0 ≤ M) (hB : 0 ≤ B)
    (s z : ℂ)
    (hs : ‖s‖ ≤ M)
    (hz : M + 1 ≤ ‖z‖)
    (hstrip :
      -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2)
    (hunshifted :
      ∀ k ≤ 8, ‖J k s‖ ≤ B) :
    ‖sourceKernel z s‖ ≤
      tailConstant M B *
        (1 + ‖z‖) ^ (-6 : ℝ) := by
  have hz1 : 1 ≤ ‖z‖ := by linarith
  have hzn1 : 1 ≤ ‖-z‖ := by
    simpa only [norm_neg] using hz1
  have hr : 0 < ‖z‖ := by linarith
  have hnegstrip :
      (-z).re ≤ 1 / 2 := by
    simp only [Complex.neg_re]
    linarith [hstrip.1]
  have hminus :=
    polynomialKernel_norm_le
      (positivePolynomial z) (s - 2 * z)
      (22050 * ‖z‖ ^ 8)
      (362880 * Real.exp (M + 1))
      (positivePolynomial_coeff_norm_le z hz1)
      (shifted_J_norm_le M hM s z hs hz hstrip.2)
  have hplus :=
    polynomialKernel_norm_le
      (positivePolynomial (-z)) (s + 2 * z)
      (22050 * ‖z‖ ^ 8)
      (362880 * Real.exp (M + 1))
      (by
        simpa only [norm_neg] using
          positivePolynomial_coeff_norm_le (-z) hzn1)
      (by
        simpa only [norm_neg, mul_neg, sub_neg_eq_add] using
          shifted_J_norm_le M hM s (-z) hs
            (by simpa only [norm_neg] using hz)
            hnegstrip)
  have hmixed :=
    polynomialKernel_norm_le
      (mixedPolynomial z) s
      (22050 * ‖z‖ ^ 8) B
      (mixedPolynomial_coeff_norm_le z hz1)
      hunshifted
  have hweight :=
    modeCoefficient_norm_le z hz1
  have hmain :
      ‖sourceKernel z s‖ ≤
        (589824 * 396900 *
          (362880 * Real.exp (M + 1) + B)) /
          ‖z‖ ^ 6 := by
    unfold sourceKernel
    rw [norm_mul]
    calc
      _ ≤
          (589824 / ‖z‖ ^ 14) *
            (9 * (22050 * ‖z‖ ^ 8) *
                (362880 * Real.exp (M + 1)) +
              9 * (22050 * ‖z‖ ^ 8) *
                (362880 * Real.exp (M + 1)) +
              2 * (9 * (22050 * ‖z‖ ^ 8) * B)) := by
        gcongr
        calc
          _ ≤
              ‖polynomialKernel (positivePolynomial z)
                    (s - 2 * z) +
                  polynomialKernel (positivePolynomial (-z))
                    (s + 2 * z)‖ +
                ‖2 * polynomialKernel (mixedPolynomial z) s‖ :=
            norm_sub_le _ _
          _ ≤ _ := by
            rw [norm_mul]
            norm_num only [Complex.norm_ofNat]
            calc
              _ ≤
                  (‖polynomialKernel (positivePolynomial z)
                        (s - 2 * z)‖ +
                    ‖polynomialKernel (positivePolynomial (-z))
                        (s + 2 * z)‖) +
                    2 * ‖polynomialKernel
                      (mixedPolynomial z) s‖ := by
                gcongr
                exact norm_add_le _ _
              _ ≤ _ := by gcongr
      _ = _ := by
        field_simp
        ring
  have hr1 : 0 < 1 + ‖z‖ := by positivity
  have hpow :
      (1 + ‖z‖) ^ 6 ≤ 64 * ‖z‖ ^ 6 := by
    calc
      _ ≤ (2 * ‖z‖) ^ 6 := by
        gcongr
        linarith
      _ = _ := by ring
  have hinv :
      1 / ‖z‖ ^ 6 ≤
        64 / (1 + ‖z‖) ^ 6 := by
    apply (div_le_div_iff₀
      (by positivity) (by positivity)).2
    simpa only [one_mul] using hpow
  calc
    _ ≤ _ := hmain
    _ ≤
        (589824 * 396900 *
          (362880 * Real.exp (M + 1) + B)) *
          (64 / (1 + ‖z‖) ^ 6) := by
      rw [div_eq_mul_one_div]
      exact mul_le_mul_of_nonneg_left hinv
        (by positivity)
    _ =
        tailConstant M B *
          (1 + ‖z‖) ^ (-6 : ℝ) := by
      unfold tailConstant
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num,
        Real.rpow_neg hr1.le, Real.rpow_natCast]
      ring

/-- Compactness away from zero bounds all nine unshifted exact `J_k`
kernels. -/
theorem compact_unshifted_bound
    (K : Set ℂ) (hK : IsCompact K)
    (hzero : 0 ∉ K) :
    ∃ B : ℝ, 0 ≤ B ∧
      ∀ s ∈ K, ∀ k ≤ 8, ‖J k s‖ ≤ B := by
  have hc (k : ℕ) :
      ContinuousOn (J k) K := by
    intro s hs
    exact
      (J_analytic k s
        (fun h ↦ hzero (h ▸ hs))).continuousAt.continuousWithinAt
  have hsum :
      ContinuousOn
        (fun s ↦
          ∑ k ∈ Finset.range 9, ‖J k s‖) K := by
    exact continuousOn_finsetSum _
      (fun k _ ↦ (hc k).norm)
  obtain ⟨B, hB⟩ :=
    hK.exists_bound_of_continuousOn hsum
  refine ⟨max B 0, le_max_right _ _, ?_⟩
  intro s hs k hk
  have hsumnonneg :
      0 ≤ ∑ j ∈ Finset.range 9, ‖J j s‖ :=
    Finset.sum_nonneg (fun _ _ ↦ norm_nonneg _)
  have hsingle :
      ‖J k s‖ ≤
        ∑ j ∈ Finset.range 9, ‖J j s‖ :=
    Finset.single_le_sum
      (s := Finset.range 9)
      (f := fun j ↦ ‖J j s‖)
      (fun _ _ ↦ norm_nonneg _)
      (Finset.mem_range.mpr (by omega))
  have hbound := hB s hs
  rw [Real.norm_eq_abs,
    abs_of_nonneg hsumnonneg] at hbound
  exact hsingle.trans
    (hbound.trans (le_max_left _ _))

theorem compact_sourceKernel_tail_bound
    (K : Set ℂ) (hK : IsCompact K)
    (hzero : 0 ∉ K) :
    ∃ R C : ℝ,
      0 ≤ R ∧ 0 ≤ C ∧
      ∀ s ∈ K, ∀ z : ℂ,
        R ≤ ‖z‖ →
        (-(1 / 2 : ℝ) ≤ z.re ∧
          z.re ≤ 1 / 2) →
        ‖sourceKernel z s‖ ≤
          C * (1 + ‖z‖) ^ (-6 : ℝ) := by
  obtain ⟨M, hM⟩ :=
    hK.isBounded.exists_norm_le
  obtain ⟨B, hB, hkernels⟩ :=
    compact_unshifted_bound K hK hzero
  refine ⟨max M 0 + 1,
    tailConstant (max M 0) B,
    by positivity,
    tailConstant_nonneg _ _ hB, ?_⟩
  intro s hs z hz hstrip
  exact sourceKernel_norm_le
    (max M 0) B (le_max_right _ _) hB s z
    ((hM s hs).trans (le_max_left _ _))
    hz hstrip (hkernels s hs)

/-- Supremum norm of one complete occurrence contribution on a compact set. -/
def compactKernelNorm
    (K : Set ℂ) (o : ZeroOccurrence) : ℝ :=
  sSup ((fun s ↦
    ‖sourceKernel (shiftedValue o) s‖) '' K)

theorem sourceKernel_continuousOn
    (K : Set ℂ)
    (hKD : K ⊆ convergenceDomain)
    (o : ZeroOccurrence) :
    ContinuousOn
      (sourceKernel (shiftedValue o)) K :=
  fun s hs ↦
    (sourceKernel_analytic_on_domain o s
      (hKD hs)).continuousAt.continuousWithinAt

theorem norm_le_compactKernelNorm
    (K : Set ℂ) (hK : IsCompact K)
    (hKD : K ⊆ convergenceDomain)
    (o : ZeroOccurrence) (s : ℂ) (hs : s ∈ K) :
    ‖sourceKernel (shiftedValue o) s‖ ≤
      compactKernelNorm K o :=
  le_csSup
    (hK.bddAbove_image
      (sourceKernel_continuousOn K hKD o).norm)
    (mem_image_of_mem _ hs)

theorem compactKernelNorm_nonneg
    (K : Set ℂ) (hK : IsCompact K)
    (hKD : K ⊆ convergenceDomain)
    (o : ZeroOccurrence) :
    0 ≤ compactKernelNorm K o := by
  obtain hne | he := K.eq_empty_or_nonempty
  · simp [compactKernelNorm, hne, Real.sSup_empty]
  · obtain ⟨s, hs⟩ := he
    exact (norm_nonneg _).trans
      (norm_le_compactKernelNorm K hK hKD o s hs)

theorem eventually_shifted_norm_ge (R : ℝ) :
    ∀ᶠ o : ZeroOccurrence in cofinite,
      R ≤ ‖shiftedValue o‖ := by
  rw [eventually_cofinite]
  exact (finite_occurrences_norm_le R).subset
    (fun _ ho ↦ (lt_of_not_ge ho).le)

theorem sourceKernel_compact_tail_bound
    (K : Set ℂ) (hK : IsCompact K)
    (hKD : K ⊆ convergenceDomain) :
    ∃ R C : ℝ,
      0 ≤ R ∧ 0 ≤ C ∧
      ∀ o : ZeroOccurrence,
        R ≤ ‖shiftedValue o‖ →
        ∀ s ∈ K,
          ‖sourceKernel (shiftedValue o) s‖ ≤
            C * (1 + ‖shiftedValue o‖) ^
              (-6 : ℝ) := by
  have hzero : 0 ∉ K := by
    intro h
    have hpos :=
      ((mem_convergenceDomain_iff 0).mp
        (hKD h)).1
    simp at hpos
  obtain ⟨R, C, hR, hC, hbound⟩ :=
    compact_sourceKernel_tail_bound K hK hzero
  exact ⟨R, C, hR, hC,
    fun o ho s hs ↦
      hbound s hs (shiftedValue o) ho
        ⟨(shiftedValue_strip o).1.le,
          (shiftedValue_strip o).2.le⟩⟩

/-- Normal convergence retains all finite exceptional occurrence slots. -/
theorem sourceKernel_compact_norms_summable
    (K : Set ℂ) (hK : IsCompact K)
    (hKD : K ⊆ convergenceDomain) :
    Summable (compactKernelNorm K) := by
  obtain he | hne := K.eq_empty_or_nonempty
  · change Summable (fun o ↦ compactKernelNorm K o)
    simp [compactKernelNorm, he, Real.sSup_empty]
  obtain ⟨R, C, _, _, hbound⟩ :=
    sourceKernel_compact_tail_bound K hK hKD
  apply
    (ZeroShellCount.zero_summability.mul_left C)
      .of_norm_bounded_eventually
  filter_upwards [eventually_shifted_norm_ge R] with o ho
  rw [Real.norm_of_nonneg
    (compactKernelNorm_nonneg K hK hKD o)]
  apply csSup_le (hne.image _)
  rintro y ⟨s, hs, rfl⟩
  exact hbound o ho s hs

theorem sourceKernel_hasSumUniformlyOn_compact
    (K : Set ℂ) (hK : IsCompact K)
    (hKD : K ⊆ convergenceDomain) :
    HasSumUniformlyOn
      (fun o : ZeroOccurrence ↦
        sourceKernel (shiftedValue o))
      (fun s ↦
        ∑' o : ZeroOccurrence,
          sourceKernel (shiftedValue o) s) K :=
  HasSumUniformlyOn.of_norm_le_summable
    (sourceKernel_compact_norms_summable K hK hKD)
    (fun o s hs ↦
      norm_le_compactKernelNorm K hK hKD o s hs)

theorem sourceKernel_hasSumLocallyUniformlyOn :
    HasSumLocallyUniformlyOn
      (fun o : ZeroOccurrence ↦
        sourceKernel (shiftedValue o))
      (fun s ↦
        ∑' o : ZeroOccurrence,
          sourceKernel (shiftedValue o) s)
      convergenceDomain :=
  hasSumLocallyUniformlyOn_of_forall_compact
    isOpen_convergenceDomain
    (fun K hKD hK ↦
      sourceKernel_hasSumUniformlyOn_compact K hK hKD)

/-- The candidate-free continued occurrence sum is analytic. -/
theorem sourceKernel_tsum_analytic :
    AnalyticOnNhd ℂ
      (fun s ↦
        ∑' o : ZeroOccurrence,
          sourceKernel (shiftedValue o) s)
      convergenceDomain := by
  have hlim := sourceKernel_hasSumLocallyUniformlyOn
  rw [hasSumLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn] at hlim
  apply DifferentiableOn.analyticOnNhd _
    isOpen_convergenceDomain
  apply hlim.differentiableOn _
    isOpen_convergenceDomain
  exact Eventually.of_forall
    (fun _ ↦
      DifferentiableOn.fun_sum
        (fun o _ s hs ↦
          (sourceKernel_analytic_on_domain o s hs)
            .differentiableAt.differentiableWithinAt))

/-- Candidate-free analytic continuation of the initial Laplace transform. -/
def continuedTransform (s : ℂ) : ℂ :=
  ∑' o : ZeroOccurrence,
    sourceKernel (shiftedValue o) s

theorem continuedTransform_analytic :
    AnalyticOnNhd ℂ continuedTransform convergenceDomain := by
  simpa only [continuedTransform] using
    sourceKernel_tsum_analytic

theorem sourceKernel_eq_equation20_tsum (s : ℂ) :
    continuedTransform s =
      ∑' o : ZeroOccurrence,
        equation20Summand (shiftedValue o) s := by
  unfold continuedTransform
  apply tsum_congr
  intro o
  exact sourceKernel_eq_equation20Summand
    (shiftedValue o) s

/-- On the genuine initial half-plane the continuation is the actual
support-radius Laplace integral. -/
theorem initial_agreement
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (weightedSource A : ℂ)) =
      continuedTransform s := by
  rw [sourceKernel_eq_equation20_tsum]
  exact equation20 s hs

/-- The exact continuation checkpoint reached before any pole-isolation
argument. -/
def CandidateFreeContinuationCheckpoint : Prop :=
  IsClosed candidateSingularities ∧
  IsOpen convergenceDomain ∧
  (∀ s : ℂ, 1 < s.re → s ∈ convergenceDomain) ∧
  HasSumLocallyUniformlyOn
    (fun o : ZeroOccurrence ↦
      sourceKernel (shiftedValue o))
    continuedTransform convergenceDomain ∧
  AnalyticOnNhd ℂ continuedTransform convergenceDomain ∧
  (∀ s : ℂ, 1 < s.re →
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (weightedSource A : ℂ)) =
      continuedTransform s)

theorem candidate_free_continuation_checkpoint :
    CandidateFreeContinuationCheckpoint :=
  ⟨isClosed_candidateSingularities,
    isOpen_convergenceDomain,
    fun _ hs ↦ initial_halfPlane_subset_domain hs,
    by
      simpa only [continuedTransform] using
        sourceKernel_hasSumLocallyUniformlyOn,
    continuedTransform_analytic,
    initial_agreement⟩

end
end FormalResearch.RiemannHypothesis.Laplace.Continuation
