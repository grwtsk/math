import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceIntegral
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn

open Set Filter
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
noncomputable section

example (K : Set ℂ) (hK : IsCompact K) (hzero : ∀ s ∈ K, s ≠ 0) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ k ≤ 8, ∀ s ∈ K, ‖laplaceKernel k s‖ ≤ B := by
  have hk (k : Fin 9) : ∃ b : ℝ, ∀ s ∈ K, ‖laplaceKernel k s‖ ≤ b := by
    exact hK.exists_bound_of_continuousOn
      (fun s hs ↦ (laplaceKernel_analytic k s (hzero s hs)).continuousAt.continuousWithinAt)
  choose b hb using hk
  refine ⟨∑ k : Fin 9, |b k|, Finset.sum_nonneg (fun k _ ↦ abs_nonneg _), ?_⟩
  intro k hk s hs
  let j : Fin 9 := ⟨k, by omega⟩
  exact (hb j s hs).trans ((le_abs_self _).trans
    (Finset.single_le_sum (fun i _ ↦ abs_nonneg (b i)) (Finset.mem_univ j)))

example (K : Set ℂ) (hK : IsCompact K) : ∃ M : ℝ, 0 ≤ M ∧ ∀ s ∈ K, ‖s‖ ≤ M := by
  obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn (f := id) continuousOn_id
  exact ⟨max M 0, le_max_right _ _, fun s hs ↦ (hM s hs).trans (le_max_left _ _)⟩

example {ι : Type*} (f : ι → ℂ → ℂ) (K : Set ℂ) (hK : IsCompact K)
    (hf : ∀ i, ContinuousOn (f i) K) (hKne : K.Nonempty) :
    ∀ i, 0 ≤ sSup ((fun s ↦ ‖f i s‖) '' K) := by
  intro i
  obtain ⟨s, hs⟩ := hKne
  exact (norm_nonneg _).trans (le_csSup (hK.bddAbove_image (hf i).norm)
    (mem_image_of_mem _ hs))
