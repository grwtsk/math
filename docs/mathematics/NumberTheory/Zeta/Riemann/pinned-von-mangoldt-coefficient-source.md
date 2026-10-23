# Pinned von Mangoldt coefficient source

This increment closes the prime-power coefficient channel only.

At pinned Mathlib revision db584cd6d46c92f209a44c0f1c829460d327499d:

- ArithmeticFunction.vonMangoldt is exactly log p on p^k for k>0.
- ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div identifies the von Mangoldt L-series with -zeta'/zeta on Re(s)>1.

Pinned source blobs:

- Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean
  4cc8c9d13c1e3b7ae4568f9399e0a68f8e3d5176
- Mathlib/NumberTheory/LSeries/Dirichlet.lean
  f718ca1edc35ffa92b318b2f74ddcef0e2e754a3

For a prime-power event p^k, the packing coefficient source is concretely

c(p^k)=Lambda(p^k)=log p.

Therefore the coefficient-recovery weight is exactly one and the weighted point equals the raw arithmetic point

(k log p, log p).

This does not instantiate the full issue-189 Weil/Guinand explicit formula. Gamma/Archimedean, pole/main, trivial-zero, complete nontrivial-zero divisor, endpoint/branch, summation/cutoff and omitted-tail channels remain open.

The next remaining arithmetic choice is the source-faithful event selector/order, not the coefficient value.
