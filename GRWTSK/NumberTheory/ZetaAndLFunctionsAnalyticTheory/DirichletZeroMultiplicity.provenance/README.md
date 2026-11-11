# Actual primitive Dirichlet zero multiplicities and finite height windows

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6807961220.
Source: [DirichletZeroMultiplicity.lean](../DirichletZeroMultiplicity.lean).
Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`. MSC2020 11M26, 11M41, 30C15.

## Pins, identities and source comparison

Inspection base `fce314b591c1c453dc0a432004a62b0add7921f1`; complete root tree `c7c95c6404210b4bfb87b385039c1686aaa2c3f6`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root import or dependency change.
Source: 241 lines, 12083 UTF-8 bytes, fifteen public theorem bodies, three definitions and one type abbreviation.
Git blob `ef9d9f861731f11e446dd59bd60c8896b1e5462d`; SHA-256 `3da29b3e268529b5d81de90fdd59b0f3ee24439fd3c32077113a39c3afc6c174`.
The enclosing commit binds source and nineteen individual declaration records.

This is a classical analytic-source consequence requested by RP-OC-01 and workstream B,
not a new zero-counting theorem or a direct formalization of an identified paper theorem.
Novelty UNASSESSED. No new registered frontier claim ID. Focused code searches returned no
matching local order declarations, but index/tree retrieval was incomplete; absence and
novelty are not inferred. The source index is an abbreviation of the EXACT predicate in
canonical `criticalStripStatement` at the inspected base. No function or RH target is replaced.

Canonical target/domain source: [WeilNegativeWitness.lean](https://github.com/grwtsk/math/blob/fce314b591c1c453dc0a432004a62b0add7921f1/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilNegativeWitness.lean),
blob `abd27c24bfac7422baa4c2482ae71e684b558ff0`. Its continued `LFunction`, open critical-strip
predicate, complex spectral coordinate and corrected compact-smooth domain are unchanged.
The target correspondence theorem proves only an equivalence, not either RH assertion.

## Exact objects and quantifiers

For any positive level N and character chi, `CriticalStripZero chi` consists of distinct
complex rho satisfying LFunction chi rho = 0 and 0 < Re rho < 1. It imposes no critical-line,
simplicity, sign-of-height, absence-of-central-zero, nonempty, or separation hypothesis.
`zeroMultiplicity chi rho` is Mathlib's analyticOrderNatAt of that actual continued function.
It is not a synthetic weight and it is not the value of a totalized Dirichlet series.

For primitive chi, every real H determines a finite heightWindow by |Im rho| < H. Its
heightCount is the sum of these natural analytic orders. It is NOT generally the window
cardinality. The source proves cardinality <= heightCount, monotonicity, and quantified
exhaustion of the indexed zeros. Finsets are noncomputable mathematical objects here;
there is no claimed zero-finding algorithm, certified enumeration, or finite-check completeness.

## Complete primary analytical argument

1. The continued L-function is differentiable off 1 for every character. Because this
complement is open, it is analytic there. At 2 the unconditional nonvanishing theorem gives
a nonzero value, hence analytic order zero. The punctured complex plane is connected.
The analytic-order propagation theorem therefore excludes infinite order at EVERY rho != 1.
This is a source-derived input, not an assumed nonvanishing germ.
2. A strip zero differs from 1. Analyticity and its actual zero equation exclude analytic
order zero. Only after excluding infinite order does the natural-order cast theorem apply.
It gives m in N with cast(m)=analyticOrderAt and m>0. The local factorization characterization
produces an analytic g with g(rho)!=0 and L(chi,s)=(s-rho)^m*g(s) in a neighborhood of rho.
Thus m is the genuine local analytic multiplicity, not a totalization artifact.
3. For a nonprincipal character the L-function is entire. Analyticity and nonvanishing at 2
show that the zero complement is codiscrete, so the zero set is closed and discrete.
For a principal primitive character, primitivity says conductor=level while conductor_one
says conductor=1; hence N=1. LFunction_modOne_eq then identifies the function literally with
riemannZeta. The already-proved zeta zero-set theorem handles the pole using a punctured
nonvanishing neighborhood. We do NOT assert zeta is analytic at 1 or use its junk pole value
as an analytic germ.
4. Intersect this closed discrete zero set with any compact K. The intersection is compact
and discrete and hence finite. For a strip zero of absolute height <H,

    norm(rho) <= abs(Re rho)+abs(Im rho) <= 1+abs(H).

Consequently the source height window injects into the finite zero intersection with the
closed ball centered at 0 of radius 1+abs(H). This works for every real H; impossible negative
cutoffs do not require a nonempty-domain assumption. Central zeros and both height signs
are retained for positive windows.
5. Convert that proved finite set to a Finset with an exact membership theorem. Summing the
proved m>=1 gives cardinality<=multiplicity mass. Inclusion of height windows proves count
monotonicity. Choosing H=abs(Im rho)+2 includes each indexed zero in a window with H>=2.
6. A real bound B on the full heightCount is equivalent to a bound on every finite subset
of that actual window: subset monotonicity gives one direction, and choosing the entire
proved-finite window gives the converse. This is the precise source adapter to the dyadic
count premise. It does NOT prove the quantitative B=D*H*(log H+L) bound.
7. The companion [WeilPrimitiveZeroMoment.lean](../WeilPrimitiveZeroMoment.lean) consumes
that still-explicit quantitative bound. It uses the existing zrho=-I*(rho-1/2), with Re(zrho)
=Im(rho) and |Im(zrho)|<=1/2, to instantiate the previous complete Fourier-moment/correlation
convergence theorem with actual source locations and analytic weights.

## Pinned primary sources and provenance

All upstream source below is Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`. The local result is a consequence/adaptation,
not a claim to have invented isolated zeros, analytic order, or compact-discrete finiteness.
The exact source and declaration correspondence is also repeated individually beside the source.

David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `differentiableAt_LFunction; differentiable_LFunction; LFunction_modOne_eq`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`. Upstream Apache-2.0.

Michael Stoll and David Loeffler, [Mathlib/NumberTheory/LSeries/Nonvanishing.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean), `DirichletCharacter.LFunction_ne_zero_of_one_le_re`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `789e0aae6e9378c8f5c8a7a07a905830e20b5433`. Upstream Apache-2.0.

Vincent Beffara and Stefan Kebekus, [Mathlib/Analysis/Analytic/Order.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Analytic/Order.lean), `analyticOrderNatAt; Nat.cast_analyticOrderNatAt; AnalyticAt.analyticOrderAt_ne_zero; AnalyticAt.analyticOrderAt_ne_top; AnalyticOnNhd.analyticOrderAt_ne_top_of_isPreconnected; AnalyticOnNhd.preimage_zero_mem_codiscrete`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `5dd01cf403100219545c2c7c5c81cacfbf634460`. Upstream Apache-2.0.

Ashvni Narayanan, Moritz Firsching and Michael Stoll, [Mathlib/NumberTheory/DirichletCharacter/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean), `DirichletCharacter.IsPrimitive; DirichletCharacter.conductor_one`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `4569ebb8e61f683a9c89877f0cda4d3add4d766d`. Upstream Apache-2.0.

Huanyu Zheng, [Mathlib/NumberTheory/LSeries/ZetaZeros.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/ZetaZeros.lean), `isClosed_riemannZetaZeros; isDiscrete_riemannZetaZeros; IsCompact.inter_riemannZetaZeros_finite`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `a061262f567eb33cac8ef5f52e5212246254e708`. Upstream Apache-2.0.

Johannes Hölzl, Mario Carneiro and Kyle Miller, [Mathlib/Data/Set/Finite/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Set/Finite/Basic.lean), `Set.Finite.of_injOn; Set.Finite.toFinset`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `40f8afca47062f1c7b3bcb90fe17761ceb927773`. Upstream Apache-2.0.

Sébastien Gouëzel, [Mathlib/Analysis/Complex/Norm.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Norm.lean), `Complex.norm_le_abs_re_add_abs_im`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `0e2b6317a777c4d168a9098fb17ad33323efd4c3`. Upstream Apache-2.0.

The complex-analytic promotion API `DifferentiableOn.analyticOnNhd` and punctured-plane
connectedness are used in precisely the manner already exhibited by the pinned
DirichletContinuation.LFunction_changeLevel_aux proof. This is a source-API comparison,
not a substitute for elaboration or a full transitive dependency audit.

## Hostile boundaries and unresolved obligations

An identically zero analytic function has infinite analytic order, whose natural conversion
is zero. Omitting step 1 would therefore permit spurious zero weights. A primitive principal
character must not be placed in the nonprincipal-entire branch. The explicit N=1 branch
prevents that error and retains the conductor-one source.

Compact finiteness alone does not imply moment summability. For example, the synthetic
locations z_n=n with weights (n+1)^2 have finite windows and positive finite weights, yet
at A=0,k=1 every moment summand is 1. This is an abstract negative control, not an arithmetic
L-function divisor or an RH counterexample, and is not a new Lean counterexample declaration.
The H log H growth theorem therefore remains indispensable. A finite maximum in each window
cannot be relabeled as a uniform-in-H estimate. Counts for distinct locations cannot be
substituted for multiplicity mass. Strict height cutoffs and the open strip match the existing
target; no unproved boundary-zero exclusion or stronger all-zero RH equivalence is asserted.

The full explicit-formula identity with prime powers, phases, conductor, gamma/parity,
dual-character conventions and both applicable zeta pole orientations remains OPEN. Neither
analytic-order factorization nor convergence proves arithmetic positivity. Varying-test costs
and family-uniform counts remain separate. No program is complete.

## Verification and reproduction boundary

Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytic review,
repository-wide verification and arithmetic certification: NOT_RUN. Source-only lexical,
coverage, link and hash checks are recorded separately in the coordinating issue; they are
not parsing, theorem acceptance or an axiom closure. Imported candidates retain their status.
The previous smooth-order failure and its versioned correction are preserved, not reclassified.

Local Lean/Lake and verified canonical skill checkouts are absent. Required canonical
noe-proof-automation/SKILL.md access returned 404 at Noe main
`e376d3b759aacb27d5998232ad36d2a343c5d130`; dependent execution was stopped. No runner,
workflow, scheduler or cross-chat operation was dispatched. Ordinary source publication is
separately authorized. The code is attributed to grwtsk contributors.

Proposed commands, NOT executed:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroMultiplicity
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveZeroMoment
```

After elaboration, query transitive axioms for every declaration listed in the individual
records and perform fresh kernel replay. This document records no inferred passing result.
The first unresolved arithmetic supplier is existence of nonnegative D_chi,L_chi with
heightCount_chi(H)<=D_chi*H*(log H+L_chi) for EVERY H>=2. Explicit conductor dependence
and any uniformity must be proved rather than inferred.
