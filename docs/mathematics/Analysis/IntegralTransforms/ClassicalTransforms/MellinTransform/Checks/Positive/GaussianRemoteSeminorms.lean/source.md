# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianRemoteSeminorms

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f3cf24d22933adf32159dd110e57853d32bbe75` · SHA-256 `f28eb9ef42a1e20a36c90c41ef5e1a37db521a26059e140794357ade4f5e5973`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Actual weighted/remote consumers and a complete omitted-cutoff obstruction.
OpenAI/Mathlib Apache-2.0 terms and author notices remain retained in the library. -/
import GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms
namespace GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms.Checks
noncomputable section
open scoped SchwartzMap
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation

theorem weighted_generic (S : Finset (ℕ×ℕ)) (k s : ℝ) (hs : 0<s) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,
      Summable (fun j : ℕ=>((2:ℝ)^j)^s*gaussianWeightedSeminorm S k Z hZ j) ∧
      (∑'j : ℕ,((2:ℝ)^j)^s*gaussianWeightedSeminorm S k Z hZ j)≤C*Z^s :=
  gaussianWeightedSeminorm_summed S k s hs

theorem remote_generic (S : Finset (ℕ×ℕ)) (N : ℕ) (s : ℝ) (hs : 0<s) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀A : ℝ,1≤A→
      Summable (gaussianRemoteSeminorm S s Z hZ A) ∧
      (∑'j : ℕ,gaussianRemoteSeminorm S s Z hZ A j)≤C*Z^s/A^N :=
  gaussianRemoteSeminorm_summed S N s hs

theorem remote_values_generic (N : ℕ) (s : ℝ) (hs : 0<s) :
    ∃ C : ℝ,0<C ∧ ∀Z : ℝ,0<Z→∀A : ℝ,1≤A→∀y : ℝ,
      Summable (gaussianRemoteValue s Z A y) ∧
      (∑'j : ℕ,gaussianRemoteValue s Z A y j)≤C*Z^s/A^N :=
  gaussianRemoteValue_summed N s hs

theorem remote_values_one : Summable (gaussianRemoteValue 1 1 2 (3/4)) := by
  obtain ⟨C,hC,h⟩ := gaussianRemoteValue_summed 1 1 (by norm_num)
  exact (h 1 (by norm_num) 2 (by norm_num) (3/4)).1

theorem gaussian_positive_scale_nonzero : gaussianDyadicProfile 1 0 (3/4) ≠ 0 := by
  have ha : dyadicAnnulus (3/4) ≠ 0 := by
    have hpos : 0 < (dyadicAnnulus (3/4)).re := by
      change 0 < Real.smoothTransition (2-(3/4:ℝ))-Real.smoothTransition (2-2*(3/4:ℝ))
      rw [Real.smoothTransition.one_of_one_le (by norm_num : (1:ℝ) ≤ 2-3/4)]
      have h := Real.smoothTransition.lt_one_of_lt_one (by norm_num : (2-2*(3/4:ℝ)) < 1)
      linarith
    intro hz
    rw [hz, Complex.zero_re] at hpos
    norm_num at hpos
  have hc : gaussianMellinCoefficient ≠ 0 := by
    intro hz
    have h := gaussianMellinCoefficient_normalizes
    rw [hz,zero_mul] at h
    norm_num at h
  have hp : gaussianMellinProfile (3/4) ≠ 0 := by
    change gaussianMellinCoefficient * Complex.exp _ ≠ 0
    exact mul_ne_zero hc (Complex.exp_ne_zero _)
  unfold gaussianDyadicProfile
  norm_num only [pow_zero,one_mul,div_one]
  exact div_ne_zero (mul_ne_zero ha hp)
    (Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 3/4)).ne')

theorem remote_zero_cutoff_eq (s Z y : ℝ) (hZ : 0<Z) :
    gaussianRemoteValue s Z 0 y = (fun j : ℕ=>((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖) := by
  funext j
  unfold gaussianRemoteValue
  rw [if_pos (Or.inr (by positivity : (0:ℝ)≤2^j/Z))]

theorem remote_zero_cutoff_summable : Summable (gaussianRemoteValue 1 1 0 (3/4)) := by
  rw [remote_zero_cutoff_eq 1 1 (3/4) (by norm_num)]
  obtain ⟨C,hC,h⟩ := gaussianDyadicProfile_values_summed 1 (by norm_num)
  exact (h 1 (by norm_num) (3/4)).1

theorem remote_zero_cutoff_term_pos : 0<gaussianRemoteValue 1 1 0 (3/4) 0 := by
  rw [remote_zero_cutoff_eq 1 1 (3/4) (by norm_num)]
  simpa only [pow_zero,Real.one_rpow,one_mul] using norm_pos_iff.mpr gaussian_positive_scale_nonzero

theorem remote_zero_cutoff_sum_pos : 0<∑'j : ℕ,gaussianRemoteValue 1 1 0 (3/4) j :=
  remote_zero_cutoff_summable.tsum_pos (gaussianRemoteValue_nonneg 1 1 0 (3/4)) 0 remote_zero_cutoff_term_pos

/-- Every proposed constant fails the actual N=1,A=0 bound; the convergent sum is positive. -/
theorem remote_zero_cutoff_bound_false (C : ℝ) :
    ¬ ((∑'j : ℕ,gaussianRemoteValue 1 1 0 (3/4) j)≤C*(1:ℝ)^(1:ℝ)/(0:ℝ)^1) := by
  intro h
  have hz : (∑'j : ℕ,gaussianRemoteValue 1 1 0 (3/4) j)≤0 := by simpa using h
  exact (not_le_of_gt remote_zero_cutoff_sum_pos) hz

end
end GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms.Checks
```
