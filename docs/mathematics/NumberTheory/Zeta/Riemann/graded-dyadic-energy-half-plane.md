# Graded energy transport preserves the half-plane threshold

The original RH-G01 exponent is one member of a continuous family.

For a target threshold rho define

E_rho:
augmentedEnergy(X)
 <= C X^(-2(1-rho)+eta)

eventually on dyadic X, for every eta>0.

The Mellin block estimate is

|D_X(s)|
 <= const *
 X^(1-Re(s)) *
 sqrt(augmentedEnergy(X)).

Under E_rho this becomes

|D_X(s)|
 <= const *
 X^(-(sigma-rho-eta/2))

uniformly on Re(s)>=sigma.

For every sigma>rho choose eta=sigma-rho. The remaining exponent is
(sigma-rho)/2>0, so the dyadic series is normally convergent on Re(s)>rho.

For 1/2<=rho<1, the existing pole-removed source is analytic on this domain.
The same denominator-free ODE argument used by the RH return excludes zeta
zeros throughout Re(s)>rho.

Therefore

AllDyadicEnergyAtThreshold(rho)
 -> RiemannZetaZeroFreeRightHalfPlane(rho).

At rho=1/2 the generalized energy premise is exactly AllDyadicEnergyBound.

This records an important structural fact: the linear Abel/Mellin transport is
threshold-preserving. It does not improve rho. A 7/8-strength arithmetic error
fed through this route returns a 7/8 zero-free half-plane, not a smaller
threshold. Any descent from 7/8 toward 1/2 must therefore enter through an
additional nonlinear or positivity mechanism rather than by repeating the
same Abel/Mellin conversion.
