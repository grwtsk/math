# Complete source: GRWTSK.Algebra.GroupTheory.Submonoid.Variantba5b310f916f7068a463f4b88d7bc35a0458626b87f2b99c5822b607fd6aad8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c605418880d2d198f7aae0f948c8e0d17afa954b` · SHA-256 `ba5b310f916f7068a463f4b88d7bc35a0458626b87f2b99c5822b607fd6aad8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.Order.Archimedean.Basic

/-!
# Submonoids of archimedean monoids

This file defines the instances that show that the (mul)archimedean property is retained in a
submonoid of the ambient group.

## Main statements

* `SubmonoidClass.instMulArchimedean`: the submonoid (and similar subobjects) of a mul-archimedean
  group retains the mul-archimedean property when restricted to the submonoid.
* `AddSubmonoidClass.instArchimedean`: the additive submonoid (and similar subobjects) of an
  archimedean additive group retains the archimedean property when restricted to the additive
  submonoid.
-/

assert_not_exists Finset

@[to_additive]
instance SubmonoidClass.instMulArchimedean {M S : Type*} [SetLike S M]
    [CommMonoid M] [PartialOrder M]
    [SubmonoidClass S M] [MulArchimedean M] (H : S) : MulArchimedean H := by
  constructor
  rintro x _
  simp only [← Subtype.coe_lt_coe, OneMemClass.coe_one, SubmonoidClass.mk_pow, Subtype.mk_le_mk]
  exact MulArchimedean.arch x.val
```
