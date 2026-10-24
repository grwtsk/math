# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pi.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac7b42a019040ffb45e16fcd1350d5500901d0cf` · SHA-256 `d4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Yaël Dillies
-/
import Mathlib.Algebra.NoZeroSMulDivisors.Defs
import Mathlib.Algebra.Group.Action.Pi

/-!
# Pi instances for NoZeroSMulDivisors

This file defines instances for NoZeroSMulDivisors on Pi types.
-/


universe u v

variable {I : Type u}

-- The indexing type
variable {f : I → Type v}

instance Pi.noZeroSMulDivisors (α) [Zero α] [∀ i, Zero <| f i]
    [∀ i, SMulWithZero α <| f i] [∀ i, NoZeroSMulDivisors α <| f i] :
    NoZeroSMulDivisors α (∀ i : I, f i) :=
  ⟨fun {_ _} h =>
    or_iff_not_imp_left.mpr fun hc =>
      funext fun i => (smul_eq_zero.mp (congr_fun h i)).resolve_left hc⟩

/-- A special case of `Pi.noZeroSMulDivisors` for non-dependent types. Lean struggles to
synthesize this instance by itself elsewhere in the library. -/
instance _root_.Function.noZeroSMulDivisors {ι α β : Type*} [Zero α] [Zero β]
    [SMulWithZero α β] [NoZeroSMulDivisors α β] : NoZeroSMulDivisors α (ι → β) :=
  Pi.noZeroSMulDivisors _
```
