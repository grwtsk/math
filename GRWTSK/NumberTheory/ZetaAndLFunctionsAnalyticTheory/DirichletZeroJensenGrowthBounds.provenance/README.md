# DirichletZeroJensenGrowthBounds

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

Source: [maintained Lean module](../DirichletZeroJensenGrowthBounds.lean), 164 lines,
8556 UTF-8 bytes; Git blob `64b1c9af1cb6875b8d509326df82e192bcc3ec19`;
SHA-256 `853f5d871434421f7e963cdcdd672ce70511c08c4c7a36c07b6d599f3515a7ff`.

## Exact consumer and analytical argument

Reuse the existing poleClearedLFunction, CriticalStripZero, zeroMultiplicity,
heightWindow, heightCount, Admissible and spectralCoordinate literally. The earlier
Jensen module is pinned at inspection main; its source candidate status is unchanged.
Its pole repair F_chi(1) is not modified, and F_chi(s)=(s-1)L(chi,s) away from 1.

The independent new coefficient module proves norm(L(chi,s))<=7/4 and >=1/4 on
Re(s)>=2, for every positive level and every character. At the existing Jensen
centre this proves abs(log(norm(L(chi,2))))<=log(4), uniformly in character.
On the outer circle norm(s-2)=2(H+2), with H>=2 and Re(s)>=2,

    norm(F_chi(s)) <= (7/4)*norm(s-1)
                  <= (7/4)*(2H+5) <= 8H <= exp(8H).

The inequality (7/4)*(2H+5)<=8H uses H>=2. Thus EVERY height and EVERY point of
this right-hand portion are covered; this is not a finite sample or compactness
existence statement. The point s=1 is excluded by Re(s)>=2 before rewriting F.

Suppose, explicitly, C,L>=0 and

    EVERY H>=2, EVERY s with norm(s-2)=2(H+2) AND Re(s)<2:
      norm(F_chi(s)) <= exp(C*H*(log(H)+L)).

Splitting the circle by Re(s)>=2 / Re(s)<2 and enlarging the displayed exponents
gives the whole-circle bound

    norm(F_chi(s)) <= exp((C+8)*H*(log(H)+L+1)).

The split leaves no boundary gap: Re(s)=2 belongs to the unconditional part.
Combining the original Jensen count with the newly proved centre bound gives,
for an arbitrary supplied whole-circle growth bound with parameters C,L,

    heightCount_chi(H) <= ((C+log(4))/log(2))*H*(log(H)+L+1).

For the complementary-circle supplier above, substitute C+8,L+1. The result is

    heightCount_chi(H) <= D*H*(log(H)+L_count),
    D=(C+8+log(4))/log(2), L_count=L+2.

All factors used in enlarging the count bound are nonnegative and log(2)>0.
The formula supplies constants without an unestimated chi-dependent centre value.
C,L can STILL depend on chi; uniformity of them across conductors is not inferred.
The final theorem feeds this actual-source count into the unchanged correlation
consumer for EVERY admissible test f, A>=0 with tsupport f contained in [-A,A],
and integer k>=1. Both signs of zero height, central zeros, and original analytic
multiplicities are retained. The coordinate is z_rho=-I*(rho-1/2); the reflected
pairing is NOT replaced by an absolute square off the real axis.

## Precise remaining supplier and boundaries

The complementary-circle estimate is NOT proved. To make this route unconditional,
for every primitive chi of positive level, including conductor-one zeta, it remains
to construct C_chi,L_chi>=0 proving that displayed inequality for all H>=2 and all
points of the complementary circle. This portion includes critical-strip and
left-half-plane points. The absolutely convergent series estimate in the new
independent module cannot be applied there. Functional equations, continuation,
and the necessary quantitative gamma/other analytic estimates must be supplied
with their actual hypotheses; they are not imported by naming them.

The new statements do not prove a full-circle supplier, an unconditional H log H
count, or unconditional source correlation summability. They do not prove the
pole-inclusive arithmetic Weil identity, positivity, RH, GRH, or joint control of
varying-test interpolation costs and tails. Upper growth/counting estimates do not
supply a lower sign bound. Pole clearing for Jensen deletes no Weil pole term.

Hostile checks of the written argument: Re(s)=2 lies in the proved branch;
H=2 is allowed in the linear bound; all constants are displayed; denominator
log(2) is proved positive; centre positivity precedes the logarithm; the generic
helper does not enlarge the primitive target. Finite checks, compact maxima and
pointwise nonvanishing cannot replace the quantified complementary supplier.
There is no claimed independent review or independent second proof.

## Provenance and programme coverage

This is a local source consequence of the independent new coefficient estimates
and the existing DirichletZeroJensen / WeilPrimitiveZeroMoment source candidates.
It is not a direct formalization of a new paper theorem. The upstream Jensen
input remains Stefan Kebekus's AnalyticOnNhd.sum_divisor_le at the repository
Mathlib pin. Exact adjacent individual records identify local dependencies and
upstream continuation; the older source-local provenance remains applicable.
Dated prior-art comparison: 2026-11-11. Estimates are elementary classical ones;
focused searches establish neither novelty nor absence. Novelty UNASSESSED.

RP-OC-01 and B receive an actual-source quantitative estimate and a narrowed
counting supplier. RP-OC-02 receives its conditional convergence composition.
A receives individual source records, not checked formal admission. RP-OC-03--10,
C--F and the four arithmetic-topology/higher-realization extensions are untouched.
No programme is complete and earlier results are not revalidated.

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
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroJensenGrowthBounds
```

After successful elaboration, run the individual records' axiom queries and a
fresh kernel replay over the actual dependency closure. Those checks and an exact
statement-correspondence review remain required before mathematical acceptance.
The issue records source text/hash checks and the non-force expected-head main
publication/readback, separately from unrun formal checks. No workflow, scheduler,
proof runner or cross-chat action was dispatched. No independent review is claimed.
