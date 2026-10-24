# Complete source: GRWTSK.Algebra.RingTheory.Integral.Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b26fea87bdddadc8794854ea4303cf92512d7df8` · SHA-256 `4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.RingHomProperties
import Mathlib.RingTheory.IntegralClosure

#align_import ring_theory.ring_hom.integral from "leanprover-community/mathlib"@"a7c017d750512a352b623b1824d75da5998457d0"

/-!

# The meta properties of integral ring homomorphisms.

-/


namespace RingHom

open scoped TensorProduct

open TensorProduct Algebra.TensorProduct

theorem isIntegral_stableUnderComposition : StableUnderComposition fun f => f.IsIntegral := by
  introv R hf hg; exact RingHom.isIntegral_trans _ _ hf hg
#align ring_hom.is_integral_stable_under_composition RingHom.isIntegral_stableUnderComposition

theorem isIntegral_respectsIso : RespectsIso fun f => f.IsIntegral := by
  apply isIntegral_stableUnderComposition.respectsIso
  introv x
  rw [← e.apply_symm_apply x]
  apply RingHom.is_integral_map
#align ring_hom.is_integral_respects_iso RingHom.isIntegral_respectsIso

theorem isIntegral_stableUnderBaseChange : StableUnderBaseChange fun f => f.IsIntegral := by
  refine' StableUnderBaseChange.mk _ isIntegral_respectsIso _
  introv h x
  refine' TensorProduct.induction_on x _ _ _
  · apply isIntegral_zero
  · intro x y; exact IsIntegral.tmul x (h y)
  · intro x y hx hy; exact isIntegral_add hx hy
#align ring_hom.is_integral_stable_under_base_change RingHom.isIntegral_stableUnderBaseChange

end RingHom
```
