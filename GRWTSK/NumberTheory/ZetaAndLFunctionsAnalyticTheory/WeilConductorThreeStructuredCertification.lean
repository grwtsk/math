/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Consumer: the ACTUAL Gram-metric finite acceptance condition in
WeilConductorThreeBoundaryJets and WeilConductorThreeStructuredAnnulus.
Inspected main: 70cc2c47f7559279135e2889e1836c89465c944b.
StructuredAnnulus blob: 711abea1d7f444d36ecab9077649605b34979c49.
BoundaryJets blob: e3024681344c8849ba9bb9107690cbc2b09f080d.
Original arithmetic convention: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20).
Standard methods used below: product-to-sum, Parseval, integral comparison,
rank-one perturbation bounds and finite Gram residual certification.
AI-assisted analytic derivation and finite diagnostics.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeStructuredAnnulus

/-!
# Structured annulus: error consumers and a hostile finite experiment

## Disposition and source comparison

The Toeplitz-minus-Hankel identity is correct at written analytic scope:
2 sin(xi*t) sin(xi*s)=cos(xi*(t-s))-cos(xi*(t+s)).
Multiplying by b/pi and integrating gives exactly A_b, not a new source.
For f the odd extension of u, F=-2i integral u sin and E=2||u||^2,
so J_b=2<u,A_b u>. Fubini is paid by T |b| ||u||^2.
All 93 original prime-power terms, their factor TWO and chi3 signs,
gamma parity one, Dprime mask, V and binomial filter squared remain.

Direct multiplication of the tail sine coefficients gives the Gram
entry in StructuredAnnulus (3); alternating signs cancel. The disjoint
low and high sine supports give exact zero cross Gram entries.
For n>N, expand 1/(1-(xi/omega_n)^2), with ratio <=rho^2<1/4.
Absolute convergence is dominated by
n^(-2k-2)/(1-rho^2); this justifies exchanging the two sums and gives
the stated g_k series. Its remainder is bounded by the stated
S_(2k+2)(N)*rho^(2J)/(1-rho^2), including the omitted |sin|<=1.
The integral comparisons for S_q use a positive decreasing function,
hence lower endpoint N+1 and upper endpoint N in the denominators.
These checks validate identities and error laws, not the source sign.

Current main contains a later written packet-proof claim in
WeilConductorThreeFiniteAnnulus and a density return in EndpointTail.
This investigation does NOT independently replay that exhaustive packet
family and does NOT inherit its acceptance. The original sign remains
UNESTABLISHED BY THIS MODULE. No historical evidence status is rewritten.

## A dimension-independent, source-enclosed quadrature estimate

Partition [0,R] at EVERY mask discontinuity; use cells I_j of width h_j
and midpoint z_j. Suppose the ACTUAL signed b satisfies
|b(xi)-w_j|<=e_j throughout I_j, with e_j>=0. Define
Q=(2/pi) sum h_j w_j |v_(z_j)><v_(z_j)|.
No positivity of w_j is assumed. The remaining frequency set, if any,
must have an independently enclosed integral of |b| and be paid too.

On H=L2(0,T), ||v_xi||<=sqrt(T) and
||v_xi-v_z||<=sqrt(T^3/3)|xi-z|.
The identity aa* - dd*=(a-d)a*+d(a-d)* therefore gives
|| |v_xi><v_xi| - |v_z><v_z| ||
 <=2*T^2/sqrt(3)*|xi-z|.
Since integral_I |xi-z|=h^2/4, the ENTIRE operator error is at most

 eta=(2/pi) sum_j [T e_j h_j+
                     T^2/(2 sqrt(3)) |w_j| h_j^2].             (Q)

This is an operator norm error, independent of the head dimension.
It survives any physical orthogonal compression. The cell/source
enclosures themselves, including digamma, filter, all 93 oscillatory
cosines and rounding, are essential missing inputs. An oscillatory
Gauss rule has no certified error merely because orders agree.
Sharp band masks must not be differentiated across their jumps.

Formula (Q) is a conservative first-order route. It may require too
many cells on the full radius 3.5e9 interval. Local analytic integration
of the 93 cosine atoms, packet localization, higher-order quadrature
with proved derivative bounds, and sign-separated block bounds are
plausible improvements; none is a completed full cover here.

## Actual physical Gram and finite spectral acceptance

Let U map coordinates to the augmented physical basis, G=U*U and
M=U*A_b U. A valid finite observation satisfies, for EVERY x,

 |x*(M-Mhat)x|<=etaM x*Gx,
 |x*(G-Ghat)x|<=etaG x*Gx.

Set c=6/25, a=1/200000. If
Mhat+(c-a)Ghat >= [etaM+|c-a|etaG] G,
then M+(c-a)G>=0. The elementary scalar consumer below records exactly
this relative-metric error rule. Entrywise bounds require a proved
conversion into these relative bounds, e.g. a certified positive
lower bound for G, or interval orthonormalization. Raw coordinate
eigenvalues cannot supply that conversion.

There is also an exact obstruction to naive grid compression. Any L-point
physical sampling Gram has rank at most L. The true augmented Gram has
rank d=N+16. If L<d, choose a nonzero coordinate vector in the sampling
kernel. Its true energy is positive and its sampled energy zero.
Consequently |G-Ghat|<=etaG G forces etaG>=1. Thus no sampling Gram
with fewer than d scalar samples can have a relative error below one
on the ENTIRE augmented head. This is a rank argument, independent of
FFT speed or numerical precision. It does not rule out block methods,
analytic Gram entries, source-specific low-rank perturbations of cG,
or the later localized packet approach. The scalar rank-defect
consumer below isolates the last implication.

For a certified physical orthonormal frame, one practical finite
certificate is Hhat=LL*+D with a rigorous norm bound on D and on
H-Hhat. L can be proposed by floating Cholesky; every factor/residual
entry and the complete norm error must then be enclosed. A few Ritz
pairs give upper bounds for the smallest eigenvalue, not a global
lower bound. A negative trial Rayleigh quotient needs its own strict
upper enclosure to falsify the claim.

On a UNIFORM PHYSICAL GRID the cosine-difference matrix has Toeplitz
minus Hankel structure and admits FFT matvecs. The matrix in the sine
and jet coordinates is generally NOT Toeplitz minus Hankel. Transfer
between these two representations needs quadrature and physical
projection bounds. Fast matvecs alone do not certify an eigenvalue.

For exact block estimates use certified diagonal-block lower bounds
alpha,beta and cross norm d, with alpha,beta>=0 and d^2<=alpha*beta.
The existing scalar_schur_nonnegative is the consumer. All blocks and
cross terms must be covered; it is invalid to drop the negative weights.

## Manageable actual-source experiment (FLOAT ONLY)

Python 3 / NumPy 2.3.5 / SciPy 1.17.0; no interval library or Lean
toolchain was available. Independently enumerate p prime, n=p^e<=403,
p!=3; a_n=2 log(p) chi3(n)/sqrt(n). There are exactly 93 atoms.
Use the literal formulas in ComplementTail, including scipy digamma,
bdtrc(2819,7990,sinc(xi/2e9)^2), V and all three removed bands.
Here sinc is sin(x)/x, not NumPy's pi-normalized argument.

Choose c0=13248033/4 and W=[c0-64,c0+64]. Choose the EIGHT ORIGINAL
orthonormal physical sine modes n=3162732,...,3162739, T=3.
Their exact overlap, stable at resonance, is

 g_n(xi)=sqrt(2/T)*T/2*
  [sinc((xi-omega_n)T)-sinc((xi+omega_n)T)].

Compute MW=(2/pi) integral_W b gg^T and
HW=(2/pi) integral_W gg^T with Gauss-Legendre orders 1200 and 2400.
The actual signed symbol at c0 was -12.042839218043525.

 order     lambda_min(MW)       8-tr(HW)
 1200      4.509865326450688     .013301690528965793
 2400      4.509865326956129     .013301690440522762

A nine-point physical-grid comparison of the two kernels, using the
SAME signed frequency weights, had absolute float discrepancy below
3.3e-8 at both orders. Large-phase argument evaluation contributes;
this discrepancy is NOT an interval bound or a quadrature certificate.
The exact trigonometric identity is the independent analytic check.

Reproduction: roots_legendre(order) returns z,q; xi=c0+64*z.
Form g by the displayed sinc formula. Then
MW=g.T @ ((64*q*b(xi)*2/pi)[:,None]*g),
HW=g.T @ ((64*q*2/pi)[:,None]*g).
Use eigvalsh(MW)[0] and 8-trace(HW). Enumerate all 93 atoms rather
than using only the locally negative terms or absolute coefficients.
This is a frequency-window compression, NOT the full eight-mode
matrix and NOT the 7,000,000,016-dimensional certificate.

There is a precise feasible NEXT finite enclosure target:
prove MW>=4 I and tr(I-HW)<=7/500 on this eight-mode subspace.
Assuming the separately written source envelope |b|<=100 on [0,R],
Parseval gives H_all=I and I-HW>=0, hence

 M_full >= MW-100(I-HW)
        >= [4-100*(7/500)]I = (13/5)I.                        (F)

The frequency complement here includes ALL frequencies outside W;
extending its mass to [0,infinity) is conservative because b=0
outside the original mask. The pointwise envelope 100 uses the FULL
prime symbol bound 362/5 and gamma bound 23, not the incorrect
half-mass-as-symbol bound. Establishing the two enclosure targets,
with the gamma/prime envelope at its stated written scope, would give
a genuine small finite certificate. They have NOT been established
by the float run. The observed coarse full lower estimate is about
3.17969628, suggesting margin for such enclosure. Even (F) would
control only these eight modes: the remaining head/mixed blocks
are still required for the universal inequality.

Additional independent arithmetic checks: N=32, q=2,4,8,14,62.
Exact Fraction sums through n=2000 with complete integral tails
[1/((q-1)2001^(q-1)),1/((q-1)2000^(q-1))] lie inside the proposed
S_q(32) envelope. At x=(16/n)^2 for n=33,...,99, J=12, exact
Fraction arithmetic verifies the telescope and its ratio<=1/4 bound.
These are finite checks of the formulas, not full analytic proofs.

At N=32,m=4,R=16, the infinite g_k series was also compared with a
sum through n=200000 at xi=15.75. For k=0 the apparent difference
3.8231e-7 EXCEEDS the geometric remainder 2.2417e-10; the separately
paid finite-n tail 3.0397e-6 covers it. This hostile check illustrates
why an uncharged truncated series can falsely reject a correct formula.
For k=1,2,3 the observed differences were below 8.46e-16,6.80e-19,
5.47e-22; their geometric bounds were 6.45e-14,3.34e-17,2.06e-20.
These comparisons are FLOAT only; the integral tail formula is exact.

The sixteen-by-sixteen rescaled Gram
N^(2(k+l)+1) S_(2(k+l)+2)(N), at N=32, had float condition estimate
3.76e18. Positive diagonal rescaling removes units but not near
dependence. This estimate is unreliable as an exact condition number,
but warns against binary64 inversion and Euclidean substitution.
Orthogonal polynomial coordinates with rigorously bounded changes
of basis, or interval Gram factorization, are needed before scaling.

## Precise unresolved result

This investigation finds no certified falsifying direction and no
whole-head certificate. It supplies the exact error targets (Q), (F)
and the Gram-relative transfer law. A full structured certificate
still needs a source-enclosed entire frequency cover, controlled
physical-grid/head transfer, a rigorous full-head spectral bound in G,
and the previously priced infinite complement and mixed block.
The later packet claim is a distinct source of evidence that requires
its own independent replay; it is not proved by these diagnostics.
All cofinal estimates, RH and Dirichlet GRH remain unproved here.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeStructuredCertification

/-- Relative Gram-error transfer. Hypotheses must be certified for EVERY
coordinate vector before this scalar consumer proves a matrix inequality. -/
theorem relative_gram_transfer
    (m mh g gh d em eg : ℝ)
    (hm : |m - mh| ≤ em * g)
    (hg : |g - gh| ≤ eg * g)
    (hobs : (em + |d| * eg) * g ≤ mh + d * gh) :
    0 ≤ m + d * g := by
  have hmlo : -(em * g) ≤ m - mh := (abs_le.mp hm).1
  have hcross : |d * (g - gh)| ≤ |d| * (eg * g) := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left hg (abs_nonneg d)
  have hdlo : -(|d| * (eg * g)) ≤ d * (g - gh) :=
    (abs_le.mp hcross).1
  nlinarith

/-- A rank-deficient sampling Gram cannot approximate a positive
physical Gram with relative error strictly below one. -/
theorem sampling_null_direction_obstruction
    (energy eta : ℝ) (henergy : 0 < energy)
    (herror : |energy - 0| ≤ eta * energy) :
    1 ≤ eta := by
  have habs : |energy - 0| = energy := by
    simpa using abs_of_pos henergy
  rw [habs] at herror
  nlinarith

/-- Entire omitted-frequency price after source enclosure; the small
window bound alone does not prove this theorem's hypotheses. -/
theorem window_complement_transfer
    (q qw e outside L delta cap : ℝ)
    (hcap : 0 ≤ cap)
    (hsource : qw - cap * outside ≤ q)
    (hwindow : L * e ≤ qw)
    (htail : outside ≤ delta * e) :
    (L - cap * delta) * e ≤ q := by
  have hprice := mul_le_mul_of_nonneg_left htail hcap
  nlinarith

/-- Rational target for the actual eight-mode experiment, conditional
on source-enclosed MW>=4I and trace leakage<=7/500. -/
theorem eight_mode_target_margin :
    (4 : ℚ) - 100 * (7 / 500) = 13 / 5 := by norm_num

/-- A certified finite Gram-factor residual gives a lower bound.
No floating factorization is treated as a residual certificate. -/
theorem finite_factor_residual
    {ι : Type*} (s : Finset ι) (row : ι → ℝ) (q e eta : ℝ)
    (hres : (∑ i ∈ s, row i ^ 2) - eta * e ≤ q) :
    -eta * e ≤ q := by
  have hpos : 0 ≤ ∑ i ∈ s, row i ^ 2 :=
    Finset.sum_nonneg (fun i hi => sq_nonneg (row i))
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeStructuredCertification
