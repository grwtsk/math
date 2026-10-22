# RH-strength psi octave error supplies the full dyadic witness

The localized Abel reconstruction gives

|cumulative_X(t)| <= (3A+1)/X

whenever |psi(u)-u|<=A throughout [X,2X].

A uniform bound |cumulative_X(t)|<=B controls the entire finite witness:
- raw cumulative L2 energy <= B^2;
- centered Green energy <= B^2;
- |mass0|<=B;
- |center|<=B;
- |mass1|<=2B.

Hence augmentedEnergy(X)<=6 B^2.

Define the all-scale psi supplier by requiring, for every eta>0,

|psi(u)-u| + 1
 <= C X sqrt(X^(-1+eta))

uniformly for u in [X,2X], eventually along dyadic X.

The right side is X^((1+eta)/2) up to the constant C. The +1 absorbs the exact floor correction in the discrete-to-continuum coordinate.

The source then derives

augmentedEnergy(X)
 <= 96 C^2 X^(-1+eta).

Therefore

AllDyadicPsiOctaveSquareRootBound
 -> AllDyadicEnergyBound
 -> RH

through the repository's existing conditional DyadicGreenReturn.

This does not prove the psi error estimate. It identifies one classical RH-strength arithmetic supplier sufficient for the complete recovered witness.
