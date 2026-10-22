# Center-variable Cauchy dimension reduction

Issue: #923  
Parent: draft PR #921 at `dfab98b6e02e76203848b664a7fe5d95400f7c1c`.

The raw four-Möbius expansion has up to three apparent summation dimensions `(c,h,g)`, but before expanding the shift fibers the same object is a one-dimensional center autocorrelation:
```text
sum_c C(c) C(c+ell).
```

The source defines restricted left/right center energies and applies finite Cauchy-Schwarz:
```text
|sum_c C(c)C(c+ell)|^2
 <= (sum_c C(c)^2)(sum_c C(c+ell)^2).
```

Both restricted square sums are bounded by the full integer-center second moment
```text
M2 = sum_(c<=b) C(c)^2.
```

Hence
```text
|lag autocorrelation|^2 <= M2^2.
```

The existing zero-winding fiber energy is exactly
```text
4*M2.
```

Therefore the centered wrap branch admits a dimension-reduced route through the already-existing zero-winding energy, bypassing both:
- the raw b^4 four-point support count;
- the degenerate/four-distinct collision split.

No second-moment estimate is proved. The new analytic interface is
```lean
RegularCenteredIntegerCoordinateSecondMomentEnvelope.
```
