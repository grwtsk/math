# Canonical smooth Weil test space: exact zeta negative-pole codimension

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-12. MSC2020 primary 11M26; secondary 11M41, 46C20, 15A03.
Evidence: WRITTEN_ANALYTICAL_PROOF. Associated Lean module
WeilSmoothWindowPoleReturn.lean contains SOURCE_PROOF_CANDIDATE
declarations. Lean elaboration, complete pinned dependency build,
fresh kernel replay, transitive axiom audit, independent analytic
review and certified numerical computation: NOT_RUN.
Novelty: UNASSESSED. No RH or primitive Dirichlet GRH proof.

## Original source and direct consumer

Fix A>=0. The original complex smooth test domain with compact
support in [-A,A] is
  D_A={f:R->C : f is C-infinity and f(t)=0 when |t|>A}.
Its complex vector-space operations are pointwise. The module
defines D_A as smoothWindow A : Submodule C (R->C), rather than
inventing a different Hilbert space or assuming any spectral
source representation.

The genuine completed-zeta physical arithmetic expression is
  Q_zeta,A(f)=N_zeta,A(f)+P_zeta(f),                   (1)
where the unchanged original nonpole source is
  N_zeta,A(f)=gammaConstant(1,0)*energy(f)
    +int_(r>0) gammaCorrectionDensity(0,f,r)dr
    -2*sum_(n in LowSchur.activePrimePowers A)
        LowSchur.primeWeight(n)*Re(C_f(log n)).
Here C_f is SourcePrimeCorrelation.correlation, the original
complex antilinear-first Lebesgue correlation; every prime power
and the entire gamma/physical conductor-one normalization remain.
The sourcePole is the real part of the literal integral of
C_f(r)*(exp(r/2)+exp(-r/2)), with BOTH pole orientations and
their potentially negative complex cross pairing intact.

The completed-zeta explicit formula source in
WeilGammaPhysicalReturn.zeta_hasSum_physical_arithmetic
has this same N_zeta,A plus W(0)+W(1). The original
WeilCorrelationFourier.zeta_pole_correlation identifies
W(0)+W(1) with the exact sourcePole used here.
Those source declarations retain SOURCE_PROOF_CANDIDATE
elaboration status, not independent kernel verification.

## Smooth compact support and genuine integrability (SWR-v1-01/02)

For any f,g in D_A and c in C, addition and scalar multiplication
preserve C-infinity regularity. Moreover, if |t|>A then
  (f+g)(t)=0,   (cf)(t)=0.
The zero function belongs to D_A. Consequently D_A is a
complex submodule of the actual whole-line function space,
without a new hypothesis weakening the test domain.

For f in D_A, the pointwise support satisfies
  support(f) subset [-A,A].
The interval [-A,A] is compact (possibly empty for A<0);
therefore f has compact support. Continuity follows from
C-infinity regularity, so the existing theorem that a
continuous compactly supported function is Lebesgue
integrable gives
  Integrable(f, volume).
This is a GENUINE integral existence proof; no totalized
nonintegrable integral is treated as a source value.
The previous ZetaNegativeMomentCodimension theorem then
proves the two weighted exponentials integrable under precisely
these hypotheses; no independent weighted hypothesis is added.

## Actual finite smooth family and its negative-pole map

Let W be ANY finite-dimensional complex submodule of D_A.
Define the literal inclusion of source functions
  i_W : W ->_C (R->C)
as the composition of the two canonical subtype linear maps
  W -> D_A -> (R->C).
Every i_W(w) is smooth, compactly supported and integrable
by the preceding argument. Define on W the ACTUAL negative
zeta pole functional
  L_W(w)=M_+(i_W(w))-M_-(i_W(w)),
  M_±(f)=int_R f(t)exp(±t/2)dt.
The prior source declaration
ZetaNegativeMomentCodimension.sourceNegativeMomentLinear
uses precisely these moments and their verified integrability,
and constructs L_W as a complex-linear map. There is no
arbitrary proxy functional or moment certificate.

Finite-dimensional rank-nullity gives the unconditional
complex codimension bound
  dim_C W <= dim_C(ker L_W)+1.                         (2)
For all w in ker L_W, the exact complex moment equality
M_+(i_W(w))=M_-(i_W(w)) holds. The previously authored
ZetaPoleRankOneReturn.sourcePole_nonneg_on_negative_kernel
then proves the ORIGINAL signed two-pole quadratic form
  P_zeta(i_W(w))>=0 on ker L_W.                       (3)
The source-return theorem
smoothWindow_pole_nonneg_on_codimension_one_kernel
is a direct specialization of that result to the
actual canonical smooth supported complex source domain.
The kernel is only used to count negative directions:
there is no global pole-neutral restriction on f.

## Full physical arithmetic negative-direction consumer

Define originalZetaNonpole A f with the LITERAL scalar
N_zeta,A(f) in (1), including its signed complete
finite von Mangoldt sum, parity-zero gamma density
and gammaConstant 1 0. This is a source-preserving
local definition and is not a positivity model.

Suppose W is ANY finite-dimensional complex negative
subspace for the full original zeta source, meaning
  N_zeta,A(i_W(w))+P_zeta(i_W(w)) < 0
for every nonzero w in W. This is a property of a
hypothetical negative subspace, NOT a global sign axiom.
By (2)--(3), for every nonzero w in ker L_W,
  N_zeta,A(i_W(w))
    < -P_zeta(i_W(w)) <= 0.                          (4)
Hence every d-dimensional negative subspace for the
original pole-inclusive zeta arithmetic produces at
least d-1 independent negative directions for the
unchanged nonpole arithmetic source.

This is the exact effect of the two signed zeta pole
orientations on complex negative index: at most one
ADDITIONAL negative direction. It is not a bound on
the number of negative zeros, and it does not show the
nonpole source has zero negative index. The explicit
negative-index trace bound in
WeilSignedDeficitNegativeIndex.md requires the
still-missing full supported Fourier/Plancherel/Bessel
source theorem. No earlier fixed-window finite-index
conclusion is promoted to kernel-verified evidence.

## Falsification and scope checks

The zero test belongs to D_A. Real odd supported smooth f
may have M_+=-M_-≠0, giving a genuinely negative pole:
P_zeta=-2|M_+|². Thus (3) is NOT asserted for all tests.
Every finite-dimensional subspace W, including one
containing functions with arbitrary complex coefficients,
has a complex-linear L_W; using real rank would miss
the character and complex Weil test domain.
At A=0, smooth support inside {0} forces f=0, so the
source codimension statement is vacuous and exact.
For A>0, any nonzero smooth compact odd bump provides a
test with nonzero negative pole moment, confirming the
negative functional is not identically zero on D_A.
No imprimitive characters or broader L-function families
are introduced. The conductor-one source is zeta,
never a nonprincipal character with q=1.

The construction introduces no new shift, spectral
projection, positive replacement operator, or
frequency/ordinate reduction. All prime powers and
both original zeta pole orientations are preserved.
An algebraic codimension bound is not the universal
signed Weil inequality.

## Primary sources, exact pins and remaining premise

Canonical dependency chain:
- WeilSourcePrimeCorrelation.correlation, energy;
- WeilCorrelationFourier.zeta_pole_correlation;
- WeilZetaPoleRankOneReturn.plusMoment, minusMoment,
  sourcePole and sourcePole_nonneg_on_negative_kernel;
- WeilZetaNegativeMomentCodimension
  .integrable_source_exp_weight,
  .sourceNegativeMomentLinear,
  .sourcePole_nonneg_on_codimension_one_kernel,
  .negative_full_source_implies_negative_nonpole_on_kernel;
- WeilGammaPhysicalReturn.zeta_hasSum_physical_arithmetic;
- new WeilSmoothWindowPoleReturn declarations:
  smoothWindow, smoothWindow_support_subset,
  smoothWindow_tsupport_subset, smoothWindow_hasCompactSupport,
  smoothWindow_integrable, smoothWindow_admissible,
  smoothWindow_zeta_hasSum_physical_arithmetic, windowSource,
  negativeMomentOnWindow,
  smoothWindow_pole_nonneg_on_codimension_one_kernel,
  smoothWindow_negative_full_implies_negative_nonpole,
  originalZetaNonpole,
  originalZeta_negative_subspace_restricts_to_nonpole.
The new consumer explicitly references the unchanged
native source gamma and full prime inventory.

Primary prior art:
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20), both signed poles.
Bombieri, Remarks on Weil's quadratic functional in the
theory of prime numbers, I, Rend. Lincei 11 (2000),
variational negative-index analysis. The present
compact-support/submodule/rank-nullity arguments are
classical; novelty UNASSESSED, no independent review.

Inspected grwtsk/math/main
e9e56bc167d7de60304074be675e79ee2fc3f979.
Lean leanprover/lean4:v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
No root imports, pins, existing sources or
repository policies are modified.

FIRST FORMAL REMAINING: elaborate the current import
closure and new smooth-window source theorems, prove
the negative-index supported Fourier/Plancherel Bessel
inequality in Lean, audit transitive axioms and
statement correspondence at the actual pins.
FIRST MATHEMATICAL REMAINING: unconditional all-test,
all-character, all-window nonnegativity of the
ORIGINAL pole-inclusive Weil form. The codimension
argument alone proves neither RH nor primitive GRH.

## VIII. Direct correspondence with canonical Admissible and completed zeta

The canonical target type is
  GRWTSK.NumberTheory.WeilNegativeWitness.Admissible f
   := ContDiff R infinity f AND HasCompactSupport f.
It is NOT an arbitrary spectral class. From §II the new
smoothWindow_admissible theorem proves this EXACT predicate
for every f in the new smoothWindow A submodule.
The pointwise support theorem smoothWindow_support_subset
proves support(f) subset [-A,A]; applying closure_minimal
with the closed interval gives
  tsupport(f) subset Icc(-A,A)
in smoothWindow_tsupport_subset.
This is the second literal support premise of the
canonical explicit-formula theorem.

With A>=0, the new
smoothWindow_zeta_hasSum_physical_arithmetic theorem
instantiates EXACTLY the existing
SourcePrimeCorrelation.zeta_hasSum_physical_arithmetic
on f:smoothWindow A. Its type retains
  chi = 1 : DirichletCharacter C 1,
  HasSum_{rho : CriticalStripZero chi}
    (zeroMultiplicity chi rho * W(rho))
    [gammaConstant(1,0)*E(f) + integral Gamma_0
     -2sum_(n in native activePrimePowers A)
           primeWeight(n)*Re(C_f(log n)) + W(0)+W(1)].
No off-line ordinate projection, pole deletion,
character inversion or multiplicity restriction enters.
This is a direct source consumer, not a new independent
zero-sum proof. It inherits the upstream
SOURCE_PROOF_CANDIDATE verification status.
The prior signed pole-return theorem identifies W(0)+W(1)
with the sourcePole used in the codimension argument.
Thus the smooth test carrier is now identified with BOTH
the completed-zeta source and its actual negative pole map,
at Lean source-candidate level, rather than by an arbitrary
source-valued family alone.

The full all-test positivity hypothesis is still missing;
having a well-typed completed-source identity does not
prove its right side nonnegative. The explicit formula's
HasSum also does not prove the absence of negative zeros
without the original Weil criterion and arithmetic sign.
All new declarations and their individual provenance
remain unelaborated; source text and static readback
cannot promote them to kernel-checked mathematics.
