# Returning finite logarithm tests and rational tails to the Weil source

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65D30, 65G20.
Source: [WeilExponentialBumpScalarEvaluation.lean](WeilExponentialBumpScalarEvaluation.lean).
Suppliers: [WeilBinomialScalarBounds](WeilBinomialScalarBounds.md) and
[WeilExponentialBumpGammaEvaluation](WeilExponentialBumpGammaEvaluation.md).
Coordination: [math#1801, iteration 10 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6994285114).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and prior-art completeness UNASSESSED. No numerical source value,
favorable sign, universal certificate supply or RH/GRH proof is asserted.
All formal execution, certified source computation and independent review NOT_RUN.

## Original target and domain

The target is exactly the existing `primitiveArithmeticValue` on

    g_T = liftReal(oddExpBump T),
    oddExpBump(T,t) = t * expNegInvGlue(T^2-t^2).

For every positive modulus q and primitive NONPRINCIPAL Dirichlet character chi,
retain its actual conductor and gamma parity, every original active prime label,
all von Mangoldt weights and the signed complex response `twistedPrime`.
The test is the original compact smooth odd function, not the cell approximation.
No critical-line condition, zero-location/count input, or surrogate positive
quadratic form is used.

The previous EBQ-3 theorem supplies an arithmetic enclosure from physical cells,
whole lag cells, exact log-error certificates and a transcendental gamma-tail
allowance. This increment constructs the log-error input from finite comparisons
and replaces that allowance by a proved rational MAJORANT. It preserves EBQ-3
unchanged and does not duplicate its gamma/prime integration argument.

## Exact inputs and quantifiers

Fix T>0 and an integer m>=1. The omitted gamma regions are chosen as

    eta=2^(-m),        R=2m.

Take adjacent physical cells x_0=-T,...,x_N=T, weakly increasing and contained
in [-T,T]. At each physical midpoint retain the original binomial order p_i.
For each active integer n, provide rational-or-real endpoints l_n,u_n and a
positive natural order b_n, with

    0<=l_n<=u_n<=b_n,
    1<=n*L_(b_n)(l_n),        n*U_(b_n)(u_n)<=1.       (1)

These are finite algebraic comparisons for rational endpoint data. Define

    s_n=(l_n+u_n)/2,          delta_n=(u_n-l_n)/2.

The shifted physical samples at midpoint+s_n retain their original integer
orders wp_(n,i). Exactly as in EBQ-3, order conditions are required only when
the actual sample lies strictly inside the support. At and outside its endpoints
the existing full sample and radius are exactly zero.

For the middle gamma integral take a complete adjacent positive lag partition

    y_0=2^(-m), ..., y_M=2m,      0<y_j<=y_(j+1).

Retain all shifted sample orders wg_(j,i) and kernel orders k_j satisfying

    k_j>0,
    k_j >= (gammaParity(chi)+1/2)*y_(j+1),
    k_j >= 2*y_(j+1).

This preserves whole-cell control, including half-width lag variation, both
energy/correlation errors, and the original kernel endpoint orientation.
No hypothesis about log n, an omitted gamma integral, or its exponential value
remains as an independent oracle in the new endpoint.

## Complete primary analytical argument and source return

The original active inventory implies n>=2. Hence n>0, and WBS-2 applied to
(1) proves the literal source fact

    |log(n)-s_n|<=delta_n.

The dyadic geometry gives 0<eta<=1<=R. All other original EBQ-3 premises are
passed through without change. Define using the EXISTING declarations

    A_n = bumpCorrelationEstimate at s_n,
    e_n = bumpCorrelationBudget at (s_n,delta_n),
    a0  = bumpCorrelationEstimate at exact zero lag,
    e0  = bumpCorrelationBudget at (0,0),
    c   = gammaConstant(q,gammaParity(chi)),
    E   = |c|*e0 + primeCorrelationError(T,e),
    P   = twistedPrime(T,chi,A).

Let Glo,Gup be the previous finite gamma sums `lagCellSum` of
`bumpGammaLowerRow` and `bumpGammaUpperRow`. EBQ-3 gives

    c*Re(a0)+Glo-P-E <= Q_chi(f_T),
    Q_chi(f_T) <= c*Re(a0)+Gup-P+B_gamma(T,eta,R)+E.

WBS-5 bounds the original complete gamma omission by

    Delta_T(m) = (3/4)(2T+1)(1+4T^2)^2 * 4^(-m)
                 + (64/3)T^3 * 2^(-m).

Monotonicity of the upper endpoint proves EBS-1:

    c*Re(a0)+Glo-P-E <= Q_chi(f_T)
      <= c*Re(a0)+Gup-P+Delta_T(m)+E.                 (EBS-1)

This is a theorem about precisely `primitiveArithmeticValue`. Only an error
majorant is enlarged; the signed source expression and its central prime
response are not changed. Both omitted gamma regions remain paid. They are
nonnegative, so they need not be subtracted from the lower endpoint; their
complete allowance is required in the upper endpoint. The source factor |c|
remains in E even when c is negative.

The prime central value still uses the original complex character phases.
No off-line spectral pairing is changed to an absolute square. There is no
unlisted-zero, multiplicity or zero-count premise in this arithmetic-side route.

## What has and has not become finite rational arithmetic

For rational T, physical/lag geometry and logarithm endpoints, the bump samples,
correlation estimates, correlation error budgets, middle-gamma sums and new
omission allowance are finite rational expressions. Rational sample values are
cast to complex numbers, so their norms reduce to rational absolute values.
The Lean theorem permits exact real geometry too; it does not claim to have
implemented or run the rational computation.

The endpoint STILL contains c, prime weights and character phases. Producing
and composing their outward enclosures, certifying the complete active inventory,
and accounting for every remaining rounding operation are open. In particular,
certifying log n for a correlation lag is not by itself a certificate for
vonMangoldt(n)/sqrt(n), and is not a certificate for log(q/pi) or Euler's constant.
No coefficient is silently replaced by a rounded value.

WBS-6 proves that Delta_T(m) tends to zero for each fixed T. This does not show
that fixed physical/correlation errors remain acceptable as eta=2^(-m) approaches
the singular endpoint. Middle cells and sample orders must also be refined, and
the arithmetic lower sign is a separate problem. A determining-test theorem for
this bump family is not established. The primitive-nonprincipal theorem does
NOT cover conductor-one zeta: both pole orientations require their own exact
source return. RH and primitive Dirichlet GRH remain unresolved by this increment.

## Hostile checks and comparison

Reverse either binomial inequality and the corresponding logarithm conclusion
can fail; the supplier note records concrete scalar examples. Do not use a
zero binomial order for the tail, omit the positive gamma remainder, infer
whole-cell control from midpoint values, erase a character phase, or replace
an exact coefficient without paying its product error. These failures concern
incorrect certificates, not RH/GRH counterexamples.

The consumer is intentionally an application of the existing source theorem,
not a second proof of its explicit formula or quadrature. A different written
log-integral route is discussed in the supplier note; it has not been implemented
or independently reviewed. Source-local comparison, not a novelty claim.

## Individual declaration provenance

**EBS-1**, edition 1, 2026-11-18:
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain.primitiveArithmeticValue_oddExpBump_binomialScalars_enclosure`.

Typed scope: all positive q, primitive nonprincipal chi, T>0, m>0, all finite
physical/lag partitions and sample/kernel orders satisfying the displayed
inequalities, and all original active-label binomial logarithm tests. Dependency
chain: WBS-2 -> literal log-error premise -> original EBQ-3; WBS-5 -> outward
upper-endpoint replacement. The complete argument is given above. Consumer is
the existing source arithmetic evaluation and eventual signed certificate,
not a replacement RH predicate. Open obligations are listed above. Status
SOURCE_PROOF_CANDIDATE, novelty UNASSESSED, all formal execution and independent
review NOT_RUN.

Inspection pin: grwtsk/math `bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6`.
Existing EBQ-3 source blob: `475309b56f95f33c18047a1195170a9fb7e0a498`.
Existing `WeilConductorFrontier.lean` blob:
`ac9bf37f07ef22d7ca75b918baeea3161df028b7`; inspected active-inventory membership
and its n>=2 use. All existing provenance and verification histories remain
unchanged. This is a local consequence of maintained declarations, not a new
paper formalization. No external source code is copied.

Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The canonical Noe proof skill was inaccessible at
`5a61a05a43c4574466878657839f2488132e8d4c`; no dependent execution was dispatched.
No verified local skill checkout or Lean/lake executable was found. Source-text
checks and publication readback do not establish parsing, elaboration, kernel
acceptance, an axiom audit, certified numerical values or independent review.
Those checks remain NOT_RUN; their exact-source obligations and ordinary
publication observations are maintained in #1801. Source byline: grwtsk contributors.
