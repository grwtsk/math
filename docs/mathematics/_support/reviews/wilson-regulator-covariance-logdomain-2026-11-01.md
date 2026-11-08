# Quantitative Wilson covariance and the regulated logarithmic-domain boundary

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Exact task and scope

The requested two stages are:
(1) establish a quantitative covariance estimate with explicit regulator
dependence using the actual four-dimensional periodic SU(2) Wilson measure;
(2) compare the resulting physical observations to a domain-correct
gauge-invariant excitation Hamiltonian.

Stage (1) below has a complete independent analytical proof, with an
explicit coupling-volume loss. Stage (2) is established analytically
ONLY as a source-specific restricted comparison to the existing REGULATED
maximal-domain logarithmic slice transfer operator, under explicit
observable-domain and principal-eigenspace hypotheses. The FULL
four-dimensional continuum Yang--Mills excitation Hamiltonian and
its reconstruction have not been built from the source, and a claimed
unconditional comparison to it would be a missing theorem, not a proof.

Pinned pre-publication source: grwtsk/math/main
370867ae0646983231289c8fab54937fc51961b7.
The final published commit and new Git object SHA must be read back independently.

Existing mathematical inputs, directly inspected on that source revision:

- FiniteSU2Wilson.lean, blob 4d67894f4300159d09138338ac7543d6cd7b4dcd:
  literal four-dimensional positive links, SU(2) plaquette penalties,
  actual product Haar reference probability, normalized Boltzmann measure,
  action bounds, partition bounds and gauge invariance.
- FiniteBoltzmannNormalization.lean, blob
  91303fd670bf111dcc0e188aed6ad3554c62b87f:
  exact normalized measure definition and density bounds.
- WilsonBlockArithmeticCovariance.lean, blob
  b1c27750d61252e857bc23a9a898304a6410b7c2:
  actual gauge-invariant plaquette/block energies and covariance.
- WilsonBlockCovarianceBudget.lean, blob
  522124341e2bd50232384aeb64a001bd817c3729:
  every actual plaquette-pair covariance has absolute value at most one.
- WilsonSpatialBlockLift.lean, blob
  e5db54034e8a455a241ed1809a6a8682733139b3:
  actual spatial block energy, real slice holonomies and time lifting.
- WilsonSpatialBlockZeroIndependent.lean, blob
  c15b13eb50e82db7ca2ff1126aa6a730412fcea8:
  actual product-Haar factorization for blocks on distinct spatial times.
- WilsonSliceGaugeHilbert.lean, blob
  6f00ba2bad4b7084c21d67faddcbcb980727f92d:
  actual closed gauge-fixed Hilbert subspace of spatial slice L2.
- WilsonSliceSpectralApproximation.lean, blob
  7be083c362df8022ac5e41d498e2d6065f1be205:
  actual maximal logarithmic domain, self-adjoint graph and transfer
  normalization.
- WilsonSliceExplicitLogGap.lean, blob
  266956a040e37009feab4bf7404af2e0616161dd:
  source-defined finite-regulator logarithmic gap on the entire
  principal-eigenspace complement, with the required domain.
- WilsonGradedCovarianceGram.lean, blob
  7e24bea357a2ec7e12afe06a91c7bab13243cf63:
  source-exact full class covariance including all signed mixed terms.

## Stage 1: the quantitative estimate

Let L>=3 and beta>=0. The actual torus has L^4 vertices and six
unordered oriented positive direction pairs per vertex. Therefore the
complete physical plaquette inventory has cardinality N_L=6L^4.
The literal Wilson plaquette action is

  S_L(U) = sum_{p in P_L} [1 - (1/2) Re Tr Hol_p(U)]

and 0<=S_L(U)<=2N_L=12L^4. Let nu_L be the normalized
product Haar law of every positive link. The actual Wilson measure is

  d mu_(L,beta) = R_(L,beta)(U) d nu_L(U),
  R_(L,beta)(U)=exp(-beta S_L(U))/Z_(L,beta),
  Z_(L,beta)=E_nu[exp(-beta S_L)].

Set m=12 beta L^4. Pointwise, exp(-m)<=exp(-beta S_L)<=1.
Integrating gives exp(-m)<=Z<=1. Hence

  exp(-m)<=R_(L,beta)(U)<=exp(m),                 (1)

an exact regulator- and coupling-explicit estimate. It is not a
local density or independence estimate. New Lean source defines the
literal normalized ratio and candidates for both bounds.

For any measurable observable 0<=h<=K, write E_beta h for expectation
under mu_(L,beta) and E_0 h for expectation under nu_L.
Use d mu_beta/d nu=R and 0<=E_0 h<=K. Since R is between
exp(-m) and exp(m),

  exp(-m) E_0 h <= E_beta h <= exp(m) E_0 h.

Moreover

  |E_beta h - E_0 h| <= K (exp(m)-1).             (2)

To check the lower deviation, note 1-exp(-m)<=exp(m)-1 for m>=0
(or exp(m)+exp(-m)>=2); the upper deviation is immediate.

Now take 0<=f<=A and 0<=g<=B. Decompose the exact covariance
difference without discarding either product term:

  Cov_beta(f,g)-Cov_0(f,g)
  = [E_beta(fg)-E_0(fg)]
    - [(E_beta f)(E_beta g)-(E_0 f)(E_0 g)].

The absolute first term is at most AB(exp(m)-1). The second
difference factors into

  (E_beta f-E_0 f) E_beta g
  + (E_0 f)(E_beta g-E_0 g),

and is at most 2AB(exp(m)-1). Therefore

  |Cov_beta(f,g)-Cov_0(f,g)|
     <= 3AB(exp(12 beta L^4)-1).                 (3)

This is an unconditional finite-regulator quantitative covariance
inequality, with no assumed correlation-decay hypothesis.

For genuine spatial Wilson blocks B,C at DISTINCT periodic times,
the inspected WilsonSpatialBlockZeroIndependent source supplies
Cov_0(E_B,E_C)=0. Each source energy is in [0,2|B|] or
[0,2|C|]. Therefore (3) proves

  |Cov_beta(E_B,E_C)|
    <= 12 |B||C| (exp(12 beta L^4)-1).           (4)

The existing WilsonBlockCovarianceBudget source independently proves
|Cov_beta(E_B,E_C)|<=|B||C|. Taking the minimum gives

  |Cov_beta(E_B,E_C)|
    <= |B||C| min(1, 12(exp(12 beta L^4)-1)).    (5)

This improves the existing all-coupling cardinality bound in the
weak-coupling regime beta L^4 << 1, and is explicit for all positive
finite L. It does NOT establish a bound decaying with separation,
and at fixed beta>0 it degrades with regulator volume. It cannot
supply a uniform continuum mass gap.

An empty block gives zero on both sides. If beta=0, the new
weak-coupling right side is zero, matching the exact independent
Haar calculation. A generic grade that includes temporal plaquettes
is not a time-local spatial block and does not inherit the zero-coupling
factorization; for such general sources only (3), with their actual
zero-coupling covariance retained, is warranted.

## Stage 2: an actual slice source map and its domain

Fix a spatial block B and a single actual spatial time r. Define
the continuous gauge-invariant slice observable

  F_B(a)=sum_{p in B}[1-(1/2) Re Tr sliceHol_p(a)].

This is the literal maintained WilsonSpatialBlockLift.sliceBlockEnergy.
Let c_B=E_(slice Haar)[F_B], and x_B=[F_B-c_B] in the actual real
slice Haar L2 Hilbert space. The actual SU(2) conjugation formula
proves pointwise invariance of F_B, hence x_B belongs to the actual
closed gaugeInvariantSpace L constructed in WilsonSliceGaugeHilbert.

The new mathematical source WilsonSliceObservableLogDomain.lean constructs
this specific Hilbert vector. This is NOT an unspecified operator
transport, and not the covariance vector of a temporal plaquette.

The existing regulated normalized logarithm H_(L,beta,a) on the
gauge-invariant Hilbert space has MAXIMAL DOMAIN

  D(H) = {x: its spectral log weights are square summable}.

The source has an actual dense domain, its complete adjoint graph,
and a principal spectral coordinate with the eigenvalue lambda0.
For beta>0 and a>0, let

  gamma_(L,beta,a) =
    -log(1-exp(-24 beta L^3))/a > 0.

The maintained explicit_logarithmic_gap has the domain-correct result

  q_H(x):=<x,Hx> >= gamma_(L,beta,a) ||x||^2,      (6)

but ONLY for x in D(H) and with its entire lambda0
spectral coordinate equal to zero. The new consumer applies (6)
to the actual centered x_B, **conditional on proving these TWO
membership facts for that particular source vector**.
It does not assume bounded H, that all L2 vectors lie in D(H),
or that Haar-mean zero equals principal-mode orthogonality.

## A quantitative analytic comparison between the TWO regulated observations

By the zero-order Hilbert-space identity,

  ||x_B||^2 = E_(slice Haar)[(F_B-c_B)^2].

The full Wilson measure has the density bound (1).
The actual full-link reference Haar is a product whose
time-r spatial-link marginal is slice Haar. The maintained
assembly/spatial-history Haar factorization identifies the
two source measures on these specific time-local F_B.
Consequently

  Var_mu_beta(E_(lift B at time r))
    = inf_t E_mu_beta[(E_(lift B)-t)^2]
    <= E_mu_beta[(E_(lift B)-c_B)^2]
    <= exp(12 beta L^4) ||x_B||^2.                (7)

This is a complete analytical derivation using the actual
finite Wilson measure and a true spatial slice observable.
The infimum representation is the standard probability
variance identity. The conditional source map from full
spatial blocks to the specific slice x_B is explicit.

Combining (7) with (6), **only if x_B∈D(H) and its entire
principal spectral coordinate vanishes**, gives

  Var_mu_beta(E_(lift B))
    <= [exp(12 beta L^4)/gamma_(L,beta,a)]
       * <x_B, H_(L,beta,a) x_B>.                  (8)

This is a domain-correct comparison to the ACTUAL REGULATED
gauge-invariant slice logarithmic operator. The constant
depends on beta, L and a and worsens severely as L grows.
Unlike a fictitious global operator inequality, (8)
does not claim those domain/principal hypotheses automatically
hold for arbitrary Wilson spatial blocks.

The source candidates formalize the genuine SU(2) slice
embedding and its domain-correct logarithmic consumer.
The full integral inequality (7) and the composed bound (8)
are established here analytically; their transitive Lean
formalization remains an open translation and verification task.
Neither (7) nor (8) extends to all full Wilson temporal
plaquette observables without a real conditional/time-slice
map and a complete residual.

## What is NOT proved: the requested FULL Hamiltonian comparison

A full four-dimensional continuum Yang--Mills excitation Hamiltonian
has not been constructed in this repository with a physical
gauge-invariant Hilbert space, normalized vacuum, self-adjoint
domain/form and full spectrum at all regulators plus continuum
reconstruction. The existing H_(L,beta,a) is a particular
REGULATED source-defined logarithm on spatial-slice L2.

To compare (8) to the full physical Hamiltonian, one would need
an actual source-defined map or isometry J, its domain preservation,
and an inequality of the form

  q_(Hphys)(psi) >= c_(L,beta,a) q_(Hreg)(J psi)
                   - D_(L,beta,a)(psi),

with a measured defect D that retains all cross terms and
all orthogonal-complement sectors. A positive, regulator-uniform
lower bound on c q_reg-D on the FULL excitation complement
and a vacuum-compatible continuum limit must be proved;
no such c or D is currently supplied. They are not
allowed to be arbitrary fields that assume the conclusion.
No complete comparison or four-dimensional physical
mass-gap theorem can be honestly claimed from (1)-(8).

The flat Wilson configuration U=1 has zero pointwise Wilson
action, but the full Wilson probability has nonzero fluctuations:
this does not force its covariance matrix to vanish.
At beta=0 the slice transfer may be rank one, making a
logarithmic-domain/gap statement at beta>0 nontransferable
without care. Centering at the slice Haar mean does not
generally kill the beta>0 principal eigenvector.
The measure domination constant exp(12 beta L^4) can blow
up with L; it gives no uniform Euclidean clustering estimate.
All three are hostile checks against overclaiming.

## New files and evidence policy

Source candidate:
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonRegulatorDensityControl.lean

- actionCeiling; couplingVolume; densityRatio.
- unnormalized_weight_bounds; partition_bounds;
  densityRatio_bounds; densityRatio_zero.
- The finite moment/covariance perturbation (3)-(5)
  currently has a complete analytical proof here, but is
  not yet a new Lean theorem.

Source candidate:
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonSliceObservableLogDomain.lean

- continuousSliceBlock; continuousSliceBlock_gauge;
  sliceBlockHaarMean; centeredContinuousSliceBlock;
  centeredContinuousSliceBlock_gauge; centeredSliceBlockVector;
  centeredBlock_regulated_logarithmic_gap.
- No hidden membership axiom. Domain and principal-coordinate
  hypotheses remain explicit in the final theorem.

Actual source environment as inspected: Lean
leanprover/lean4:v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
No environment upgrade or root import promotion is requested.

Analytical statements (1)-(8): proofs given above at their
stated finite/conditional scope. No independent published
peer review or novel prior-art claim is asserted.
Formal source compilation: NOT_RUN; kernel replay: NOT_RUN;
transitive axiom audit: NOT_RUN; expected-type tests: NOT_RUN;
full observable-to-transfer integral refinement: NOT_RUN;
full physical-Hamiltonian comparison: NOT_PROVED;
remote/native dispatch: NOT_DISPATCHED.

At the immutable published math commit, check complete actual
imports and both new modules with:

    lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonRegulatorDensityControl.lean
    lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonSliceObservableLogDomain.lean
    lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRegulatorDensityControl
    lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceObservableLogDomain

Then fresh kernel proof checking, expected theorem types and
transitive #print axioms with explicit rejection of sorryAx and
unapproved hypotheses; keep receipts in grwtsk/noeaaeue.
A new code-theorem source revision is needed for integrals (7),
covariance (5) and any true full Hamiltonian comparison.
