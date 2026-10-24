# Complete source: GRWTSK.Algebra.Identity.Variant1d229ca6fcc9017e3bc5d00aa7f450b7b8c3ec8f9e058b4cf589d848743644a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bae3d53576ac690321d274d03ba89f54bb17ddb` · SHA-256 `1d229ca6fcc9017e3bc5d00aa7f450b7b8c3ec8f9e058b4cf589d848743644a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Carrier

/-!
# Boolean identity neighborhood

Elementary bounded-lattice identities are exposed under source-facing names,
but proved by the canonical Mathlib structure.
-/

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

@[simp] theorem bot_join (a : B) : ⊥ ⊔ a = a := by simp
@[simp] theorem top_meet (a : B) : ⊤ ⊓ a = a := by simp
@[simp] theorem complement_join (a : B) : aᶜ ⊔ a = ⊤ := by simp
@[simp] theorem complement_meet (a : B) : aᶜ ⊓ a = ⊥ := by simp
@[simp] theorem join_idempotent (a : B) : a ⊔ a = a := by simp
@[simp] theorem meet_idempotent (a : B) : a ⊓ a = a := by simp
@[simp] theorem join_top (a : B) : a ⊔ ⊤ = ⊤ := by simp
@[simp] theorem top_join (a : B) : ⊤ ⊔ a = ⊤ := by simp
@[simp] theorem meet_bot (a : B) : a ⊓ ⊥ = ⊥ := by simp
@[simp] theorem bot_meet (a : B) : ⊥ ⊓ a = ⊥ := by simp

end Mathematics.Boolean
```
