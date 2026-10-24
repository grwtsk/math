# Complete source: GRWTSK.Algebra.Complement.Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b01a7cd5d34b0c0a48d656e2c53c042615fbc226` · SHA-256 `52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Absorption

/-!
# Boolean complement neighborhood

Complement uniqueness, involution, and De Morgan laws are retained as
elementary consequences rather than primitive fields.
-/

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

theorem complement_unique (a b : B)
    (hJoin : a ⊔ b = ⊤)
    (hMeet : a ⊓ b = ⊥) :
    b = aᶜ :=
  (_root_.compl_unique hMeet hJoin).symm

@[simp] theorem complement_involutive (a : B) :
    aᶜᶜ = a := by simp

theorem complement_join_eq_meet (a b : B) :
    (a ⊔ b)ᶜ = aᶜ ⊓ bᶜ := by
  exact (_root_.compl_sup : (a ⊔ b)ᶜ = aᶜ ⊓ bᶜ)

theorem complement_meet_eq_join (a b : B) :
    (a ⊓ b)ᶜ = aᶜ ⊔ bᶜ := by
  exact (_root_.compl_inf : (a ⊓ b)ᶜ = aᶜ ⊔ bᶜ)

end Mathematics.Boolean
```
