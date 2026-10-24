# Complete source: GRWTSK.Algebra.Filter.Variant855ddf610f8bac3ce202ca5475971fcc8ff0ed071a347d025bf72498e130dc03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5beccaa008162037121e27a722f9a92a327e406` · SHA-256 `855ddf610f8bac3ce202ca5475971fcc8ff0ed071a347d025bf72498e130dc03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro, Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kevin Buzzard
-/
module

public import Mathlib.Order.Filter.EventuallyConst
public import Mathlib.RingTheory.Noetherian.Defs

/-!
# Noetherian modules and finiteness of chains

## Main results

Let `R` be a ring and let `M` be an `R`-module.

* `eventuallyConst_of_isNoetherian`: an ascending chain of submodules in a
  Noetherian module is eventually constant

## References

* [M. F. Atiyah and I. G. Macdonald, *Introduction to commutative algebra*][atiyah-macdonald]
* [P. Samuel, *Algebraic Theory of Numbers*][samuel1967]

## Tags

Noetherian, noetherian, Noetherian ring, Noetherian module, noetherian ring, noetherian module

-/

public section


open Filter

open IsNoetherian Submodule

section Semiring

variable {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

theorem eventuallyConst_of_isNoetherian [IsNoetherian R M] (f : ℕ →o Submodule R M) :
    atTop.EventuallyConst f := by
  simp_rw [eventuallyConst_atTop, eq_comm]
  exact (monotone_stabilizes_iff_noetherian.mpr inferInstance) f

end Semiring
```
