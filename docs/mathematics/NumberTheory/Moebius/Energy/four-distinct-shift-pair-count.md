# Four-distinct admissible shift-pair multiplicity

Issue: #911  
Parent: draft PR #910 at `c5b42c8fefa8e817888f33530f9590cb1f050130`.

The existing admissibility predicate forces every half-shift at center `c` to satisfy `h<=c`. Therefore
```text
# admissible shifts at c <= c+1 <= b+1
```
for endpoint-valid centers.

Hence the admissible product at centers `c` and `c+ell` has cardinality at most
```text
(b+1)^2.
```
Filtering to the genuinely four-distinct stratum cannot increase this count.

Summing over at most `b+1` centers gives the safe one-lag configuration bound
```text
(b+1)^3.
```

This is intentionally coarse. It is a combinatorial ceiling, not an analytic estimate. Any proposed per-lag cancellation exponent can now be compared against an explicit raw configuration count rather than an unspecified multiplicity.
