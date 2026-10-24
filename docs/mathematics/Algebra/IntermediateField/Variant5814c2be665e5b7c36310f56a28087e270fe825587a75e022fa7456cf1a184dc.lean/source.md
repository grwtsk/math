# Complete source: GRWTSK.Algebra.IntermediateField.Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6016d298478c6c8a8283aa3cf74acabd3707d9bf` · SHA-256 `5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.Algebra.CharP.Algebra
import Mathlib.FieldTheory.IntermediateField.Basic

/-!

# Characteristic of intermediate fields

This file contains some convenient instances for determining the characteristic of
intermediate fields. Some char zero instances are not provided, since they are already
covered by `SubsemiringClass.instCharZero`.

-/

variable {F E : Type*} [Field F] [Field E] [Algebra F E]

namespace Subfield

variable (L : Subfield F) (p : ℕ)

instance charP [CharP F p] : CharP L p := RingHom.charP _ (algebraMap _ F).injective p

instance expChar [ExpChar F p] : ExpChar L p := RingHom.expChar _ (algebraMap _ F).injective p

end Subfield

namespace IntermediateField

variable (L : IntermediateField F E) (p : ℕ)

instance charZero [CharZero F] : CharZero L :=
  charZero_of_injective_algebraMap (algebraMap F _).injective

instance charP [CharP F p] : CharP L p :=
  charP_of_injective_algebraMap (algebraMap F _).injective p

instance expChar [ExpChar F p] : ExpChar L p :=
  expChar_of_injective_algebraMap (algebraMap F _).injective p

instance charP' [CharP E p] : CharP L p := Subfield.charP L.toSubfield p

instance expChar' [ExpChar E p] : ExpChar L p := Subfield.expChar L.toSubfield p

end IntermediateField
```
