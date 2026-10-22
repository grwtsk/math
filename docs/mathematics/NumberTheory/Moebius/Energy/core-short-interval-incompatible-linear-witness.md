# Linear-scale witness for the trivial incompatible-block method

Issue: #575. Parent deterministic budget: #572 / draft PR #574.

Evidence state: **WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / INCOMPATIBLE_BLOCK_CANCELLATION_OPEN**.

## Fixed-length incompatible block bound

For retained interval length `n`, every incompatible start block satisfies `2^r<n`.

The source proves
```text
dyadicStartBlockShortIntervalL1(r,n) <= 2^r n <= n^2.
```

There are at most `j+1` dyadic block scales in the packet, hence
```text
incompatibleDyadicStartBlockL1(j,n)
  <= (j+1) n^2.
```

This is a deterministic estimate using only `|mu|<=1`.

## Depth-sum scale loss

The source isolates the pure one-depth proposition
```lean
IncompatibleEndpointDepthBudget j t
```
and its uniform all-depth version.

It then proves that even if every core depth satisfies the displayed O(j) deterministic estimate, summing over the possible core depths yields only
```text
O((j+2) 2^j)
```
at packet scale.

This is authored as
```lean
incompatibleEndpointLinearScaleBound_of_uniformDepthBudget.
```

The theorem is an upper-bound certificate for the crude method. It is not a lower bound and does not prove that sharper deterministic estimates are impossible.

## Consequence

The current plan
```text
pointwise trivial short-interval bound
-> uniform one-depth bound
-> sum every depth
```
does not by itself reach the subpolynomial RH-facing target.

Any successful closure of the incompatible/endpoint component must improve the argument before or during the depth sum, for example by:
- exploiting exact depth dependence of the Abel coefficients;
- transposing the low-block terms across depths;
- proving cancellation/orthogonality shared across depths;
- or replacing the crude n^2 first-moment estimate.

The source types this remaining requirement through
```lean
IncompatibleDepthSummationImprovement.
```

## Nonclaims

No lower bound, impossibility theorem, short-interval theorem application, Lean/Lake replay, merge, or RH proof is claimed.
