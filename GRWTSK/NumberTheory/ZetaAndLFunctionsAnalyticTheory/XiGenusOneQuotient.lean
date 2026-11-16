/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiGenusOneCanonicalProduct
import Mathlib.Analysis.Meromorphic.NormalForm

/-!
# Entire quotient of ξ by its canonical product

The numerator and product have the same finite analytic order at every point.
Their meromorphic quotient therefore has order zero, including at each common
zero. Its normal form supplies the removable values and is nowhere zero.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource

/-- The quotient with its removable values at the common zeros filled in. -/
def xiGenusOneQuotient : ℂ → ℂ :=
  toMeromorphicNFOn (xi / xiGenusOneProduct) Set.univ

private theorem xiGenusOneRawQuotient_meromorphic :
    MeromorphicOn (xi / xiGenusOneProduct) Set.univ :=
  fun z _ => (differentiable_xi.analyticAt z).meromorphicAt.div
    (differentiable_xiGenusOneProduct.analyticAt z).meromorphicAt

private theorem meromorphicOrderAt_xiGenusOneQuotient (z : ℂ) :
    meromorphicOrderAt xiGenusOneQuotient z = 0 := by
  have hξ := differentiable_xi.analyticAt z
  have hP := differentiable_xiGenusOneProduct.analyticAt z
  rw [xiGenusOneQuotient,
    meromorphicOrderAt_toMeromorphicNFOn xiGenusOneRawQuotient_meromorphic (Set.mem_univ z),
    meromorphicOrderAt_div hξ.meromorphicAt hP.meromorphicAt,
    hξ.meromorphicOrderAt_eq, hP.meromorphicOrderAt_eq, analyticOrderAt_xiGenusOneProduct,
    ← Nat.cast_analyticOrderNatAt (xiAnalyticOrderAt_ne_top z)]
  simp

/-- The filled-in quotient is analytic at every complex point. -/
theorem analyticAt_xiGenusOneQuotient (z : ℂ) : AnalyticAt ℂ xiGenusOneQuotient z :=
  (meromorphicNFOn_toMeromorphicNFOn _ _ (Set.mem_univ z)).meromorphicOrderAt_nonneg_iff_analyticAt.mp
    (meromorphicOrderAt_xiGenusOneQuotient z).ge

theorem xiGenusOneQuotient_ne_zero (z : ℂ) : xiGenusOneQuotient z ≠ 0 :=
  (meromorphicNFOn_toMeromorphicNFOn _ _ (Set.mem_univ z)).meromorphicOrderAt_eq_zero_iff.mp
    (meromorphicOrderAt_xiGenusOneQuotient z)

/-- Away from the divisor, the extension agrees with ordinary division. -/
theorem xiGenusOneQuotient_eq_div {z : ℂ} (hz : xi z ≠ 0) :
    xiGenusOneQuotient z = xi z / xiGenusOneProduct z := by
  have hP := (xiGenusOneProduct_eq_zero_iff z).not.mpr hz
  have h := (differentiable_xi.analyticAt z).div
    (differentiable_xiGenusOneProduct.analyticAt z) hP
  change toMeromorphicNFOn (xi / xiGenusOneProduct) Set.univ z =
    (xi / xiGenusOneProduct) z
  rw [toMeromorphicNFOn_eq_toMeromorphicNFAt xiGenusOneRawQuotient_meromorphic (Set.mem_univ z),
    toMeromorphicNFAt_eq_self.mpr h.meromorphicNFAt]

/-- The factorization holds everywhere, including at the common zeros. -/
theorem xi_eq_xiGenusOneQuotient_mul_product (z : ℂ) :
    xi z = xiGenusOneQuotient z * xiGenusOneProduct z := by
  by_cases hz : xi z = 0
  · rw [(xiGenusOneProduct_eq_zero_iff z).mpr hz, mul_zero, hz]
  · rw [xiGenusOneQuotient_eq_div hz, div_mul_cancel₀ _
      ((xiGenusOneProduct_eq_zero_iff z).not.mpr hz)]

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
