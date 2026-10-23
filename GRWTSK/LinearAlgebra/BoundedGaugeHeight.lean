/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI. Imported results retain original attribution.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This is a quantitative gauge interface with explicit hypotheses, not
Dixmier's unitarizability theorem or a general Lyapunov theorem.
-/
import GRWTSK.LinearAlgebra.CocycleProduct
import Mathlib.Tactic

/-!
# Bounded gauges retain cocycle height up to a uniform two-sided factor

The established base-dynamics cocycle gauge law is
  P^B_n(x) = B(T^[n] x)^(-1) * P_n(x) * B(x).

For an explicitly supplied nonnegative submultiplicative height h on
an actual GROUP G, if BOTH h(B y) and h((B y)^(-1)) are uniformly
bounded by C>=0, the two products' heights bound one another
with factor C^2, uniformly in n and x.

These are mathematical extra hypotheses. An arbitrary gauge and
an arbitrary representation do NOT automatically supply the bounds.
The comparison is quantitative at finite n. No uniform
unitarizability, norm selection, asymptotic exponent existence,
conjugacy of arbitrary arithmetic dynamics or amenability is asserted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.BoundedGaugeHeight

open GRWTSK.LinearAlgebra.CocycleProduct

/-- Three-factor submultiplicative height bound. No norm or analytic
structure is hidden: positivity and submultiplicativity are premises. -/
theorem height_triple_le {G : Type*} [Group G]
    (height : G → ℝ)
    (hNonneg : ∀ g, 0 ≤ height g)
    (hMul : ∀ g k, height (g * k) ≤ height g * height k)
    (g a b : G) :
    height (g * a * b) ≤ height g * height a * height b := by
  calc
    height (g * a * b) ≤ height (g * a) * height b :=
      hMul (g * a) b
    _ ≤ (height g * height a) * height b :=
      mul_le_mul_of_nonneg_right (hMul g a) (hNonneg b)

/-- A bound on both endpoint factors controls the corresponding
triple product independently of the intermediate group element. -/
theorem height_triple_of_bounded_ends
    {G : Type*} [Group G]
    (height : G → ℝ)
    (hNonneg : ∀ g, 0 ≤ height g)
    (hMul : ∀ g k, height (g * k) ≤ height g * height k)
    (C : ℝ) (hC : 0 ≤ C)
    (g a b : G) (hg : height g ≤ C) (hb : height b ≤ C) :
    height (g * a * b) ≤ C ^ 2 * height a := by
  calc
    height (g * a * b) ≤ height g * height a * height b :=
      height_triple_le height hNonneg hMul g a b
    _ ≤ (C * height a) * height b :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right hg (hNonneg a))
        (hNonneg b)
    _ ≤ (C * height a) * C :=
      mul_le_mul_of_nonneg_left hb (mul_nonneg hC (hNonneg a))
    _ = C ^ 2 * height a := by ring

/-- The genuine CocycleProduct gauge law gives a two-sided quantitative
comparison when the gauge AND ITS INVERSE have a uniform height
bound. This is stronger than the unrestricted gauge identity and
does not assume a spectral/analytic source or the existence of limits.

It is suitable for an operator-norm specialization ONLY after the
chosen representation is proved submultiplicative and the source
gauge and inverse satisfy the two named bounds. -/
theorem cocycle_gauge_height_sandwich
    {S G : Type*} [Group G]
    (T : S → S) (A B : S → G) (height : G → ℝ) (C : ℝ)
    (hNonneg : ∀ g : G, 0 ≤ height g)
    (hMul : ∀ g k : G, height (g * k) ≤ height g * height k)
    (hC : 0 ≤ C)
    (hB : ∀ y, height (B y) ≤ C)
    (hInvB : ∀ y, height ((B y)⁻¹) ≤ C)
    (n : ℕ) (x : S) :
    height (cocycleProduct T (cocycleGaugeTransfer T A B) n x) ≤
        C ^ 2 * height (cocycleProduct T A n x) ∧
      height (cocycleProduct T A n x) ≤
        C ^ 2 *
          height (cocycleProduct T (cocycleGaugeTransfer T A B) n x) := by
  let raw := cocycleProduct T A n x
  let gauged := cocycleProduct T (cocycleGaugeTransfer T A B) n x
  have htel : gauged =
      (B (T^[n] x))⁻¹ * raw * B x :=
    cocycleProduct_gauge T A B n x
  have hback : raw = B (T^[n] x) * gauged * (B x)⁻¹ := by
    rw [htel]
    group
  constructor
  · rw [htel]
    exact height_triple_of_bounded_ends height hNonneg hMul C hC
      ((B (T^[n] x))⁻¹) raw (B x)
      (hInvB (T^[n] x)) (hB x)
  · rw [hback]
    exact height_triple_of_bounded_ends height hNonneg hMul C hC
      (B (T^[n] x)) gauged ((B x)⁻¹)
      (hB (T^[n] x)) (hInvB x)

end GRWTSK.LinearAlgebra.BoundedGaugeHeight
