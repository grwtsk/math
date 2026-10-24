# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleOddLiftCanonicalTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a6adcdcdcd52e2d7b7d89c47d22fca54e714b43` · SHA-256 `c9a3f3f4dff24064e02ac81f65f6b4dd5c9fb6b438a098f14bc6cbbcbf43f6ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Finite shift-image transport and proof drafting assistance: OpenAI.
Mathlib and Liouville source retain upstream attribution and licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleOddLiftDyadicRecurrence
import Mathlib.Data.Finset.Image
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The canonical odd-lifted shift image and its exact all-order energy

Issues: grwtsk/math#630 and #441; draft PR #638, direct source parent
4995e170bcfb0ce989bdcbd2090ac009156b842f.

The previous dyadic recurrence indexed each shifted product by the
ORIGINAL selected finite shift subtype H. The canonical finite Walsh
and arithmetic energy interfaces instead require the actual image
set H' = {2*h+1 | h in H}. This module constructs a genuine finite
bijection between those coordinate types, transports every selected
subset, and preserves each arithmetic moment and the complete
sum of nonempty squared subset correlations.

For M>0, the exact consequence is
 E_Liouville(2M,{2h+1 | h∈H})
    <= [E_Liouville(M,H) + E_oddResidual(M,H)] / 2.

The same bound can be inserted into the existing canonical cyclic
total-variation return, but only under the original max(H')<2M
boundary guard. No arithmetic residual cancellation, uniform
growing-shift Chowla theorem, GUE or RH statement is produced.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleWalshSourceBridge

open scoped BigOperators
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- The TRUE, concrete finite set of odd-lifted offsets; the image
contains no duplicate shifts because h ↦ 2*h+1 is injective. -/
def oddLiftOffsets (H : Finset ℕ) : Finset ℕ :=
  H.image (fun h : ℕ => 2 * h + 1)

/-- The odd-lift map is globally injective on natural-number offsets. -/
theorem oddLift_injective :
    Function.Injective (fun h : ℕ => 2 * h + 1) := by
  intro a b hab
  omega

/-- Odd lifting preserves the EXACT number of selected distinct shifts,
including the empty shift set. -/
theorem oddLiftOffsets_card (H : Finset ℕ) :
    (oddLiftOffsets H).card = H.card := by
  unfold oddLiftOffsets
  exact Finset.card_image_of_injective H oddLift_injective

/-- Genuine bijection between the original subtype-coordinate set and
the lifted image-coordinate set. Its inverse is obtained from the
witness in Finset.mem_image, NOT by erasing coordinate identity. -/
def oddLiftSubtypeEquiv (H : Finset ℕ) :
    {h : ℕ // h ∈ H} ≃ {j : ℕ // j ∈ oddLiftOffsets H} := by
  classical
  refine Equiv.ofBijective
    (fun h : {h : ℕ // h ∈ H} =>
      (⟨2 * h.val + 1, Finset.mem_image.mpr ⟨h.val, h.property, rfl⟩⟩ :
        {j : ℕ // j ∈ oddLiftOffsets H})) ?_
  constructor
  · intro a c hac
    apply Subtype.ext
    have hv := congrArg Subtype.val hac
    dsimp at hv
    omega
  · rintro ⟨j, hj⟩
    change j ∈ H.image (fun h : ℕ => 2 * h + 1) at hj
    obtain ⟨h, hh, heq⟩ := Finset.mem_image.mp hj
    refine ⟨⟨h, hh⟩, ?_⟩
    apply Subtype.ext
    exact heq

/-- The actual lifted coordinate is the promised odd offset. -/
theorem oddLiftSubtypeEquiv_val (H : Finset ℕ)
    (h : {h : ℕ // h ∈ H}) :
    (oddLiftSubtypeEquiv H h).val = 2 * h.val + 1 := rfl

/-- Transport selected shift SUBSETS through the coordinate bijection,
retaining the precise identity and multiplicity of every character. -/
def oddLiftSubset (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    Finset {j : ℕ // j ∈ oddLiftOffsets H} :=
  (oddLiftSubtypeEquiv H).finsetCongr S

/-- Exact subset-cardinality preservation, including parity |S|. -/
theorem oddLiftSubset_card (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    (oddLiftSubset H S).card = S.card := by
  classical
  simp [oddLiftSubset, Equiv.finsetCongr_apply]

/-- The empty selected character maps to the empty character. -/
theorem oddLiftSubset_empty (H : Finset ℕ) :
    oddLiftSubset H (∅ : Finset {h : ℕ // h ∈ H}) = ∅ := by
  classical
  simp [oddLiftSubset, Equiv.finsetCongr_apply]

/-- No nonempty Walsh character is discarded or mapped to the
empty character by lifting, and vice versa. -/
theorem oddLiftSubset_eq_empty_iff (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    oddLiftSubset H S = ∅ ↔ S = ∅ := by
  classical
  simp [oddLiftSubset, Equiv.finsetCongr_apply]

/-- Equality of EACH raw Liouville product before normalization.
The image subtype coordinate j is exactly 2*h+1. -/
theorem oddLiftedProduct_eq_canonical (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (n : ℕ) :
    oddLiftedProductTerm H S n =
      ∏ j ∈ oddLiftSubset H S,
        ((ArithmeticFunction.liouville (n + j.val + 1) : ℤ) : ℚ) := by
  classical
  unfold oddLiftedProductTerm oddLiftSubset
  rw [Equiv.finsetCongr_apply, Finset.prod_map]
  apply Finset.prod_congr rfl
  intro h _
  have hindex :
      n + 2 * h.val + 2 =
        n + (oddLiftSubtypeEquiv H h).val + 1 := by
    rw [oddLiftSubtypeEquiv_val]
    omega
  exact congrArg
    (fun t : ℕ => ((ArithmeticFunction.liouville t : ℤ) : ℚ))
    hindex

/-- The lifted 2M-root mean is exactly the CANONICAL arithmetic
Liouville mean on the genuine image shift set, with the same
normalization 2M and no collision or endpoint correction. -/
theorem oddLiftedMean_eq_canonical (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    oddLiftedMean M H S =
      liouvilleSubsetMean (2 * M) (oddLiftOffsets H)
        (oddLiftSubset H S) := by
  unfold oddLiftedMean liouvilleSubsetMean
  congr 1
  apply Finset.sum_congr rfl
  intro n _
  exact oddLiftedProduct_eq_canonical H S n

/-- Reindex the ENTIRE nonempty Walsh character family through the
bijective finite-subset transport. This is an exact rational identity,
not a claim about arithmetic cancellation. -/
theorem oddLiftedAllOrderEnergy_eq_canonical (M : ℕ)
    (H : Finset ℕ) :
    oddLiftedAllOrderEnergy M H =
      liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) := by
  classical
  let e := (oddLiftSubtypeEquiv H).finsetCongr
  unfold oddLiftedAllOrderEnergy liouvilleAllOrderEnergy
  apply Finset.sum_equiv e
  · intro S
    simp [e, Equiv.finsetCongr_apply]
  · intro S _
    change (oddLiftedMean M H S) ^ 2 =
      (liouvilleSubsetMean (2 * M) (oddLiftOffsets H)
        (oddLiftSubset H S)) ^ 2
    rw [oddLiftedMean_eq_canonical]

/-- The previously H-indexed two-energy inequality now has the exact
CANONICAL arithmetic output on the odd-image finite shift set. -/
theorem canonicalOddLiftEnergy_le_source_residual
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) ≤
      (liouvilleAllOrderEnergy M H +
        oddResidualAllOrderEnergy M H) / 2 := by
  rw [← oddLiftedAllOrderEnergy_eq_canonical]
  exact oddLiftedAllOrderEnergy_le_source_add_residual M H hM

/-- One usable canonical finite cyclic pattern-TV return, with
the existing strict collar premise for the ODD-LIFTED shift set.
Neither the source energy nor the residual energy is bounded here. -/
theorem canonicalOddLiftCyclicTV_le_source_residual
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M)
    (hr : cyclicMaxOffset (oddLiftOffsets H) < 2 * M) :
    (totalVariationFromUniform (Finset.range (2 * M))
      (cyclicShiftWord (2 * M) (oddLiftOffsets H)
        liouvillePositiveBool) : ℝ) ≤
      ((cyclicMaxOffset (oddLiftOffsets H) : ℚ) /
        ((2 * M : ℕ) : ℚ) : ℝ) +
      Real.sqrt
        (((liouvilleAllOrderEnergy M H +
            oddResidualAllOrderEnergy M H) / 2 : ℚ) : ℝ) / 2 := by
  have htv :=
    liouvilleCyclicTV_le_energy (2 * M) (oddLiftOffsets H) hr
  have hE := canonicalOddLiftEnergy_le_source_residual M H hM
  have hEreal :
      (liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) : ℝ) ≤
        (((liouvilleAllOrderEnergy M H +
            oddResidualAllOrderEnergy M H) / 2 : ℚ) : ℝ) := by
    exact_mod_cast hE
  have hsqrt := Real.sqrt_le_sqrt hEreal
  exact htv.trans
    (add_le_add_left
      (div_le_div_of_nonneg_right hsqrt (by norm_num)) _)

end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
```
