# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArbitraryFueled.Variant0cdd927b6cfd31c4a6d37c56d49ea4d168cc4c47a1365af08afcf8bd409b3a41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7097f89c1f878e766914b36a2a0bbe8d3793ec40` · SHA-256 `0cdd927b6cfd31c4a6d37c56d49ea4d168cc4c47a1365af08afcf8bd409b3a41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 AWS. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: AWS
-/
module

public import Plausible.Arbitrary

public section

namespace Plausible

open Gen

/-- A typeclass for *fueled* random generation, i.e. a variant of
    the `Arbitrary` typeclass where the fuel for the generator is made explicit.
    - This typeclass is equivalent to Rocq QuickChick's `arbitrarySized` typeclass
      (QuickChick uses the `Nat` parameter as both fuel and the generator size,
       here we use it just for fuel, as Plausible's `Gen` type constructor
       already internalizes the size parameter.) -/
class ArbitraryFueled (α : Type) where
  /-- Takes a `Nat` and produces a random generator dependent on the `Nat` parameter
      (which indicates the amount of fuel to be used before failing). -/
  arbitraryFueled : Nat → Gen α

/-- Every `ArbitraryFueled` instance gives rise to an `Arbitrary` instance -/
instance [ArbitraryFueled α] : Arbitrary α where
  arbitrary := Gen.sized ArbitraryFueled.arbitraryFueled

end Plausible
```
