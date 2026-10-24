# Complete source: GRWTSK.Analysis.MeasureTheory.AddChar.Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d2852beabfe1e01110c2f11a963227233cdb2e5` · SHA-256 `764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.AddChar
import Mathlib.MeasureTheory.MeasurableSpace.Defs

/-!
# Measurable space instance for additive characters

This file endows `AddChar A M` with the discrete measurable space structure whenever `A` is a finite
discrete measurable space.

## TODO

Give the definition in the correct generality.
-/

namespace AddChar
variable {A M : Type*} [AddMonoid A] [Monoid M] [MeasurableSpace A] [MeasurableSpace M]

@[nolint unusedArguments]
instance instMeasurableSpace [DiscreteMeasurableSpace A] [Finite A] :
    MeasurableSpace (AddChar A M) :=
  ⊤

instance instDiscreteMeasurableSpace [DiscreteMeasurableSpace A] [Finite A] :
    DiscreteMeasurableSpace (AddChar A M) :=
  ⟨fun _ ↦ trivial⟩

end AddChar
```
