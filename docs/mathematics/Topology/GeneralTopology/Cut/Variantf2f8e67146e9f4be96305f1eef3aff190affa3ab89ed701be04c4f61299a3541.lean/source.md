# Complete source: GRWTSK.Topology.GeneralTopology.Cut.Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02f636ae4da9f46bcb72078aa18cbe6b5bf32ba0` · SHA-256 `f2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Basic

/-!
# Compact critical-strip cuts

The compact carrier is independent of the ownership convention at its upper
horizontal boundary.  Every global count and every local region must use the
same `owns` predicate.
-/

namespace Mathematics.RHIsolation

inductive HeightConvention
  | openTop
  | closedTop
deriving DecidableEq, Repr

structure CriticalStripCut where
  sigmaLower : ℝ
  sigmaUpper : ℝ
  heightLower : ℝ
  heightUpper : ℝ
  sigmaLower_pos : 0 < sigmaLower
  sigmaUpper_lt_one : sigmaUpper < 1
  sigma_order : sigmaLower < sigmaUpper
  heightLower_pos : 0 < heightLower
  height_order : heightLower < heightUpper
  convention : HeightConvention
  carrier : Set ℂ
  carrier_eq :
    carrier =
      {z |
        sigmaLower ≤ z.re ∧
        z.re ≤ sigmaUpper ∧
        heightLower ≤ z.im ∧
        z.im ≤ heightUpper}
  compact_carrier : IsCompact carrier
  digest : CutDigest

def CriticalStripCut.owns
    (cut : CriticalStripCut)
    (z : ℂ) : Prop :=
  z ∈ cut.carrier ∧
    match cut.convention with
    | .openTop => z.im < cut.heightUpper
    | .closedTop => z.im ≤ cut.heightUpper

def CriticalStripCut.boundaryOwned
    (cut : CriticalStripCut) : Prop :=
  match cut.convention with
  | .openTop =>
      ∀ z, z ∈ cut.carrier →
        z.im = cut.heightUpper →
        ¬ cut.owns z
  | .closedTop =>
      ∀ z, z ∈ cut.carrier →
        z.im = cut.heightUpper →
        cut.owns z

theorem CriticalStripCut.boundaryOwned_sound
    (cut : CriticalStripCut) :
    cut.boundaryOwned := by
  cases h : cut.convention
  · simp only [CriticalStripCut.boundaryOwned, h]
    intro z inCarrier onTop
    simp [CriticalStripCut.owns, h,
      inCarrier, onTop]
  · simp only [CriticalStripCut.boundaryOwned, h]
    intro z inCarrier onTop
    simp [CriticalStripCut.owns, h,
      inCarrier, onTop]

end Mathematics.RHIsolation
```
