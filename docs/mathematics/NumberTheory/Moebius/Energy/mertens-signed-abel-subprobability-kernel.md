# Subprobability Möbius convolution structure of the normalized Abel response

Issue: #503. Parent normalization: #499 / draft PR #501.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEIGHTED_AUTOCORRELATION_ESTIMATE_OPEN**.

## Exact kernel

For `Y=2^(j+1)`, define the finite shift kernel

```text
K(j,t,h)
  = Y * Delta(j,h,t)
```

on the exact triangular support

```text
1 <= h < Y,
t < Y-h-1,
```

and zero elsewhere.

The source proves pointwise nonnegativity.

## Exact mass

On the explicit proved depth range `t+2 <= Y`, the kernel mass is

\[
\sum_{1\le h<Y}K(j,t,h)
=Y\sum_{0\le k<Y-t-2}\Delta(j,k+1,t)
=Yw_j(t+2)\le1.
\]

Thus the kernel is a finite subprobability coefficient family.

No division by the total mass is performed, so zero-mass cases introduce no hidden normalization.

## Exact convolution

The normalized response from PR #501 is exactly

\[
\widetilde R_{j,t}(a)=\sum_{1\le h<Y}K(j,t,h)\mu(a+1+h).
\]

Therefore the signed depth slice has the exact smoothed-autocorrelation form

\[
D_{j,t}=\frac{2}{Y}\sum_{0\le a<t+1}\mu(a+1)
  \sum_{1\le h<Y}K(j,t,h)\mu(a+1+h).
\]

The kernel is nonnegative; the autocorrelation is signed.

## Mathematical interpretation

The right factor is not an arbitrary one-bounded family. It is a positive finite smoothing of the future Möbius sequence itself.

This exposes direct interfaces to:
- weighted two-point Chowla/Elliott;
- finite convolution and Fourier methods;
- dispersion across shifts;
- finite Markov-kernel style averaging.

No mixing, independence, spectral gap, entropy, or cancellation is inferred.

## Hostile boundaries

- Kernel positivity does not imply correlation positivity.
- The kernel depends on scale and depth.
- The triangular cutoff is part of the source.
- The weighted autocorrelation may not be replaced by an unweighted shift mean.
- The subprobability kernel may not be renormalized to probability without charging its mass.
- The convolution identity is not an estimate.

## Exact next obstruction

Prove a subpolynomial all-scale bound for the complete depth packet using this weighted autocorrelation structure, or formalize a Fourier/dispersion comparison that preserves the exact kernel and signed target.
