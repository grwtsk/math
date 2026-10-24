# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerReindex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af16f71c7d3d88c6e5574f50b4a78fef37b46a81` · SHA-256 `96ca33239150c98efbd0cc682f967e73da28209170199a95fabfdc27c7896c30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerRepresentatives
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem nonAliasingFejerPrefixWeight_eq_prefixResidueSum
    {X N m p : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerPrefixWeight X N m p =
      ∑ z ∈ nonAliasingFejerPrefixResidues X m p,
        cyclicFejerKernel X N z := by
  classical
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold nonAliasingFejerPrefixWeight
    nonAliasingFejerPrefixResidues
  rw [Finset.sum_image]
  · apply Finset.sum_congr rfl
    intro q hq
    let L : ℕ := fejerOctavePeriod X
    let z : ZMod L :=
      (p : ZMod L) - (q : ZMod L)
    have hL : 0 < L := by
      dsimp [L, fejerOctavePeriod]
      omega
    have hzcast :
        ((z.val : ℤ) : ZMod L) =
          (((p : ℤ) - (q : ℤ)) : ZMod L) := by
      change ((z.val : ℕ) : ZMod L) =
        ((p : ZMod L) - (q : ZMod L))
      rw [ZMod.natCast_zmod_val]
      rfl
    unfold cyclicFejerKernel
    dsimp [z, L] at hzcast ⊢
    exact
      (signedSampledTriangularKernelAtPeriod_eq_of_modEq
        hL N hzcast).symm
  · intro a ha b hb hab
    exact nonAliasingFejerPrefixResidueMap_injective
      hX hm1 ha hb hab

end GRWTSK.RiemannHypothesis
```
