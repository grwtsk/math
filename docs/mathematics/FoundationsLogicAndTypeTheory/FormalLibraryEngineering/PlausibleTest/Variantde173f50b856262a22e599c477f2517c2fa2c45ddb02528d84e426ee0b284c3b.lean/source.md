# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlausibleTest.Variantde173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9873d17ae0e5f80009ac04eb48ed4b0c95699f09` · SHA-256 `de173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import PlausibleTest.Tactic
import PlausibleTest.Testable

-- Tests for `deriving Arbitrary`
import PlausibleTest.DeriveArbitrary.DeriveTreeGenerator
import PlausibleTest.DeriveArbitrary.DeriveSTLCTermTypeGenerators
import PlausibleTest.DeriveArbitrary.DeriveNKIValueGenerator
import PlausibleTest.DeriveArbitrary.DeriveNKIBinopGenerator
import PlausibleTest.DeriveArbitrary.DeriveRegExpGenerator
import PlausibleTest.DeriveArbitrary.StructureTest
import PlausibleTest.DeriveArbitrary.BitVecStructureTest
import PlausibleTest.DeriveArbitrary.MissingNonRecursiveConstructorTest
import PlausibleTest.DeriveArbitrary.ParameterizedTypeTest
import PlausibleTest.DeriveArbitrary.MutuallyRecursiveTypeTest

-- Tests for `deriving Shrinkable`
import PlausibleTest.DeriveShrinkable.DeriveShrinkableTest
import PlausibleTest.DeriveShrinkable.DeriveShrinkableMutualTest
```
