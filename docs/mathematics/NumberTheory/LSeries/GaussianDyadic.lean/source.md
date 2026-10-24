# Complete source: GRWTSK.NumberTheory.LSeries.GaussianDyadic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d99d4f0b30dbed998bc277c3695026f3337411f2` · SHA-256 `34f344d94db1065229615606f9c2a25124ddc9e44fbd3fd72fcbee2d84770037`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Actual natural coefficient-one Gaussian dyadic reassembly.
Adapted consumer of OpenAI math GaussianDecomposition.lean, Apache-2.0,
commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a,
SHA256 494752f7dcd2e0916be5e4d3c7a64c24e5551a9bc5a5f278200e46f068ebf389.
This is an ordinary natural-index analytic consumer, not the cubic-ideal theorem.
The imported annulus and normalized Gaussian retain their source/license notices.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
-/
import GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
import GRWTSK.NumberTheory.LSeries.GaussianContour

namespace GRWTSK.NumberTheory.LSeries.GaussianDyadic
noncomputable section
open Set
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.NumberTheory.LSeries.GaussianContour

noncomputable def gaussianDyadicTerm (Z : ℝ) (n j : ℕ) : ℂ :=
  dyadicAnnulus ((n+1:ℝ)/(2:ℝ)^j)*gaussianMellinProfile ((n+1:ℝ)/Z)

/-- Absolute product-index summability uses the proved profile summability and
 the actual annular norm partition, with coverage n+1 >= 1 supplied here. -/
theorem gaussianDyadicTerm_summable (Z : ℝ) (hZ : 0 < Z) :
    Summable (fun q : ℕ × ℕ => gaussianDyadicTerm Z q.1 q.2) := by
  exact annular_reassembly_summable (fun n : ℕ => gaussianMellinProfile ((n+1:ℝ)/Z))
    (fun n : ℕ => (n+1:ℝ)) (gaussianMellinProfile_sum_summable Z hZ) (by intro n _; have hn : (0:ℝ) ≤ n := Nat.cast_nonneg n; linarith)

/-- Every fixed annular scale contains only finitely many natural frequencies. -/
theorem gaussianDyadicTerm_finite_support (Z : ℝ) (j : ℕ) :
    (Function.support (fun n : ℕ => gaussianDyadicTerm Z n j)).Finite := by
  apply (Set.finite_lt_nat (2^(j+1))).subset
  intro n hn
  change gaussianDyadicTerm Z n j ≠ 0 at hn
  by_contra hb
  have hnc : (2:ℝ)^(j+1) ≤ (n:ℝ) := by exact_mod_cast (le_of_not_gt hb)
  have hz : dyadicAnnulus ((n+1:ℝ)/(2:ℝ)^j) = 0 := by
    apply dyadicAnnulus_large
    apply (le_div_iff₀ (by positivity : (0:ℝ) < 2^j)).mpr
    rw [pow_succ] at hnc
    linarith
  exact hn (by simp [gaussianDyadicTerm, hz])

theorem gaussianDyadicTerm_inner_summable (Z : ℝ) (j : ℕ) :
    Summable (fun n : ℕ => gaussianDyadicTerm Z n j) :=
  summable_of_hasFiniteSupport (gaussianDyadicTerm_finite_support Z j)

/-- This equality expresses each actual inner sum as a finite sum. -/
theorem gaussianDyadicTerm_tsum_eq_sum (Z : ℝ) (j : ℕ) :
    (∑' n : ℕ, gaussianDyadicTerm Z n j) =
      ∑ n ∈ Finset.range (2^(j+1)), gaussianDyadicTerm Z n j := by
  apply tsum_eq_sum
  intro n hn
  have hnc : (2:ℝ)^(j+1) ≤ (n:ℝ) := by
    exact_mod_cast (Nat.le_of_not_gt (fun h => hn (Finset.mem_range.mpr h)))
  have hz : dyadicAnnulus ((n+1:ℝ)/(2:ℝ)^j) = 0 := by
    apply dyadicAnnulus_large
    apply (le_div_iff₀ (by positivity : (0:ℝ) < 2^j)).mpr
    rw [pow_succ] at hnc
    linarith
  simp [gaussianDyadicTerm, hz]

theorem gaussianDyadic_reassembly (Z : ℝ) (hZ : 0 < Z) :
    (∑' j : ℕ, ∑' n : ℕ, gaussianDyadicTerm Z n j) =
      ∑' n : ℕ, gaussianMellinProfile ((n+1:ℝ)/Z) := by
  exact annular_reassembly (fun n : ℕ => gaussianMellinProfile ((n+1:ℝ)/Z))
    (fun n : ℕ => (n+1:ℝ)) (gaussianMellinProfile_sum_summable Z hZ) (by intro n _; have hn : (0:ℝ) ≤ n := Nat.cast_nonneg n; linarith)

/-- The actual ordinary-zeta contour is the convergent sum of finite annular pieces. -/
theorem gaussianZetaContour_eq_dyadic (σ Z : ℝ) (hσ : 1 < σ) (hZ : 0 < Z) :
    gaussianZetaContour σ Z =
      ∑' j : ℕ, ∑ n ∈ Finset.range (2^(j+1)), gaussianDyadicTerm Z n j := by
  simp_rw [← gaussianDyadicTerm_tsum_eq_sum]
  rw [gaussianDyadic_reassembly Z hZ]
  exact gaussianZetaContour_eq_tsum σ Z hσ hZ

end
end GRWTSK.NumberTheory.LSeries.GaussianDyadic
```
