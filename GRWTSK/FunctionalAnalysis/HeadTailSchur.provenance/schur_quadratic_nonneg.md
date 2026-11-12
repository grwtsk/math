# schur_quadratic_nonneg

By grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.HeadTailSchur.schur_quadratic_nonneg`.
Maintained source: [../HeadTailSchur.lean](../HeadTailSchur.lean).

Statement: for real a,b,c,x,y, `0<c` and `b^2<=a*c` imply
`0<=a*x^2-2*b*x*y+c*y^2`. No sign restriction on x,y or b is needed.
Proof: multiply the quadratic by c and apply `schur_square_identity`.
Both resulting terms are nonnegative; positivity of c transfers the sign back.
The proof retains the full cross term and does not divide by a possibly zero tail.

Consumer: the shifted scalar lower-bound theorem in the same module, and
Theorem 1 of `PrimitiveWeilNeumannSchur.md` in the canonical RH/GRH subject tree.
This lemma does not certify its determinant hypothesis for any arithmetic matrix.

Primary comparator: Hongmin Li, *Cutoff-free positivity of localized Weil forms
through the (log 11)/2 threshold*, rStation paper 45 v2, 9 November 2026,
section 4, equation (4.9). This is a direct elementary scalar consequence of
square completion, not an adaptation of an existing Lean proof.
https://rstation.ai/problems/riemann_hypothesis/papers/45

Pinned local comparison: math main daa8c88b644cf40ada77e76739d84f749068ffde.
Lean v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: math#1801, scope comment 6814361620.

Evidence: SOURCE_PROOF_CANDIDATE. The mathematical argument is given above.
Elaboration, kernel replay, transitive axiom audit, independent review and
repository validation: NOT_RUN. Novelty: UNASSESSED; none claimed. Arithmetic
source identity, low-block bounds and infinite-complement bounds remain separate.
