# Complete source: GRWTSK.Topology.GeneralTopology.CompactlyGenerated.Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6213ed0602433d989d1c3f1243b763ab3a2d1a15` · SHA-256 `0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker, Etienne Marion
-/
import Mathlib.Topology.Compactness.CompactlyGeneratedSpace
import Mathlib.Topology.Maps.Proper.Basic

/-!
# A map is proper iff preimage of compact sets are compact

This file proves that if `Y` is a Hausdorff and compactly generated space, a continuous map
`f : X → Y` is proper if and only if preimage of compact sets are compact.
-/

open Set Filter

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
variable [T2Space Y] [CompactlyGeneratedSpace Y]
variable {f : X → Y}

/-- If `Y` is Hausdorff and compactly generated, then proper maps `X → Y` are exactly
continuous maps such that the preimage of any compact set is compact. This is in particular true
if `Y` is Hausdorff and sequential or locally compact.

There was an older version of this theorem which was changed to this one to make use
of the `CompactlyGeneratedSpace` typeclass. (since 2024-11-10) -/
theorem isProperMap_iff_isCompact_preimage :
    IsProperMap f ↔ Continuous f ∧ ∀ ⦃K⦄, IsCompact K → IsCompact (f ⁻¹' K) where
  mp hf := ⟨hf.continuous, fun _ ↦ hf.isCompact_preimage⟩
  mpr := fun ⟨hf, h⟩ ↦ isProperMap_iff_isClosedMap_and_compact_fibers.2
    ⟨hf, fun _ hs ↦ CompactlyGeneratedSpace.isClosed
      fun _ hK ↦ image_inter_preimage .. ▸ (((h hK).inter_left hs).image hf).isClosed,
      fun _ ↦ h isCompact_singleton⟩

/-- Version of `isProperMap_iff_isCompact_preimage` in terms of `cocompact`.

There was an older version of this theorem which was changed to this one to make use
of the `CompactlyGeneratedSpace` typeclass. (since 2024-11-10) -/
lemma isProperMap_iff_tendsto_cocompact :
    IsProperMap f ↔ Continuous f ∧ Tendsto f (cocompact X) (cocompact Y) := by
  simp_rw [isProperMap_iff_isCompact_preimage,
    hasBasis_cocompact.tendsto_right_iff, ← mem_preimage, eventually_mem_set, preimage_compl]
  refine and_congr_right fun f_cont ↦
    ⟨fun H K hK ↦ (H hK).compl_mem_cocompact, fun H K hK ↦ ?_⟩
  rcases mem_cocompact.mp (H K hK) with ⟨K', hK', hK'y⟩
  exact hK'.of_isClosed_subset (hK.isClosed.preimage f_cont)
    (compl_le_compl_iff_le.mp hK'y)
```
