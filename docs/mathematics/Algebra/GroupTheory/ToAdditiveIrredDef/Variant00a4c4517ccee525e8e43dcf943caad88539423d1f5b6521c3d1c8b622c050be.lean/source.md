# Complete source: GRWTSK.Algebra.GroupTheory.ToAdditiveIrredDef.Variant00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ce52c86294ede05a87dd5be03eec6ebbebd18a0` · SHA-256 `00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Algebra.Group.Defs

set_option autoImplicit true
@[to_additive]
irreducible_def mul_conj [Group G] (a b : G) := a⁻¹ * b * a

example [AddGroup A] (a b : A) : add_conj a b = (-a) + b + a :=
  add_conj_def a b
```
