# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ViaEmbedding.Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af68a4dbe45476fdf34fe1fd95f2883f66212c77` · SHA-256 `6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
import Mathlib.Algebra.Group.End
import Mathlib.Logic.Embedding.Basic
import Mathlib.Logic.Equiv.Set

/-!
# `Equiv.Perm.viaEmbedding`, a noncomputable analogue of `Equiv.Perm.viaFintypeEmbedding`.
-/


variable {α β : Type*}

namespace Equiv

namespace Perm

variable (e : Perm α) (ι : α ↪ β)

open scoped Classical in
/-- Noncomputable version of `Equiv.Perm.viaFintypeEmbedding` that does not assume `Fintype` -/
noncomputable def viaEmbedding : Perm β :=
  extendDomain e (ofInjective ι.1 ι.2)

open scoped Classical in
theorem viaEmbedding_apply (x : α) : e.viaEmbedding ι (ι x) = ι (e x) :=
  extendDomain_apply_image e (ofInjective ι.1 ι.2) x

open scoped Classical in
theorem viaEmbedding_apply_of_notMem (x : β) (hx : x ∉ Set.range ι) : e.viaEmbedding ι x = x :=
  extendDomain_apply_not_subtype e (ofInjective ι.1 ι.2) hx

@[deprecated (since := "2025-05-23")]
alias viaEmbedding_apply_of_not_mem := viaEmbedding_apply_of_notMem

open scoped Classical in
/-- `viaEmbedding` as a group homomorphism -/
noncomputable def viaEmbeddingHom : Perm α →* Perm β :=
  extendDomainHom (ofInjective ι.1 ι.2)

theorem viaEmbeddingHom_apply : viaEmbeddingHom ι e = viaEmbedding e ι :=
  rfl

open scoped Classical in
theorem viaEmbeddingHom_injective : Function.Injective (viaEmbeddingHom ι) :=
  extendDomainHom_injective (ofInjective ι.1 ι.2)

end Perm

end Equiv
```
