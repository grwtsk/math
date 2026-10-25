# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Computable.Variantb1975bbde95ac9dbd7cc43e592dedda9d8b40b3e27894f12b8d5c972b1794e3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `637ae3a14e6de34d717a27734168fca4b6ca1576` · SHA-256 `b1975bbde95ac9dbd7cc43e592dedda9d8b40b3e27894f12b8d5c972b1794e3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
module

public import Mathlib.Computability.TuringMachine.Computable

namespace Turing

/--
For any two polynomial time Multi-tape Turing Machines,
there exists another polynomial time multi-tape Turing Machine that composes their operations.
This machine can work by simply having one tape for each tape in both of the composed TMs.
It first carries out the operations of the first TM on the tapes associated with the first TM,
then copies the output tape of the first TM to the input tape of the second TM,
then runs the second TM.
-/
proof_wanted TM2ComputableInPolyTime.comp
    {α β γ αΓ βΓ γΓ : Type} {eα : α → List αΓ} {eβ : β → List βΓ}
    {eγ : γ → List γΓ} {f : α → β} {g : β → γ} (h1 : TM2ComputableInPolyTime eα eβ f)
    (h2 : TM2ComputableInPolyTime eβ eγ g) :
  Nonempty (TM2ComputableInPolyTime eα eγ (g ∘ f))

end Turing
```
