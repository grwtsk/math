# Source-faithful dispersion interface for signed Abel depth slices

Issue: #476. Parent witness: #473 / draft PR #475.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DISPERSION_ESTIMATE_OPEN**.

## Purpose

The parent witness exposes the exact signed depth slice

\[
D_{j,t}=\sum_{1\le h<2^{j+1}}\operatorname{Cell}_{j,h,t}.
\]

This increment introduces one finite bilinear/dispersion interface that is required to reconstruct that exact signed slice before any estimate can be consumed.

## Bilinear model

A `SignedAbelDepthBilinearModel` specifies, for each dyadic scale and prefix depth:

- a finite support;
- two real coefficient families `alpha` and `beta`;
- an explicit residual;
- a proof that the actual signed depth slice equals the signed bilinear sum plus the residual.

No positivity, orthogonality, norm estimate, Fourier transform, or probabilistic structure is assumed.

The exact identity is

\[
D_{j,t}=\sum_{u\in U_{j,t}}\alpha_{j,t,u}\beta_{j,t,u}+R_{j,t}.
\]

Summing over the inherited depth range yields

\[
D_j=S_j+R_j.
\]

## Estimate interface

`SubpolynomialSignedAbelDepthBilinearEstimate d` asks for the signed total

\[
S_j+R_j
\]

to satisfy the same subpolynomial budget as the inherited signed depth packet.

The source proves

```text
bilinear estimate
  -> SubpolynomialDyadicSignedAbelDepthPacket
  -> conditional RH endpoint.
```

No model or estimate is constructed. The reconstruction interface permits a trivial
model with the entire slice placed in the residual; reconstruction alone gives
no quantitative bound. A useful model must come with an estimate of the signed
structured-plus-residual packet.

## Split budget

A stronger optional record `SignedAbelDepthSplitBudget` allows separate signed upper bounds on the structured and residual packets. The combination theorem pays the two constants explicitly and introduces no hidden loss.

This split is sufficient, not asserted necessary.

## Positive-norm hostile boundary

`PositiveNormToSignedDepthAdapter` requires any future positive norm or square-function source to provide:

1. an actual source-faithful bilinear model;
2. an actual estimate for that model.

Thus a positive norm cannot become a theorem edge merely by sharing the same coefficients or indexing set.

## Candidate positioning

- finite signed bilinear/dispersion factorization: selected;
- Fourier transform across shifts: admissible only after exact inversion and cutoff correction;
- positive L2 or variation norm: admissible only through an explicit comparison into the signed model.

## Nonclaims

This increment proves no:
- Chowla estimate;
- Elliott estimate;
- Sarnak theorem;
- large-sieve estimate;
- dispersion estimate;
- Fourier estimate;
- all-scale arithmetic cancellation;
- RH result.

## Exact next obstruction

Construct one mathematically meaningful `SignedAbelDepthBilinearModel` from the actual Möbius/Abel source and prove a nontrivial all-scale estimate for it, or prove a precise obstruction showing a candidate positive norm is too large.
