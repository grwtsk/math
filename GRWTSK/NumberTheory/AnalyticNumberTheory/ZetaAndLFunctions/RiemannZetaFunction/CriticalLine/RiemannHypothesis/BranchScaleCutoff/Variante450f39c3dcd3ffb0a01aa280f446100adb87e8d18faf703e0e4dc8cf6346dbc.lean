import FormalResearch.RiemannHypothesis.Conversation.BranchCorrelationEdge
import FormalResearch.RiemannHypothesis.Conversation.BranchCutoffRegularity

/-!
# The exact fifth-order entry of one source lag at its moving cutoff

Batch 26, `exact-profile-descent.md`, section 4, revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. For a fixed positive half-lag a
and fixed weight w, the literal summand w C_A(2a) vanishes below A=a and
has the complete endpoint polynomial above it. Its inward fifth jet is
4718592 w/(a⁹ Z(a)). The complete moving finite sum remains a separate
regularity claim; no new signed arithmetic estimate follows from this entry.

Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchScaleCutoff

open Set MeasureTheory Filter
open scoped Topology
open SourcePairing BranchProfileSeams BranchCorrelationEdge BranchCutoffRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- One fixed source lag, with its actual correlation evaluated at the moving real scale. -/
def singleLagTerm (w a A : ℝ) : ℝ :=
  w * sourceCorrelation explicitSecondDerivative A (2 * a)

/-- The complete factor multiplying (A-a)⁵, with no Taylor remainder dropped. -/
def cutoffTail (w a A : ℝ) : ℝ :=
  32 * w * edgeTail A (2 * (A - a))

/-- The original von Mangoldt summand, extended by its actual support zero below cutoff. -/
def primePowerTerm (n : ℕ) (A : ℝ) : ℝ :=
  ArithmeticFunction.vonMangoldt n / Real.sqrt n *
    sourceCorrelation explicitSecondDerivative A (Real.log n)

/-- Identification with the fixed-lag coordinate preserves the literal prime-power weight. -/
theorem primePowerTerm_eq_singleLagTerm (n : ℕ) :
    primePowerTerm n =
      singleLagTerm (ArithmeticFunction.vonMangoldt n / Real.sqrt n) (Real.log n / 2) := by
  funext A
  unfold primePowerTerm singleLagTerm
  rw [show 2 * (Real.log (n : ℝ) / 2) = Real.log n by ring]

/-- Non-prime-power integers have no source term at any real scale. -/
theorem primePowerTerm_zero_of_not_isPrimePow {n : ℕ} (hn : ¬ IsPrimePow n) (A : ℝ) :
    primePowerTerm n A = 0 := by
  unfold primePowerTerm
  rw [ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hn, zero_div, zero_mul]

/-- Below the literal support cutoff the fixed-lag source term vanishes. -/
theorem singleLagTerm_zero_below {a A : ℝ} (w : ℝ) (hA : 0 < A)
    (hAa : A ≤ a) : singleLagTerm w a A = 0 := by
  unfold singleLagTerm
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * a) hA
    ((by linarith : 2 * A ≤ 2 * a).trans (le_abs_self _)), mul_zero]

/-- At and above entry the full polynomial gives an exact fifth-power factorization. -/
theorem singleLagTerm_above {a A : ℝ} (w : ℝ) (ha : 0 < a) (hAa : a ≤ A) :
    singleLagTerm w a A = (A - a) ^ 5 * cutoffTail w a A := by
  have hA : 0 < A := ha.trans_le hAa
  have hc := actual_correlation_edge_polynomial hA
    (y := 2 * (A - a)) (by linarith) (by linarith)
  rw [show 2 * A - 2 * (A - a) = 2 * a by ring,
    edgeCorrelationPolynomial_factor] at hc
  unfold singleLagTerm cutoffTail
  rw [hc]
  ring

/-- The complete tail has five continuous derivatives at every positive real source scale. -/
theorem cutoffTail_contDiffAt_of_pos {x : ℝ} (w a : ℝ) (hx : 0 < x) :
    ContDiffAt ℝ 5 (cutoffTail w a) x := by
  have hc (i : Fin 7) : ContDiffAt ℝ 5 (fun A ↦ edgeCoefficient A i) x := by
    fin_cases i <;> dsimp [edgeCoefficient] <;> fun_prop (disch := positivity)
  have hn : ContDiffAt ℝ 5 sourceNormalization x := by
    unfold sourceNormalization
    fun_prop (disch := positivity)
  have hz : 0 < sourceNormalization x := by unfold sourceNormalization; positivity
  unfold cutoffTail edgeTail
  fun_prop (disch := positivity)

/-- In particular the tail has five continuous derivatives at a positive entry point. -/
theorem cutoffTail_contDiffAt {a : ℝ} (w : ℝ) (ha : 0 < a) :
    ContDiffAt ℝ 5 (cutoffTail w a) a := cutoffTail_contDiffAt_of_pos w a ha

/-- After its entry a fixed source lag has five continuous derivatives in real scale. -/
theorem singleLagTerm_contDiffAt_five_of_lt {a x : ℝ} (w : ℝ)
    (ha : 0 < a) (hax : a < x) : ContDiffAt ℝ 5 (singleLagTerm w a) x := by
  have hf0 : ContDiffAt ℝ 5 (fun A : ℝ ↦ (A - a) ^ 5) x := by fun_prop
  have hf := hf0.mul (cutoffTail_contDiffAt_of_pos w a (ha.trans hax))
  apply hf.congr_of_eventuallyEq
  filter_upwards [Ioi_mem_nhds hax] with A hA
  exact singleLagTerm_above w ha (le_of_lt hA)

/-- The coefficient at entry is the exact fifth-order moving-cutoff coefficient. -/
theorem cutoffTail_at_entry {a : ℝ} (w : ℝ) (ha : 0 < a) :
    cutoffTail w a a = 196608 * w / (5 * a ^ 9 * sourceNormalization a) := by
  rw [cutoffTail, sub_self, mul_zero, edgeTail_zero ha]
  ring

/-- The literal lag term is C⁴ at entry, including both sides of the support cutoff. -/
theorem singleLagTerm_contDiffAt_four {a : ℝ} (w : ℝ) (ha : 0 < a) :
    ContDiffAt ℝ 4 (singleLagTerm w a) a := by
  have hf : ContDiffAt ℝ 4
      (fun A ↦ positivePower 5 (A - a) * cutoffTail w a A) a :=
    (positivePower_five_contDiff_four.comp (contDiff_id.sub contDiff_const)).contDiffAt.mul
      ((cutoffTail_contDiffAt w ha).of_le (by norm_num))
  apply hf.congr_of_eventuallyEq
  filter_upwards [Ioi_mem_nhds (by linarith : a / 2 < a)] with A hA
  change a / 2 < A at hA
  have hpos : 0 < A := by linarith
  by_cases hAa : a ≤ A
  · rw [singleLagTerm_above w ha hAa, positivePower,
      indicator_of_mem (show A - a ∈ Ici (0 : ℝ) by exact sub_nonneg.mpr hAa)]
  · rw [singleLagTerm_zero_below w hpos (le_of_not_ge hAa), positivePower,
      indicator_of_notMem (show A - a ∉ Ici (0 : ℝ) by
        simp only [mem_Ici]; linarith), zero_mul]

private theorem fifth_jet_factor {g : ℝ → ℝ} {a : ℝ}
    (hg : ContDiffAt ℝ 5 g a) :
    iteratedDeriv 5 (fun A ↦ (A - a) ^ 5 * g A) a = 120 * g a := by
  have hp (k : ℕ) : iteratedDeriv k (fun A : ℝ ↦ (A - a) ^ 5) a =
      (Nat.descFactorial 5 k : ℝ) * (0 : ℝ) ^ (5 - k) := by
    have h := congrFun (iteratedDeriv_comp_sub_const (n := k)
      (f := fun x : ℝ ↦ x ^ 5) (s := a)) a
    simpa only [iteratedDeriv_pow, sub_self] using h
  rw [iteratedDeriv_fun_mul (by fun_prop) hg]
  simp_rw [hp]
  norm_num [Finset.sum_range_succ, Nat.descFactorial, Nat.choose, iteratedDeriv_zero]

/-- The actual right-hand fifth jet in scale has the stated complete coefficient. -/
theorem singleLagTerm_inward_fifth_jet {a : ℝ} (w : ℝ) (ha : 0 < a) :
    iteratedDerivWithin 5 (singleLagTerm w a) (Icc a (2 * a)) a =
      4718592 * w / (a ^ 9 * sourceNormalization a) := by
  have he : EqOn (singleLagTerm w a)
      (fun A ↦ (A - a) ^ 5 * cutoffTail w a A) (Icc a (2 * a)) :=
    fun _ hA ↦ singleLagTerm_above w ha hA.1
  have hm : a ∈ Icc a (2 * a) := by constructor <;> linarith
  have hf0 : ContDiffAt ℝ 5 (fun A : ℝ ↦ (A - a) ^ 5) a := by fun_prop
  have hf : ContDiffAt ℝ 5 (fun A ↦ (A - a) ^ 5 * cutoffTail w a A) a :=
    hf0.mul (cutoffTail_contDiffAt w ha)
  rw [iteratedDerivWithin_congr he hm,
    iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc (by linarith : a < 2 * a)) hf hm,
    fifth_jet_factor (cutoffTail_contDiffAt w ha), cutoffTail_at_entry w ha]
  ring

/-- The actual left-hand fifth jet in scale is zero on a positive interval below entry. -/
theorem singleLagTerm_outward_fifth_jet {a : ℝ} (w : ℝ) (ha : 0 < a) :
    iteratedDerivWithin 5 (singleLagTerm w a) (Icc (a / 2) a) a = 0 := by
  have he : EqOn (singleLagTerm w a) (fun _ ↦ 0) (Icc (a / 2) a) := by
    intro A hA
    exact singleLagTerm_zero_below w (by linarith [hA.1]) hA.2
  rw [iteratedDerivWithin_congr he (show a ∈ Icc (a / 2) a by
    constructor <;> linarith)]
  simp

/-- A nonzero literal lag weight forces failure of C⁵ at its moving cutoff. -/
theorem singleLagTerm_not_contDiffAt_five {a w : ℝ} (ha : 0 < a) (hw : w ≠ 0) :
    ¬ ContDiffAt ℝ 5 (singleLagTerm w a) a := by
  intro hc
  have hi := singleLagTerm_inward_fifth_jet w ha
  have ho := singleLagTerm_outward_fifth_jet w ha
  rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc (by linarith : a < 2 * a))
    hc (show a ∈ Icc a (2 * a) by constructor <;> linarith)] at hi
  rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc (by linarith : a / 2 < a))
    hc (show a ∈ Icc (a / 2) a by constructor <;> linarith)] at ho
  have hz : 0 < sourceNormalization a := by unfold sourceNormalization; positivity
  have hn : 4718592 * w / (a ^ 9 * sourceNormalization a) ≠ 0 := by
    exact div_ne_zero (mul_ne_zero (by norm_num) hw) (by positivity)
  exact hn (by linarith)

/-- The term's signed fifth-order limit in the real scale retains its exact source price. -/
theorem singleLagTerm_fifth_order_limit {a : ℝ} (w : ℝ) (ha : 0 < a) :
    Tendsto (fun A ↦ singleLagTerm w a A / (A - a) ^ 5)
      (𝓝[>] a) (𝓝 (196608 * w / (5 * a ^ 9 * sourceNormalization a))) := by
  have ht := (cutoffTail_contDiffAt w ha).continuousAt.tendsto.mono_left
    (nhdsWithin_le_nhds (s := Ioi a))
  rw [cutoffTail_at_entry w ha] at ht
  apply ht.congr'
  filter_upwards [self_mem_nhdsWithin] with A hA
  rw [singleLagTerm_above w ha hA.le]
  exact (mul_div_cancel_left₀ _ (pow_ne_zero _ (sub_ne_zero.mpr hA.ne'))).symm

/-- Every actual prime-power entry has a strictly positive fifth-order scale jump. -/
theorem primePowerTerm_inward_fifth_jet {n : ℕ} (hn : IsPrimePow n) :
    iteratedDerivWithin 5 (primePowerTerm n)
        (Icc (Real.log n / 2) (Real.log n)) (Real.log n / 2) =
      4718592 * (ArithmeticFunction.vonMangoldt n / Real.sqrt n) /
        ((Real.log n / 2) ^ 9 * sourceNormalization (Real.log n / 2)) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  rw [primePowerTerm_eq_singleLagTerm]
  have h := singleLagTerm_inward_fifth_jet
    (ArithmeticFunction.vonMangoldt n / Real.sqrt n) ha
  rw [show 2 * (Real.log (n : ℝ) / 2) = Real.log n by ring] at h
  exact h

/-- Each prime-power summand fails C⁵ at its exact real cutoff, with no arithmetic premise. -/
theorem primePowerTerm_not_contDiffAt_five {n : ℕ} (hn : IsPrimePow n) :
    ¬ ContDiffAt ℝ 5 (primePowerTerm n) (Real.log n / 2) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  have hw : ArithmeticFunction.vonMangoldt n / Real.sqrt n ≠ 0 :=
    div_ne_zero (ArithmeticFunction.vonMangoldt_ne_zero_iff.mpr hn)
      (Real.sqrt_pos.mpr (by linarith : (0 : ℝ) < n)).ne'
  rw [primePowerTerm_eq_singleLagTerm]
  exact singleLagTerm_not_contDiffAt_five ha hw

/-- The actual prime-power summand is C⁴ at the same exact real cutoff. -/
theorem primePowerTerm_contDiffAt_four {n : ℕ} (hn : IsPrimePow n) :
    ContDiffAt ℝ 4 (primePowerTerm n) (Real.log n / 2) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  rw [primePowerTerm_eq_singleLagTerm]
  exact singleLagTerm_contDiffAt_four _ (div_pos (Real.log_pos hn1) (by norm_num))

/-- Von Mangoldt positivity makes the literal inward fifth jet strictly positive. -/
theorem primePowerTerm_inward_fifth_jet_pos {n : ℕ} (hn : IsPrimePow n) :
    0 < iteratedDerivWithin 5 (primePowerTerm n)
      (Icc (Real.log n / 2) (Real.log n)) (Real.log n / 2) := by
  rw [primePowerTerm_inward_fifth_jet hn]
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  have hz : 0 < sourceNormalization (Real.log n / 2) := by
    unfold sourceNormalization
    positivity
  have hw : 0 < ArithmeticFunction.vonMangoldt n / Real.sqrt n :=
    div_pos (ArithmeticFunction.vonMangoldt_pos_iff.mpr hn)
      (Real.sqrt_pos.mpr (by linarith : (0 : ℝ) < n))
  positivity

end FormalResearch.RiemannHypothesis.BranchScaleCutoff
