# Prime-only witness comparison

The explicit arithmetic witness is now split at finite stage into a prime-only hard core and a fully controlled higher-prime-power residual.

Prime-only endpoint moments keep the continuum targets log 2 and 1-log 2. The prime-only Fourier coordinate keeps the same fixed continuum background but replaces the von Mangoldt source by its prime-filtered part.

The exact identities are

mass0 = primeMass0 + higherPowerMass0,

mass1 = primeMass1 + higherPowerMass1,

fullCoordinate(k)
 = primeCoordinate(k) - higherPowerCorrection(k).

Using the elementary square inequality

|u+v|^2 <= 2|u|^2 + 2|v|^2

gives the finite-stage comparisons

fullStage_X(N)
 <= 2 primeStage_X(N) + 2 R_hp(X),

primeStage_X(N)
 <= 2 fullStage_X(N) + 2 R_hp(X),

where R_hp(X) is the complete higher-prime-power witness residual.

The preceding theorem gives R_hp(X) <= K/X unconditionally.

Therefore, up to harmless factor 2 and an independently certified inverse-scale residual, the full RH-G01 arithmetic supplier is the prime-only supplier.

The next module should promote this finite comparison to an exact equivalence of all-scale bound propositions.
