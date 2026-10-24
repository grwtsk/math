# Complete source: GRWTSK.Algebra.Subring.Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ccb16333d933ec2ab89002f792dd0a8b779a2df` · SHA-256 `a33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.CharP.Algebra

/-!
# Characteristic of subrings
-/


universe u v

namespace CharP

instance subsemiring (R : Type u) [Semiring R] (p : ℕ) [CharP R p] (S : Subsemiring R) :
    CharP S p :=
  ⟨fun x =>
    Iff.symm <|
      (CharP.cast_eq_zero_iff R p x).symm.trans
        ⟨fun h => Subtype.eq <| show S.subtype x = 0 by rw [map_natCast, h], fun h =>
          map_natCast S.subtype x ▸ by rw [h, RingHom.map_zero]⟩⟩

instance subring (R : Type u) [Ring R] (p : ℕ) [CharP R p] (S : Subring R) : CharP S p :=
  ⟨fun x =>
    Iff.symm <|
      (CharP.cast_eq_zero_iff R p x).symm.trans
        ⟨fun h => Subtype.eq <| show S.subtype x = 0 by rw [map_natCast, h], fun h =>
          map_natCast S.subtype x ▸ by rw [h, RingHom.map_zero]⟩⟩

instance subring' (R : Type u) [CommRing R] (p : ℕ) [CharP R p] (S : Subring R) : CharP S p :=
  CharP.subring R p S

/-- The characteristic of a division ring is equal to the characteristic
  of its center -/
theorem charP_center_iff {R : Type u} [Ring R] {p : ℕ} :
    CharP (Subring.center R) p ↔ CharP R p :=
  (algebraMap (Subring.center R) R).charP_iff Subtype.val_injective p

end CharP

namespace ExpChar

theorem expChar_center_iff {R : Type u} [Ring R] {p : ℕ} :
    ExpChar (Subring.center R) p ↔ ExpChar R p :=
  (algebraMap (Subring.center R) R).expChar_iff Subtype.val_injective p

end ExpChar
```
