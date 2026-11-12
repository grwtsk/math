# Complete disk divisor to a logarithmic-derivative bound

Local attribution: grwtsk contributors. Date: 2026-11-11.
Coordination: grwtsk/math#1801, scope comment 6813879338.
Inspected main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source: [../CompactDiskLogDerivative.lean](../CompactDiskLogDerivative.lean).

## Evidence boundary and consumer

All new Lean bodies are SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel
replay, transitive axiom auditing, repository-wide verification and independent
review are NOT_RUN. Novelty UNASSESSED. This is a classical local complex-analysis
argument, not a new RH criterion. Imported candidates retain their actual status.

The consumer is the original repaired Dirichlet source in
[DirichletHorizontalLogDerivative](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletHorizontalLogDerivative.provenance/README.md).
The theorem supplies the analytic regular factor missing from a mere finite
principal-part estimate. There is no supplied logarithm, factorization, complete
zero list, multiplicity-count bound, or logarithmic-derivative magnitude field.

This is a conservative sufficient variant of the previous WRITTEN radius-8/6/3
lemma. It reuses canonical fixed radii 4,3,11/4,9/4 and its centered application
uses radii 8,11/2,3. Its constant is larger. It does not claim to encode the
previous sharp coefficient 3 or change the meaning of that earlier statement.

## 1. Exact theorem

Let f be analytic on a neighborhood of the closed disk |w|<=4. Assume M>=1,
eta>0, delta>0, |f(w)|<=M on that disk, and |f(0)|>=eta. For |z|<=9/4 assume
that every zero a with |a|<=11/4 satisfies |z-a|>=delta. Put ell=log(16/11)>0.
Then f(z)!=0 and

    |f'(z)/f(z)| <= (1+log(M/eta)) [80+(1/delta+1)/ell].       (1)

The center is nonzero before analytic order is converted to a natural number.
The conclusion f(z)!=0 is derived from the distance hypothesis, rather than
implicitly interpreting the left side by totalized division at a zero.

## 2. Construct the complete finite divisor

Instantiate the existing CompactZeroInventory.AnalyticContext with the SAME f,
the connected closed disk of radius 4, anchor 0 and its proved nonzero value.
Its compact-zero theorem constructs the finite set

    S={a: |a|<=11/4 and f(a)=0}.

It includes roots on the inner boundary. This is a mathematical, noncomputable
inventory, not certified numerical root enumeration. The same analytic context
excludes infinite order throughout the disk. Thus each a in S has a positive
finite order m_a=analyticOrderNatAt f a and a local factorization

    f(w)=(w-a)^m_a A_a(w),  A_a analytic, A_a(a)!=0.

The divisor on the inner closed disk has integer value m_a at a. The canonical
JensenFiniteMultiplicity theorem, whose finite support and sign hypotheses are
proved, therefore gives

    nu=sum_(a in S) m_a <= log(M/|f(0)|)/ell <= log(M/eta)/ell. (2)

This uses the actual analytic divisor, not independently assigned weights. No
unsupported infinite finsum or zero-order totalization is used.

## 3. Construct the global removed quotient and normalized logarithm

Use the existing disk factor

    b_a(w)=3(w-a)/(9-conj(a)w).

Since |a|<=11/4<3, its denominator does not vanish on |w|<=3. The finite
multiplicity product B=product b_a^m_a has unit modulus on |w|=3 and modulus
at most one at 0. FiniteBlaschkeRemoval constructs ONE global normalized
meromorphic quotient g which is analytic on the closed radius-3 disk and
satisfies f=gB there, including at every selected root. Local equal-order
factorization supplies nonzero removable values. It is not the raw quotient
with its assigned zero values left at the removable centers.

Completeness of S proves g!=0 on |w|<11/4. The maximum modulus principle and
|B|=1 on the radius-3 boundary give |g|<=M. At the center |g(0)|>=|f(0)|>=eta.
The existing NormalizedDiskLogarithm constructs a primitive of g'/g, normalized
to L(0)=0, and derives

    g(w)=g(0) exp(L(w)),  Re L(w)<=log(M/eta).

Its branch is a holomorphic lift on the zero-free disk, not the principal
complex logarithm. No branch oracle or sampled agreement is assumed.

## 4. Pay for both parts of the derivative

Put H=1+log(M/eta)>0. The added 1 covers the degenerate logarithmic cost zero.
The canonical Borel--Caratheodory estimate bounds |L| by 20H on radius 5/2.
For each |z|<=9/4, its radius-1/4 Cauchy circle stays in that disk; hence

    |L'(z)|<=80H.

The exact finite-product logarithmic derivative is

    f'/f = L' + sum_(a in S) m_a
                [1/(z-a)+conj(a)/(9-conj(a)z)].

For these radii the disk-normalization term has modulus at most 1. For example
its numerator is <=11/4 and its denominator is >=9-(11/4)(9/4)=45/16;
the ratio is <=44/45<1. The pole term costs at most 1/delta. Combining this
with (2) and log(M/eta)<=H proves (1). Thus the regular factor and each
normalization term are paid, not silently dropped.

## 5. Centered return

For F analytic on |s-c|<=8 set f(w)=F(c+2w), x=(z-c)/2. If |z-c|<=3, then
|x|<=3/2<9/4. A gap delta from all zeros of F in |a-c|<=11/2 supplies the gap
delta/2 for f. The chain rule derives

    logDeriv f(x)=2 logDeriv F(z).

Discarding the harmless improvement by 1/2 gives the proved sufficient bound

    |F'/F(z)| <= (1+log(M/eta)) [80+(2/delta+1)/ell].           (3)

All hypotheses refer to F itself. Affine coordinates do not identify the
derivatives without their chain factor.

## 6. Falsification and scope

Functions exp(bw) have no zeros but arbitrary logarithmic derivative b.
Thus a count or a distance floor alone cannot replace the growth/anchor data.
The quotient normalization above is essential. Boundary roots, repeated
analytic multiplicities, empty inventories, M=eta=1, and zero logarithmic
growth are included. eta=0 and delta=0 are excluded explicitly.

The lemma supplies neither an arithmetic positivity result nor an infinite
contour formula. It does not claim independent review or a transitive axiom
audit of the imported source chain.

## 7. Exact sources and declaration correspondence

Canonical sources at the inspected main (MIT; local attribution grwtsk contributors):
- CompactZeroInventory.lean, AnalyticContext.finite_zeros, zeros, mem_zeros,
  finite_order, actual_order, positive_order; blob `9dc8174302101ad80526b5ae521f3cfd37e27af4`.
- FiniteBlaschkeRemoval.lean, exists_removed_quotient; blob
  `2e00884ae2c064fe2dab5f4686e6db69e974d5bd`.
- BlaschkeQuotientLogarithm.lean, exists_log_from_quotient; blob
  `59f29bb605d1fc6a10c37ef717c0fc714df58fe5`.
- NormalizedDiskLogarithm.lean, exists_normalized_log_bounded; blob
  `502dd7b5b0e1b2e4383db5792972b95368264168`.
- NormalizedLogDerivativeBound.lean, norm_logDeriv_of_factorization; blob
  `c123cccfcc465ace08cf11b19458e6a1d3fc658e`.
- JensenFiniteMultiplicity.lean, finite_divisor_sum_le_jensen; blob
  `e2ed4d891f12504ab6b3dde836b9a7da86b2a283`.
These are reused source candidates, not independently checked external proofs.

Pinned primary Mathlib inputs (Apache-2.0):
- Maksym Radziwill, [BorelCaratheodory.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/BorelCaratheodory.lean),
  Complex.borelCaratheodory_zero; positive real ceiling, normalized center and
  open disk retained; blob `6a14d2f963a0e93ae640a6e8bf7b101207f41e79`.
- Stefan Kebekus, [JensenFormula.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean),
  AnalyticOnNhd.sum_divisor_le; M>=1, nonzero center and genuine integer divisor
  retained; blob `3dd78e234df51703431c913f5bc6081233542e97`.
- Yury Kudryashov, Mathlib complex Cauchy/maximum-modulus machinery; and
  Ian Jauslin, Alex Kontorovich, Oliver Nash, HasPrimitives.lean,
  DifferentiableOn.isExactOn_ball and IsExactOn.with_val_at. These supply the
  canonical derivative/logarithm proofs; their use is not an executed receipt.

Individual records give the exact statement and source-return consumer.
Proposed command, NOT EXECUTED:

    lake build GRWTSK.FunctionsOfAComplexVariable.CompactDiskLogDerivative

Successful elaboration must be followed by fresh kernel replay and individual
transitive-axiom queries. The prescribed Noe execution skill returned 404 at
`d5d24de1563273eca5ba5c5d91f652ddca86cfb7`; Lean/Lake and verified local skills
were absent. Dependent execution stopped. Ordinary source publication does not
change these statuses. Source-only checks and publication readback belong in #1801.
