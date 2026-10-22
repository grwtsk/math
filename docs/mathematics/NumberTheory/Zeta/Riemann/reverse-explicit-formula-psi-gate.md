# Reverse explicit-formula gate in classical psi form

The reverse half-plane-to-prime-error step is now isolated at its classical analytic output:

zero-free on Re(s)>rho
 -> eventually |psi(x)-x| <= C x^rho (log x)^2.

The local source proves the output side is enough. Pinned Mathlib logarithmic asymptotics absorb log^2 into any positive power allowance, yielding AllDyadicPsiAtThreshold(rho). For rho>=1/2, the pinned psi-theta=O(sqrt x) theorem converts this to AllDyadicThetaAtThreshold(rho) with no threshold loss.

At rho=7/8, an accepted seven-eighths theorem plus:
- this reverse explicit-formula theorem, and
- the genuine quadratic threshold contraction

would give the two-step descent 7/8 -> 3/4 -> 1/2 and hence RH.

External audit:
PrimeNumberTheoremAnd/IEANTN/BKLNW/BKLNW_app.lean, blob
1aa27ea76871cc2ae6bfa3b684a2d19e8f70374e, contains the expected truncated explicit formula / zero-sum architecture, but inspected key declarations bklnw_eq_A_7, bklnw_eq_A_10, bklnw_eq_A_12, and thm_14 still have proof body sorry. Its Inputs record also includes zero-density and finite-height RH data.

Those declarations are not admitted as proof evidence. The reverse gate remains open.
