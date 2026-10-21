# Source-specific Möbius bilinear factorization of signed Abel depth slices

Issue: #492. Parent interface: #476 / draft PR #481.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / BILINEAR_ESTIMATE_OPEN**.

## Exact factorization

For the inherited signed depth slice

[
D_{j,t}=sum_h 2,C_h(t+1),Delta_{j,h}(t),
]

expand

[
C_h(t+1)=sum_{a<t+1}mu(a+1)mu(a+1+h).
]

Finite Fubini gives

[
D_{j,t}
=
sum_{a<t+1}mu(a+1),R_{j,t}(a),
]

where

[
R_{j,t}(a)
=
sum_{1le h<2^{j+1}}
1_{t<2^{j+1}-h-1},
2,mu(a+1+h),Delta_{j,h}(t).
]

This is an exact signed identity. No absolute value or square is introduced.

## Source-specific bilinear model

The module instantiates the generic parent model with:

```text
support(j,t) = range(t+1)
alpha(j,t,a) = mu(a+1)
beta(j,t,a) = signedAbelDepthShiftResponse(j,t,a)
residual(j,t) = 0
```

The residual is exactly zero because the factorization is exact.

The structured packet therefore equals the inherited signed depth packet.

## Mathematical interpretation

The obstruction is now exposed as a genuine finite bilinear form:

- left coordinate: the base Möbius coefficient;
- right coordinate: the complete Abel-weighted response of the shifted Möbius family;
- outer depth parameter: inherited unchanged;
- triangular support: retained exactly inside the response.

This is the first source-specific point at which a large-sieve, dispersion, Fourier, or Cauchy--Schwarz theorem could act without changing the arithmetic target.

No such estimate is asserted here.

## Open estimate

`SubpolynomialMertensSignedAbelBilinearEstimate` is exactly the parent bilinear estimate specialized to this source-specific model.

The source proves only:

```text
source-specific bilinear estimate
  -> signed depth-packet supplier
  -> conditional RH endpoint.
```

## Failure boundaries

- Bilinearity is not cancellation.
- A fixed-shift theorem does not estimate the complete shift response.
- Replacing the response by its absolute value changes the problem.
- Squaring the response before an exact comparison theorem may recreate an oversized positive majorant.
- Residual zero is justified only by the exact factorization.
- Source text or elaboration would not prove the all-scale estimate.

## Next obstruction

Determine a quantitatively compatible norm or dispersion inequality for

[
sum_{a<t+1}mu(a+1)R_{j,t}(a)
]

that can be summed over all depths while preserving the required subpolynomial packet budget.

Before adopting a positive norm, compare its unavoidable diagonal mass against the RH-facing normalization.
