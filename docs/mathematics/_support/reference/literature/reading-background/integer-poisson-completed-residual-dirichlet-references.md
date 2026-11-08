# Completed residual Dirichlet bridge: source and literature ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-01.

## Repository sources

- `.../IntegerPoissonZeroFrame/SevenEighthsStrip.lean`
  - visible symmetric-strip premise `1/8 <= Re rho <= 7/8`;
  - nearest-integer kernel constant `4/5`;
  - frame `16 D_Z <= 25 E_Z`;
  - one-zero threshold `32/25`.
- `.../IntegerPoissonZeroFrame/NearestGeometry.lean`
  - nearest-integer frequency and squared distance at most `1/4`.
- `.../IntegerPoissonZeroFrame/ArithmeticCertificates.lean`
  - finite sample energies and one-unit consumers.
- `PadicMobiusPrimeWindowSeam.lean`
  - literal von Mangoldt unit windows and exact divisor-log source.
- `PadicMobiusCofinalTwoUnitBridge.lean`
  - centered packet identity `primeWindowResidual = -2 * centeredPacket`.
- `CanonicalZeroDivisor.lean` and `PositiveHeightCountDeficit.lean`
  - canonical nontrivial-zero subtype, actual analytic multiplicity, finite heads, and positive-height count.

## Pinned Mathlib interfaces

At Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`:

- `Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean`
  - `ArithmeticFunction.vonMangoldt_le_log`;
  - nonnegativity and the exact Möbius-log identity.
- `Mathlib/NumberTheory/LSeries/Dirichlet.lean`
  - `ArithmeticFunction.LSeriesSummable_vonMangoldt`;
  - `ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div` on `Re s > 1`.
- `Mathlib/NumberTheory/LSeries/RiemannZetaLogDeriv.lean`
  - logarithmic-derivative functional-equation interfaces.
- `Mathlib/Analysis/SpecialFunctions/Gamma/Digamma.lean`
  - the complex digamma function used in the completed factor.

## Classical analytic inputs

- The Hadamard product of the completed Riemann xi function, symmetrically ordered by zero height.
- The real logarithmic-derivative identity
  `Re xi'/xi(s) = sum_rho Re(1/(s-rho))` for `Re s > 1`, with analytic multiplicity.
- The completed-factor derivative
  `xi'/xi = 1/s + 1/(s-1) - log(pi)/2 + digamma(s/2)/2 + zeta'/zeta`.
- The absolutely convergent von Mangoldt Dirichlet series
  `-zeta'/zeta(s) = sum Lambda(n) n^{-s}` on `Re s > 1`.

These are classical rather than programme-original. The new programme-specific step is to subtract only the certified positive-height zero set, retain every other zero in one nonnegative completed residual, and then rewrite the finite prime truncation as one complete signed transform of the existing centered p-adic unit packets before squaring.

## Scope and remaining work

The finite energy perturbation and conditional one-unit return are Lean source candidates. The following remain separately visible:

1. Lean formalization of the completed Hadamard domination;
2. Lean formalization of the explicit tail integral and scheduled `1/100` budget;
3. qualification of the unit-window singleton normalization;
4. the cofinal finite arithmetic estimate
   `finiteCompletedResidualEnergy < 3/5`;
5. compilation, expected-type checks, fresh-kernel replay, and a transitive audit.

No random-sign model, packetwise absolute-value estimate, omitted outer collar, numerical zero list, cofinal witness, or RH conclusion is imported.
