# l1_lower_bound

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.l1_lower_bound`, [source line 206](../FourierCollisionBound.lean#L206).

Assume A>0, eta!=0, ea+eb<2, L1 integrability, vanishing outside [-A,A], and the two actual Fourier error bounds at xi +/- I*eta. Conclude both positivity of (2-ea-eb)/(2*sinh(A*abs(eta))) and its upper bound by integral norm(f). Arbitrary real xi and complex f are retained.
A*abs(eta)>0, so strict exponential monotonicity and `Real.sinh_eq` prove the denominator positive. The error sum makes the numerator positive. Only then use `div_le_iff₀` to divide `interpolation_cost`. Reuses `Real.exp_lt_exp`, `abs_pos`, `div_pos`. Consumers: `smooth_l1_lower_bound`, RP-OC-02 and supplement C.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Source: the supplied 2026-11-11 mandate's RP-OC-02 collision formula; exact digest and pinned locators in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. A necessary lower cost does not produce interpolation, an upper cost, tail control, or Weil positivity.
