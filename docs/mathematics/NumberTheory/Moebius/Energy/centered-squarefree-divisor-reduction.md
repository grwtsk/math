# Squarefree-weighted collision terms via divisor-square expansion

Issue: #894  
Parent: draft PR #893 at `4f3c0e4afcc889838228f346d6c17af2d94315d8`.

The degenerate collision strata have the structural form
```text
mu(a)^2 * mu(b) * mu(c).
```

The classical identity
```text
mu(a)^2 = sum_(q^2 | a) mu(q)
```
would convert this into
```text
sum_(q^2 | a) mu(q) mu(b) mu(c).
```

Because no checked repository declaration for that identity was located in this increment, the source does not claim it as proved. Instead it introduces the explicit premise
```lean
MobiusSquareDivisorExpansion
```
and proves the downstream finite rewrite conditionally.

The finite carrier is
```lean
squareDivisorSet
```
and the exact superposition is
```lean
squareDivisorExpandedWeightedBinary.
```

This preserves the square-divisibility restriction exactly. No squarefree weight is discarded.

Remaining obligations:
```text
MOBIUS_SQUARE_DIVISOR_IDENTITY_BINDING_OPEN
DIVISOR_SQUARE_RESTRICTED_BINARY_ESTIMATE_OPEN
FOUR_DISTINCT_CORRELATION_ESTIMATE_OPEN
```

Status remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
