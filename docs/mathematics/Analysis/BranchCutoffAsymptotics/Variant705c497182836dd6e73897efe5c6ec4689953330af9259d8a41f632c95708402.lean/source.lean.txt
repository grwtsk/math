import FormalResearch.RiemannHypothesis.Conversation.BranchPrimePowerCutoff
import Mathlib.Analysis.Analytic.Constructions
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Analysis.Asymptotics.Lemmas

/-!
# Analytic earlier terms and exact source cutoff remainders

Batch 26, `exact-profile-descent.md`, section 4, revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The complete endpoint
polynomial gives the two stated coefficients and a literal seventh-order
remainder. In the moving scale its rational tail is real analytic, so the
entry has the stated sixth-order remainder. Every earlier original source
term is real analytic at a later prime-power entry. The original floor
inventory and von Mangoldt weights are retained.

Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchCutoffAsymptotics

open Set Filter Asymptotics
open scoped Topology
open SourcePairing BranchProfileSeams BranchCorrelationEdge BranchScaleCutoff
open BranchPrimePowerCutoff
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimatePrimeSmoothDefect

/-- Every literal endpoint coefficient is real analytic at a positive scale. -/
theorem edgeCoefficient_analyticAt {x : ℝ} (hx : 0 < x) (i : Fin 7) :
    AnalyticAt ℝ (fun A ↦ edgeCoefficient A i) x := by
  fin_cases i <;> dsimp [edgeCoefficient] <;> fun_prop (disch := positivity)

/-- The unchanged normalization is real analytic at every positive scale. -/
theorem sourceNormalization_analyticAt {x : ℝ} (hx : 0 < x) :
    AnalyticAt ℝ sourceNormalization x := by
  unfold sourceNormalization
  fun_prop (disch := positivity)

/-- The complete untruncated moving-scale tail is real analytic at positive scales. -/
theorem cutoffTail_analyticAt_of_pos {x : ℝ} (w a : ℝ) (hx : 0 < x) :
    AnalyticAt ℝ (cutoffTail w a) x := by
  have hc (i : Fin 7) := edgeCoefficient_analyticAt hx i
  have hn := sourceNormalization_analyticAt hx
  have hz : 0 < sourceNormalization x := by unfold sourceNormalization; positivity
  unfold cutoffTail edgeTail
  fun_prop (disch := positivity)

/-- After entry the actual fixed-lag term agrees locally with its analytic rational expression. -/
theorem singleLagTerm_analyticAt_of_lt {a x : ℝ} (w : ℝ)
    (ha : 0 < a) (hax : a < x) : AnalyticAt ℝ (singleLagTerm w a) x := by
  have hp : AnalyticAt ℝ (fun A : ℝ ↦ (A - a) ^ 5) x := by fun_prop
  apply (hp.mul (cutoffTail_analyticAt_of_pos w a (ha.trans hax))).congr
  filter_upwards [Ioi_mem_nhds hax] with A hA
  exact (singleLagTerm_above w ha hA.le).symm

/-- Before its entry the actual fixed-lag term is locally the analytic zero function. -/
theorem singleLagTerm_analyticAt_before {a x : ℝ} (w : ℝ)
    (hx : 0 < x) (hxa : x < a) : AnalyticAt ℝ (singleLagTerm w a) x := by
  have hz : AnalyticAt ℝ (fun _ : ℝ ↦ (0 : ℝ)) x := analyticAt_const
  apply hz.congr
  filter_upwards [Ioo_mem_nhds hx hxa] with A hA
  exact (singleLagTerm_zero_below w hA.1 hA.2.le).symm

/-- Every original summand is real analytic at positive scales strictly before entry. -/
theorem primePowerTerm_analyticAt_before {n : ℕ} {x : ℝ} (hx : 0 < x)
    (hbefore : x < Real.log n / 2) : AnalyticAt ℝ (primePowerTerm n) x := by
  rw [primePowerTerm_eq_singleLagTerm]
  exact singleLagTerm_analyticAt_before _ hx hbefore

/-- A non-prime-power index contributes the analytic zero function at every real scale. -/
theorem primePowerTerm_analyticAt_of_not_isPrimePow {n : ℕ}
    (hn : ¬ IsPrimePow n) (x : ℝ) : AnalyticAt ℝ (primePowerTerm n) x := by
  have he : primePowerTerm n = fun _ : ℝ ↦ (0 : ℝ) :=
    funext (primePowerTerm_zero_of_not_isPrimePow hn)
  rw [he]
  exact analyticAt_const

/-- Every original summand is real analytic strictly after its own entry. -/
theorem primePowerTerm_analyticAt_of_lt {n : ℕ} {x : ℝ} (hn : 2 ≤ n)
    (hx : Real.log n / 2 < x) : AnalyticAt ℝ (primePowerTerm n) x := by
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  rw [primePowerTerm_eq_singleLagTerm]
  exact singleLagTerm_analyticAt_of_lt _
    (div_pos (Real.log_pos hn1) (by norm_num)) hx

/-- All earlier literal summands, including their weights, are real analytic at a later entry. -/
theorem priorMoment_analyticAt {n : ℕ} (_hn : 2 ≤ n) :
    AnalyticAt ℝ (priorMoment n) (Real.log n / 2) := by
  unfold priorMoment
  apply Finset.analyticAt_fun_sum
  intro m hm
  obtain ⟨hne, hm⟩ := Finset.mem_erase.mp hm
  obtain ⟨hm2, hmn⟩ := Finset.mem_Icc.mp hm
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  have hlog : Real.log (m : ℝ) < Real.log (n : ℝ) :=
    Real.log_lt_log hm0 (by exact_mod_cast (by omega : m < n))
  exact primePowerTerm_analyticAt_of_lt hm2 (by linarith)

/-- The full fixed inventory is real analytic once every one of its entries is past. -/
theorem partialMoment_analyticAt_of_lt {N : ℕ} {x : ℝ} (_hN : 2 ≤ N)
    (hx : Real.log N / 2 < x) : AnalyticAt ℝ (partialMoment N) x := by
  unfold partialMoment
  apply Finset.analyticAt_fun_sum
  intro m hm
  obtain ⟨hm2, hmN⟩ := Finset.mem_Icc.mp hm
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  have hlog : Real.log (m : ℝ) ≤ Real.log (N : ℝ) :=
    Real.log_le_log hm0 (by exact_mod_cast hmN)
  exact primePowerTerm_analyticAt_of_lt hm2 (by linarith)

/-- Before the next integer entry, the complete floor sum equals a fixed inventory locally. -/
theorem closedPrimeMoment_eventually_eq_fixed_sum {N : ℕ} {x : ℝ}
    (hx : 0 < x) (hnext : x < Real.log (N + 1 : ℕ) / 2) :
    closedPrimeMoment =ᶠ[𝓝 x] partialMoment N := by
  have hs : (0 : ℝ) < (N + 1 : ℕ) := by positivity
  filter_upwards [Ioo_mem_nhds hx hnext] with A hA
  have hexp : Real.exp (2 * A) < (N + 1 : ℕ) := by
    have h := Real.exp_lt_exp.mpr
      (by linarith [hA.2] : 2 * A < Real.log (N + 1 : ℕ))
    simpa only [Real.exp_log hs] using h
  have hf : ⌊Real.exp (2 * A)⌋₊ < N + 1 :=
    (Nat.floor_lt (Real.exp_pos (2 * A)).le).mpr hexp
  exact closedPrimeMoment_eq_fixed_sum hA.1 (by omega)

/-- Between consecutive integer entries the complete original source is real analytic. -/
theorem closedPrimeMoment_analyticAt_between {N : ℕ} {x : ℝ} (hN : 2 ≤ N)
    (hprev : Real.log N / 2 < x) (hnext : x < Real.log (N + 1 : ℕ) / 2) :
    AnalyticAt ℝ closedPrimeMoment x := by
  have hN1 : (1 : ℝ) < N := by exact_mod_cast (by omega : 1 < N)
  have hx : 0 < x := (div_pos (Real.log_pos hN1) (by norm_num)).trans hprev
  exact (partialMoment_analyticAt_of_lt hN hprev).congr
    (closedPrimeMoment_eventually_eq_fixed_sum hx hnext).symm

/-- The full source is real analytic on the positive interval before its first entry. -/
theorem closedPrimeMoment_analyticAt_before_first {x : ℝ} (hx : 0 < x)
    (hfirst : x < Real.log 2 / 2) : AnalyticAt ℝ closedPrimeMoment x := by
  have hp : AnalyticAt ℝ (partialMoment 1) x := by
    unfold partialMoment
    rw [Finset.Icc_eq_empty_of_lt (by decide : (1 : ℕ) < 2)]
    simpa only [Finset.sum_empty] using
      (analyticAt_const : AnalyticAt ℝ (fun _ : ℝ ↦ (0 : ℝ)) x)
  exact hp.congr (closedPrimeMoment_eventually_eq_fixed_sum (N := 1) hx
    (by norm_num only [Nat.reduceAdd, Nat.cast_ofNat]; exact hfirst)).symm

/-- Integer entries that are not prime powers introduce no analytic singularity. -/
theorem closedPrimeMoment_analyticAt_nonprime_entry {n : ℕ} (hn : 2 ≤ n)
    (hnot : ¬ IsPrimePow n) : AnalyticAt ℝ closedPrimeMoment (Real.log n / 2) := by
  have he := closedPrimeMoment_eventually_eq_partial hn
  rw [partialMoment_eq_prior_add hn] at he
  exact ((priorMoment_analyticAt hn).add
    (primePowerTerm_analyticAt_of_not_isPrimePow hnot _)).congr he.symm

/-- Every literal source summand has four continuous scale derivatives at positive scales. -/
theorem primePowerTerm_contDiffAt_four_of_pos (n : ℕ) {x : ℝ} (hx : 0 < x) :
    ContDiffAt ℝ 4 (primePowerTerm n) x := by
  by_cases hn : IsPrimePow n
  · rcases lt_trichotomy x (Real.log n / 2) with hbefore | he | hafter
    · exact (primePowerTerm_analyticAt_before hx hbefore).contDiffAt
    · subst x
      exact primePowerTerm_contDiffAt_four hn
    · exact (primePowerTerm_analyticAt_of_lt hn.two_le hafter).contDiffAt
  · exact (primePowerTerm_analyticAt_of_not_isPrimePow hn x).contDiffAt

/-- The full original floor sum is C⁴ at every positive scale, including all entry points. -/
theorem closedPrimeMoment_contDiffAt_four_of_pos {x : ℝ} (hx : 0 < x) :
    ContDiffAt ℝ 4 closedPrimeMoment x := by
  let N := ⌊Real.exp (2 * x)⌋₊ + 1
  have hexp : Real.exp (2 * x) < (N + 1 : ℕ) := by
    dsimp [N]
    norm_num only [Nat.cast_add, Nat.cast_one]
    linarith [Nat.lt_floor_add_one (Real.exp (2 * x))]
  have hlog := Real.log_lt_log (Real.exp_pos (2 * x)) hexp
  rw [Real.log_exp] at hlog
  have he := closedPrimeMoment_eventually_eq_fixed_sum hx
    (by linarith : x < Real.log (N + 1 : ℕ) / 2)
  have hp : ContDiffAt ℝ 4 (partialMoment N) x := by
    unfold partialMoment
    apply ContDiffAt.sum
    intro n _hn
    exact primePowerTerm_contDiffAt_four_of_pos n hx
  exact hp.congr_of_eventuallyEq he

/-- The complete unchanged source is C⁴ on its entire positive-scale domain. -/
theorem closedPrimeMoment_contDiffOn_four : ContDiffOn ℝ 4 closedPrimeMoment (Ioi 0) := by
  intro x hx
  exact (closedPrimeMoment_contDiffAt_four_of_pos hx).contDiffWithinAt

/-- The complete remaining endpoint tail after removing its constant and linear terms. -/
def edgeRemainder (A y : ℝ) : ℝ :=
  (∑ i : Fin 7, ∑ j : Fin 7,
    if 2 ≤ i.val + j.val then
      edgeCoefficient A i * edgeCoefficient A j * overlapWeight i j *
        y ^ (i.val + j.val - 2)
    else 0) / (A * sourceNormalization A)

set_option maxHeartbeats 2000000 in
-- The literal 49-pair inventory is expanded once to retain both leading coefficients exactly.
/-- Removing the first two powers leaves an exact second-power factor of the entire tail. -/
theorem edgeTail_two_term {A : ℝ} (hA : 0 < A) (y : ℝ) :
    edgeTail A y = 6144 / (5 * A ^ 9 * sourceNormalization A) -
      4096 / (A ^ 10 * sourceNormalization A) * y + y ^ 2 * edgeRemainder A y := by
  have hz : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  unfold edgeTail edgeRemainder
  norm_num [Fin.sum_univ_succ, Fin.succ, edgeCoefficient, overlapWeight]
  field_simp [hA.ne', hz.ne']
  ring

/-- The full endpoint polynomial has exactly the two stated terms and a seventh-power remainder. -/
theorem edgeCorrelationPolynomial_two_term {A : ℝ} (hA : 0 < A) (y : ℝ) :
    edgeCorrelationPolynomial A y =
      6144 / (5 * A ^ 9 * sourceNormalization A) * y ^ 5 -
        4096 / (A ^ 10 * sourceNormalization A) * y ^ 6 + y ^ 7 * edgeRemainder A y := by
  rw [edgeCorrelationPolynomial_factor, edgeTail_two_term hA]
  ring

/-- The entire endpoint remainder is continuous as a function of the edge distance. -/
theorem edgeRemainder_continuous (A : ℝ) : Continuous (edgeRemainder A) := by
  have hc (i j : Fin 7) : Continuous (fun y : ℝ ↦
      if 2 ≤ i.val + j.val then
        edgeCoefficient A i * edgeCoefficient A j * overlapWeight i j *
          y ^ (i.val + j.val - 2)
      else 0) := by
    split_ifs <;> fun_prop
  unfold edgeRemainder
  fun_prop

/-- The exact seventh-power remainder is a genuine Big O assertion near the endpoint. -/
theorem edgeCorrelationPolynomial_isBigO_seven {A : ℝ} (hA : 0 < A) :
    (fun y ↦ edgeCorrelationPolynomial A y -
      (6144 / (5 * A ^ 9 * sourceNormalization A) * y ^ 5 -
        4096 / (A ^ 10 * sourceNormalization A) * y ^ 6)) =O[𝓝 0] (fun y : ℝ ↦ y ^ 7) := by
  have hr := ((edgeRemainder_continuous A).continuousAt (x := (0 : ℝ))).tendsto.isBigO_one ℝ
  have hp := (isBigO_refl (fun y : ℝ ↦ y ^ 7) (𝓝 0)).mul hr
  apply hp.congr
  · intro y
    rw [edgeCorrelationPolynomial_two_term hA]
    ring
  · intro y
    exact mul_one _

/-- The literal correlation has the stated O(y⁷) error from inside its support. -/
theorem actual_correlation_isBigO_seven {A : ℝ} (hA : 0 < A) :
    (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y) -
      (6144 / (5 * A ^ 9 * sourceNormalization A) * y ^ 5 -
        4096 / (A ^ 10 * sourceNormalization A) * y ^ 6)) =O[𝓝[>] 0]
          (fun y : ℝ ↦ y ^ 7) := by
  apply ((edgeCorrelationPolynomial_isBigO_seven hA).mono
    (nhdsWithin_le_nhds (s := Ioi (0 : ℝ)))).congr' _ Filter.EventuallyEq.rfl
  filter_upwards [self_mem_nhdsWithin,
    nhdsWithin_le_nhds (s := Ioi (0 : ℝ))
      (Iio_mem_nhds (by linarith : (0 : ℝ) < 2 * A))] with y hy hy2
  rw [actual_correlation_edge_polynomial hA hy.le hy2.le]

/-- At a positive entry the fixed-lag source has the stated sixth-order inward error. -/
theorem singleLagTerm_isBigO_six {a : ℝ} (w : ℝ) (ha : 0 < a) :
    (fun A ↦ singleLagTerm w a A -
      196608 * w / (5 * a ^ 9 * sourceNormalization a) * (A - a) ^ 5) =O[𝓝[>] a]
        (fun A : ℝ ↦ (A - a) ^ 6) := by
  have ht := (cutoffTail_analyticAt_of_pos w a ha).differentiableAt.isBigO_sub
  have hp := (isBigO_refl (fun A : ℝ ↦ (A - a) ^ 5) (𝓝 a)).mul ht
  apply (hp.mono (nhdsWithin_le_nhds (s := Ioi a))).congr'
  · filter_upwards [self_mem_nhdsWithin] with A hA
    rw [singleLagTerm_above w ha hA.le, cutoffTail_at_entry w ha]
    ring
  · exact Filter.Eventually.of_forall (fun A ↦ by ring)

/-- In the source note's h-coordinate the actual entry error is O(h⁶) as h decreases to zero. -/
theorem singleLagTerm_shift_isBigO_six {a : ℝ} (w : ℝ) (ha : 0 < a) :
    (fun h ↦ singleLagTerm w a (a + h) -
      196608 * w / (5 * a ^ 9 * sourceNormalization a) * h ^ 5) =O[𝓝[>] 0]
        (fun h : ℝ ↦ h ^ 6) := by
  have ht := (cutoffTail_analyticAt_of_pos w a ha).differentiableAt.isBigO_sub
  have hc : Tendsto (fun h : ℝ ↦ a + h) (𝓝 0) (𝓝 a) := by
    simpa only [add_zero] using
      (show ContinuousAt (fun h : ℝ ↦ a + h) 0 by fun_prop).tendsto
  have hs := ht.comp_tendsto hc
  have hp := (isBigO_refl (fun h : ℝ ↦ h ^ 5) (𝓝 0)).mul hs
  apply (hp.mono (nhdsWithin_le_nhds (s := Ioi (0 : ℝ)))).congr'
  · filter_upwards [self_mem_nhdsWithin] with h hh
    change 0 < h at hh
    dsimp only [Function.comp_apply]
    rw [singleLagTerm_above w ha (by linarith), cutoffTail_at_entry w ha]
    simp only [add_sub_cancel_left]
    ring
  · exact Filter.Eventually.of_forall (fun h ↦ by dsimp only [Function.comp_apply]; ring)

/-- Every literal prime-power entry has exactly the written coefficient and O(h⁶) error. -/
theorem primePowerTerm_shift_isBigO_six {n : ℕ} (hn : IsPrimePow n) :
    (fun h ↦ primePowerTerm n (Real.log n / 2 + h) -
      196608 * (ArithmeticFunction.vonMangoldt n / Real.sqrt n) /
        (5 * (Real.log n / 2) ^ 9 * sourceNormalization (Real.log n / 2)) * h ^ 5)
      =O[𝓝[>] 0] (fun h : ℝ ↦ h ^ 6) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  rw [primePowerTerm_eq_singleLagTerm]
  exact singleLagTerm_shift_isBigO_six _ (div_pos (Real.log_pos hn1) (by norm_num))

end FormalResearch.RiemannHypothesis.BranchCutoffAsymptotics
