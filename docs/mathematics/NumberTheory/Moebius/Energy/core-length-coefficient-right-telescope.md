# Right-regime telescope for the aggregated coefficient mass

Issue: #595. Parent non-boundary mass: #591 / draft PR #593.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PIECEWISE_COEFFICIENT_BOUNDARY_ONLY**.

## Right-depth indexing

For retained lengths `j+2 <= n < 2^j`, the right depth regime is the contiguous interval
```text
[2^j-1, 2^(j+1)).
```

The unique terminal depth is
```text
2^(j+1)-n-2.
```

At that depth, the active shift count is exactly `n`, and the terminal coefficient is
```text
reciprocalFirstDifference(2^(j+1)-1).
```

## Interior telescope

Before the terminal depth, the fixed-length interior selector is present. Under
```text
m = t+n+1,
```
the interior depths reindex exactly to
```text
2^j+n <= m < 2^(j+1)-1.
```

Their reciprocal second differences telescope to
```text
reciprocalFirstDifference(2^j+n)
 - reciprocalFirstDifference(2^(j+1)-1).
```

Adding the unique terminal contribution cancels the far endpoint and gives
```text
rightLengthCoefficientMass(j,n)
 = reciprocalFirstDifference(2^j+n).
```

## Full non-boundary bound

Combining this exact right telescope with the left-regime bound from #591 proves
```text
fullLengthCoefficientMass(j,n)
 <= 3 * (1/(2^j+n))^2
```
for every retained non-boundary length `j+2 <= n < 2^j`.

## Remaining coefficient-mass issue

Only the explicit boundary length `n=2^j` remains exceptional, already isolated in #589 at reciprocal-first-power scale.

No Möbius estimate, short-interval theorem, Lean/Lake replay, merge, or RH proof is claimed.
