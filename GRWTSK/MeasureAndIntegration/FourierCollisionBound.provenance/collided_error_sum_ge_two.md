# collided_error_sum_ge_two

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.collided_error_sum_ge_two`, [source line 227](../FourierCollisionBound.lean#L227).

For a supported L1 complex function, if the same real-frequency Fourier value approximates 1 and -1 with errors ea,eb, then ea+eb>=2. Specialize `interpolation_cost` to eta=0 and simplify with `Real.sinh_zero`. No singular division is used. In particular total error below two is incompatible with collision.
Consumer: RP-OC-02/supplement C's eta=0 boundary; this prevents misuse of the divided formula at zero displacement. It is not evidence for an off-critical arithmetic zero.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Source: eta=0 requirement in the supplied RP-OC-02 mandate, 2026-11-11; exact digest and comparison in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic source certification NOT_RUN. RH/GRH and the positive source target remain untouched.
