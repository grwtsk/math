# Complete source: GRWTSK.Analysis.FiniteSum.ThresholdEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3711600e8d6c0b1e429e302b4e9a7c35ac5d119f` · SHA-256 `adb69ebd667b39325b56466cae3ab95f0ad7d1e85ada727563ca0f084925baa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
Finite threshold decomposition with complete small-value contribution retained.
A Guth--Maynard count estimate can be supplied to `energy_of_count_bound` only
for the same polynomial, supported block, separated sample set, and thresholds.
No numerical external constant or arithmetic detector is constructed here.
-/
noncomputable section
namespace GRWTSK.Analysis.ThresholdEnergy
open scoped BigOperators Classical

def largeSet {ι : Type*} (S : Finset ι) (x : ι → ℝ) (V : ℝ) : Finset ι :=
  S.filter (fun i => V < x i)

theorem threshold_pointwise (x V U : ℝ) (hV : 0 ≤ V) (hU : x ≤ U) :
    x ≤ V + if V < x then U else 0 := by
  split_ifs with h
  · linarith
  · linarith

theorem sum_energy_threshold {ι : Type*} (S : Finset ι) (x : ι → ℝ)
    (V U : ℝ) (hV : 0 ≤ V) (hU : ∀ i ∈ S, x i ≤ U) :
    (∑ i ∈ S, x i) ≤ (S.card : ℝ)*V+(largeSet S x V).card*U := by
  have h := Finset.sum_le_sum (fun i hi => threshold_pointwise (x i) V U hV (hU i hi))
  have he : (∑ i ∈ S, (if V < x i then U else 0)) =
      ((largeSet S x V).card : ℝ)*U := by
    rw [← Finset.sum_filter]
    simp [largeSet]
  simpa only [Finset.sum_add_distrib, Finset.sum_const, nsmul_eq_mul, he] using h

theorem energy_of_count_bound {ι : Type*} (S : Finset ι) (x : ι → ℝ)
    (V U C : ℝ) (hV : 0 ≤ V) (hU0 : 0 ≤ U)
    (hU : ∀ i ∈ S, x i ≤ U) (count : ((largeSet S x V).card : ℝ) ≤ C) :
    (∑ i ∈ S, x i) ≤ (S.card : ℝ)*V+C*U := by
  exact (sum_energy_threshold S x V U hV hU).trans
    (add_le_add_left (mul_le_mul_of_nonneg_right count hU0) _)

/-- Density-to-exclusion is valid only after a genuinely subunit cardinal bound. -/
theorem empty_of_subunit {ι : Type*} (S : Finset ι) (x : ι → ℝ) (V : ℝ)
    (h : ((largeSet S x V).card : ℝ) < 1) : largeSet S x V = ∅ := by
  apply Finset.card_eq_zero.mp
  have hn : (largeSet S x V).card < 1 := by exact_mod_cast h
  omega

end GRWTSK.Analysis.ThresholdEnergy
#print axioms GRWTSK.Analysis.ThresholdEnergy.sum_energy_threshold
#print axioms GRWTSK.Analysis.ThresholdEnergy.energy_of_count_bound
#print axioms GRWTSK.Analysis.ThresholdEnergy.empty_of_subunit
```
