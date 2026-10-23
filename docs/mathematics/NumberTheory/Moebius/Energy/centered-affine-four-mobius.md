# Centered winding: structured affine four-Möbius frontier

Issue: #886  
Parent: draft PR #882 at `e3111b226cf2607866cbb95f0229075e1cec68fe`.

Expanding the integer-center amplitude product shows that the remaining lag covariance is genuinely four-point.

For center `c`, lag `ell`, and half-shifts `h,g`, the coefficient is the product of the two symmetric binary Möbius pairs:
```text
mu(c-h+r) mu(c+h+r)
mu(c+ell-g+r) mu(c+ell+g+r),
```
subject to the exact endpoint/admissibility conditions already encoded by the half-index fibers.

The source defines
```lean
centeredAffineFourMobiusCoefficient
parityCenteredAffineFourMobiusAtCenterLag
parityCenteredAffineFourMobiusLagCorrelation
parityCenteredAffineFourMobiusWindingLagCorrelation
parityCenteredAffineFourMobiusWindingLagSum
```
and scripts
```lean
parityCenteredAffineFourMobiusAtCenterLag_eq_amplitude_mul
parityCenteredAffineFourMobiusLagCorrelation_eq_positiveLagCovariance
parityCenteredAffineFourMobiusWindingLagCorrelation_eq_covariance
parityCenteredAffineFourMobiusWindingLagSum_eq_covarianceLagSum.
```

Thus the prospective positive-lag covariance surface is exactly a structured affine four-Möbius correlation.

This is an epistemic correction as well as a coordinate reduction: binary Chowla cancellation and pointwise ordinary/twisted Mertens bounds are not asserted to imply this four-factor estimate. Any such implication requires a separate theorem.

The remaining analytic interface is
```lean
RegularCenteredAffineFourMobiusLagEnvelope.
```

Status:
```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_AFFINE_FOUR_MOBIUS_SOURCE_DRAFT
FOUR_MOBIUS_LAG_ESTIMATE_OPEN
```
