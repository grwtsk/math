# Four-distinct winding support sum

Issue: #917  
Parent: draft PR #914 at `29b7df06090c483645b23849f90c32648cd394f0`.

Let
```text
R = floor(b/d^2).
```

The lag-sensitive raw support ceiling is
```text
(b+1-z*d^2)*(b+1)^2.
```

Summing over `1<=z<=R` gives the arithmetic-series structure
```text
(b+1)^2 * [R*(b+1) - d^2*R*(R+1)/2].
```

The source records a division-free doubled version of this identity and the safe upper bound
```text
supportSum <= R*(b+1)^3.
```

Since `d^2*R <= b`, this yields
```text
d^2 * supportSum <= b*(b+1)^3,
```
or over the reals
```text
supportSum <= b*(b+1)^3/d^2.
```

Thus the deterministic winding aggregation has reciprocal-square modulus scaling. It does not produce a d^{-4} gain.

No Möbius cancellation estimate is asserted.
