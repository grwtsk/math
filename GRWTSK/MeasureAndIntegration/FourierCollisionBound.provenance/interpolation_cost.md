# interpolation_cost

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.interpolation_cost`, [source line 193](../FourierCollisionBound.lean#L193).

For every supported L1 complex f and actual Fourier errors norm(F(xi+i*eta)-1)<=ea, norm(F(xi-i*eta)+1)<=eb, conclude 2-ea-eb <= 2*sinh(A*abs(eta))*integral norm(f). This nondivided form remains meaningful at eta=0 and A=0.
The proof composes `opposite_values_gap` with `norm_fourier_difference_le`. The latter has derived the kernel and integrability bounds; no Fourier separation estimate is assumed as an interface field. Consumers: `l1_lower_bound` and `collided_error_sum_ge_two`.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Direct local derivation of the supplied RP-OC-02 conditioning requirement, 2026-11-11; exact source digest/comparison in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original Apache-2.0 attribution retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axioms, independent review and arithmetic certification NOT_RUN. Constructive interpolation, its upper seminorm cost, and the full arithmetic identity remain open.
