# hasNegativeFrame_of_uniform_error

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.NegativeFramePerturbation.hasNegativeFrame_of_uniform_error` in [canonical source](../NegativeFramePerturbation.lean), exact blob `ad1027a32525519477026631827daeab4c29f16b`.

Statement: V is a complex module, Q:V->Real with Q(0)=0, n:Nat, and F:(Fin n->Complex)->linear V. For comparison and radius functions on coefficient vectors, assume radius(v)>0 whenever v!=0, reference(v)<=-eta*radius(v)^2, and |Q(Fv)-reference(v)|<=error*radius(v)^2 for every v. If error<eta, the existing complex-scalar HasNegativeFrame Q n holds. Injectivity is a conclusion, not an input.

Primary argument: Q(Fv)<=(error-eta)radius(v)^2<0 for v!=0. Any nonzero kernel vector contradicts Q(0)=0. Apply this to x-y to prove injectivity and use the canonical frame constructor. Consumer: quantitative whole-subspace stability rather than counting negative generators. Comparison: standard gap stability; extends the scalar W3/W4 error budget to an entire finite family. The strict gap and positivity of the radius away from zero are essential; generator-only negativity is refuted by the source's explicit countermodel.

Exact pins, source comparison, limitations and reproduction: [hasNegativeFrame_of_weighted_approximation](hasNegativeFrame_of_weighted_approximation.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty or GRH claim.
