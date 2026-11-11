# DirichletLFunctionRightBounds

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. Coordination: math#1801,
scope comment 6809308416. No new frontier claim ID; RP-OC identifiers are unchanged.
Inspection main `82860eec91bc9a028119280095ec3fc45e574e6b`; complete root tree `7d389222b94fd9277bb59524a9f72b35bf56bff6`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Elaboration/build: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive axiom audit:
NOT_RUN. Independent review: NOT_RUN. Repository-wide verification: NOT_RUN.
No Lean command was executed. Existing candidate dependencies retain their evidence
status, and earlier recorded failures are not reclassified. The canonical proof
skill returned 404 at Noe main `67524e4e54d3abea2d719b078fe662e5fa6139e9`;
verified local skill checkouts and Lean/Lake are absent. Dependent execution stopped.
Source-only publication and text/hash checks do not constitute proof acceptance.

Source: [maintained Lean module](../DirichletLFunctionRightBounds.lean), 173 lines,
8214 UTF-8 bytes; Git blob `fcfd806d32be31270d3920bb42c8bf98193c5124`;
SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.

## Exact target, domain and analytical argument

For every f:N->C with norm(f(n))<=1 for n!=0, and every complex s with Re(s)>=2,

    norm(LSeries f s - f(1)) <= 3/4.

This is a statement in the absolutely convergent domain; convergence is proved
before splitting the sum. It has no character, Euler-product or nonvanishing input.
The original n=0 term is exactly the zero term in Mathlib's LSeries convention.

For x>0,

    1/(x+1)^2 <= 1/(x(x+1)) = 1/x - 1/(x+1).

Induction gives, for EVERY natural m,

    sum_(0<=n<m) 1/(n+3)^2 <= 1/2 - 1/(m+2) <= 1/2.

Nonnegative bounded partial sums prove summability of the majorant, then its
infinite sum is at most 1/2. For n!=0, monotonicity of n^(-Re(s)) and the coefficient
bound give norm(term(f,s,n))<=1/n^2. The isolated n=2 term costs at most 1/4.
The split at index 3 is exact, so the triangle inequality gives the claimed 3/4.
The proof explicitly establishes summability of the tail and of the whole series;
it does not use the zero assigned to a non-summable tsum.

For every positive level N and every Dirichlet character chi, norm(chi(n))<=1
and chi(1)=1. Apply the coefficient result and the pinned continuation theorem
ONLY where Re(s)>1. For the ACTUAL continued LFunction this yields

    norm(L(chi,s)-1)<=3/4,
    1/4<=norm(L(chi,s))<=7/4,
    abs(log(norm(L(chi,s))))<=log(4)          (Re(s)>=2).

The lower estimate follows from 1<=norm(L)+norm(L-1), the upper from
norm(L)<=norm(L-1)+1. The logarithm is bounded only after proving the norm is
positive; log(1/4)=-log(4) and log(7/4)<=log(4). Constants are uniform in N, chi,
and Im(s). These constants are deliberately nonoptimal.

The final declaration specializes to conductor one and rewrites LFunction to
riemannZeta. There is no substitute zeta model, out-of-convergence series, or
extension of the primitive-GRH target to imprimitive characters. The estimates
are valid analytic helpers for all characters, while later counting retains
primitivity. This module has only pinned Mathlib imports; the earlier Jensen
and multiplicity source candidates are not prerequisites for these estimates.

## Mathematical consumer and comparison

The centre s=2 in the existing Jensen argument now has explicit bounds independent
of chi. The same estimate controls the Re(s)>=2 part of every outer Jensen circle.
Those consumers are implemented in [DirichletZeroJensenGrowthBounds.lean](../DirichletZeroJensenGrowthBounds.lean).
This is a genuine source estimate, not an interface assuming its conclusion.

Hostile checks in the written argument: the endpoint Re(s)=2 is included; both
signs and arbitrary magnitude of Im(s) are permitted; n=0 is excluded from the
reciprocal estimate and treated by the actual term definition; x>0 is necessary
for the telescoping reciprocal step; arbitrary f(0) has no effect; f(1) is not
silently set to one in the generic theorem. The half-plane hypothesis is material:
these bounds are not asserted on the critical strip or at the pole. In particular
zeta has residue one at 1, so these bounds cannot extend unchanged toward that pole.
These are analytical checks, not executed Lean tests or independent review.

A distinct classical comparison route uses the reciprocal Dirichlet series
with coefficients chi(n)*mu(n), via Mathlib DirichletCharacter.LSeries.mul_mu_eq_one.
It can yield lower bounds by estimating the inverse series. That alternative was
inspected but not implemented here; no independent second proof is claimed.

## Primary-source correspondence and prior art

The estimates use elementary absolute convergence and telescoping; no novelty is
claimed. The classification is pinned-API adaptation and local consequence, NOT
a direct formalization of a numbered paper theorem. The paper by David Loeffler
and Michael Stoll, *Formalizing zeta and L-functions in Lean*, arXiv:2503.00959,
provides background for the source API; its abstract/bibliographic scope was
consulted, not a new theorem imported. Exact implementation locators below, not
an abstract or an unpinned search hit, govern the formal source correspondence.
Dated comparison: 2026-11-11. Focused searches are incomplete and establish no
absence of equivalent results. Individual records preserve each declaration map.

All listed upstream modules use Apache-2.0; their public author bylines are retained
in the records. Local arguments and modules are attributed to grwtsk contributors,
under the repository MIT license. No upstream paper is republished here.

## Exact pinned API locators

- Aaron Anderson and Michael Stoll: [Mathlib/NumberTheory/LSeries/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Basic.lean); `LSeries.norm_term_le_of_re_le_re, LSeries.norm_term_eq, LSeriesSummable_of_bounded_of_one_lt_re`. Blob `9c600187008df264d2ed6320fcfe3ee395538aca`.
- Michael Stoll: [Mathlib/NumberTheory/LSeries/Dirichlet.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Dirichlet.lean); `DirichletCharacter.LSeriesSummable_of_one_lt_re and bounded-coefficient specialization`.
- David Loeffler and Michael Stoll: [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean); `DirichletCharacter.LFunction_eq_LSeries, LFunction_modOne_eq`. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.
- Sébastien Gouëzel and Yury Kudryashov: [Mathlib/Topology/Algebra/InfiniteSum/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/Real.lean); `summable_of_sum_range_le; passage from bounded nonnegative finite sums`. Blob `82131f71d8c5c0b14cb5d23cd6da8543422a4e3b`.
- Johannes Hölzl: [Mathlib/Topology/Algebra/InfiniteSum/NatInt.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/NatInt.lean); `Summable.sum_add_tsum_nat_add, generated from Multipliable.prod_mul_tprod_nat_add`. Blob `068846239a74b9cff04c456bcba142809ac58eca`.
- Sébastien Gouëzel, Heather Macbeth, Johannes Hölzl and Yury Kudryashov: [Mathlib/Analysis/Normed/Group/InfiniteSum.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/InfiniteSum.lean); `Summable.of_norm_bounded, HasSum.norm_le_of_bounded`.

## Reproduction and publication boundary

Clean-checkout source basis: the publication commit recorded in math#1801, with
the unchanged repository pins above. No root import or dependency change is needed
for the proposed targeted command below. It was NOT EXECUTED:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLFunctionRightBounds
```

After successful elaboration, run the individual records' axiom queries and a
fresh kernel replay over the actual dependency closure. Those checks and an exact
statement-correspondence review remain required before mathematical acceptance.
The issue records source text/hash checks and the non-force expected-head main
publication/readback, separately from unrun formal checks. No workflow, scheduler,
proof runner or cross-chat action was dispatched. No independent review is claimed.
