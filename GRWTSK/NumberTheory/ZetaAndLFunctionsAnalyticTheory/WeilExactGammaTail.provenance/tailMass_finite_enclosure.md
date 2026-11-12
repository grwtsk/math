# Finite enclosure of the exact physical gamma tail

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.tailMass_finite_enclosure`.
MSC2020: primary 11M06; supporting 26A42.

## Exact statement and consumer

For every a,n in Nat and every real R>0, put alpha_j=a+2j+1/2 and
K_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)). The original `parityKernel` is reused.
Define

    tailMass(a,R) = 2 integral_(R,infinity) K_a(r) dr,
    tailPrefix(a,n,R) = sum_(j<n) 2 exp(-alpha_j R)/alpha_j,
    tailUpper(a,R) = 2 exp(-(a+1/2)R)/((a+1/2)(1-exp(-2R))).

The theorem proves

    tailPrefix(a,n,R) < tailMass(a,R)
    tailMass(a,R) <= tailPrefix(a,n,R) + tailUpper(a+2n,R).

The consumer is exact physical gamma-tail assembly for the original Weil
source. At character parity 0 or 1 the auxiliary shifted indices a+2n are
rates in a recurrence, not additional character parities. Every n is retained;
there is no fixed numerical tolerance, experimental stopping rule or assertion
that one finite matrix covers all tests or windows.

## Analytical proof and declaration correspondence

For r>=R>0 the denominator of K_a(r) is at least 1-exp(-2R)>0.
Comparison with the integrable exponential divided by this constant proves
`parityKernel_integrableOn_tail` and the upper half of `tailMass_bounds`.
Since the denominator is at most 1, `parityKernel_ge_exp` gives its lower half,
and `tailMass_pos` follows from strict positivity of the explicit lower bound.
Mathlib's pinned `integrableOn_exp_mul_Ioi` and `integral_exp_mul_Ioi`
supply the improper exponential integral with negative rate.

The exact identity

    K_a(r) = exp(-(a+1/2)r) + K_(a+2)(r)

is `parityKernel_step`. All three terms are integrable on this tail, so
`tailMass_step` follows by linearity. Induction gives
`tailMass_eq_prefix_add_remainder`, with remainder exactly tailMass(a+2n,R).
Its positivity and upper bound prove the displayed enclosure. No infinite
sum/integral interchange occurs. This replaces the earlier first-exponential
floor by the entire tail with a certified analytical truncation budget.

A separate algebraic check is finite geometric extraction: multiply the
n-term kernel expansion by 1-exp(-2r); the terms telescope and leave
exp(-(a+2n+1/2)r). This is an alternative check of the identity, not independent
referee review or a second machine-verified proof.

## Scope and hostile cases

R>0 is essential: the kernel is singular at zero. The upper bound diverges
as R decreases to zero and is not asserted uniform in R. The case n=0 is
included and has empty prefix. Positivity of this gamma tail does not prove
positivity of the full signed Weil form. Actual numerical exponential
approximations still require outward-rounded enclosures; the theorem does not
certify a floating-point implementation. This is a physical translation cutoff,
not the frequency cutoff in Groskin's supplied finite dictionary.

## Source identity and evidence

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Canonical file: [`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilExactGammaTail.lean`](../WeilExactGammaTail.lean).
Source SHA-256: `0bdff5484e571e19e55a2e910bc33a43f1de40ad931c57e4f0d7566492398011`.
Inspected math main: `21c3956913b469693e5acaf5bc6bf05c34c78196`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This is a local analytical consequence of the native source, not a copied
Yang--Mills declaration or a direct formalization of a theorem claimed verbatim
in an external paper. Upstream context is Connes, Consani and Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1 (27 November 2025),
[the pinned edition](https://arxiv.org/abs/2511.22755v1), (2.1)--(2.5) for the
correlation conventions and (3.19)--(3.20) as identified by the existing
canonical gamma modules. The exact native mathematical objects, rather than
a citation, are the formal dependencies. No third-party source is copied.

The native source bindings are
[`WeilGammaData.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaData.lean),
[`WeilSourcePrimeCorrelation.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilSourcePrimeCorrelation.lean),
and [`WeilGammaTailCompensation.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaTailCompensation.lean).

Status: `SOURCE_PROOF_CANDIDATE`. Written derivation: supplied here and in
source. Lean elaboration, fresh kernel replay, transitive axiom audit,
independent analytical review and repository-wide validation: `NOT_RUN`.
Static text inspection found no proof placeholders or new axiom declarations;
that does not establish elaboration or a transitive axiom result. Novelty:
`UNASSESSED`; no novelty claimed. Historical checks of imported modules do
not verify this new source. The exact-source coordination and publication
record belongs to [issue #1789](https://github.com/grwtsk/math/issues/1789).

The prescribed Noe proof-automation skill returned 404 at
`grwtsk/noeaaeue@8b50d43323f27bb13bdcae9f2e2b4a81c9895827`; dependent execution
was not dispatched. No verified local skill checkout or Lean/Lake executable
was present. This source-only publication does not change pins or root imports.
