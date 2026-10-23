# Exact Fourier frame of the Green source

Mathlib provides a complete Fourier Hilbert basis and Parseval directly for square-integrable functions on a real interval.

Apply that theorem to the complexification of the exact centered Green residual on (0,1].

For each integer frequency k define the exact coefficient c_X(k) by fourierCoeffOn on the unit interval.

Parseval gives the exact identity

sum over k in Z of |c_X(k)|^2 = greenEnergy(X).

Regroup the integer frequencies as natural shells

e_X(n)
 = |c_X(n)|^2 + |c_X(-(n+1))|^2.

Then sum_n e_X(n) = greenEnergy(X).

The finite heads E_X(N) are nonnegative, monotone, bounded by greenEnergy(X), and converge exactly to greenEnergy(X).

After adjoining the two endpoint moment squares, the finite stages

F_X(N)
 = mass0(X)^2 + mass1(X)^2 + E_X(N)

converge exactly to augmentedEnergy(X).

This is the first exact growing readout frame that captures the whole source norm rather than three selected Mellin projections.

The next bridge is especially useful: every nonzero Fourier mode has an explicit periodic antiderivative in Mathlib. Subtracting its endpoint constant gives a C1 test with zero endpoints and derivative equal to the Fourier monomial. The existing centered integration-by-parts identity should then identify its action exactly with minus the corresponding residual Fourier coefficient. That would make the Fourier frame a growing family of admissible source readouts, not merely an external Parseval decomposition.
