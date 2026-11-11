# Pole-cleared Dirichlet sources and the Jensen count

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6808881785.
Source: [DirichletZeroJensen.lean](../DirichletZeroJensen.lean).
Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`. MSC2020: 11M26, 11M41, 30C15.

## Exact source identity and intended consumer

Inspection base `78daf1725c74caf6f9cff350732269bcac9ceeb4`; complete base tree
`b15db03225bd2c8c208e10a4deee65a7c843aa9e`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
No root import, dependency, target, workflow, policy or protection changes.
Source has 312 lines and 16118 UTF-8 bytes.
Git blob `50308f5753a55ee6f7229eeb1d1d0674902b6ffb`; SHA-256 `7abcae79175ce1a360ae96aae8b96b6b7e02a73a1e1c017b0d890b43dd070961`.
The publication commit and branch readback are recorded in the coordinating issue.

The existing `CriticalStripZero`, `zeroMultiplicity`, `heightWindow`, `heightCount`,
`spectralCoordinate`, `Admissible`, and correlation are reused literally. Their
source is the analytically continued `DirichletCharacter.LFunction`, not an
out-of-convergence totalized Dirichlet series. Existing source candidates retain
their own evidence status. The new construction's consumer is
`heightCount_le_jensen`, followed by `heightCount_le_of_circle_growth` and
`summable_primitive_correlation_of_circle_growth`. There is no replacement RH target.

## Statement, quantifiers, domains and normalization

For every positive level N and every character chi, define

    F_chi(s) = (s-1) L(chi,s), s != 1;
    F_chi(1) = product_(p | N) (1-1/p), chi principal;
    F_chi(1) = 0, chi nonprincipal.

The prime product is exactly the residue supplied by Mathlib for the principal
continued L-function. Primitivity is not needed for this entire extension. This
general analytic helper does NOT extend the GRH target to imprimitive characters.
The counting and correlation consumers retain the existing primitive hypothesis.

For every primitive chi, every real H>=2, every M>=1, if

    norm(F_chi(s)) <= M for EVERY s with norm(s-2)=2(H+2),

then the EXISTING multiplicity count satisfies

    heightCount_chi(H) <= log(M / norm(L(chi,2))) / log(2).

M>=1 is explicitly retained from the pinned Jensen theorem. The two radii are
H+2 and 2(H+2), centred at the fixed nonzero source point 2. Boundary zeros on
the circles are allowed by that theorem. The source count has the unchanged
strict absolute-height cutoff and open critical strip, includes both height signs
and central zeros, and counts full analytic multiplicity rather than cardinality.

The all-height consequence assumes C,L>=0 and

    EVERY H>=2, EVERY s on the above outer circle:
    norm(F_chi(s)) <= exp(C*H*(log(H)+L)).

It supplies explicit constants

    D = (C + abs(log(norm(L(chi,2))))) / log(2),
    L_new = L+1,

and proves `heightCount_chi(H)<=D*H*(log(H)+L_new)` for EVERY H>=2. The final
consumer applies the existing primitive-source correlation theorem with those
constants, for every admissible f, support in [-A,A], A>=0, and k>=1. The
transform remains F_f(z)=integral f(t) exp(i z t) dt and the reflected product
F_f(z) conjugate(F_f(conjugate(z))). There is no off-axis norm-square substitution.

## Complete primary analytical argument

1. For a principal character, Mathlib proves the punctured limit of (s-1)L(chi,s)
at 1 is the displayed finite Euler-factor product. For a nonprincipal character,
L is entire, so the same product tends to zero at 1. Replacing the function's
value at 1 by that limit makes it continuous there. Off 1 it is complex
differentiable. The removable-singularity theorem then gives analyticity at 1;
combined with the off-1 derivative argument this proves F_chi is entire.

2. At 2, F_chi(2)=L(chi,2). The unconditional nonvanishing theorem in Re(s)>=1
therefore proves the Jensen centre is nonzero. The logarithm of its norm is a
genuine finite real number, not a totalized log-zero artifact.

3. At any actual source strip zero rho, rho!=1. The previous source theorem gives
L(chi,s)=(s-rho)^m*g(s) near rho, with g analytic and g(rho)!=0 and m the actual
positive analytic multiplicity. Multiplication by (s-1) changes the local unit
to (s-1)g(s), still nonzero at rho. Hence the analytic order of F_chi at rho is
exactly m. The analytic-divisor evaluation theorem turns this equality into the
integer divisor weight on any set containing rho. No free multiplicity supplier
or infinite-order conversion assumption is introduced.

4. For 0<Re(rho)<1 and abs(Im(rho))<H,

    norm(rho-2) <= abs(Re(rho)-2)+abs(Im(rho)) < 2+H.

Thus the entire original height window injects by its complex value into the
closed inner disk. The divisor of an analytic function is nonnegative; its
support on this compact disk is finite. Sum the exact source multiplicities
over the injective image of the finite height window, extend the finite sum to
the union with the divisor support, and use nonnegativity. This proves the
integer inequality between the source count and the full disk divisor mass.
The proof supplies the finite-support fact before invoking `finsum`; it does
not exploit the zero value assigned to an infinite unsupported sum.

5. Apply pinned Mathlib Jensen with inner radius r=H+2, outer radius R=2r,
centre 2, bound M>=1 and the proved entire source. Divide by log(R/r)=log(2)>0.
Its nonzero centre is exactly L(chi,2). Compose with step 4, including the
integer-to-real cast, to obtain the stated source count inequality. Extra zeros
outside the strip can only increase the nonnegative disk count, which is why
an inequality rather than global divisor equality is the correct comparison.

6. Substitute M=exp(C H(log(H)+L)). It is >=1 because C,L>=0, H>=2 and log(H)>=0.
Writing B=abs(log(norm(L(chi,2)))) and P=H(log(H)+L+1), we have P>=1,
C H(log(H)+L)<=C P, and -log(norm(L(chi,2)))<=B P. Therefore the Jensen numerator
is at most (C+B)P. Division by log(2)>0 gives exactly D H(log(H)+L_new).
This controls EVERY height only because the input circle bound does so.

7. Feed those explicit constants and the proved all-height counting estimate
into the unchanged prior correlation-summability consumer. This is a genuine
source application of steps 1-6, not a new positivity or explicit-formula theorem.

## Hostile checks and comparison boundaries

Two boundary checks have theorem bodies in the same source. For zeta the raw
product at 1 is 0 while the repaired entire value is 1. For every nonprincipal
character, F_chi(1)=0 while L(chi,1)!=0. Consequently neither naive cancellation
at zeta's pole nor global preservation of the zero set is valid. The actual
source return is deliberately restricted to points other than 1, in particular
the unchanged open-strip zeros. These checks do not refute RH or GRH.

Qualitative compact boundedness gives some M for each H but supplies no common
C,L or H log H growth. A sequence of per-window finite maxima is not the
quantitative supplier. Nor does Jensen's upper zero-count bound imply a lower
sign bound for the Weil form. Source zeros retain full complex locations and
analytic multiplicities; the real/imaginary parts are used only to bound the
geometry of the containing disk. No simple-zero or separation hypothesis is used.

There is no claimed independent second proof. Argument-principle zero-counting
is a distinct classical comparison route, not an independently completed proof
in this change. The written boundary tests and exact-statement checks are not
independent review, elaboration, kernel replay or an axiom audit.

## Exact primary-source/declaration correspondence

All Mathlib links below are at `d13f23b723b8a846827a245b89c10fc7d3f11612`, under Apache-2.0.
These are source adaptations/local consequences, NOT claimed direct formalizations
of a new paper theorem. Individual records identify the relevant subsets.

* Stefan Kebekus, [JensenFormula](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean),
  `AnalyticOnNhd.sum_divisor_le`; blob `3dd78e234df51703431c913f5bc6081233542e97`.
  The actual signature uses absolute radii, M>=1, and a cast of the integer
  divisor finsum. Those details are retained, not inferred from another revision.
* Stefan Kebekus, [Divisor](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Meromorphic/Divisor.lean),
  `MeromorphicOn.divisor`, `MeromorphicOn.AnalyticOnNhd.divisor_apply`,
  `MeromorphicOn.AnalyticOnNhd.divisor_nonneg`; blob `de6bb57254025d007357a7df0a8e3607b386ac69`.
  Evaluation uses `((analyticOrderAt f z).map (up)).untop_0` at an analytic point;
  the preceding finite natural-order theorem justifies this conversion.
* Yury Kudryashov, [RemovableSingularity](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/RemovableSingularity.lean),
  `Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt`;
  blob `8e7041227bba49af1abb884b670498be9f004c63`.
* David Loeffler and Michael Stoll, [DirichletContinuation](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean),
  `LFunction`, `LFunction_modOne_eq`, `differentiableAt_LFunction`,
  `differentiable_LFunction`, `LFunctionTrivChar_residue_one`.
* Michael Stoll and David Loeffler, [Nonvanishing](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean),
  `DirichletCharacter.LFunction_ne_zero_of_one_le_re`, `LFunction_apply_one_ne_zero`.
* Vincent Beffara and Stefan Kebekus, [Order](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Analytic/Order.lean),
  `AnalyticAt.analyticOrderAt_eq_natCast`.
* Kexing Ying, Kevin Buzzard and Yury Kudryashov, [Finprod](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/BigOperators/Finprod.lean),
  `finsum_eq_sum_of_support_subset`; blob `41d0601cb61b9c27d36e50613b852e7515f6eb2f`.
* [Topology/Piecewise](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Piecewise.lean),
  `continuousAt_update_same`; existing topological extension API.

Local prerequisites at inspection base `78daf1725c74caf6f9cff350732269bcac9ceeb4`:
[DirichletZeroMultiplicity](../DirichletZeroMultiplicity.lean), blob
`ef9d9f861731f11e446dd59bd60c8896b1e5462d`, and
[WeilPrimitiveZeroMoment](../WeilPrimitiveZeroMoment.lean), blob
`bd369e32bb84f7ef4c8f4eaea7b56ccd902e362c`. Their adjacent provenance remains
applicable; this change does not upgrade their evidence status.

Dated prior-art comparison, 2026-11-11: Michael A. Bennett, Greg Martin,
Kevin O'Bryant and Andrew Rechnitzer, *Counting zeros of Dirichlet L-functions*,
Math. Comp. 90 (2021), DOI 10.1090/mcom/3599, arXiv:2005.02989, gives explicit
upper and lower counting bounds. Only bibliographic/abstract scope was inspected
in this turn; no exact numbered result from that paper is being imported or
claimed formalized here. The next counting/growth task is a source-formalization
obligation, not a claim that such analytic estimates are new or unknown.
Focused canonical searches and partial directory display establish no absence
or novelty. No new frontier claim ID is introduced.

## Unresolved supplier and program scope

The precise remaining supplier for this route is: for every positive N and
primitive chi, construct nonnegative C_chi,L_chi satisfying the displayed
outer-circle bound for EVERY H>=2. The constants may depend on chi; no effective
values or conductor uniformity is asserted. The original all-height counting
obligation is discharged conditionally by this supplier, NOT unconditionally.

RP-OC-01 and workstream B receive an actual-source analytic upper-count reduction;
RP-OC-02 receives its composition with the unchanged correlation convergence.
Workstream A receives individual source provenance, not formal admission.
RP-OC-03--10, C--F, and all four arithmetic-topology/higher-realization extensions
are untouched this increment. No program is complete. The full pole-inclusive
explicit formula, all prime powers/phases, conductor, gamma/parity and dual
character terms, arithmetic positivity, and joint varying-test cost/tail control
remain distinct open obligations. Clearing the pole for Jensen does NOT remove
pole terms from any Weil formula.

## Evidence and reproduction boundary

Elaboration/build: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive axiom audit:
NOT_RUN. Independent review: NOT_RUN. Repository-wide verification and arithmetic
certification: NOT_RUN. No formal failure is reclassified; the earlier smooth-order
semantic failure and its versioned correction remain recorded in earlier sources.

Local Lean/Lake and verified canonical skill checkouts are absent. The required
`noe-proof-automation/SKILL.md` returned 404 at Noe main
`be792665d59e3dc7700e3a21d70e13865556416d`; dependent execution stopped. No runner,
workflow, scheduler or cross-chat effect was dispatched. Ordinary source
publication is independently authorized. Actual text/hash/path/readback checks
and the publication receipt are recorded in #1801, separately from proof evidence.

Proposed command, NOT EXECUTED:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroJensen
```

After successful elaboration, query `#print axioms` for EVERY declaration listed
in the individual records, including transitive dependencies, and perform fresh
kernel replay. These commands are obligations, not execution receipts.
