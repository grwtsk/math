# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.TrivialZeroDebt.Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ddd061880c34b99f768973a4291f34c9f98ec51` · SHA-256 `b08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# The actual archimedean source as endpoint plus trivial-zero contributions

The multiplier is not redefined. We split the existing `quarter_series` at its
first term and prove the factor-of-two transport to distances from actual
negative-even zeta zeros. Zero itself is not a trivial zeta zero and its gamma
endpoint remains explicit. No Riemann Hypothesis premise is used.

The source HasSum and sum-integral bounds are reused from AdmissionSource and
ReciprocalKernel. The complete gamma-product/normalization profile and any
identification of an independent arithmetic residual remain separate tasks.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.TrivialZeroDebt

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource
open FormalResearch.Analysis.ReciprocalKernel

noncomputable section

/-- The actual negative-even zeta zeros, beginning at -2 rather than zero. -/
def trivialZeroPoint (n : ℕ) : ℂ := -2 * ((n : ℂ) + 1)

/-- Bind the locations to the actual zeta function, without an RH hypothesis. -/
theorem trivialZeroPoint_is_zero (n : ℕ) : riemannZeta (trivialZeroPoint n) = 0 :=
  riemannZeta_neg_two_mul_nat_add_one n

/-- All the information in these zero locations lies in their real coordinates. -/
theorem trivialZeroPoint_re (n : ℕ) :
    (trivialZeroPoint n).re = -2 * ((n : ℝ) + 1) := by
  simp [trivialZeroPoint]

/-- The trivial-zero locations have zero imaginary part. -/
theorem trivialZeroPoint_im (n : ℕ) : (trivialZeroPoint n).im = 0 := by
  simp [trivialZeroPoint]

/-- A guard against misclassifying the gamma pole at zero as a zeta zero. -/
theorem zeta_zero_not_zero : riemannZeta 0 ≠ 0 := by
  rw [riemannZeta_zero]
  norm_num

/-- Horizontal distance from the critical-line real coordinate to a trivial zero. -/
def trivialDistance (n : ℕ) : ℝ := 1 / 2 - (trivialZeroPoint n).re

/-- The exact affine location formula needed for the source reindexing. -/
theorem trivialDistance_eq (n : ℕ) : trivialDistance n = 2 * (n : ℝ) + 5 / 2 := by
  rw [trivialDistance, trivialZeroPoint_re]
  ring

/-- Denominators in the real-frequency contribution are strictly positive. -/
theorem trivialDistance_pos (n : ℕ) : 0 < trivialDistance n := by
  rw [trivialDistance_eq]
  positivity

/-- Contribution expressed only through the actual trivial-zero real location. -/
def trivialContribution (xi : ℝ) (n : ℕ) : ℝ :=
  2 * xi ^ 2 / (trivialDistance n * ((trivialDistance n) ^ 2 + xi ^ 2))

/-- The removed first gamma-series term, kept separate from negative-even zeros. -/
def zeroEndpoint (xi : ℝ) : ℝ := 16 * xi ^ 2 / (1 + 4 * xi ^ 2)

/-- Elementary source scaling for the separate zero endpoint. -/
theorem kernel_zeroEndpoint (xi : ℝ) : kernel (xi / 2) (1 / 4) = zeroEndpoint xi := by
  have hp : 0 < 1 + 4 * xi ^ 2 := by positivity
  have hq : 0 < (1 / 4 : ℝ) ^ 2 + (xi / 2) ^ 2 := by positivity
  unfold kernel zeroEndpoint
  field_simp [ne_of_gt hp, ne_of_gt hq]
  ring

/-- Exact one-term shift and scaling, not a presumed series identification. -/
theorem trivialContribution_eq_kernel (xi : ℝ) (n : ℕ) :
    trivialContribution xi n = kernel (xi / 2) (((n + 1 : ℕ) : ℝ) + 1 / 4) := by
  have ha : 0 < (n : ℝ) + 1 + 1 / 4 := by positivity
  have hd : 0 < 2 * (n : ℝ) + 5 / 2 := by positivity
  have hq : 0 < ((n : ℝ) + 1 + 1 / 4) ^ 2 + (xi / 2) ^ 2 := by positivity
  have hr : 0 < (2 * (n : ℝ) + 5 / 2) ^ 2 + xi ^ 2 := by positivity
  unfold trivialContribution kernel
  rw [trivialDistance_eq]
  push_cast
  field_simp [ne_of_gt ha, ne_of_gt hd, ne_of_gt hq, ne_of_gt hr]
  ring

/-- Individual trivial-zero contributions are nonnegative for every real frequency. -/
theorem trivialContribution_nonnegative (xi : ℝ) (n : ℕ) :
    0 ≤ trivialContribution xi n := by
  rw [trivialContribution_eq_kernel]
  exact kernel_nonneg _ _ (by positivity)

/-- At nonzero frequency no individual trivial-zero contribution is zero. -/
theorem trivialContribution_positive (xi : ℝ) (hxi : xi ≠ 0) (n : ℕ) :
    0 < trivialContribution xi n := by
  have hd := trivialDistance_pos n
  unfold trivialContribution
  exact div_pos (mul_pos (by norm_num) (sq_pos_of_ne_zero hxi)) (by positivity)

/-- The frequency origin is included, not removed by a nonzero-frequency assumption. -/
theorem trivialContribution_zero (n : ℕ) : trivialContribution 0 n = 0 := by
  simp [trivialContribution]

/-- The endpoint also vanishes exactly at the frequency origin. -/
theorem zeroEndpoint_zero : zeroEndpoint 0 = 0 := by simp [zeroEndpoint]

/-- Reflecting the frequency does not change the contribution. -/
theorem trivialContribution_neg (xi : ℝ) (n : ℕ) :
    trivialContribution (-xi) n = trivialContribution xi n := by
  simp [trivialContribution]

/-- The actual source HasSum after removal of its explicit zero endpoint. -/
theorem hasSum_trivialContribution (xi : ℝ) :
    HasSum (trivialContribution xi)
      (archimedeanMultiplier xi + archimedeanConstant - zeroEndpoint xi) := by
  have hs : HasSum (fun n : ℕ => kernel (xi / 2) ((n : ℝ) + 1 / 4))
      (archimedeanMultiplier xi + archimedeanConstant) := quarter_series xi
  have ht := (hasSum_nat_add_iff'
    (f := fun n : ℕ => kernel (xi / 2) ((n : ℝ) + 1 / 4)) 1).mpr hs
  simpa only [Finset.sum_range_one, Nat.cast_zero, zero_add, kernel_zeroEndpoint,
    ← trivialContribution_eq_kernel] using ht

/-- Summability is supplied explicitly before any infinite-sum claims. -/
theorem trivialContribution_summable (xi : ℝ) : Summable (trivialContribution xi) :=
  (hasSum_trivialContribution xi).summable

/-- The selected existing source is exactly its endpoint plus trivial-zero debt. -/
theorem archimedean_eq_endpoint_add_trivial (xi : ℝ) :
    archimedeanMultiplier xi + archimedeanConstant =
      zeroEndpoint xi + ∑' n : ℕ, trivialContribution xi n := by
  have h := (hasSum_trivialContribution xi).tsum_eq
  linarith

/-- The source with its endpoint removed is nonnegative, by the exact source identity. -/
theorem source_minus_endpoint_nonnegative (xi : ℝ) :
    0 ≤ archimedeanMultiplier xi + archimedeanConstant - zeroEndpoint xi := by
  rw [← (hasSum_trivialContribution xi).tsum_eq]
  exact tsum_nonneg (trivialContribution_nonnegative xi)

/-- Removing a known contribution is not the same as proving that it vanishes. -/
theorem source_minus_endpoint_positive (xi : ℝ) (hxi : xi ≠ 0) :
    0 < archimedeanMultiplier xi + archimedeanConstant - zeroEndpoint xi := by
  have he := (trivialContribution_summable xi).tsum_eq_zero_add
  have ht : 0 ≤ ∑' n : ℕ, trivialContribution xi (n + 1) :=
    tsum_nonneg (fun n => trivialContribution_nonnegative xi (n + 1))
  have hp := trivialContribution_positive xi hxi 0
  have hs := (hasSum_trivialContribution xi).tsum_eq
  linarith

/-- The finite-prefix/tail decomposition preserves every occurrence. -/
theorem source_prefix_tail (xi : ℝ) (N : ℕ) :
    archimedeanMultiplier xi + archimedeanConstant = zeroEndpoint xi +
      ((∑ n ∈ Finset.range N, trivialContribution xi n) +
        ∑' n : ℕ, trivialContribution xi (n + N)) := by
  rw [archimedean_eq_endpoint_add_trivial]
  rw [(trivialContribution_summable xi).sum_add_tsum_nat_add N]

/-- A quantitative tail comparison inherited from the actual reciprocal kernel.
This is pointwise in xi; no uniform all-scale arithmetic conclusion is asserted. -/
theorem trivialContribution_tail_bounds (xi : ℝ) (N : ℕ) :
    0 ≤ (∑' n : ℕ, trivialContribution xi (n + N)) -
        Real.log (1 + (xi / 2) ^ 2 * (((N : ℝ) + 5 / 4)⁻¹) ^ 2) / 2 ∧
      (∑' n : ℕ, trivialContribution xi (n + N)) -
        Real.log (1 + (xi / 2) ^ 2 * (((N : ℝ) + 5 / 4)⁻¹) ^ 2) / 2 ≤
        kernel (xi / 2) ((N : ℝ) + 5 / 4) := by
  have heq : (∑' n : ℕ, trivialContribution xi (n + N)) =
      ∑' n : ℕ, kernel (xi / 2) ((n : ℝ) + ((N : ℝ) + 5 / 4)) := by
    apply tsum_congr
    intro n
    rw [trivialContribution_eq_kernel]
    congr 1
    push_cast
    ring
  rw [heq]
  exact kernel_sum_bounds (xi / 2) ((N : ℝ) + 5 / 4) (by positivity)

/-- The tail enclosure in distances to the actual trivial-zero real coordinates. -/
theorem trivialContribution_tail_distance_bounds (xi : ℝ) (N : ℕ) :
    Real.log (1 + xi ^ 2 / (trivialDistance N) ^ 2) / 2 ≤
        (∑' n : ℕ, trivialContribution xi (n + N)) ∧
      (∑' n : ℕ, trivialContribution xi (n + N)) ≤
        Real.log (1 + xi ^ 2 / (trivialDistance N) ^ 2) / 2 +
          trivialContribution xi N := by
  have hd : 0 < 2 * (N : ℝ) + 5 / 2 := by positivity
  have ha : 0 < (N : ℝ) + 5 / 4 := by positivity
  have hr : (xi / 2) ^ 2 * (((N : ℝ) + 5 / 4)⁻¹) ^ 2 =
      xi ^ 2 / (trivialDistance N) ^ 2 := by
    rw [trivialDistance_eq]
    field_simp [ne_of_gt hd, ne_of_gt ha]
    ring
  have hk : kernel (xi / 2) ((N : ℝ) + 5 / 4) =
      trivialContribution xi N := by
    rw [trivialContribution_eq_kernel]
    congr 1
    push_cast
    ring
  have h := trivialContribution_tail_bounds xi N
  rw [hr, hk] at h
  constructor <;> linarith [h.1, h.2]

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.TrivialZeroDebt
```
