# Complete source: GRWTSK.Algebra.Primitive.Variant01adc46d2ff1a0e1ff28544bae75660687a1cd48e8157a37e1ac445f99444b66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2fa9d7a1469f84a22e0c87e4a44056e6ec4b2cd` · SHA-256 `01adc46d2ff1a0e1ff28544bae75660687a1cd48e8157a37e1ac445f99444b66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Robert Hawkins. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Hawkins
-/
module

public import Mathlib.RingTheory.Bialgebra.Primitive
public import Mathlib.RingTheory.HopfAlgebra.Basic

/-!
# Primitive elements in a Hopf algebra

Facts about primitive elements in a Hopf algebra.

## Main declarations

* `Bialgebra.IsPrimitiveElem.antipode_eq_neg`: the antipode sends primitive elements to their
  negation.
* `Bialgebra.IsPrimitiveElem.antipode`: the antipode preserves primitivity.

## References

* [D. Grinberg, V. Reiner, *Hopf algebras in combinatorics*][GrinbergReiner2020]
-/

public section

open Bialgebra HopfAlgebra

variable {R A : Type*} [CommSemiring R] [Ring A] [HopfAlgebra R A] {a : A}

namespace Bialgebra.IsPrimitiveElem

/-- See Proposition 1.4.17 in [GrinbergReiner2020]. -/
@[simp] theorem antipode_eq_neg (ha : IsPrimitiveElem R a) : antipode R a = -a :=
  eq_neg_of_add_eq_zero_right <| by
    simpa [ha.comul_eq_tmul_add_tmul, ha.counit_eq_zero]
      using mul_antipode_rTensor_comul_apply (R := R) a

protected lemma antipode (ha : IsPrimitiveElem R a) : IsPrimitiveElem R (antipode R a) :=
  ha.antipode_eq_neg ▸ ha.neg

lemma antipode_antipode (ha : IsPrimitiveElem R a) : antipode R (antipode R a) = a := by
  simp [ha]

end Bialgebra.IsPrimitiveElem
```
