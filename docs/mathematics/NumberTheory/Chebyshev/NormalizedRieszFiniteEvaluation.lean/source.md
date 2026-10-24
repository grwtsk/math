# Complete source: GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d955b3c71ad67285d63f6b740e70b52850c531f1` · SHA-256 `a06b8ed7ab86dc6cde8091998c420709fb3d004b9b99ff771722988a00f54de4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization
import GRWTSK.NumberTheory.Chebyshev.RieszPointwiseReconstruction

/-! # Actual finite normalized Riesz evaluation and pointwise reconstruction

All three zero-series truncation errors, at x, 2 and 3, are charged.
The literal half-jump arithmetic source is reconstructed with its inverse
radius loss. No derivative/infinite-series interchange or raw x^rho/rho
summation is inferred from the Riesz quotient.
-/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology
namespace GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation
open GRWTSK.Analysis.Real.RationalRieszPrimitive
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open GlobalRieszAffineNormalization TentSource EndpointConventions RieszPointwiseReconstruction

def finiteNormalizedRiesz (x T : ℝ) : ℂ :=
  (x : ℂ) ^ 2 / 2 + finiteRieszZeroHead x T + (rationalRieszPrimitive 2 x : ℂ) +
    (-2 - finiteRieszZeroHead 2 T) + ((x - 2 : ℝ) : ℂ) *
      (((Real.log 2 : ℂ) - 9 / 2 - finiteRieszZeroHead 3 T -
        (rationalRieszPrimitive 2 3 : ℂ)) - (-2 - finiteRieszZeroHead 2 T))

def normalizedRieszTailBudget (x T : ℝ) : ℝ :=
  firstRieszTailBudget x T + |3 - x| * firstRieszTailBudget 2 T +
    |x - 2| * firstRieszTailBudget 3 T

theorem source_sub_finite_eq (N : ℕ) (x T : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) :
    (firstRieszPrefix N x : ℂ) - finiteNormalizedRiesz x T =
      (fullRieszZeroValue x - finiteRieszZeroHead x T) -
        ((3 - x : ℝ) : ℂ) * (fullRieszZeroValue 2 - finiteRieszZeroHead 2 T) -
        ((x - 2 : ℝ) : ℂ) * (fullRieszZeroValue 3 - finiteRieszZeroHead 3 T) := by
  rw [firstRieszPrefix_eq_global_normalized N x hx hN hxN]
  unfold finiteNormalizedRiesz normalizationAtTwo normalizationAtThree
  rw [rationalRieszPrimitive_base]
  push_cast
  ring

theorem norm_source_sub_finite_le (N : ℕ) (x T : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) (hT : 2 ≤ T) :
    ‖(firstRieszPrefix N x : ℂ) - finiteNormalizedRiesz x T‖ ≤ normalizedRieszTailBudget x T := by
  rw [source_sub_finite_eq N x T hx hN hxN]
  have htri := (norm_sub_le
    ((fullRieszZeroValue x - finiteRieszZeroHead x T) -
      ((3 - x : ℝ) : ℂ) * (fullRieszZeroValue 2 - finiteRieszZeroHead 2 T))
    (((x - 2 : ℝ) : ℂ) * (fullRieszZeroValue 3 - finiteRieszZeroHead 3 T))).trans
      (add_le_add (norm_sub_le _ _) (le_refl _))
  simp only [norm_mul, Complex.norm_real] at htri
  have hxB := norm_fullRieszZeroValue_sub_head x T hx hT
  have h2B := norm_fullRieszZeroValue_sub_head 2 T (by norm_num) hT
  have h3B := norm_fullRieszZeroValue_sub_head 3 T (by norm_num) hT
  exact htri.trans (add_le_add
    (add_le_add hxB (mul_le_mul_of_nonneg_left h2B (abs_nonneg _)))
    (mul_le_mul_of_nonneg_left h3B (abs_nonneg _)))

theorem normalizedRieszTailBudget_tendsto_zero (x : ℝ) :
    Tendsto (normalizedRieszTailBudget x) atTop (𝓝 0) := by
  change Tendsto (fun T => firstRieszTailBudget x T + |3 - x| * firstRieszTailBudget 2 T + |x - 2| * firstRieszTailBudget 3 T) atTop (𝓝 0)
  have h := ((firstRieszTailBudget_tendsto_zero x).add
    ((firstRieszTailBudget_tendsto_zero 2).const_mul |3 - x|)).add
      ((firstRieszTailBudget_tendsto_zero 3).const_mul |x - 2|)
  simpa only [normalizedRieszTailBudget, mul_zero, add_zero] using h

theorem finiteNormalizedRiesz_tendsto_source (N : ℕ) (x : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) :
    Tendsto (finiteNormalizedRiesz x) atTop (𝓝 (firstRieszPrefix N x : ℂ)) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have he := (normalizedRieszTailBudget_tendsto_zero x).eventually (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (2 : ℝ)] with T heT hT
  rw [dist_eq_norm, norm_sub_rev]
  exact (norm_source_sub_finite_le N x T hx hN hxN hT).trans_lt heT

def finiteNormalizedPointwise (x h T : ℝ) : ℂ :=
  (finiteNormalizedRiesz (x + h) T - finiteNormalizedRiesz (x - h) T) / ((2 * h : ℝ) : ℂ)

def pointwiseRieszTailBudget (x h T : ℝ) : ℝ :=
  (normalizedRieszTailBudget (x + h) T + normalizedRieszTailBudget (x - h) T) / (2 * h)

/-- Actual half-jump reconstruction, with no supplied spectral evaluation errors. -/
theorem norm_pointwise_sub_finite_le (M : ℕ) (hM : 2 ≤ M) (h T : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M : ℝ) - h) (hT : 2 ≤ T) :
    ‖(psiHalf (M : ℝ) : ℂ) - finiteNormalizedPointwise M h T‖ ≤ pointwiseRieszTailBudget M h T := by
  have hplus : (M : ℝ) + h ≤ (M + 3 : ℕ) := by push_cast; linarith
  have hminus : (M : ℝ) - h ≤ (M + 3 : ℕ) := by push_cast; linarith
  exact pointwise_reconstruction_error M (M + 3) hM (by omega) h hh hsmall _ _ _ _
    (norm_source_sub_finite_le (M + 3) ((M : ℝ) + h) T (by linarith) (by omega) hplus hT)
    (norm_source_sub_finite_le (M + 3) ((M : ℝ) - h) T ha (by omega) hminus hT)

theorem pointwiseRieszTailBudget_tendsto_zero (x h : ℝ) :
    Tendsto (pointwiseRieszTailBudget x h) atTop (𝓝 0) := by
  change Tendsto (fun T => (normalizedRieszTailBudget (x + h) T + normalizedRieszTailBudget (x - h) T) / (2 * h)) atTop (𝓝 0)
  simpa only [add_zero, zero_div] using
    ((normalizedRieszTailBudget_tendsto_zero (x + h)).add
      (normalizedRieszTailBudget_tendsto_zero (x - h))).div_const (2 * h)

/-- Height-first Riesz reconstruction at every integer endpoint M>=2.
This limit still uses the Riesz difference kernel at a fixed positive radius. -/
theorem finiteNormalizedPointwise_tendsto_psiHalf (M : ℕ) (hM : 2 ≤ M) (h : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M : ℝ) - h) :
    Tendsto (finiteNormalizedPointwise M h) atTop (𝓝 (psiHalf (M : ℝ) : ℂ)) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have he := (pointwiseRieszTailBudget_tendsto_zero M h).eventually (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (2 : ℝ)] with T heT hT
  rw [dist_eq_norm, norm_sub_rev]
  exact (norm_pointwise_sub_finite_le M hM h T hh hsmall ha hT).trans_lt heT
end GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation
```
