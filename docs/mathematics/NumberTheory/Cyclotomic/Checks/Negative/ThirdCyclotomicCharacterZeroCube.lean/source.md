# Complete source: GRWTSK.NumberTheory.Cyclotomic.Checks.Negative.ThirdCyclotomicCharacterZeroCube

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `600d6ed7b10a4d866fc7225ef52df024b136ab5f` · SHA-256 `7e423a5a2cb5a9f6c78740f357fc1a41b832c01545e4a6e87ada20f8ccfb8242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
The positive module proves actual nonvacuity and that the value at zero has cube zero.
Original OpenAI/Mathlib Apache-2.0 notices remain attached to the imported source.
-/
import GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicCharacters

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.Checks.Negative

open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction

-- Intended rejection: character equality to the trivial character is not pointwise cube=1 at zero.
example (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood 0 ^ 3 = 1 :=
  cubicChar_pow_three P hgood

end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.Checks.Negative
```
