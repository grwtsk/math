# schur_square_identity

By grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.HeadTailSchur.schur_square_identity`.
Maintained source: [../HeadTailSchur.lean](../HeadTailSchur.lean).

Statement: for all real a,b,c,x,y,
`c*(a*x^2-2*b*x*y+c*y^2)=(a*c-b^2)*x^2+(b*x-c*y)^2`.
There are no sign hypotheses. The source proof expands both polynomials using
`ring`. This is elementary square completion, not a new mathematical claim.

Consumer: `PrimitiveWeilNeumannSchur.md`, equation (15), in
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/`.
The companion ordered-field lemma uses this equality to pay an entire scalar
cross term. It is not an arithmetic explicit formula or an operator theorem.

Primary comparator: Hongmin Li, *Cutoff-free positivity of localized Weil forms
through the (log 11)/2 threshold*, rStation paper 45 v2, 9 November 2026,
equation (4.9). The present identity is its elementary scalar square-completion
mechanism, proved directly rather than transcribed from a formal source.
https://rstation.ai/problems/riemann_hypothesis/papers/45

Pinned local comparison: math main daa8c88b644cf40ada77e76739d84f749068ffde.
Lean v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: math#1801, scope comment 6814361620.

Evidence: SOURCE_PROOF_CANDIDATE. An exact symbolic polynomial expansion agreed;
that is not Lean elaboration. Elaboration, kernel replay, transitive axiom audit,
independent review and repository validation: NOT_RUN. Novelty: UNASSESSED;
none claimed. No analytic source bound or universal certificate is inferred.
