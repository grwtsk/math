# An explicit derivative-energy budget for the full signed zero tail

Author: grwtsk contributors. Version 1, 2026-11-12 America/Los_Angeles.
MSC2020: 11M26 (primary), 11M41, 42A38, 30C15.
Coordination: math#1801, scope comment 6828336051.

## Evidence, source and consumer

Inspected mathematical main: `af9b7a05afbf79d4def070fa96f9091b2f177160`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This increment supplies a WRITTEN analytical proof and four Lean
SOURCE_PROOF_CANDIDATE declarations. Elaboration, dependency build, fresh
kernel replay, transitive axiom audit, numerical certification and independent
analytical review are NOT_RUN, including the imported local candidate chain.
Originality is UNASSESSED; no novelty claim is made. Publication is not acceptance.

The Lean scope is the actual undivided correlation-weight estimate, its
support/strip specialization, and finite bands of the original Dirichlet zero
source. Sections 3--6 below prove additional WRITTEN results: a source-exact
uniform local count with constant 108, the infinite tail, and matrix/source
consumers. Those results are NOT claimed as Lean declarations in this file.

Consumers: the existing full-negative-margin theorems in
[WeilNegativeWitness.lean](WeilNegativeWitness.lean), signed finite zero
compressions, and the missing infinite-height justification after the finite
rectangle/arithmetic-line results. The full arithmetic explicit-formula adapter
is still separate in the formal chain. This estimate proves no all-test sign,
finite positive matrix, universal certificate existence, RH or GRH.

There is no new arithmetic form, zero object or transform definition in the
Lean source. It reuses `SourcePrimeCorrelation.correlation`,
`WeilNegativeWitness.CriticalStripZero`, `zeroMultiplicity`, and
`Admissible = ContDiff real infinity and HasCompactSupport`. Complex tests are
not restricted to real or even functions. The absolute value below is an
error majorant of the signed source, not a positive replacement for it.

## 1. Exact source and a derivative-only pointwise estimate

For A>0 and admissible f supported in [-A,A], use

    C_f(r) = integral conjugate(f(x))*f(x+r) dx,
    W_f(s) = integral C_f(r)*exp((s-1/2)*r) dr,
    M_f(s) = integral f(x)*exp((s-1/2)*x) dx,
    rho^sharp = 1-conjugate(rho),
    J(f) = integral |f'(x)| dx,  M1(f) = integral |f'(x)|^2 dx.

The existing exact reflected-product theorem gives

    W_f(s) = M_f(s)*conjugate(M_f(1-conjugate(s))).          (1)

No critical-line assertion is used in (1). All integrals converge on this
compact smooth domain. Differentiation preserves smoothness and support.
Applying the existing supported moment theorem to f' gives

    J(f)^2 <= 2*A*M1(f).                                   (2)

This is WMED-v1-1, formal-source candidate
`admissible_derivative_l1_sq_le_energy`. It does not divide by M1. A function
with M1=0 is included, as is the zero function.

Integration by parts, with zero boundary terms and an integrable derivative,
gives

    (s-1/2)*M_f(s) = -integral f'(x)*exp((s-1/2)*x) dx.

Equivalently use the already maintained plus-Fourier theorem at
z=-i(s-1/2), whose multiplier is -i*z. It yields the UNDIVIDED estimate

    |s-1/2|*|M_f(s)| <= exp(A*|Re(s)-1/2|)*J(f).

Use the same estimate at 1-conjugate(s). Its distance from 1/2 and its
absolute horizontal displacement are equal to those of s. Multiply the two
nonnegative inequalities, use (1), and then |Im(s)|<=|s-1/2| and (2):

    Im(s)^2 * |W_f(s)|
      <= 2*A*exp(2*A*|Re(s)-1/2|)*M1(f).                  (3)

This is WMED-v1-2, `norm_contour_weight_mul_im_sq_le`. It is valid on the
real axis as an undivided inequality; it does not claim a zero-frequency
bound after division by zero. Unlike the previous all-frequency cost
`derivativeL1Cost f 1`, it has no additional zeroth-order mass term.

If |Re(s)-1/2|<=b and |Im(s)|>=T>0, (3) proves

    |W_f(s)| <= [2*A*exp(2*A*b)/T^2]*M1(f).               (4)

This is WMED-v1-3, `norm_contour_weight_le_strip_energy`. The strip supplier
is a visible hypothesis; no value b<1/2 is inferred from convergence.

For every actual nontrivial zero in the open strip, b=1/2 follows from the
unchanged zero predicate. For any finite set S of these actual zeros with
|Im(rho)|>=T, summing (4) with their actual analytic multiplicities gives

    sum_(rho in S) m_chi(rho)*|W_f(rho)|
      <= [2*A*exp(A)/T^2]*M1(f)*sum_(rho in S) m_chi(rho). (5)

This is WMED-v1-4, `finite_source_band_norm_sum_le`. It needs no primitive
hypothesis merely to sum a finite set. The infinite source argument below
DOES use primitivity for the functional-equation symmetry. Multiplicity is
never replaced by the number of distinct locations or repeated interpolation
slots. In the Lean statement the left side is the norm of each actual complex
multiplicity-weighted term, summed over S.

## 2. Source-bound comparison and provenance

The local inputs at the inspected revision are:

- `../../../MeasureAndIntegration/FourierDerivativeDecay.lean`, blob
  `1df24b0bdcc1be9ca263a4a5fa16da04a74a9e82`; in particular
  `norm_fourier_integral_mul_pow_le`, whose proof establishes integration by
  parts and derivative integrability before forming the estimate.
- `../WeilContourWeight.lean`; the exact declarations
  `correlation_contour_weight_eq_reflected_product` and the existing strip
  decay are reused, not copied or replaced by absolute squares.
- `WeilFourierSupportQuadrature.lean`, blob
  `2e44c18f3c63640e8db83d8355a3ce6400c16c95`;
  `admissible_supported_moment_bounds` supplies (2) on f'.
- `../DirichletZeroMultiplicity.lean`, blob
  `ef9d9f861731f11e446dd59bd60c8896b1e5462d`; its source index, positive finite
  analytic multiplicities and finite height windows remain unchanged.

Primary comparison: Alpöge and Furman, *More than two thirds of the zeta
zeros are simple and on the critical line*, arXiv:2608.13637v2; its companion
`anthropics/formal-math` at `16a5ce41304fcdaea4e0be7c132e1c361dc26da5`.
The exact inspected analytic input is
`zeta23/Zeta23/ThmE/LocalCountChi.lean`, blob
`603d34e2374063f482905e72c84e5666f23275ad`, declaration
`Zeta23.ThmE.localCountChi_uniform_proof`. It gives an absolute constant
before all primitive conductors q>1 and all signed real unit-window origins.
Its source proof uses a normalized Jensen disc, elementary right-half-plane
growth and an Euler-region lower bound, NOT the critical-line proportion theorem.

The existing local `PrimitiveCharacterZeroCountReadouts.lean`, blob
`98f0405c0218b9839a46bf664df20d9d1b31e36a`, already consumes that theorem
in the isolated Anthropic environment. Its toolchain is v4.33.0-rc2 and
Mathlib `51e6992efd06126df61a496bebf8f49482a4e129`. No cross-pin import or
unreviewed root upgrade is made here. The catalogue/re-export surfaces are
not evidence of a completed bridge to the current root Weil development.

Section 3 independently spells out a conservative explicit constant using
absolute radii 8/5 and 9/5. This is a classical Jensen argument with modified
constants and a pole-aware q=1 branch, not a direct Lean import of the
upstream existential theorem, nor an inference of a prescribed constant from
an opaque existential witness. The count and its coefficient are WRITTEN
claims WMED-v1-5. No claim of new literature or independent review is made.
Individual declaration records distinguish this analytic comparison from
formal proof evidence. Upstream copyright/licensing is unchanged; no upstream
Lean bodies are copied into this new file.

## 3. A uniform, explicit local multiplicity count (WRITTEN)

**WMED-v1-5.** For every primitive Dirichlet character chi of conductor q>=1,
including conductor-one zeta, and every real t, let n_chi(t) count the
nontrivial zeros with t<Im(rho)<=t+1, with multiplicities. Then

    n_chi(t) <= 108*log(q*(|t|+3)).                         (6)

The same bound holds with [t,t+1) in place of (t,t+1]. This counts real
nontrivial zeros whenever the selected window includes zero.

### 3.1 Elementary continued-source bounds

For q>1 a primitive character is nonprincipal. Its complete-period sum is
zero, and |chi(n)|<=1. Thus A_chi(x)=sum_(n<=x)chi(n) satisfies |A_chi(x)|<=q.
Abel summation gives, initially for Re(s)>1 and then throughout Re(s)>0,

    L(s,chi) = s*integral_1^infinity A_chi(x)*x^(-s-1) dx,
    |L(s,chi)| <= q*|s|/Re(s).                            (7)

The integral converges locally uniformly with all parameter derivatives
on Re(s)>0: q times x^(-sigma-1)*(log x)^k is an integrable majorant on each
closed compact subregion with sigma>0. It is therefore holomorphic and agrees
with the analytically continued L-function by the identity theorem. Formula
(7) is not the totalized Dirichlet series outside its convergence domain.

For q=1 remove the actual pole only for this Jensen calculation. Write
H(s)=(s-1)*zeta(s) for s!=1 and set H(1)=1. This is the removable
continuation, not the pointwise product of a totalized zeta value at 1. Euler summation gives

    H(s) = s - s*(s-1)*integral_1^infinity {x}*x^(-s-1) dx,
    |H(s)| <= |s|*(1+|s-1|/Re(s)),                        (8)

on Re(s)>0. The same locally uniform argument proves the identity through
s=1; thus H is genuinely holomorphic there. On 0<Re(s)<1 its zeros and
multiplicities are exactly those of zeta. This temporary pole cancellation
is NOT deletion of either pole in the arithmetic Weil form.

On Re(s)=2, for every character in question, the convergent series gives

    |L(s,chi)| >= 1-sum_(n>=2)n^(-2) >= 1/4,

because sum_(n>=2)n^(-2)<=1/4+integral_2^infinity x^(-2)dx=3/4.
For zeta this also gives |H(2+iy)|>=1/4, since |1+iy|>=1.
No nonvanishing statement inside the critical strip is used.

### 3.2 Actual Jensen discs and arithmetic constants

Set c=2+i*(t+1/2), r=8/5, R=9/5 and B=|t|+3>=3. A source zero in the
height window with Re(rho)>=1/2 has

    |rho-c|^2 <= (3/2)^2+(1/2)^2=5/2 < (8/5)^2.

The closed outer disc lies in Re(s)>=1/5. On that disc,

    |s| <= |t|+43/10 = B+13/10,
    |s-1| <= |t|+33/10 = B+3/10.

Consequently (7) gives |L(s,chi)|<=8*q*B, since
5*(|t|+43/10)<=8*(|t|+3). Equation (8) gives

    |H(s)| <= (B+13/10)*(5*B+5/2) <= 9*B^2.

For the last inequality, subtract the left side from the right side. With
x=B-3>=0 the difference is 4*x^2+15*x+23/4, hence nonnegative.

Jensen's formula for a holomorphic function F with F(c) nonzero implies

    number_of_zeros_in_inner_disc * log(R/r)
      <= log(sup_outer_disc |F| / |F(c)|).

It counts analytic multiplicities. Boundary zeros on the outer circle cause
no difficulty, by taking radii from below and passing to the limit; the source
is analytic on a neighborhood of the closed outer disc. For x>=1,
log x>=1-1/x, by integrating 1/u on [1,x]. Therefore log(R/r)=log(9/8)>=1/9.

For q>1, q*B>=6 and 32<=(q*B)^2. Hence the right-half count is at most

    9*log(32*q*B) <= 27*log(q*B).

For zeta, 36<=B^4, so the right-half count is at most

    9*log(36*B^2) <= 54*log B.

### 3.3 Return to all zeros, not just a half strip

For a primitive character, the dual-character functional equation and
complex conjugation preserve multiplicity under rho -> 1-conjugate(rho)
WITHIN THE SAME chi source. This is the composition of the chi-to-inverse
functional equation and the inverse-to-chi conjugation identity. It preserves
the ordinate. The completed gamma and conductor factors are nonzero and
regular in the open critical strip; therefore the statement returns to the
original continued L-function and its analytic multiplicities. The zeta
functional equation gives the same assertion at q=1.

Each zero in the left half is thus paired with one in the right half with the
same height and multiplicity. Zeros on the critical line are counted only
once in n_chi, so n_chi is at most twice the right-half count. We get 54 for
q>1 and 108 for zeta. Enlarging the former constant proves (6) uniformly.
Neither symmetry alone nor this upper count proves critical-line localization.

For [t,t+1), use the bounds for (t-epsilon,t+1-epsilon] and let epsilon
decrease to zero. There are only finitely many zeros in the bounded region;
each of the finitely many zeros in [t,t+1) belongs to these shifted windows
for all sufficiently small epsilon. The logarithmic upper bound converges to
the same value. This pays zeros exactly at an integer or chosen cutoff.

## 4. A complete tail with no unspecified counting constant (WRITTEN)

**WMED-v1-6.** Let T>=1, and assume every nontrivial zero of the selected
primitive source satisfies |Re(rho)-1/2|<=b. Then

    sum_(|Im rho|>=T) m_chi(rho)*|W_f(rho)|
      <= tau(q,A,b,T)*M1(f),
    tau(q,A,b,T)=432*A*exp(2*A*b)*(2*log(4*q*T)+1)/T.        (9)

The sum is over distinct complex locations with their actual multiplicities.
To prove it, first keep the sharper pre-Cauchy--Schwarz version of (3):

    |W_f(rho)| <= exp(2*A*b)*J(f)^2/|Im(rho)|^2.

For positive heights partition [T,infinity) into [T+n,T+n+1), n>=0.
Equation (6), including its endpoint version, gives

    sum_(Im rho>=T) m_chi(rho)/Im(rho)^2
      <= 108*sum_(n>=0) log(q*(T+n+3))/(T+n)^2.

Negative heights are not silently identified with positive heights of the same
complex character. Conjugation identifies them, preserving multiplicity, with
positive heights of the INVERSE character. That character is primitive with
the same conductor, so the same uniform 108 bound applies a second time.
For q=1 it is the usual zeta conjugation. Thus both signs cost a factor 216.

For u>=1, log(q*(u+3))<=log(4*q*u). The function
h(u)=log(4*q*u)/u^2 is positive and decreasing: its derivative has numerator
1-2*log(4*q*u)<0. The integral test and T>=1 give

    sum_(n>=0) h(T+n)
      <= h(T)+integral_T^infinity h(u)du
      = log(4*q*T)/T^2+(log(4*q*T)+1)/T
      <= (2*log(4*q*T)+1)/T.

Multiply by 216*exp(2*A*b)*J(f)^2 and use (2). This proves (9), including
absolute convergence of the entire omitted tail. Finite low-height windows,
including all real zeros, are provided by the actual analytic zero source;
therefore the full signed zero sum is absolutely convergent as well.

The ordinary critical-strip statement supplies b=1/2 unconditionally, so the
baseline coefficient is exp(A). This is a convergence/error result, not a sign
result. If the published seven-eighths nonvanishing supplier and its source
transfer are accepted, the dual-character equation additionally gives
1/8<=Re(rho)<=7/8, hence b=3/8 and exp(3*A/4). That stronger branch is not
smuggled into the ordinary-strip proof or claimed kernel-checked here.

Exact stronger supplier: OpenAI, *The Quasi-Riemann Hypothesis*, September 30,
2026 edition, `openai/math@4eaee87548250b2682affda7d05d947c05554bae`,
`lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`, blob
`46c67f4000906b1391a471d6e6396ac0da3c16a5`, declarations
`OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re` and
`OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re`. The inspected pin matches
the root Lean/Mathlib pins, but the complete proof cone, independent replay
and bridge remain unverified in this increment. This theorem is not iterated
toward 1/2. Its source presence is not substituted for those checks.

## 5. Signed matrix and arithmetic consumers (WRITTEN)

**WMED-v1-7.** Let phi_1,...,phi_d be canonical admissible complex tests with
common support [-A,A], with no independence or orthonormality assumption.
Define the actual signed zero matrices

    (Z_T)_ij = sum_(|Im rho|<T) m_chi(rho)
                 * M_(phi_j)(rho)*conjugate(M_(phi_i)(1-conjugate(rho))),
    (G1)_ij = integral conjugate(phi_i'(x))*phi_j'(x) dx.

Let Z_infinity be the same matrix summed over every nontrivial zero. Cross
summability follows from the separate transform derivative bounds and
Cauchy--Schwarz, or finite polarization of the diagonal estimate (9). The
involution rho -> 1-conjugate(rho), retaining multiplicity and the height
cutoff, proves both Z matrices Hermitian; it does not make each summand a
nonnegative square. Finite expansion gives their exact values on
f_c=sum_j c_j*phi_j and gives c*G1*c=M1(f_c).
Applying (9) to EVERY complex c therefore gives

    -tau*G1 <= Z_infinity-Z_T <= tau*G1                    (10)

in Hermitian order. No mass or derivative Gram matrix is inverted. This is
not an entrywise error assertion disguised as a matrix norm estimate.

The full source identity (Z), with the inverse-character adapter required
by the plus convention, identifies Z_infinity with the complete arithmetic
matrix Q. The classical explicit-formula source must retain conductor,
parity, all active prime powers, and both signed zeta poles. The external
source `Zeta23.WeilEF.EF_lit_zeta` includes a summability clause and both
poles; its full root-source bridge is NOT formalized by this increment.
Consequently (10) is an unconditional written zero-side estimate, and its
formal arithmetic use retains the explicit source-equality obligation.

Once that source identity and the finite entries are certified, the sufficient
finite-family positivity condition is Z_T-tau*G1 >= 0. A negative witness is
certified when c*Z_T*c+tau*c*G1*c<0. Add all finite-entry, zero-enclosure and
multiplicity-identification errors before using either test. Neither test has
been executed here. Requiring every finite family/window to have an adequate
positive certificate is still the unsupplied arithmetic sign problem, not a
consequence of the shrinking tail.

The all-test targets remain
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`
and the conductor-one return `modOne_criticalStripStatement`. They require
actual-source detection AND full-domain arithmetic nonnegativity. Nothing in
(3), (6), (9), or (10) discharges the second requirement.

## 6. Hostile cases and exact evidence limits

1. Applying Jensen directly to zeta on a disc containing 1 is invalid. The
   H=(s-1)*zeta branch proves holomorphic pole removal and preserves nontrivial
   zero multiplicities; it never deletes poles from the Weil source.
2. For nonreal chi, negative-height zeros belong to the conjugate character
   after conjugation, not generally to the same source. The uniform count is
   applied to that inverse character explicitly.
3. Cutoff-height zeros are charged to the tail because the head is |Im rho|<T.
   The half-open endpoint argument above prevents dropping their multiplicities.
4. At Im(rho)=0 there is no division. Such zeros are in the finite head for T>=1.
5. All tests and coefficient vectors are complex. Mixed matrix entries and the
   signed reflection remain; checking basis-vector signs would be insufficient.
6. High modulation can increase M1 without bound. That cost remains in (9).
   The exponential factor still grows with A; no all-window uniformity is claimed.
7. A zero derivative-energy direction has f_c'=0 and, by compact support and
   continuity, f_c=0. Such singular directions need no inverse or positive gap.
8. A finite negative head whose margin is smaller than the positive error budget
   does not certify a negative full form. Improved counting is not positivity.

This is a limited dated comparison, not an exhaustive prior-art audit. The
analytic proof is classical integration by parts, Abel summation, Jensen and
an integral test with explicit constants. No external proof is declared
independently reviewed merely because an alternative calculation is written.
All exact commands, byte hashes and ordinary publication checks, when performed,
are recorded in the coordinating issue. Formal execution remains NOT_RUN.
