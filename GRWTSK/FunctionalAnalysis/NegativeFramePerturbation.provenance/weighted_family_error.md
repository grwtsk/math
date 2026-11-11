# weighted_family_error

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.NegativeFramePerturbation.weighted_family_error` in [canonical source](../NegativeFramePerturbation.lean), exact blob `ad1027a32525519477026631827daeab4c29f16b`.

Statement: for any weighted evaluation model D on E and any index type A, maps G,F:A->E, nonnegative radius:A->Real and S,epsilon>=0 satisfying norm(Gv)<=S radius(v) and norm(Fv-Gv)<=epsilon radius(v) for every v, the full real-part error is at most `D.mass*(2*S*epsilon+epsilon^2)*radius(v)^2`. Neither G nor F is required to be linear for this estimate.

Primary argument: apply abs_quadratic_sub_le to Gv,Fv; bound the mixed product and error square with the supplied nonnegative constants; factor radius(v)^2. Consumer: uniform frame perturbation, where linearity is separately required. Comparison: RP-OC-02 whole-divisor W1 bound, not an entrywise or finite-head approximation. Both mixed terms and all tail contributions remain budgeted. No arithmetic moment bound is inferred from Program 7's envelope definition.

Pins, limitations and reproduction: [hasNegativeFrame_of_weighted_approximation](hasNegativeFrame_of_weighted_approximation.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty is asserted.
