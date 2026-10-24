# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Contractible.Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `182826e1e06e5eb5699a646379ac4e5b84868ad9` · SHA-256 `5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Convex.Star
import Mathlib.Topology.Homotopy.Contractible

/-!
# A convex set is contractible

In this file we prove that a (star) convex set in a real topological vector space is a contractible
topological space.
-/


variable {E : Type*} [AddCommGroup E] [Module ℝ E] [TopologicalSpace E] [ContinuousAdd E]
  [ContinuousSMul ℝ E] {s : Set E} {x : E}

/-- A non-empty star convex set is a contractible space. -/
protected theorem StarConvex.contractibleSpace (h : StarConvex ℝ x s) (hne : s.Nonempty) :
    ContractibleSpace s := by
  refine
    (contractible_iff_id_nullhomotopic s).2
      ⟨⟨x, h.mem hne⟩,
        ⟨⟨⟨fun p => ⟨p.1.1 • x + (1 - p.1.1) • (p.2 : E), ?_⟩, ?_⟩, fun x => ?_, fun x => ?_⟩⟩⟩
  · exact h p.2.2 p.1.2.1 (sub_nonneg.2 p.1.2.2) (add_sub_cancel _ _)
  · exact
      ((continuous_subtype_val.fst'.smul continuous_const).add
            ((continuous_const.sub continuous_subtype_val.fst').smul
              continuous_subtype_val.snd')).subtype_mk
        _
  · ext1
    simp
  · ext1
    simp

/-- A non-empty convex set is a contractible space. -/
protected theorem Convex.contractibleSpace (hs : Convex ℝ s) (hne : s.Nonempty) :
    ContractibleSpace s :=
  let ⟨_, hx⟩ := hne
  (hs.starConvex hx).contractibleSpace hne

instance (priority := 100) RealTopologicalVectorSpace.contractibleSpace : ContractibleSpace E :=
  (Homeomorph.Set.univ E).contractibleSpace_iff.mp <|
    convex_univ.contractibleSpace Set.univ_nonempty
```
