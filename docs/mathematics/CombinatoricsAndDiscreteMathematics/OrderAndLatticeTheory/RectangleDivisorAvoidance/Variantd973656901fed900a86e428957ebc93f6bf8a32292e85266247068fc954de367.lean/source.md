# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RectangleDivisorAvoidance.Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5bf6a17e7a463b64b51dfe743ee17250c8d9f4e` · SHA-256 `d973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.ComplexAnalysis.MeromorphicOrder
public import Mathlib.Order.Interval.Set.Infinite
import Mathlib.Tactic

/-!
# Rectangle coordinates avoiding a finite divisor

Compact meromorphic divisors have finite support.  Hence horizontal and
vertical contour coordinates can be selected in any nonempty open interval
while avoiding every zero or pole in that support.

These selection lemmas are geometric bookkeeping only.  They do not assert
circle integrability, pole excision, a residue theorem, or a contour shift
through singularities.
-/

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex

/-- Every nonempty real interval contains a height different from the
imaginary coordinate of every point in a prescribed finite complex set. -/
theorem exists_height_avoiding_finite
    {S : Set ℂ} (hS : S.Finite) {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b, ∀ z ∈ S, z.im ≠ t := by
  obtain ⟨t, htI, htNot⟩ :=
    (Set.Ioo_infinite hab).exists_notMem_finite (hS.image Complex.im)
  refine ⟨t, htI, ?_⟩
  intro z hz hzt
  exact htNot ⟨z, hz, hzt⟩

/-- Real-coordinate counterpart of `exists_height_avoiding_finite`. -/
theorem exists_real_avoiding_finite
    {S : Set ℂ} (hS : S.Finite) {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b, ∀ z ∈ S, z.re ≠ t := by
  obtain ⟨t, htI, htNot⟩ :=
    (Set.Ioo_infinite hab).exists_notMem_finite (hS.image Complex.re)
  refine ⟨t, htI, ?_⟩
  intro z hz hzt
  exact htNot ⟨z, hz, hzt⟩

/-- Select a horizontal contour coordinate avoiding the divisor support on a
compact rectangle. -/
theorem exists_height_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.im ≠ t := by
  obtain ⟨t, ht, hav⟩ :=
    exists_height_avoiding_finite (rectangleDivisor_support_finite hf) hab
  refine ⟨t, ht, ?_⟩
  intro p hp
  exact hav p ((mem_rectangleDivisorSupportFinset hf).mp hp)

/-- Select a vertical contour coordinate avoiding the divisor support on a
compact rectangle. -/
theorem exists_real_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.re ≠ t := by
  obtain ⟨t, ht, hav⟩ :=
    exists_real_avoiding_finite (rectangleDivisor_support_finite hf) hab
  refine ⟨t, ht, ?_⟩
  intro p hp
  exact hav p ((mem_rectangleDivisorSupportFinset hf).mp hp)

end

end Surface.Core.ComplexAnalysis
```
