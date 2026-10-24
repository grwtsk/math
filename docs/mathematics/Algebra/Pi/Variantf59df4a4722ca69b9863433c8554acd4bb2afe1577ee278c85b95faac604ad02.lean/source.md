# Complete source: GRWTSK.Algebra.Pi.Variantf59df4a4722ca69b9863433c8554acd4bb2afe1577ee278c85b95faac604ad02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d3677687fc0d46ccf02c7e5d55f1b9fcefdd9dc` · SHA-256 `f59df4a4722ca69b9863433c8554acd4bb2afe1577ee278c85b95faac604ad02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.Ring.Pi

/-!
# Characteristic of semirings of functions
-/


universe u v

namespace CharP

instance pi (ι : Type u) [hi : Nonempty ι] (R : Type v) [Semiring R] (p : ℕ) [CharP R p] :
    CharP (ι → R) p :=
  ⟨fun x =>
    let ⟨i⟩ := hi
    Iff.symm <|
      (CharP.cast_eq_zero_iff R p x).symm.trans
        ⟨fun h =>
          funext fun j =>
            show Pi.evalRingHom (fun _ => R) j (↑x : ι → R) = 0 by rw [map_natCast, h],
          fun h => map_natCast (Pi.evalRingHom (fun _ : ι => R) i) x ▸ by rw [h, RingHom.map_zero]⟩⟩

-- diamonds
instance pi' (ι : Type u) [Nonempty ι] (R : Type v) [CommRing R] (p : ℕ) [CharP R p] :
    CharP (ι → R) p :=
  CharP.pi ι R p

end CharP
```
