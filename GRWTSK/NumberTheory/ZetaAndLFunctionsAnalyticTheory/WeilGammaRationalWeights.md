# Rational weights of the original gamma kernel

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilGammaRationalWeights.lean](WeilGammaRationalWeights.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaRationalWeights`.
MSC2020 primary 11M06; analytic dependencies 26A42 and 65G20.
Status: **SOURCE_PROOF_CANDIDATE**. Novelty and exhaustive prior-art assessment:
**UNASSESSED**. This is finite geometric-series arithmetic, not a new general
integration or positivity principle.

## Exact consumer and source

The pre-existing `GammaCutoffResidual.tailWeight a` is the integral over
`Ioi a` of `OddRootProjection.parityKernel 0`:

    k(r)=exp(-r/2)/(1-exp(-2r)),  r>0.

The pre-existing `GammaGeometricQuadrature.cellWeight a b` is its interval
integral, and for 0<a<=b equals `tailWeight a-tailWeight b`. Those coefficients
appear in the actual physical quadrature row and the canonical finite-sine
source output. They are not independent sampled kernel values.

This module eliminates the unevaluated improper integral from rational
coefficient enclosures at deliberately chosen logarithmic lag nodes. It does
not evaluate any prime term, pole moment, gamma constant, or translated sine.
The real-odd parity-zero source is the scope; no character transfer is claimed.

## Complete primary argument

Put d_n=2n+1/2 and e_n(r)=exp(-d_n r). For each finite N and r>0,

    k(r)=sum_{n<N} e_n(r)+e_N(r)/(1-exp(-2r)).                (1)

Indeed, the N=0 identity is the source definition. The remainder for N is
`e_N + remainder_(N+1)` because e_(N+1)=e_N exp(-2r). This proves (1) by
induction; no infinite-sum/integral interchange occurs.

For r>=a>0, the remainder is nonnegative and at most

    exp(-d_N r)/(1-exp(-2a)).

Every exponential is integrable on (a,infinity). The original kernel's tail
integrability has already been proved and is reused. Consequently

    S_N(a) <= tailWeight(a) <= S_N(a)+E_N(a),
    S_N(a)=sum_{n<N} exp(-d_n a)/d_n,
    E_N(a)=exp(-d_N a)/(d_N(1-exp(-2a))).                    (2)

The signed source has not been replaced by (2); (2) encloses only its
positive gamma coefficients. The denominator in E_N pays the COMPLETE
remainder, not merely its first omitted exponential.

Now let a(u)=-2 log u, with 0<u<1. Then a(u)>0 and

    exp(-d_n a(u))=u^(4n+1),  exp(-2a(u))=u^4.

For rational u, (2) becomes finite exact rational arithmetic:

    rationalTailLower(u,N)=2 sum_{n<N} u^(4n+1)/(4n+1),
    rationalTailError(u,N)=2u^(4N+1)/((4N+1)(1-u^4)),
    rationalTailUpper=lower+error.                         (3)

Outward decimal/dyadic rounding is admitted only by two exact rational
comparisons against (3). No numerical evaluation of log or exp is required
for the WEIGHTS. The actual lag remains the exact real logarithm, so source
translations at that lag require their own scalar or operator evaluation.

For 0<v<=u<1 we have a(u)<=a(v). If l_u<=tail(a(u))<=h_u and similarly for v,
then the ORIGINAL panel lies in [l_u-h_v,h_u-l_v]. Both endpoint errors are
retained. This also handles u=v, where the source panel is exactly zero.

The change of variable u=exp(-r/2) would give k(r)dr=-2du/(1-u^4), consistent
with (3). That is an analytic cross-check sharing the same kernel, not an
independent verification. The Lean proof does not rely on a new coordinate
measure transformation or omit its Jacobian.

## Individual declaration correspondence

- `kernel_decomposition`: (1), all N including zero, with original kernel and
  strict r>0. Induction and the exact remainder step. Consumer: tail enclosure.
- `remainder_bounds`: nonnegativity and the full-tail integrable majorant for
  every r>=a>0. Uses monotonicity of the exponential denominator, not a sample.
- `tailWeight_bounds`: integrates the two pointwise inequalities after proving
  each finite exponential sum and majorant integrable. Returns to tailWeight.
- `logarithmicLag_pos`: a(u)>0 under both 0<u and u<1; endpoints excluded.
- `logarithmicLag_antitone`: 0<v<=u implies a(u)<=a(v), retaining orientation.
- `rationalTail_bounds`: casts finite rational endpoints and proves (3) bounds
  the exact source tail. N remains arbitrary; no rounding premise is assumed.
- `tailWeight_enclosure`: consumes exact rational outward comparisons to get
  short rational endpoints. Consumer: the concrete coefficient example table.
- `cellWeight_enclosure`: original interval identity plus both tail bounds;
  neither endpoint error nor the far tail is silently discarded.

Private helper proofs supply exponential integrability/evaluation, the finite
integrated sum, and the real/rational cast identities. The rational endpoint
definitions are outside the noncomputable section and use only finite sums,
rational powers and division. They are evaluable arithmetic, not an oracle.

## Falsification and scope

For u=1/2, N=1, even S_3>S_2: retaining only the first omitted term cannot upper
bound the omitted tail. The examples module gives a corresponding theorem
about the actual tail integral. Near u=1 the denominator 1-u^4 is small; no
uniform fixed truncation order over all positive lag nodes is asserted. Near
r=0 the original singularity remains and is separately paid by the existing
translation-slope estimate. No unproved all-window convergence rate is used.

## Pins, sources, and evidence

Inspected base `grwtsk/math@bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Exact inspected dependencies:

- [WeilGammaCutoffResidual.lean](WeilGammaCutoffResidual.lean), blob
  `7d0da83892d6ceffb552dbf4aa3ec532a56dd087`: `tailWeight`,
  `kernel_integrableOn_tail`, and original kernel definitions/imports.
- [WeilGammaGeometricQuadrature.lean](WeilGammaGeometricQuadrature.lean), blob
  `027568cef624b657629f4474624e55c933aa04d2`: `cellWeight_eq_tail_sub`.
- mathlib `Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean`, blob
  `e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c` at the pin above:
  `integrableOn_exp_mul_Ioi` and `integral_exp_mul_Ioi`.

These are local consequences of the canonical source and inspected mathlib
APIs, not a claimed direct formalization of an uninspected paper theorem.
Limited repository searches do not establish uniqueness or novelty.

Written mathematical argument supplied. Source-text and exact rational
calculations are recorded separately in math#1837. Lean parsing/elaboration,
exact signatures, fresh kernel replay, transitive axiom audit, clean dependency
replay and independent review: **NOT_RUN**. No imported candidate is promoted.
No source-sign matrix, interval evaluator for the other coefficients, high
floor, or universal cofinal certificate supply is provided. The downstream
source consumer is [WeilGammaRoundedQuadrature.lean](WeilGammaRoundedQuadrature.lean).
