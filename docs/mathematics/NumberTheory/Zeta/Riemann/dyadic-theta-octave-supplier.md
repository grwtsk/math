# Prime-only theta octave supplier

The Abel supplier can itself be reduced from psi to theta.

Pinned Mathlib proves

0 <= psi(u)-theta(u) <= C_hp sqrt(u).

For every eta>0 and u in [X,2X], the RH-G01 target amplitude

X sqrt(X^(-1+eta))

dominates sqrt(u), up to one fixed factor. Therefore the higher-prime-power difference between psi and theta is absorbed automatically.

Define AllDyadicThetaOctaveSquareRootBound by requiring

|theta(u)-u| + 1
 <= C X sqrt(X^(-1+eta))

uniformly on each sufficiently large dyadic octave.

Then source-level:

AllDyadicThetaOctaveSquareRootBound
 -> AllDyadicPsiOctaveSquareRootBound
 -> AllDyadicEnergyBound
 -> RH.

This gives a purely prime sufficient supplier. Together with the earlier weighted-DFT reduction, the remaining arithmetic frontier is now recognizable in two equivalent-looking classical languages:
- local square-root-plus-epsilon control of theta(u)-u;
- simultaneous log-prime endpoint and weighted-DFT cancellation.

No theta error estimate of this strength is proved here.
