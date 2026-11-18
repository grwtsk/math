# Complete residual certificates for literal finite-sine source solves

Local attribution: grwtsk contributors.
Owner: [WeilFiniteSineSolveResidual.lean](WeilFiniteSineSolveResidual.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSolveResidual`.
MSC2020: 11M06, 65J10. Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837) and
[math#1258](https://github.com/grwtsk/math/issues/1258).

## Exact task and objects

Keep the original supported odd physical space H_T, complete graph domain
V_T, inclusion J, and signed source q_(T,beta). The established weak solve
uses b=q+lambda physical_mass, lambda=perturbationBound(T,beta)+1, with
b(v,v)>=||v||_V^2. For an arbitrary finite-sine trial f and its actual
form-domain lift v, define

    r = h - finiteOutput(T,beta-lambda,f).

The preceding module proves that finiteOutput(T,beta-lambda,f) is
(A_beta+lambda I)f, retaining the same minimizing pole port a=-2p(f).
The source output includes the genuine gamma integral, both orientations
of every active prime-power shift, beta, and the negative odd pole.

The objective is a certificate for the weak-solution error in the actual
GRAPH norm. It is not a lower certificate for unshifted Weil positivity.

## Full analytical argument

For every w in V_T, all-test operator association gives

    residualFunctional(h,v)(w) = <r,Jw>_H.

Since ||Jw||_H<=||w||_V, the norm of this full dual residual is at most
||r||_H. Existing source coercivity therefore gives

    ||weakSolve(h)-v||_V <= ||r||_H.

No assertion is made that this upper bound is equality, or that a finite
list of values is the dual norm. The complete original Parseval identity
instead identifies the physical norm as the convergent infinite series

    ||r||_H^2 = sum_(n>=1) d_n^2,
    d_n = sineCoefficient(h,n)
          - literalAugmentedRow(M,T,x,-2p(f),beta-lambda,n).

For M<=L, L>0, L<=J, and a load with every coefficient above L equal to
zero, the residual's remote rows are exactly the NEGATIVES of the literal
output rows. Their squares are unchanged. The existing
`literalAugmentedRow_tail_bound` therefore supplies

    ||weakSolve(h)-v||_V^2
      <= sum_(1<=n<=L) d_n^2
         + completeRemoteAllowance(M,L,J,T,x,-2p(f),s),   s>0.

Every finite sine load of length K<=L supplies the required vanishing
coefficients through the existing sine orthogonality theorem; the load
coverage is derived, not asserted for arbitrary data. If the load is not
finite-band, its own tail still needs a bound. This module does not silently
omit that tail or claim a universal finite-band source property.

For observed dtilde_n and supplied outward errors e_n satisfying
|d_n-dtilde_n|<=e_n, triangle inequality gives

    d_n^2 <= (|dtilde_n|+e_n)^2.

A separately supplied upper bound for the COMPLETE remote allowance then
gives the observed finite certificate. Rounding is charged before squaring;
independent observations of gamma, primes, pole moments, and parameters
must first be combined into these valid source-row error bounds.

## Declaration map and consumers

- `physicalResidual`: actual residual, not a sampled array.
- `residualFunctional_eq_physical`, `residualFunctional_norm_le_physical`,
  `weakSolve_error_le_physical`: full-domain residual correspondence.
- `residualRow`, `physicalResidual_coefficient`, `physicalResidual_hasSum`,
  `weakSolve_error_sq_le_tsum`: exact original coefficients and full norm.
- `physicalResidual_sq_le_rows_and_remote`,
  `weakSolve_error_sq_le_rows_and_remote`: complete source-tail payment.
- `finiteInput_coefficient_zero_above`, `weakSolve_finiteLoad_error_sq_le`:
  concrete finite-load consumer discharging the load-tail premise.
- `weakSolve_error_sq_le_observed`: outward coefficient and remote charges.

Consumers are verified weak-solve approximation and the computation of
source-correct physical reconstructions. This is not itself the energy-dual
Schur sign theorem. A later use in a high-complement correction must prove
that the operator, subspace, dual metric and source mixed functional agree;
it may not transplant this regularized full-space estimate unchanged.

## Individual source provenance

This is local composition of canonical source results, not an additional
external paper theorem. Original paper/declaration provenance remains with
those maintained sources; their evidence is not promoted by this module.

- `WeilFiniteSineOperator.lean` in this increment: all-test operator-domain
  membership, physical-only shift and exact augmented output rows.
- `WeilShiftedSourceSolve.lean`, blob
  `e09524ffb0538023457b3d440144f8bd46fa9092`: `error_le_residual` and the
  complete graph-dual residual, at the inspected math revision below.
- `WeilOddSineParseval.lean`, blob
  `000ce9a7c71a52c5d7ab36a5aaddb2ba964ad690`:
  `hasSum_source_sineCoefficient_sq_ae`, original Lebesgue normalization.
- `WeilOddSineHeadRemoval.lean`, blob
  `2640a927c24095fe38fff1529c2884c66c9256b6`:
  `sineCoefficient_finiteSine`, exact finite-load coefficient support.
- `WeilOddResidualSourceComparison.lean`, blob
  `74a26cdce2da14bc4d897d7938da6237e4f163ee`:
  `literalAugmentedRow_tail_bound`, all rows after L with actual remote
  allowance, plus original row/prime/pole identities.

Pinned source links: [weak solve](https://github.com/grwtsk/math/blob/bc1e1b34506f54ccdb46de9138e906044def5a55/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilShiftedSourceSolve.lean),
[original Parseval](https://github.com/grwtsk/math/blob/bc1e1b34506f54ccdb46de9138e906044def5a55/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilOddSineParseval.lean), and
[complete source tail](https://github.com/grwtsk/math/blob/bc1e1b34506f54ccdb46de9138e906044def5a55/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilOddResidualSourceComparison.lean).

## Scope, falsification and evidence

Omitting the remote allowance would not bound the error: a source load or
output can have an unobserved nonzero coefficient. A bounded physical shift
changes all retained diagonal coefficients and cannot be charged only on
the scalar pole coordinate. An upper bound for a solve error does not show
that the source operator is nonnegative after removing regularization.

No numerical intervals, quadrature tables, solve coefficients, sign
certificate, computational optimum, form core, or RH/GRH result are claimed.
No universal convergence of a selected trial sequence follows merely from
having a sound certificate for any particular trial.

Inspected base: `grwtsk/math@bc1e1b34506f54ccdb46de9138e906044def5a55`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Root imports and pins unchanged.
SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit, complete dependency replay, certified numerical
computation and independent review: NOT_RUN. Publication/readback and
static tests have their own recorded scope. Existing failures stay recorded.
Prior-art completeness: UNASSESSED; no novelty asserted.
