# Complete source: GRWTSK.Algebra.GroupTheory.Realization.Variant5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b82fa3f7cc892b738f950694da2473eea7b3190e` · SHA-256 `5f565b31f945f5b9dfddc87e07cddc684105a195c09b821f1056df01fb76d1be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Tally
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Real.Basic

/-!
# Separate tally realizations

Modular, Archimedean, group-phase, and frontier-origin realizations are
siblings with different codomains.  Equality in one carrier never creates a
transport into another.
-/

namespace Mathematics.AbelReynolds

def modularRealization (modulus : Nat) (tally : Tally) : ZMod modulus :=
  tally.count

def realRealization (tally : Tally) : ℝ :=
  (tally.count : ℝ)

def groupRealization
    {Group : Type*}
    [Monoid Group]
    (generator : Group)
    (tally : Tally) : Group :=
  generator ^ tally.count

structure FrontierCoordinate (modulus dimension : Nat) where
  entries : Fin dimension → ZMod modulus

@[simp] theorem modularRealization_ofNat
    (modulus count : Nat) :
    modularRealization modulus (Tally.ofNat count) =
      (count : ZMod modulus) :=
  rfl

@[simp] theorem realRealization_ofNat (count : Nat) :
    realRealization (Tally.ofNat count) = (count : ℝ) :=
  rfl

@[simp] theorem groupRealization_ofNat
    {Group : Type*}
    [Monoid Group]
    (generator : Group)
    (count : Nat) :
    groupRealization generator (Tally.ofNat count) =
      generator ^ count :=
  rfl

example : (Tally.ofNat 0).count = 0 := rfl
example : (Tally.ofNat 1).count = 1 := rfl
example : (Tally.ofNat 2).count = 2 := rfl
example : (Tally.ofNat 3).count = 3 := rfl
example : (Tally.ofNat 4).count = 4 := rfl
example : (Tally.ofNat 5).count = 5 := rfl

end Mathematics.AbelReynolds
```
