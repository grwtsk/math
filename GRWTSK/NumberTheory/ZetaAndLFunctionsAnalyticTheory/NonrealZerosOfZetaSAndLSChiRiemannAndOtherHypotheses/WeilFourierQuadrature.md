# Whole-cell quadrature for the actual archimedean Fourier core

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 65D32, 42A38.
Coordination: math#1801, scope comment 6815942210.

## Evidence boundary

`WeilFourierQuadrature.lean` is a SOURCE_PROOF_CANDIDATE, not a
kernel-verified development. Elaboration, fresh kernel replay, transitive
axiom auditing, independent review and numerical functional certification
are NOT_RUN, including the imported local source chain. The authored proofs
have no admitted proof bodies or new research axioms. Source publication,
text scans and exact scalar algebra do not establish formal acceptance.
Originality is UNASSESSED; no mathematical novelty is claimed.

This increment removes the finite-core integration gap in the preceding
actual-test estimate. It derives a Lipschitz constant instead of accepting
one as an unexplained supplier. The finite sum still contains true Fourier
samples and the true baseline. Separate sample/baseline enclosure hypotheses
are explicit in the final certificate consumer. No executable evaluator,
numerical instance, oracle for arbitrary smooth functions, complete Weil
positivity, or universal positivity-certificate existence is asserted.

## 1. Unchanged sources, domain and parameters

Use `WeilNegativeWitness.Admissible f`, namely smooth order infinity and
compact support, for an arbitrary COMPLEX test f. No evenness or reality is
assumed. Reuse `WeilFourierMoments.plusFourier`:

    F(t) = integral_R f(x) exp(i*t*x) dx,
    w(t) = |F(t)|^2/(2*pi).

Reuse the actual-source rational partial sum and prior budgets:

    S_N(sigma,y) = sum_(n<N) y^2/[(sigma+n)*((sigma+n)^2+y^2)],
    H_N(sigma) = sum_(n<N) 1/(sigma+n),
    b(s) = 1/(4*s^3) + 1/(8*s^2).

Throughout sigma>0, q>=1, T>0, N>=0, and the number of cells m>=1.
The original uncentered spectral source A and finite core g are

    A = integral_R w(t)*[log(q/pi)+Re psi(sigma+i*t/2)] dt,
    beta = log(q/pi)+Re psi(sigma),
    M0 = integral_R |f|^2,       M1 = integral_R |f'|^2,
    g(t) = w(t)*S_N(sigma,t/2).

The prior theorem supplies all spectral integrability from admissibility and

    0 <= A - [beta*M0 + integral_[-T,T] g]
      <= D = [b(sigma+N)+H_N(sigma)/T^2]*M1.                (1)

The baseline beta*M0 is kept EXACT, not frequency-truncated or declared
nonnegative. The two parity specializations are sigma=1/4 and 3/4. The
conductor-one zeta case remains available for this archimedean component;
its two poles are neither evaluated nor discarded here.

## 2. Fourier regularity supplied by the physical test

Put

    L0 = integral_R |f(x)| dx,
    Lx = integral_R |x|*|f(x)| dx.

The existing compact smooth test embeds as the unchanged Schwartz function.
Its zeroth and first absolute moments are integrable. Thus L0,Lx are finite
nonnegative real numbers, not totalized integrals hiding divergence.

The identity

    exp(i*u)-exp(i*v) = exp(i*v)*(exp(i*(u-v))-1)

and |exp(i*r)-1|<=|r| give

    |F(s)| <= L0,
    |F(s)-F(t)| <= Lx*|s-t|.                               (2)

The integral comparison uses the integrable majorant
|s-t|*|x|*|f(x)|. Each original Fourier integral is separately known to
converge from the previous module. This avoids differentiating a totalized
function or assuming an unspecified spectral derivative bound.

Factor the difference of squared norms and use the reverse triangle
inequality:

    ||F(s)|^2-|F(t)|^2|
      <= (|F(s)|+|F(t)|)*|F(s)-F(t)|
      <= 2*L0*Lx*|s-t|.

Consequently

    0 <= w(t) <= L0^2/(2*pi),
    |w(s)-w(t)| <= (L0*Lx/pi)*|s-t|.                       (3)

## 3. A global rational-multiplier Lipschitz bound

For s>0 let d_s(y)=y^2/[s*(s^2+y^2)], A_y=s^2+y^2 and A_z=s^2+z^2.
Exact algebra gives

    d_s(y)-d_s(z) = s*(y-z)*(y+z)/(A_y*A_z).

The elementary square inequalities imply

    s*|y+z| <= (A_y+A_z)/2,
    s^2*(A_y+A_z)/2 <= A_y*A_z.

For the second inequality the difference is exactly
s^2*(y^2+z^2)/2+y^2*z^2 >= 0. Hence

    |d_s(y)-d_s(z)| <= |y-z|/s^2.

At y=u/2,z=v/2, summing every retained term proves

    |S_N(sigma,u/2)-S_N(sigma,v/2)| <= J_N(sigma)*|u-v|,
    J_N(sigma) = sum_(n<N) 1/[2*(sigma+n)^2].              (4)

This bound holds on the whole real line, not only at cell centers. Combine
(3), (4), nonnegativity, and the established cap 0<=S_N<=H_N to obtain

    |g(s)-g(t)| <= L_N*|s-t|,                              (5)
    L_N = H_N*L0*Lx/pi + J_N*L0^2/(2*pi).

The actual core is also proved continuous. All denominators are separated
from zero by sigma>0; integrability on every finite cell follows. The source
name for L_N is `coreSlope`.

## 4. Whole-cell midpoint integration, not midpoint sampling

Set h=2*T/m and t_j=-T+(j+1/2)*h, j=0,...,m-1. Define

    Q = h*sum_(j<m) g(t_j).

On a cell [a,a+h], (5) gives |g(t)-g(a+h/2)|<=L_N*h/2 for
EVERY point. Integral comparison therefore gives

    |integral_a^(a+h) g - h*g(a+h/2)| <= L_N*h^2/2.

This conservative constant deliberately uses a uniform cell bound. It does
not claim the sharper L_N*h^2/4 available by integrating |t-a-h/2| exactly.
The source proves the adjacent-interval decomposition, sums absolute cell
errors, and returns the set integral on [-T,T]. The result is

    |integral_[-T,T] g - Q| <= E_grid = 2*L_N*T^2/m.        (6)

Combining (1) and (6), with R=beta*M0+Q, gives

    R-E_grid <= A <= R+E_grid+D.                           (7)

The infinite remainder stays one-sided and is added only to the upper
endpoint. No sign of R or beta is inferred. This is
`admissible_archimedean_midpoint_enclosure`.

## 5. Sample and baseline errors: exact interfaces

Suppose |g(t_j)-v_j|<=e_j for every j<m, and
|beta*M0-B|<=eta. Set

    Rhat = B + h*sum_(j<m) v_j,
    E_samples = h*sum_(j<m) e_j,
    E = eta + E_grid + E_samples.

The hypotheses themselves force nonnegative relevant errors. Finite-sum
comparison and (7) prove

    Rhat-E <= A <= Rhat+E+D.                               (8)

This is a soundness theorem conditional on enclosures of the TRUE samples
and TRUE baseline. It is not a replacement definition of A and it does not
assume nonnegativity of any answer. Arbitrary-sign baseline products must be
enclosed soundly before the final theorem can be used computationally.

The code also supplies a concrete way to obtain core sample enclosures.
If z is a complex approximation with |F(t)-z|<=epsilon and epsilon>=0, then

    ||F(t)|^2-|z|^2| <= 2*|z|*epsilon+epsilon^2,

so the sample v=|z|^2*S_N(sigma,t/2)/(2*pi) has error at most

    e = [2*|z|*epsilon+epsilon^2]*S_N(sigma,t/2)/(2*pi).    (9)

No absolute square replaces a signed off-critical zero pairing: (9) concerns
only the genuine real-frequency Fourier energy of a test, not the zero side.
No executable rational exp/log/pi/digamma evaluator is implemented or run.
The finite rational multiplier is exact at rational sigma and rational t;
Fourier samples, physical moments and baseline constants still require
source-bound certified evaluation for an actual numerical instance.

## 6. Approximation existence and limits of the conclusion

A complete written diagonal choice follows without an asymptotic estimate:
for each positive integer r use N=T=r and m=r^4. The finite bounds

    H_r <= r/sigma,     J_r <= r/(2*sigma^2),
    b(sigma+r) <= 3/(8*r^2)

follow termwise from sigma>0 and r>=1. Put

    K = L0*Lx/(sigma*pi)+L0^2/(4*sigma^2*pi).

Then L_r<=r*K, and (7) has the absolute error bound

    |A-R| <= 2*K/r + [3/(8*r^2)+1/(sigma*r)]*M1.           (10)

Thus the complete finite-sum approximation, not merely a finite-core
integral, converges for each admissible test. This diagonal corollary is
written analysis, not an additional Lean declaration in this increment.
It proves neither effective evaluability of arbitrary smooth input nor
existence of positive certificates. The finite approximants may be negative.
Constants depend explicitly on sigma and the test; no uniformity through
sigma=0 or over all supports is inferred.

For a known support [-A0,A0], A0>0, Cauchy-Schwarz and |x|<=A0 give
L0^2<=2*A0*M0 and Lx<=A0*L0. Therefore the WRITTEN alternative
L_N<=M0*(2*A0^2*H_N+A0*J_N)/pi allows support/mass bounds to control
quadrature. The infinite-tail term still depends on derivative energy M1;
modulation does not give a uniform all-test tail bound at fixed support/mass.

## 7. Hostile checks and remaining arithmetic obligations

N=0 makes S_N, J_N, H_N, Q and E_grid zero, leaving the original baseline and
its old b(sigma)*M1 budget. For f=0 every true moment and core vanishes.
T>0 and m>=1 are explicit. A fixed finite grid never covers unbounded T,
all conductors, or every vector in a finite-dimensional test space.
Pointwise positivity at its nodes is not used to infer integral positivity.
Uncontrolled errors in Fourier samples cannot be absorbed into E_grid.
Replacing either the plus-transform sign or 1/(2*pi) normalization changes
(2)-(3) and breaks correspondence with the original spectral source.

The actual signed prime-power form, inverse-character adapter, all active
prime powers, conductor, parity, both conductor-one poles, multiplicities
and complex zero pairings remain untouched. An enclosure of the gamma
sector is not full Weil positivity. The complete arithmetic assembly and
all-test/all-window positivity still need separate theorems and verification.

## 8. Source provenance and verification obligations

Inspection base: math main 69e41c27fb6ba3518728fad8d0629a564bfc68b1; complete
root d5a0ca07aad0159d5c32aa15a7b6f702dec3c917. Root AGENTS was read; the
CONTRIBUTING publication contract retains its previously read blob identity
c50d8b36d7ec5254b0913b6be8842d3ad12ed70a. Scoped AGENTS reads in GRWTSK,
NumberTheory, the L-function parent and this subtree returned 404. The full
.github tree contains templates/instructions and no workflow file. Pins:
Lean leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No pin, workflow, default import or historical evidence change is proposed.

Primary exact formal sources (all upstream sources at that mathlib pin):

- David Loeffler, Yael Dillies, Bhavik Mehta, Trigonometric/Bounds.lean,
  blob 9b22d7d3ae7887e57f48d1a13aeb7544a1a69277:
  `Real.norm_exp_I_mul_ofReal_sub_one_le`. This is the primary phase-bound
  supplier; the proof extends it to two phases before integration.
- Yury Kudryashov, Patrick Massot, Sebastien Gouezel,
  MeasureTheory/Integral/IntervalIntegral/Basic.lean, blob
  2504147e2230a26eb804b0898004d0186c4e36a1:
  `norm_integral_le_of_norm_le_const`, `integral_sub`, `integral_const`,
  `sum_integral_adjacent_intervals`, `integral_of_le`.
- Moritz Doll, SchwartzSpace.Basic, blob
  5b4a9c9cc147973695cfef46415308ed215424ed:
  `HasCompactSupport.toSchwartzMap`, `SchwartzMap.integrable_pow_mul`.
- Patrick Massot, Johannes Holzl, Yael Dillies, Normed/Group/Basic.lean,
  blob 01b75c51d9315887c05c04824e0a4e47aec3985d:
  `abs_norm_sub_norm_le` and the imported normed-group API.
- Mathlib Bochner APIs: explicit integrable comparisons, norm-integral
  inequality and finite sums, as pinned in the preceding moment module.
- Local WeilFourierMoments.lean, blob aa20033bb58f9f99ed31e71f33e0a1a2af08136f:
  canonical plusFourier, admissible_plusFourier_integrable/continuous,
  admissible_archimedean_enclosure and physical-baseline identity.
- Local ArchimedeanMomentBounds.lean, blob
  72d24ec6c700c124fcf09d6632f2f56d1010fb66: spectrumWeight,
  spectralFunctional, reciprocalCap, partialSum_le_reciprocalCap and budgets.
  Its actual Gamma/digamma source-candidate dependencies retain their status.

Direct upstream source URLs are in the individual declaration records.
The written proof is a classical elementary Lipschitz quadrature application,
not a direct formalization of an uninspected historical paper. A limited
repository search for midpoint returned no results; this establishes no
corpus-wide absence. Upstream Apache-2.0 authorship is retained through
imports. Local work is AI-assisted and attributed to grwtsk contributors.

First source-bound check, recorded obligation only:

    lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilFourierQuadrature.lean

Audit exact signatures and transitive axioms of all nine public theorems,
including the reused Fourier/Gamma/digamma chain. No Lean/Lake or verified
local canonical skills checkout was available. The prescribed proof-automation
skill returned 404 at Noe main 92b047bb11ff22692651cab71c6a4d50de6bb4f5.
No dependent proof execution was launched. Source inspection, scalar algebra
and authenticated publication are not elaboration or numerical certification.
