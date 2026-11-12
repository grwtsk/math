# Actual Dirichlet logarithmic derivatives on simultaneous horizontal heights

Local attribution: grwtsk contributors. Date: 2026-11-11.
Coordination: grwtsk/math#1801, scope comment 6813879338.
Inspected main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source: [../DirichletHorizontalLogDerivative.lean](../DirichletHorizontalLogDerivative.lean).

## Evidence boundary

All new Lean bodies are SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel
replay, transitive axiom auditing, repository-wide verification and independent
review are NOT_RUN. Imported candidates retain their statuses and known failures.
Novelty UNASSESSED. This is classical complex analysis applied to the existing
arithmetic source, not a new zero-free region or an RH/GRH proof.

The final theorem encodes a fourth-power bound for the ORIGINAL continued
LFunction, on one test-independent sequence of heights working for both edge
signs. Its only arithmetic premises are positive level and primitivity. The
source-growth, center lower bound, finite zero inventory, Blaschke quotient,
normalized logarithm and count are derived, not new hypothesis fields.

The corresponding completed logarithmic-derivative bound still needs the
separate gamma logarithmic-derivative magnitude estimate in Lean. The prior
written full argument is not relabeled as encoded or verified. Finite rectangle
excision, Fourier inversion, compensated integral evaluations and the limiting
explicit formula also remain incomplete as formal implementations.

## 1. Literal sources and zero correspondence

Write q=N>0. Keep the existing repaired entire function F_chi, with

    F_chi(s)=(s-1)L(chi,s) for s!=1.

Its value at 1 is the actual residue for a principal character and zero for a
nonprincipal character. No global equality of real divisors is asserted.
The ACTUAL completion is GammaR(s+a)L(chi,s), without q^(s/2), with a the
genuine parity and the inverse-character functional equation retained.

At every nonreal w, GammaR(w)!=0: the pinned exact zero characterization
allows only the assigned values at real negative even integers. The same
argument applies to w+1. The global uncompletion identity can therefore be
rearranged at nonreal w after excluding its conductor-one w=0 exception.

If F_chi(w)=0 and Im w!=0, then L(chi,w)=0. Closed right-half-plane
nonvanishing excludes Re w>=1. If Re w<=0, the actual completed source is
nonzero by the inverse-character functional equation and the closed right
boundary theorem for the dual. The rearranged uncompletion identity would
instead make it zero. Consequently w belongs to the EXISTING
CriticalStripZero chi subtype. This is not a critical-line conclusion.

## 2. The source supplies the whole local disk ceiling and its anchor

Let

    G=centralStripGrowthConstant q+farLeftGrowthConstant chi+8 >=0,
    d=sourceCountConstant chi >=0.

The existing source theorem gives, for every U>=2,

    |F_chi(s)|<=exp(G U(log U+2)) on |s-2|=2(U+2).

Maximum modulus extends this to the full closed disk. At either center
c=2+i epsilon T, T>=2, epsilon=+1 or -1, the local radius-8 disk is contained
in the disk about 2 of radius T+8. Take U=(T+4)/2. Then
U<=1+T and log U+2<=2(1+T), so the new all-point theorem gives

    |F_chi(s)|<=M_T:=exp(2G(1+T)^2),  |s-c|<=8.               (1)

The independent original Dirichlet-series estimate, used only in Re s>=2,
gives |L(chi,2+it)|>=1/4. Since |1+it|>=1,

    |F_chi(2+it)|>=1/4                                      (2)

for every real t. No lower bound on a surrogate or fitted zero-free factor is
used. Equations (1),(2) are derived for the SAME source and both signs.

## 3. Reuse the quantitative selected heights, including all other zeros

The previous candidate constructs n+2<T_n<n+3 and

    delta_n=1/[2(2d+1)(n+4)^2]>0,

with distance at least delta_n from every original strip zero on BOTH entire
horizontal lines. Its proof also covers zeros outside the finite window used
in the selection. Its two proof API references are repaired in the adjacent
versioned [source-repair record](../DirichletHorizontalZeroAvoidance.provenance/SOURCE-API-REPAIR-v2.md);
the mathematical statements are unchanged and no compiler run is claimed.

Every nonreal zero of F_chi is an original strip zero by Section 1. Every
real zero is at distance >=T_n>2 from sigma+i epsilon T_n, and delta_n<=1.
This handles real strip zeros, trivial zeros, and the introduced nonprincipal
zero at 1 without assuming that their multiplicities are one. Thus the
local analytic lemma's gap hypothesis covers ALL zeros in the radius-11/2 disk.

## 4. Pay for the entire logarithmic derivative

The new [complete-disk lemma](../../../FunctionsOfAComplexVariable/CompactDiskLogDerivative.provenance/README.md)
derives, from (1),(2) and the complete zero gap,

    |F_chi'/F_chi(z)|
      <= (1+log(4M_T)) [80+(2/delta_n+1)/ell],
    ell=log(16/11)>0,  z=sigma+i epsilon T_n, -1<=sigma<=2.    (3)

It constructs the complete analytic divisor, its global removed Blaschke
quotient and the normalized logarithm. Thus (3) is not merely a norm bound
for a finite principal-part sum. The change of coordinates c+2w has its
derivative factor 2 proved explicitly.

Put X=(1+T_n)^2. Since n+4<=2(1+T_n),

    2/delta_n <=16(2d+1)X,
    1+log(4M_T)<=B X,    B=1+2G+log4.

Let

    K=80+[16(2d+1)+1]/ell,
    C_F=B K=horizontalLogDerivativeConstant chi>0.

Because X>=1, the second factor in (3) is <=KX. Hence

    |F_chi'/F_chi(sigma+i epsilon T_n)|<=C_F(1+T_n)^4.         (4)

All constants are displayed finite source expressions. They depend on chi
and are not numerically evaluated or claimed conductor-uniform. The entire
low-height range is included. The larger constants replace no earlier claim;
they suffice for the same polynomial-growth consumer.

## 5. Return to the original L-function

Near each selected nonreal point, the equality F_chi=(s-1)L(chi,s) is a
genuine neighborhood identity. F_chi is nonzero there by the constructed gap,
so L is nonzero; s!=1 is also proved. Logarithmic differentiation gives

    L'/L = F_chi'/F_chi - 1/(s-1).                            (5)

Only a neighborhood away from 1 is used; the repaired value at 1 is not
differentiated as though it were a global totalized product. Since
|s-1|>=T_n>2, the reciprocal has modulus <=1. Combining (4),(5) gives

    |L'(chi,sigma+i epsilon T_n)/L(chi,sigma+i epsilon T_n)|
      <=(C_F+1)(1+T_n)^4.                                   (6)

The declaration exists_horizontal_LFunction_logDeriv_bound derives one
sequence satisfying (6), both signs, the full sigma interval [-1,2], and
actual completed-source nonvanishing on both entire horizontal lines.
No root separation, simplicity, absence of central zeros, or RH/GRH premise
is used. The zeta specialization is literally riemannZeta and
completedRiemannZeta at conductor one.

## 6. Remaining formal consumer and normalization

To upgrade (6) to the completed-source magnitude theorem, the next separate
special-function supplier is a proved polynomial bound for

    logDeriv (gammaFactor chi) (sigma+i epsilon T_n),

uniform for sigma in [-1,2] and both signs. The preceding written argument
obtains a linear bound by two digamma recurrences and its compensated integral.
That magnitude theorem is not encoded in this increment. Analyticity and
nonvanishing of the gamma factor alone do not bound its logarithmic derivative.

After that, the compact-smooth contour weight's order-three decay pays for
both horizontal edges. Their actual integral limits, finite rectangle
identity and all-line arithmetic evaluation still require formal assembly.
No new claim here suppresses the zeta contributions W_f(0), W_f(1), inserts a
conductor half-factor, or discards character phases.

The existing CHARACTER-ORIENTATION-v1 correction remains: the plus-sign
correlation zero pairing for chi returns to primitiveArithmeticValue at chi
inverse, or equivalently to the reflected test at the original character.
Neither that source equality nor positivity is redefined. Fixed-test decay
also gives no uniform derivative-seminorm control for varying interpolants.

## 7. Hostile checks and provenance

A zero-free exponential can have arbitrary logarithmic derivative, so counting
and avoidance alone do not imply (4). The all-point source ceiling (1) and
independent amplitude anchor (2) explicitly exclude that invalid inference.
A real zero in the local disk is not silently treated as an indexed nonreal
zero. All root classifications, multiplicities and coordinate chain factors
remain source-bound. Source checks and symbolic algebra by the same tool are
not independent review or formal verification.

Primary pinned sources, Apache-2.0:
- David Loeffler and Michael Stoll, [DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean),
  LFunction_eq_completed_div_gammaFactor with its explicit s!=0 or N!=1
  exception; IsPrimitive.completedLFunction_one_sub; literal conductor-one
  identities. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.
- David Loeffler, [Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean),
  GammaR_eq_zero_iff (source spelling Gammaℝ); blob
  `09568288ef9897b1e3b0e0763dd31a9421b77616`.
- Michael Stoll and David Loeffler, Nonvanishing.lean,
  LFunction_ne_zero_of_one_le_re, with pole exclusion retained; blob
  `789e0aae6e9378c8f5c8a7a07a905830e20b5433`.
- Mathlib Analysis/Complex/AbsMax and Analysis/Calculus/LogDeriv:
  maximum modulus, neighborhood equality and product logarithmic derivative.
  The existing canonical modules supply the exact usage and fixed-radius API.

Canonical sources at inspected main (MIT; grwtsk contributors):
- DirichletZeroCounting.lean, poleClearedLFunction_circle_growth,
  sourceCountConstant; blob `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a`.
- DirichletZeroJensen.lean, differentiable_poleClearedLFunction,
  poleClearedLFunction_of_ne, poleClearedLFunction_zero_iff; blob
  `50308f5753a55ee6f7229eeb1d1d0674902b6ffb`.
- DirichletLFunctionRightBounds.lean, norm_LFunction_bounds; blob
  `fcfd806d32be31270d3920bb42c8bf98193c5124`.
- DirichletHorizontalZeroAvoidance.lean, quantitative height selection,
  completed-source nonvanishing and horizontalSeparationRadius; inspected blob
  `d1cd00bd07da710458c06753a07c442e1fcd40a1`, with the two source-only repairs
  recorded separately, not silently attributed to the old blob.
- DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md; blob
  `ff97169c9f65f305a41617d002fb5cdfd67c4e06`.

Each new declaration has an individual verbatim-statement/source/consumer record.
Proposed command, NOT EXECUTED:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletHorizontalLogDerivative

The required Noe skill returned 404 at d5d24de1563273eca5ba5c5d91f652ddca86cfb7.
Local Lean/Lake and verified skill checkouts were absent. No proof runner or
workflow was dispatched. Successful elaboration, fresh kernel replay and
transitive axiom queries remain requirements, not inferred from publication.

Program scope: RP-OC-01/B retain original counting and gain an analytic
source-boundary estimate; RP-OC-02 gains the regular logarithmic-factor
component, not a complete Lean explicit formula. A gains source provenance
and a recorded API repair, not checked admission. RP-OC-03--10, C--F and the
four extensions (marked-link arithmetic sources, finite-field control models,
higher-geometric comparison maps, prime-distribution consumers) are not
advanced by this increment. No program is complete.
