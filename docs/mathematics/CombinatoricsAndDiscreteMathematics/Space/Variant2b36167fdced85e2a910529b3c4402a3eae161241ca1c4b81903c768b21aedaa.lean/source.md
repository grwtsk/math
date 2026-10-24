# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Space.Variant2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19989d69dae11eb77bda890411f3f116dc4da76f` · SHA-256 `2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Semi-local Sonin spaces

The carrier at each finite cut is kept distinct from both the abstract defect
capacity and every Hardy realization.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninSpaceFamily
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  Space : Finset Prime → Type uSpace
  origin : ∀ cut, Space cut
  realizationDigest :
    Finset Prime → RealizationDigest

end Mathematics.SemiLocalDefect.Sonin
```
