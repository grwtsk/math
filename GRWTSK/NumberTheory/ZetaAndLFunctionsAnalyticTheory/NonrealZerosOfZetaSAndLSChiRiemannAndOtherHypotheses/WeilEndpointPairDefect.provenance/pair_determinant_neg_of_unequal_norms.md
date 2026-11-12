# pair_determinant_neg_of_unequal_norms — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6829734479.

## Exact declaration

File: [WeilEndpointPairDefect.lean](../WeilEndpointPairDefect.lean).
Fully qualified declaration:
`GRWTSK.NumberTheory.WeilEndpointPairDefect.pair_determinant_neg_of_unequal_norms`.
For every x,y,u,v in R, assume

    x^2+y^2-u^2-v^2 != 0.

Then

    (2*(x*u-y*v))^2-(x^2-y^2+u^2-v^2)^2
                              -(2*x*y-2*u*v)^2 < 0.

Source Git blob: 84405748fa8de9e4b356d56f0ab2905154ee6c38.
The nonzero hypothesis is explicit and is not an assertion that an actual
arithmetic form or spectral substitute is positive.

## Complete proof and analytical discharge of the hypothesis

By `pair_gap_identity` the displayed expression is exactly
-(x^2+y^2-u^2-v^2)^2. The hypothesis makes its square strictly positive.
Negation gives the conclusion. The source uses that identity,
`sq_pos_of_ne_zero`, and `nlinarith`; their execution has NOT been observed.

The precise analytic consumer is WEPD-v1-1 in
[WeilEndpointPairDefect.md](../WeilEndpointPairDefect.md). There x+i*y and
u+i*v are the two rescaled, literal exponential endpoint transforms a,b0.
Equations (9)-(10) give a complete WRITTEN discharge of the nonzero premise
for every L>0, real tau, and off-line 0<beta<1: the function
(cosh(xL)-cos(tau L))/(x^2+tau^2) is strictly increasing for x>0, so the
squared norms differ at beta and 1-beta. Multiplication by the square of the
actual positive multiplicity preserves the strict determinant sign.
That transcendental source-return argument is not formalized in this module.

The two endpoints can have positive diagonals while their reflected-pair
matrix has a negative eigenvalue. The original full arithmetic form is the
sum of ALL those matrices, with both poles and all prime powers retained by
the explicit formula. One indefinite summand does not prove that sum
indefinite. The exact remaining cancellation is WEPD-v1-3; no premise of the
canonical RH/GRH consumer is claimed discharged by this declaration.

## Source comparison, pins and evidence

This is local real-coordinate algebra, not a direct paper formalization or
external proof import. The inherited signed endpoint transforms and bounded
primary-source comparisons are identified in WEPD section 6. The synthetic
rational fixture WEPD-v1-2 checks the sign and is not an actual arithmetic
zero. Neither the seven-eighths theorem nor an RH assumption is a dependency.
Originality: UNASSESSED; no claim of corpus-wide novelty or independent proof.

Inspected main: 26e55b7937c2e4d6e92533903e263440b35990e0.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Status: SOURCE_PROOF_CANDIDATE; complete written proof supplied.
Elaboration, dependency build, fresh kernel replay, transitive axiom audit,
certified computation and independent analytical review: NOT_RUN.
No sorry, admit or new research axiom occurs in the source body. This is a
source observation, not a successful build or a transitive axiom audit.
