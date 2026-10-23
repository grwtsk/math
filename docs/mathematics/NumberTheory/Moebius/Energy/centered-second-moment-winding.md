# Center second moment through winding multiplicity

Issue: #925  
Parent: draft PR #924 at `f1fc866c602a4e6ab10688043cf359602406fcbd`.

For the four endpoint-parity/half-shift families define the total center second moment `M2(b)`. The corresponding zero-winding energy is exactly
```text
Z(b) = 4*M2(b).
```

The center-Cauchy bound controls every positive lag autocorrelation by `M2(b)`. Paying the factor 8 and the winding radius gives, at modulus d,
```text
cost <= 8*floor(b/d^2)*M2(b).
```

Using
```text
floor(b/d^2) <= b/d^2
```
and the existing reciprocal-square mass bound
```text
sum_(effective d) 1/d^2 <= 2,
```
the endpoint cost satisfies
```text
costEndpoint <= 16*b*M2(b)
             = 4*b*Z(b).
```

Therefore natural-scale `b^(1+epsilon)` wrap control via this route requires
```text
M2(b) <= b^epsilon,
```
equivalently subpolynomial zero-winding energy.

This is a precise but strong requirement. The source does not claim that any existing repository energy premise supplies it; that premise-strength audit is the next obligation.
