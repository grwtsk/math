/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineHeadRemoval
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPrimePoleOutput
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualParseval

/-!
# The physical high residual of a finite bordered odd trial

The output uses the actual pointwise gamma jump integral, both prime
translations with their signed weights, the physical shift and the sinh
pole column. Pairing with a source sine gives the literal augmented row.
Removing the exact low sine projection leaves the whole high output.
Parseval then pays the complete norm, including every remote coefficient.

This is a result for the real odd literal integral form and finite sine
trials. The full comparison with the completed zeta source and outward
numeric enclosures for the exact finite rows are separate obligations.
Independent analytical review remains pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddConcreteResidual

open OddRootProjection OddSineForm OddShiftEnergy OddSineParseval OddGammaOutput
open OddSineHeadRemoval OddPrimePoleOutput OddResidualSourceComparison
open OddResidualParseval OddResidualMajorant OddOutputTrace LowSchur

/-- The physical output of the finite sine trial and retained scalar port. -/
def borderedTrialOutput {M : ℕ} (T β : ℝ) (x : Fin M → ℝ) (a : ℝ) (t : ℝ) : ℝ :=
  (Icc (-T) T).indicator (gammaOutput (finiteSine T x)) t +
    primePoleOutput T β (finiteSine T x) a t

theorem borderedTrialOutput_memLp {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : Fin M → ℝ) (a : ℝ) : MemLp (borderedTrialOutput T β x a) 2 volume := by
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  exact (memLp_window_gammaOutput T hK (norm_finiteSine_le T hT x)).add
    (memLp_primePoleOutput T β (finiteSine_memLp T x) a)

/-- The output represents the literal shifted physical form and pole
coupling against any supported measurable L² test. -/
theorem integral_mul_borderedTrialOutput {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : Fin M → ℝ) (a : ℝ) {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    (∫ t : ℝ, g t * borderedTrialOutput T β x a t) =
      (∫ r in Ioi (0 : ℝ), parityKernel 0 r *
        (∫ t : ℝ, (g (t+r) - g t) * (finiteSine T x (t+r) - finiteSine T x t))) +
      ((gammaConstant 1 0 - β) * (∫ t : ℝ, g t * finiteSine T x t) -
        (∫ t : ℝ, g t * primeOutput T (finiteSine T x) t) +
        a * (∫ t : ℝ, g t * Real.sinh (t / 2))) := by
  have hgr : IntegrableOn g (Icc (-T) T) := (hg.restrict _).integrable (by norm_num)
  have hgi : Integrable g := by
    apply ((integrable_indicator_iff measurableSet_Icc).mpr hgr).congr
    filter_upwards [hgs] with t ht
    by_cases hm : t ∈ Icc (-T) T <;> simp [hm, ht]
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  have hgγ : Integrable (fun t => g t * ((Icc (-T) T).indicator (gammaOutput (finiteSine T x))) t) :=
    hg.integrable_mul (memLp_window_gammaOutput T hK (norm_finiteSine_le T hT x))
  have hgP : Integrable (fun t => g t * primePoleOutput T β (finiteSine T x) a t) :=
    hg.integrable_mul (memLp_primePoleOutput T β (finiteSine_memLp T x) a)
  unfold borderedTrialOutput
  simp only [mul_add]
  rw [integral_add hgγ hgP, window_gammaOutput_finiteSine_pair T hT x hgi hgm hgs,
    integral_mul_primePoleOutput T β (finiteSine_memLp T x) hg hgs a]

theorem borderedTrialOutput_odd {M : ℕ} (T β : ℝ) (x : Fin M → ℝ) (a : ℝ) :
    Function.Odd (borderedTrialOutput T β x a) := by
  intro t
  have hmem : -t ∈ Icc (-T) T ↔ t ∈ Icc (-T) T := by
    simp [mem_Icc, neg_le, neg_le_neg_iff, and_comm]
  unfold borderedTrialOutput
  rw [primePoleOutput_odd T β (finiteSine_odd T x) a t]
  by_cases ht : t ∈ Icc (-T) T
  · rw [indicator_of_mem ht, indicator_of_mem (hmem.mpr ht), gammaOutput_odd (finiteSine_odd T x) t]
    ring
  · rw [indicator_of_notMem ht, indicator_of_notMem (fun h => ht (hmem.mp h))]
    simp

theorem borderedTrialOutput_support {M : ℕ} (T β : ℝ) (x : Fin M → ℝ) (a : ℝ)
    {t : ℝ} (ht : t ∉ Icc (-T) T) : borderedTrialOutput T β x a t = 0 := by
  rw [borderedTrialOutput, indicator_of_notMem ht, primePoleOutput_eq_zero_of_not_mem T β _ a t ht, add_zero]

private theorem sineCoefficient_add (T : ℝ) (n : ℕ) {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    sineCoefficient T (fun t => f t + g t) n = sineCoefficient T f n + sineCoefficient T g n := by
  have hs := memLp_zeroExtendedSine T n
  unfold sineCoefficient
  simp only [mul_add]
  exact integral_add (hs.integrable_mul hf) (hs.integrable_mul hg)

private theorem sineCoefficient_weighted_sum {M : ℕ} (T : ℝ) (n : ℕ)
    (x : Fin M → ℝ) {f : Fin M → ℝ → ℝ} (hf : ∀ i, MemLp (f i) 2 volume) :
    sineCoefficient T (fun t => ∑ i, x i * f i t) n = ∑ i, x i * sineCoefficient T (f i) n := by
  let s := zeroExtendedSine T n
  have hs := memLp_zeroExtendedSine T n
  have hint (i : Fin M) : Integrable (fun t : ℝ => x i * (s t * f i t)) :=
    (hs.integrable_mul (hf i)).const_mul (x i)
  calc
    _ = ∫ t : ℝ, ∑ i : Fin M, x i * (s t * f i t) := by
      unfold sineCoefficient
      apply integral_congr_ae
      filter_upwards [] with t
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      dsimp [s]
      ring
    _ = _ := by rw [integral_finsetSum _ (fun i _ => hint i)]; simp only [s, integral_const_mul, sineCoefficient]

private def coreSineOutput (T β : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  (Icc (-T) T).indicator (gammaOutput (zeroExtendedSine T n)) t +
    primePoleOutput T β (zeroExtendedSine T n) 0 t

private theorem coreSineOutput_memLp (T : ℝ) (hT : 0 < T) (β : ℝ) (n : ℕ) :
    MemLp (coreSineOutput T β n) 2 volume :=
  (gammaSineOutput_memLp T hT n).add (memLp_primePoleOutput T β (memLp_zeroExtendedSine T n) 0)

private theorem sineCoefficient_coreSineOutput (T : ℝ) (hT : 0 < T) (β : ℝ) (m n : ℕ) :
    sineCoefficient T (coreSineOutput T β n) (m+1) =
      literalCoreEntry T (m+1) n - (if m+1 = n then β else 0) := by
  change sineCoefficient T (fun t =>
    (Icc (-T) T).indicator (gammaOutput (zeroExtendedSine T n)) t +
      primePoleOutput T β (zeroExtendedSine T n) 0 t) (m+1) = _
  rw [sineCoefficient_add T _ (gammaSineOutput_memLp T hT n)
    (memLp_primePoleOutput T β (memLp_zeroExtendedSine T n) 0),
    sineCoefficient_primePoleOutput_sine T hT, zero_mul, add_zero]
  have hgamma := gammaSineOutput_pair T hT (m+1) n
  change sineCoefficient T ((Icc (-T) T).indicator (gammaOutput (zeroExtendedSine T n))) (m+1) = _ at hgamma
  rw [hgamma]
  unfold literalCoreEntry sineArchimedeanEntry
  have hcorr : (∫ t : ℝ, zeroExtendedSine T (m+1) t * zeroExtendedSine T n t) =
    sineCorrelation T (m+1) n 0 := by simp [sineCorrelation]
  rw [hcorr]
  by_cases hmn : m+1 = n
  · rw [← hmn, sineCorrelation_self_zero T hT (by omega)]
    simp
    ring
  · rw [sineCorrelation_zero_shift T hT hmn, ite_eq_right hmn]
    ring

private theorem sum_fin_succ_eq_sum_Icc {M : ℕ} (f : ℕ → ℝ) :
    (∑ i : Fin M, f (i.val+1)) = ∑ n ∈ Finset.Icc 1 M, f n := by
  apply Finset.sum_bij (fun i _ => i.val+1)
  · intro i _
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro i _ j _ h
    exact Fin.ext (by omega)
  · intro j hj
    have hj' := Finset.mem_Icc.mp hj
    refine ⟨⟨j-1, by omega⟩, Finset.mem_univ _, ?_⟩
    change j - 1 + 1 = j
    omega
  · intro i _
    rfl

theorem sineCoefficient_borderedTrialOutput {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (a : ℝ) (m : ℕ) :
    sineCoefficient T (borderedTrialOutput T β (fun i : Fin M => x (i.val+1)) a) (m+1) =
      literalAugmentedRow M T x a β (m+1) := by
  let y : Fin M → ℝ := fun i => x (i.val+1)
  have houtput : borderedTrialOutput T β y a =
      fun t => (∑ i : Fin M, y i * coreSineOutput T β (i.val+1) t) +
        primePoleOutput T β (fun _ => 0) a t := by
    funext t
    unfold borderedTrialOutput
    rw [primePoleOutput_finiteSine]
    by_cases ht : t ∈ Icc (-T) T
    · simp only [coreSineOutput, indicator_of_mem ht, gammaOutput_finiteSine T hT,
        mul_add, Finset.sum_add_distrib]
      ring
    · simp only [coreSineOutput, indicator_of_notMem ht, zero_add]
  change sineCoefficient T (borderedTrialOutput T β y a) (m+1) = _
  rw [houtput, sineCoefficient_add T _
      (memLp_finsetSum _ (fun i _ => (coreSineOutput_memLp T hT β (i.val+1)).const_mul (y i)))
      (memLp_primePoleOutput T β (MemLp.zero' (μ := volume) (p := 2)) a),
    sineCoefficient_weighted_sum T _ y (fun i => coreSineOutput_memLp T hT β (i.val+1)),
    sineCoefficient_primePoleOutput_zero T hT]
  simp_rw [sineCoefficient_coreSineOutput T hT]
  unfold y literalAugmentedRow
  rw [sum_fin_succ_eq_sum_Icc (fun n => x n * (literalCoreEntry T (m+1) n -
    (if m+1 = n then β else 0))), literalPoleEntry_eq T hT (by omega)]
  ring

/-- Whole-window squared L² bound for the concrete high part of the
finite bordered trial output. -/
theorem borderedTrialHighResidual_energy_le {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s : ℝ) (hs : 0 < s) :
    (∫ t : ℝ, ‖removeSineHead T N
      (borderedTrialOutput T β (fun i : Fin M => x (i.val+1)) a) t‖ ^ 2) ≤
      (∑ n ∈ Finset.range (L-N), (literalAugmentedRow M T x a β (N+1+n)) ^ 2) +
        completeRemoteAllowance M L J T x a s := by
  let output := borderedTrialOutput T β (fun i : Fin M => x (i.val+1)) a
  have hLp : MemLp output 2 volume := borderedTrialOutput_memLp T hT β _ a
  apply highResidual_energy_le hNM hML hL hLJ T hT x a β s hs
  · exact removeSineHead_memLp T N hLp
  · exact removeSineHead_odd T N (Filter.Eventually.of_forall (borderedTrialOutput_odd T β _ a))
  · exact removeSineHead_support T N
      (Filter.Eventually.of_forall (fun _ ht => borderedTrialOutput_support T β _ a ht))
  · intro n hn
    exact sineCoefficient_removeSineHead_low T hT hLp hn
  · intro n
    rw [sineCoefficient_removeSineHead_high T hT hLp (by omega)]
    simpa only [show N+1+n = (N+n)+1 by omega] using
      sineCoefficient_borderedTrialOutput T hT β x a (N+n) (M := M)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddConcreteResidual
