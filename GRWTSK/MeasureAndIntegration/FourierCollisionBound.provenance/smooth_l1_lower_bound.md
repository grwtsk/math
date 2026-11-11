# smooth_l1_lower_bound

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.smooth_l1_lower_bound`, [source line 241](../FourierCollisionBound.lean#L241).

For ContDiff R top f with HasCompactSupport f, support outside Icc(-A,A) equal to zero, A>0, eta!=0, ea+eb<2 and the two actual Fourier error bounds, conclude the same positive L1 lower bound. These are the two fields of the existing `WeilNegativeWitness.Admissible` predicate; no new admissibility definition is introduced.
`ContDiff.continuous` and `Continuous.integrable_of_hasCompactSupport` discharge the L1 premise. The interval support condition implies the absolute-value support condition. Apply `l1_lower_bound`. Consumer: RP-OC-02 and supplement C on their actual compact-smooth test space.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Source correspondence: supplied 2026-11-11 RP-OC-02 mandate and canonical Admissible definition at math `3a6d07fc0bf6a073df12e47ae6138bd4a54bdbc8`; exact digest/paths in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream authorship/Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, fresh kernel replay, transitive axioms, independent review and arithmetic certification NOT_RUN. This connects the estimate to the intended test domain, not to the full pole-inclusive arithmetic Weil form. Constructive interpolation and the joint varying-test tail premise remain open.
