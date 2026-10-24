# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchPrimePowerCutoff.Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a1dc0eea28aba23e01af59d227a0209de44fa88` · SHA-256 `7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchScaleCutoff
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect

/-!
# Fifth-order cutoff jump of the complete original prime-power moment

Batch 26, `exact-profile-descent.md`, section 4, source revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The literal natural floor is
retained. Near the entry of n the complete source equals the fixed sum
through n; omitted indices have a proved support zero. Earlier terms have
five continuous derivatives and contribute equally to the two fifth jets.
Thus the complete source is C⁴ there, and its exact fifth-order jump is
the positive price of the newly entering prime power.

Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchPrimePowerCutoff

open Set Filter MeasureTheory
open scoped Topology
open SourcePairing BranchScaleCutoff
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimatePrimeSmoothDefect

/-- A fixed finite initial segment of the original summands. -/
def partialMoment (N : ℕ) (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, primePowerTerm n A

/-- The same initial segment with exactly the newly entering index erased. -/
def priorMoment (n : ℕ) (A : ℝ) : ℝ :=
  ∑ m ∈ (Finset.Icc 2 n).erase n, primePowerTerm m A

/-- The source's exponential weight is exactly its literal inverse square-root weight. -/
theorem primePowerTerm_eq_source_coefficient {n : ℕ} (hn : 0 < n) (A : ℝ) :
    primePowerTerm n A = ArithmeticFunction.vonMangoldt n *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  unfold primePowerTerm exponentialTest
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn0, div_eq_mul_inv]
  ring

/-- The full original source equals its own literal closed floor sum of actual summands. -/
theorem closedPrimeMoment_eq_partialMoment (A : ℝ) :
    closedPrimeMoment A = partialMoment ⌊Real.exp (2 * A)⌋₊ A := by
  unfold closedPrimeMoment partialMoment primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  exact (primePowerTerm_eq_source_coefficient
    (by have h := (Finset.mem_Icc.mp hn).1; omega) A).symm

/-- Extending the actual floor sum is exact when every added index has its support zero. -/
theorem closedPrimeMoment_eq_fixed_sum {A : ℝ} {N : ℕ} (hA : 0 < A)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) : closedPrimeMoment A = partialMoment N A := by
  rw [closedPrimeMoment_eq_partialMoment]
  unfold partialMoment
  apply Finset.sum_subset
  · intro n hn
    obtain ⟨hn2, hnf⟩ := Finset.mem_Icc.mp hn
    exact Finset.mem_Icc.mpr ⟨hn2, hnf.trans hN⟩
  · intro n hn hnot
    have hn2 := (Finset.mem_Icc.mp hn).1
    have hnf : ⌊Real.exp (2 * A)⌋₊ < n := by
      by_contra h
      exact hnot (Finset.mem_Icc.mpr ⟨hn2, le_of_not_gt h⟩)
    have hexp : Real.exp (2 * A) < (n : ℝ) := Nat.lt_of_floor_lt hnf
    have hlog : 2 * A < Real.log (n : ℝ) := by
      have h := Real.log_lt_log (Real.exp_pos (2 * A)) hexp
      simpa only [Real.log_exp] using h
    unfold primePowerTerm
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n) hA
      (hlog.le.trans (le_abs_self _)), mul_zero]

/-- A fixed finite inventory is the complete source on a neighborhood of its entry point. -/
theorem closedPrimeMoment_eventually_eq_partial {n : ℕ} (hn : 2 ≤ n) :
    closedPrimeMoment =ᶠ[𝓝 (Real.log n / 2)] partialMoment n := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have hs0 : (0 : ℝ) < (n + 1 : ℕ) := by positivity
  have hlog : Real.log (n : ℝ) < Real.log (n + 1 : ℕ) :=
    Real.log_lt_log hn0 (by exact_mod_cast Nat.lt_succ_self n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  have hnext : Real.log (n : ℝ) / 2 < Real.log (n + 1 : ℕ) / 2 := by linarith
  filter_upwards [Ioo_mem_nhds ha hnext] with A hA
  have hexp : Real.exp (2 * A) < (n + 1 : ℕ) := by
    have h := Real.exp_lt_exp.mpr (by linarith [hA.2] : 2 * A < Real.log (n + 1 : ℕ))
    simpa only [Real.exp_log hs0] using h
  have hf : ⌊Real.exp (2 * A)⌋₊ < n + 1 :=
    (Nat.floor_lt (Real.exp_pos (2 * A)).le).mpr hexp
  exact closedPrimeMoment_eq_fixed_sum (N := n) hA.1 (by omega)

/-- Erasing the entering index preserves every earlier contribution and its sign. -/
theorem partialMoment_eq_prior_add {n : ℕ} (hn : 2 ≤ n) :
    partialMoment n = fun A ↦ priorMoment n A + primePowerTerm n A := by
  funext A
  unfold partialMoment priorMoment
  exact (Finset.sum_erase_add (Finset.Icc 2 n) (fun m ↦ primePowerTerm m A)
    (Finset.mem_Icc.mpr ⟨hn, le_rfl⟩)).symm

/-- Every earlier source term is already past its own support cutoff at this entry. -/
theorem priorMoment_contDiffAt_five {n : ℕ} (_hn : 2 ≤ n) :
    ContDiffAt ℝ 5 (priorMoment n) (Real.log n / 2) := by
  unfold priorMoment
  apply ContDiffAt.sum
  intro m hm
  obtain ⟨hne, hm⟩ := Finset.mem_erase.mp hm
  obtain ⟨hm2, hmn⟩ := Finset.mem_Icc.mp hm
  have hlt : m < n := by omega
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  have hm1 : (1 : ℝ) < m := by exact_mod_cast (by omega : 1 < m)
  have ha : 0 < Real.log (m : ℝ) / 2 := div_pos (Real.log_pos hm1) (by norm_num)
  have hlog : Real.log (m : ℝ) < Real.log (n : ℝ) :=
    Real.log_lt_log hm0 (by exact_mod_cast hlt)
  rw [primePowerTerm_eq_singleLagTerm]
  exact singleLagTerm_contDiffAt_five_of_lt _ ha (by linarith)

private theorem primePowerTerm_inward_contDiffWithin_five {n : ℕ} (hn : IsPrimePow n) :
    ContDiffWithinAt ℝ 5 (primePowerTerm n)
      (Icc (Real.log n / 2) (Real.log n)) (Real.log n / 2) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  rw [primePowerTerm_eq_singleLagTerm]
  let a := Real.log (n : ℝ) / 2
  let w := ArithmeticFunction.vonMangoldt n / Real.sqrt n
  have hp0 : ContDiffAt ℝ 5 (fun A : ℝ ↦ (A - a) ^ 5) a := by fun_prop
  have hp := hp0.mul (cutoffTail_contDiffAt w ha)
  have he (A : ℝ) (hA : A ∈ Icc a (Real.log n)) :
      singleLagTerm w a A = (A - a) ^ 5 * cutoffTail w a A :=
    singleLagTerm_above w ha hA.1
  exact hp.contDiffWithinAt.congr_of_mem he (by constructor <;> dsimp [a] <;> linarith)

private theorem primePowerTerm_outward_contDiffWithin_five {n : ℕ} (hn : IsPrimePow n) :
    ContDiffWithinAt ℝ 5 (primePowerTerm n)
      (Icc (Real.log n / 2 / 2) (Real.log n / 2)) (Real.log n / 2) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  rw [primePowerTerm_eq_singleLagTerm]
  have hc : ContDiffWithinAt ℝ 5 (fun _ : ℝ ↦ (0 : ℝ))
      (Icc (Real.log n / 2 / 2) (Real.log n / 2)) (Real.log n / 2) :=
    contDiffWithinAt_const
  apply hc.congr_of_mem
  · intro A hA
    exact singleLagTerm_zero_below _ (by linarith [hA.1]) hA.2
  · constructor <;> linarith

/-- The complete original closed prime-power source is C⁴ at every prime-power entry. -/
theorem closedPrimeMoment_contDiffAt_four {n : ℕ} (hn : IsPrimePow n) :
    ContDiffAt ℝ 4 closedPrimeMoment (Real.log n / 2) := by
  have hp : ContDiffAt ℝ 4 (partialMoment n) (Real.log n / 2) := by
    rw [partialMoment_eq_prior_add hn.two_le]
    exact ((priorMoment_contDiffAt_five hn.two_le).of_le (by norm_num)).add
      (primePowerTerm_contDiffAt_four hn)
  exact hp.congr_of_eventuallyEq (closedPrimeMoment_eventually_eq_partial hn.two_le)

/-- The complete source's inward fifth jet is its earlier jet plus the exact entry price. -/
theorem closedPrimeMoment_inward_fifth_jet {n : ℕ} (hn : IsPrimePow n) :
    iteratedDerivWithin 5 closedPrimeMoment
        (Icc (Real.log n / 2) (Real.log n)) (Real.log n / 2) =
      iteratedDeriv 5 (priorMoment n) (Real.log n / 2) +
        4718592 * (ArithmeticFunction.vonMangoldt n / Real.sqrt n) /
          ((Real.log n / 2) ^ 9 * sourceNormalization (Real.log n / 2)) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  have he := closedPrimeMoment_eventually_eq_partial hn2
  rw [partialMoment_eq_prior_add hn2] at he
  have hpoint := he.eq_of_nhds
  have hw := (he.filter_mono (nhdsWithin_le_nhds
    (s := Icc (Real.log n / 2) (Real.log n)))).iteratedDerivWithin_eq (n := 5) hpoint
  have hm : Real.log (n : ℝ) / 2 ∈ Icc (Real.log n / 2) (Real.log n) :=
    ⟨le_rfl, by linarith⟩
  have hu := uniqueDiffOn_Icc (by linarith : Real.log (n : ℝ) / 2 < Real.log n)
  rw [hw, iteratedDerivWithin_fun_add hm hu
    (priorMoment_contDiffAt_five hn2).contDiffWithinAt
    (primePowerTerm_inward_contDiffWithin_five hn),
    iteratedDerivWithin_eq_iteratedDeriv hu (priorMoment_contDiffAt_five hn2) hm,
    primePowerTerm_inward_fifth_jet hn]

/-- The complete source's outward fifth jet is exactly its earlier jet. -/
theorem closedPrimeMoment_outward_fifth_jet {n : ℕ} (hn : IsPrimePow n) :
    iteratedDerivWithin 5 closedPrimeMoment
        (Icc (Real.log n / 2 / 2) (Real.log n / 2)) (Real.log n / 2) =
      iteratedDeriv 5 (priorMoment n) (Real.log n / 2) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  have he := closedPrimeMoment_eventually_eq_partial hn2
  rw [partialMoment_eq_prior_add hn2] at he
  have hw := (he.filter_mono (nhdsWithin_le_nhds
    (s := Icc (Real.log n / 2 / 2) (Real.log n / 2)))).iteratedDerivWithin_eq
      (n := 5) he.eq_of_nhds
  have hm : Real.log (n : ℝ) / 2 ∈ Icc (Real.log n / 2 / 2) (Real.log n / 2) :=
    ⟨by linarith, le_rfl⟩
  have hu := uniqueDiffOn_Icc (by linarith : Real.log (n : ℝ) / 2 / 2 < Real.log n / 2)
  rw [hw, iteratedDerivWithin_fun_add hm hu
    (priorMoment_contDiffAt_five hn2).contDiffWithinAt
    (primePowerTerm_outward_contDiffWithin_five hn),
    iteratedDerivWithin_eq_iteratedDeriv hu (priorMoment_contDiffAt_five hn2) hm]
  have hz := singleLagTerm_outward_fifth_jet
    (ArithmeticFunction.vonMangoldt n / Real.sqrt n) ha
  rw [← primePowerTerm_eq_singleLagTerm n] at hz
  rw [hz, add_zero]

/-- Both full-source jets retain every earlier term, so their difference is the exact fifth jump. -/
theorem closedPrimeMoment_fifth_jump {n : ℕ} (hn : IsPrimePow n) :
    iteratedDerivWithin 5 closedPrimeMoment
        (Icc (Real.log n / 2) (Real.log n)) (Real.log n / 2) -
      iteratedDerivWithin 5 closedPrimeMoment
        (Icc (Real.log n / 2 / 2) (Real.log n / 2)) (Real.log n / 2) =
      4718592 * (ArithmeticFunction.vonMangoldt n / Real.sqrt n) /
        ((Real.log n / 2) ^ 9 * sourceNormalization (Real.log n / 2)) := by
  rw [closedPrimeMoment_inward_fifth_jet hn, closedPrimeMoment_outward_fifth_jet hn]
  ring

/-- Every literal prime-power entry forces a positive fifth-order jump of the complete source. -/
theorem closedPrimeMoment_fifth_jump_pos {n : ℕ} (hn : IsPrimePow n) :
    0 < iteratedDerivWithin 5 closedPrimeMoment
        (Icc (Real.log n / 2) (Real.log n)) (Real.log n / 2) -
      iteratedDerivWithin 5 closedPrimeMoment
        (Icc (Real.log n / 2 / 2) (Real.log n / 2)) (Real.log n / 2) := by
  rw [closedPrimeMoment_fifth_jump hn, ← primePowerTerm_inward_fifth_jet hn]
  exact primePowerTerm_inward_fifth_jet_pos hn

/-- The full original source fails C⁵ at every prime-power entry. -/
theorem closedPrimeMoment_not_contDiffAt_five {n : ℕ} (hn : IsPrimePow n) :
    ¬ ContDiffAt ℝ 5 closedPrimeMoment (Real.log n / 2) := by
  intro hc
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  have hp := closedPrimeMoment_fifth_jump_pos hn
  rw [iteratedDerivWithin_eq_iteratedDeriv
    (uniqueDiffOn_Icc (by linarith : Real.log (n : ℝ) / 2 < Real.log n)) hc
      (show Real.log (n : ℝ) / 2 ∈ Icc (Real.log n / 2) (Real.log n) by
        constructor <;> linarith),
    iteratedDerivWithin_eq_iteratedDeriv
    (uniqueDiffOn_Icc (by linarith : Real.log (n : ℝ) / 2 / 2 < Real.log n / 2)) hc
      (show Real.log (n : ℝ) / 2 ∈ Icc (Real.log n / 2 / 2) (Real.log n / 2) by
        constructor <;> linarith), sub_self] at hp
  exact (lt_irrefl (0 : ℝ)) hp

end FormalResearch.RiemannHypothesis.BranchPrimePowerCutoff
```
