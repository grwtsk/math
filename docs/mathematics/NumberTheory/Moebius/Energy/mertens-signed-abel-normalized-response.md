# Normalized signed Abel shift response

Issue: #499. Parent bilinear source: #492 / draft PR #494.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NORMALIZED_RESPONSE_CANCELLATION_OPEN**.

## Exact result

For Y = 2^(j+1), the complete Abel-drop mass across the admissible shift fibre at fixed depth t telescopes to the inherited kernel weight w_j(t+2). On t+2 <= Y this gives

sum_h 1_{t<Y-h-1} Delta(j,h,t) = w_j(t+2) <= 1/Y.

Hence the exact source-specific weighted shift response satisfies

|Response(j,t,a)| <= 2/Y.

Define

NormalizedResponse(j,t,a) = (Y/2) * Response(j,t,a).

Then, on the explicitly proved range t+2 <= Y,

|NormalizedResponse(j,t,a)| <= 1.

The signed depth slice is rewritten exactly as

DepthSlice(j,t)
  = (2/Y) * sum_(a<t+1)
      mu(a+1) * NormalizedResponse(j,t,a).

No absolute value is inserted before the response is formed, and no square is used.

## Mathematical interpretation

On t+2 <= Y, the remaining cancellation is a Möbius sum against a one-bounded real test family. The exact slice rewrite itself holds for every depth. The test family depends on scale j, depth t, and the base index a, so fixed-test results do not automatically apply.

One-boundedness does not imply:
- zero entropy;
- nonpretentiousness;
- a nilsequence representation;
- a Gowers-uniformity estimate;
- orthogonality to Möbius;
- any all-scale cancellation theorem.

## Why this precedes L2

A direct positive square norm would discard the signed structure before exploiting the exact reciprocal-size Abel coefficient mass. The normalization records the proved reciprocal-size bound on the right factor and exposes the precise family that any nonpretentious, dispersion, Sarnak/local-Gowers, or Fourier argument would have to control.

## Dependency path

normalized response cancellation
  -> exact signed depth slice
  -> signed depth packet
  -> signed shift packet
  -> RH-E02 conditional endpoint.

Only the normalization and exact rewrite are advanced here.

## Next obstruction

Prove uniform cancellation for the growing family

sum_(a<t+1) mu(a+1) NormalizedResponse(j,t,a)

strong enough, after the factor 2/Y and summation over all depths, to give the subpolynomial signed depth-packet budget.

Any attempted use of Chowla, Elliott, Sarnak, local Gowers, or nonpretentiousness must provide an exact adapter for this scale/depth-dependent response family.
