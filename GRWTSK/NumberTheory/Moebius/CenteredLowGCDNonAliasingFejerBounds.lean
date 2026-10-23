/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerReindex
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem nonAliasingFejerPrefixWeight_nonnegative
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (_hm0 : 2 * X ≤ m)
    (_hm1 : m ≤ 4 * X)
    (_hn : n ∈ Finset.Ioc (2 * X) (4 * X)) :
    0 ≤ nonAliasingFejerPrefixWeight X N m n := by
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold nonAliasingFejerPrefixWeight
  exact Finset.sum_nonneg fun q hq =>
    signedSampledTriangularKernelAtPeriod_nonnegative
      (by unfold fejerOctavePeriod; omega) hN
      ((n : ℤ) - (q : ℤ))

theorem nonAliasingFejerPrefixWeight_le_one
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (_hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (_hn : n ∈ Finset.Ioc (2 * X) (4 * X)) :
    nonAliasingFejerPrefixWeight X N m n ≤ 1 := by
  classical
  rw [nonAliasingFejerPrefixWeight_eq_prefixResidueSum hreg hm1]
  let s : Finset (ZMod (fejerOctavePeriod X)) :=
    nonAliasingFejerPrefixResidues X m n
  have hcomp :
      0 ≤
        ∑ z ∈ (Finset.univ \ s),
          cyclicFejerKernel X N z := by
    exact Finset.sum_nonneg fun z hz =>
      cyclicFejerKernel_nonnegative hreg z
  have hdisj : Disjoint s (Finset.univ \ s) :=
    Finset.disjoint_sdiff
  have hunion : s ∪ (Finset.univ \ s) = Finset.univ :=
    Finset.union_sdiff_of_subset (Finset.subset_univ s)
  calc
    (∑ z ∈ s, cyclicFejerKernel X N z)
      ≤
      (∑ z ∈ s, cyclicFejerKernel X N z) +
        ∑ z ∈ (Finset.univ \ s),
          cyclicFejerKernel X N z :=
        le_add_of_nonneg_right hcomp
    _ = ∑ z : ZMod (fejerOctavePeriod X),
          cyclicFejerKernel X N z := by
          rw [← Finset.sum_union hdisj, hunion]
          rfl
    _ = 1 := cyclicFejerKernel_sum_one hreg

theorem nonAliasingFejerPrefixWeight_mem_Icc
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X)) :
    nonAliasingFejerPrefixWeight X N m n ∈ Set.Icc (0 : ℝ) 1 := by
  exact ⟨
    nonAliasingFejerPrefixWeight_nonnegative hreg hm0 hm1 hn,
    nonAliasingFejerPrefixWeight_le_one hreg hm0 hm1 hn⟩

end GRWTSK.RiemannHypothesis
