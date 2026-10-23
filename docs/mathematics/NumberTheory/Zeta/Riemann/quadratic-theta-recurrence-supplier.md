# Concrete quadratic theta recurrence supplier

The nonlinear threshold gate is now reduced to an explicit source recurrence.

At threshold rho, for each eta>0 require constants K,R and a late scale such that any valid envelope A on octave j propagates to octave j+1 by

nextError
 <= K A^2/X_j
    + R X_j^(2rho-1+eta/2).

If the current theta source has threshold rho, invoke that source with eta/2. Its envelope has size

A <= C X_j^(rho+eta/4).

The source theorem quadratic_error_step then gives

nextError
 <= (K C^2+R)
    X_j^(2rho-1+eta/2).

For rho>=3/4 the target exponent is nonnegative, so passing from X_j to X_(j+1)=2X_j only weakens the upper bound. Therefore the recurrence instantiates

AllDyadicThetaAtThreshold(rho)
 -> AllDyadicThetaAtThreshold(2rho-1).

Two concrete recurrences suffice:

rho=7/8 gives 3/4,
rho=3/4 gives 1/2.

The module proves directly that these two recurrence suppliers plus the seven-eighths theta input imply RH.

This is now the exact arithmetic/quartic construction target. The existing positive Gram and recurrence modules still do not prove either recurrence. A valid implementation must derive the quadratic term and the descended residual from the same prime-derived source, rather than inserting the desired exponent as a premise.
