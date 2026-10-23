# Exact finite heat recovery, Newman sign, Farey compensation and the 3/4 boundaries

**Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This note documents
new mathematical source scripts, not executed Lean proofs. All cross-source,
large-height, actual-zeta, zero-ordinate, compression and Hodge-realization
implications beyond the exact finite models remain explicitly unproved.

## Source commits and immutable Git blobs

| New module | Source-integrating main commit | Git blob |
|---|---|---|
| GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean | [a4ba792528d23732d9b0c4e62176a19df7e7df57](https://github.com/grwtsk/math/commit/a4ba792528d23732d9b0c4e62176a19df7e7df57) | fdcb3b9584eea3579af88ea13c48beda509482de |
| GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean | [882947685b51abdd0469acdd1515096be604a91a](https://github.com/grwtsk/math/commit/882947685b51abdd0469acdd1515096be604a91a) | bd6219af4e929ff6b54bb5aef00821ebeb484060 |
| GRWTSK/NumberTheory/Farey/HeatCompensatedReturn.lean | [f23626b03ded1f45a4c6410231127e1b02024be7](https://github.com/grwtsk/math/commit/f23626b03ded1f45a4c6410231127e1b02024be7) | 4307d4c61f10d5a34777e7d34f3884fc94274cb4 |

The underlying real Hodge Laplacian is
GRWTSK.Geometry.Hodge.FiniteMatrixHodge.laplacian
(blob 1299a222b0e8bd5f6ac25d8508fab8ac3d548b7b).
The selected earlier Farey return source is
GRWTSK.NumberTheory.Farey.WeightedReturnBalance
(blob 6fb6857656d34b7b2e22e8ef3229be339cb526fc),
which depends on ReturnAngularChannel and ReturnSpectralChannel.

Pinned local toolchain: Lean leanprover/lean4:v4.33.0; Mathlib
db584cd6d46c92f209a44c0f1c829460d327499d.

## The exact finite heat mathematical claim

For any index carrier I, real diagonal eigenvalues lambda(i), finite
real time t and real signal x(i), the source defines
  heat_t(x)(i) = exp(-t lambda(i)) x(i)
  recover_t(y)(i) = exp(+t lambda(i)) y(i).

Declarations in GRWTSK.Geometry.Hodge.FiniteHeatRecovery:
diagonalHeat, inverseDiagonalHeat, inverse_after_heat,
heat_after_inverse, diagonalHeat_injective, diagonalHeat_add_time.
These show pointwise exact recovery and a finite-time semigroup; they
assume no floating-point rounding or finite alphabet.

With lambda(i)>=0 and t>=0, diagonalHeat_abs_le and
diagonalHeat_squareEnergy_le establish coordinate attenuation and
finite square-energy contraction. A zero eigenmode is preserved exactly
by diagonalHeat_zero_mode.

The exact stability criterion uniformInverseBound_iff_gain states:
  (forall signals x and modes i, |recover_t x(i)| <= C |x(i)|)
  iff (forall modes i, exp(t lambda(i)) <= C).
This makes **uniform inverse gain** an independent analytic requirement,
not a consequence of injectivity or positive semidefiniteness.

HodgeSpectralChart is an **unconstructed** chart for the ACTUAL finite
graph Laplacian. It requires a linear equivalence, nonnegative
eigenvalues, a *metric/squared-norm-preserving* condition and exact
diagonal intertwining. HodgeSpectralChart.recover_heat and
HodgeSpectralChart.heat_squareEnergy_le are conditional transports
only. The chart's existence, source/jet preservation and a uniform
tower of such charts remain separate obligations.

The hostile controls show:
  * discarded_coordinate_is_not_injective: dropping even one heated
    coordinate loses exact information;
  * implicitEuler_exact: a scalar backward-Euler surrogate
    x/(1+n) has a precise inverse (1+n)x at every stage;
  * implicitEuler_no_uniform_inverse_bound: its decoder gains grow
    without a common finite Lipschitz constant.
This last model is an implicit-Euler approximation and **not** the
exponential heat semigroup. The finite exponential recovery itself is
real-number exact arithmetic, **not** a lossless finite-bit Huffman
code, a compression rate, or a numerically stable decoder.

## Rodgers–Tao / de Bruijn–Newman: time and height must be converted

**Printed source:** Brad Rodgers and Terence Tao,
*The de Bruijn–Newman constant is non-negative*, first arXiv posting
January 18, **2018**, [arXiv:1801.05914](https://arxiv.org/abs/1801.05914).
The method/formula used for comparison is the source's
  H_t(z) = integral from 0 to infinity of exp(t*u^2) Phi(u) cos(z*u) du,
for real deformation parameter t, where Phi has the paper's explicit,
super-exponentially decaying series. No theorem on its zeros, its
entire-function extension, Newman's constant or differentiation under
the integral has been imported into this local module.
The separate canonical relation
  H_0(z) = xi(1/2+i*z/2)/8
is source-normalized in existing grwtsk/math issue #193. Exact
manuscript page for this normalization was **not independently
pinpointed in this source review**; do not promote a naming convention
to a theorem about zeta.

The new module
GRWTSK.RiemannHypothesis.FiniteHeatNewmanNormalization
defines squareFrequencies(u)(i)=u(i)^2 and the **finite arbitrary
coefficient** model exp(t*u(i)^2)*a(i).
newman_negative_time_eq_forward_heat shows t=-s produces
exp(-s*u(i)^2)*a(i), exactly matching the positive diagonal heat
operator **only when its eigenvalues are u(i)^2**.
newman_positive_time_eq_inverse_heat shows t=+s corresponds to the
unstable inverse coefficient multiplier. The module also retains
zero-time identity, full finite-coefficient recovery and negative-time
energy contraction.

The normalization H_0(z)=xi(1/2+i*z/2)/8 requires gamma=z/2 for zeta
zero height gamma. The exact source declarations
threeQuarter_height_newman_variable and
newman_height_threeHalves_is_zeta_threeQuarters record:
  |gamma| <= 3/4  <->  |z| <= 3/2.
The GRWTSK low-height result concerns |Im(s)|<=3/4,
NOT the real-part zero-density location Re(s)>=3/4, and neither is
the quadratic arithmetic exponent transformation
Q(7/8)=3/4, Q(3/4)=1/2.

To pass from the actual Phi kernel to the finite a(i), a new source
map, quadrature error, derivative bounds, growing-height control,
contour nonvanishing and a zero-multiplicity theorem are required.
Those are retained in [issue #193](https://github.com/grwtsk/math/issues/193)
and its parent #170. We have **not** imported an infinite Newman heat
flow as a finite Hodge spectral proof.

## New direct Farey heat compensation is an exact selected observation

The chosen chronological Farey return LR has expanding real eigenvalue
lambda=(3+sqrt 5)/2>1, a mod-three quotient four-cycle, and a selected
discreteSpiral(n)=(lambda*i)^n. This is the ACTUAL source already
recorded in WeightedReturnBalance, not an arbitrary invented sequence.

In GRWTSK.NumberTheory.Farey.HeatCompensatedReturn choose the explicitly
named scalar heat eigenvalue **one** and time
  s_n = n*log(lambda) >= 0.
Then
  exp(-s_n)=(lambda^-1)^n,
  heatNormalizedSpiral(n)=exp(-s_n)*discreteSpiral(n)=i^n.
The resulting four consecutive compensated samples sum to zero.
The raw first four selected samples have NONZERO sum
1+lambda*i-lambda^2-lambda^3*i.

Declarations: returnHeatTime, returnHeatTime_nonneg,
heatReturnCompensator, heatReturnCompensator_is_unit_heat,
heatReturnCompensator_eq_inv_pow, heatNormalizedSpiral,
heatNormalizedSpiral_eq_compensatedSample,
heatNormalizedSpiral_eq_phase, heatNormalized_four_consecutive_zero,
raw_return_four_not_zero.

**Relationship:** LOCAL_IDENTITY_SOURCE_CANDIDATE for the new
exponential scaling and existing Farey clock; no paper port.
It is an EXACT source observation normalization for this selected
n and time schedule, but NOT a source-preserving Hodge graph
intertwiner. It does not imply a cancellation theorem for arbitrary
prime weights, a Dirichlet-polynomial large-values estimate, Guth–
Maynard zero density, a Hodge cycle-class theorem, a positive
infinite-volume Weil form, or any constraint on the irrationality /
transcendence of actual zero heights.

## Critical quantitative bridge to the 7/8 -> 3/4 program

The earlier grwtsk/math
QuadraticThetaGradedFourierNoDescent.lean shows that a naive graded
L2-to-Linfinity estimate yields exponent rho + beta/2 for nonnegative
effective bandwidth exponent beta, strictly above Q(rho)=2rho-1 when
rho<1. The new exact finite heat inverse DOES NOT discharge the
unconstructed SevenEighthsGradedPrimeFourierReadout or the
QuadraticThetaSourceRecurrenceAt rho premise. Heat attenuation of a
chosen Farey clock cannot replace a prime-weighted maximal or
short-interval estimate.

A valid future bridge needs source/jet-preserving Hodge spectral charts,
uniform spectral/time amplification bounds or controlled regularized
decoders, an actual prime arithmetic coefficient map, and
a scale-correct nonzero-frequency cancellation theorem. The separate
sofic/local-limit issue #121 also requires a genuine uniform
operator-convergence and boundary-error theorem; stagewise invertibility
or exact balanced four-phases do not furnish it.

**Mathematical provenance categories:** exact exponential and time
normalization: LOCAL_IDENTITY_SOURCE_CANDIDATE, not kernel accepted;
Rodgers–Tao source integral: METHOD_COMPARISON, not theorem import;
Hodge chart: CONDITIONAL_REDUCTION, no chart supplied;
Farey time/phase comparison: exact SOURCE-SPECIFIC identity candidate;
finite coordinate deletion and uniform inverse-gain failure: finite
obstructions at their stated models; proposed prime/Weil/Newman/sofic/RH
interfaces: UNRESOLVED_PREMISE / ANALOGY_ONLY.

## Verification

All three newly authored modules were read back from GitHub with
immutable blob identities above. Declaration-head scans found no
new direct theorem-level sorry/admit/axiom declarations.
No \`lean\`, \`lake\` or \`elan\` executable is available in the local
container. No file has been promoted to GRWTSK.lean.

**Not executed:** warning-clean target/transitive dependency builds,
direct Lean elaboration, trust-zero replay, independent fresh kernel
checking, full transitive #print axioms, generated/unsafe/opaque checks,
or source-bound external paper theorem admission. No local source scan,
off-Lean numeric sample, Git commit or queued issue changes this status.
No Railway or declined remote execution is authorized here.
