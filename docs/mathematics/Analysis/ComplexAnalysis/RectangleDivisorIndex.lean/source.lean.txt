/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RectangleFactorIndex
import GRWTSK.Analysis.Complex.FiniteLinearRemoval

set_option autoImplicit false

/-!
# Rectangle winding from an exact analytic finite divisor

Linear factors have index one on the complete positively oriented rectangle.
Natural powers retain multiplicities. The actual zero-free remainder is
constructed by removal of exact local powers, then contracted over the closed
rectangle. No quotient or winding/count equation is a theorem premise.
This is a lift-index argument principle at this precise rectangle scope,
not a contour-integral theorem for arbitrary paths or meromorphic functions.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.RectangleDivisorIndex

open scoped unitInterval BigOperators Topology
open Set ContinuousMap ClosedCurveFactorIndex RectangleFactorIndex

noncomputable section

/-- A source factorization with a continuous zero-free remainder gives its
SIGNED boundary index. Repeated powers are not replaced by distinct-point count. -/
theorem index_of_factorization {ι : Type*} [Fintype ι] (D : Rectangle)
    (a : ι → ℂ) (m : ι → ℕ) (ha : ∀ i, a i ∈ D.interior)
    (f q : ℂ → ℂ) (hf : ContinuousOn f D.box) (hq : ContinuousOn q D.box)
    (hqn : ∀ w ∈ D.box, q w ≠ 0)
    (he : ∀ w ∈ D.box, f w = q w * FiniteLinearRemoval.product a m w)
    (hfn : ∀ t, D.image f hf t ≠ 0) :
    index (D.image f hf) (D.image_closed f hf) hfn = ∑ i, (m i : ℤ) := by
  classical
  let g : ι → C(I, ℂ) := fun i => (D.factor (a i)) ^ m i
  have gc (i : ι) : g i 0 = g i 1 := pow_closed _ (D.factor_closed _) _
  have gn (i : ι) : ∀ t, g i t ≠ 0 := pow_nonzero _ (D.factor_nonzero (ha i)) _
  have qi : index (D.image q hq) (D.image_closed q hq) (D.image_nonzero hq hqn) = 0 :=
    D.zero_free_index hq hqn
  have gi (i : ι) : index (g i) (gc i) (gn i) = (m i : ℤ) := by
    simpa only [g, D.factor_index_one (ha i), mul_one] using
      index_pow (D.factor (a i)) (D.factor_closed (a i)) (D.factor_nonzero (ha i)) (m i)
  have hp := index_prod Finset.univ g gc gn
  have hmul := index_mul (D.image q hq) (∏ i, g i) (D.image_closed q hq)
    (prod_closed _ _ gc) (D.image_nonzero hq hqn) (prod_nonzero _ _ gn)
  have hsame : ∀ t, D.image f hf t = (D.image q hq * ∏ i, g i) t := by
    intro t
    simpa only [Rectangle.image, ContinuousMap.mul_apply, product_apply,
      g, pow_apply, Rectangle.factor, FiniteLinearRemoval.product] using
      he (D.curve t) (D.curve_boundary t).1
  calc
    _ = index (D.image q hq * ∏ i, g i)
        (mul_closed _ _ (D.image_closed q hq) (prod_closed _ _ gc))
        (mul_nonzero _ _ (D.image_nonzero hq hqn) (prod_nonzero _ _ gn)) :=
      index_congr _ _ _ _ hsame
    _ = _ := by rw [hmul, qi, zero_add, hp]; exact Finset.sum_congr rfl (fun i _ => gi i)

/-- The quotient hypothesis is DISCHARGED from exact source germs and complete
zero coverage. Analyticity is neighborhood analyticity even at the boundary. -/
theorem index_eq_mass {ι : Type*} [Fintype ι] (D : Rectangle)
    (a : ι → ℂ) (m : ι → ℕ) (f : ℂ → ℂ)
    (hinj : Function.Injective a) (hm : ∀ i, 0 < m i)
    (ha : ∀ i, a i ∈ D.interior) (hf : AnalyticOnNhd ℂ f D.box)
    (hlocal : ∀ i, ∃ A : ℂ → ℂ, AnalyticAt ℂ A (a i) ∧ A (a i) ≠ 0 ∧
      f =ᶠ[nhds (a i)] fun w => (w-a i) ^ m i * A w)
    (hcover : ∀ w ∈ D.box, f w = 0 → ∃ i, w = a i)
    (hboundary : ∀ w ∈ D.boundary, f w ≠ 0) :
    index (D.image f hf.continuousOn) (D.image_closed f hf.continuousOn)
      (fun t => hboundary _ (D.curve_boundary t)) = ∑ i, (m i : ℤ) := by
  have haU (i : ι) : a i ∈ D.box :=
    ⟨(ha i).1.le, (ha i).2.1.le, (ha i).2.2.1.le, (ha i).2.2.2.le⟩
  obtain ⟨q, hq, hqn, he, _⟩ := FiniteLinearRemoval.exists_quotient
    a m f D.box hinj hm haU hf hlocal hcover
  exact index_of_factorization D a m ha f q hf.continuousOn hq.continuousOn hqn he
    (fun t => hboundary _ (D.curve_boundary t))

end
end GRWTSK.Analysis.Complex.RectangleDivisorIndex
