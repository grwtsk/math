# Complete source: GRWTSK.Algebra.GroupTheory.Equiv.Variant31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5337f8ae42f64824246115f7fd5a06efc5dbedcd` · SHA-256 `31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Int.Order.Units
import Mathlib.GroupTheory.Perm.Finite

example : orderOf (-1 : ℤˣ) = 2 :=
  orderOf_eq_prime (Int.units_sq _) (by decide)
```
