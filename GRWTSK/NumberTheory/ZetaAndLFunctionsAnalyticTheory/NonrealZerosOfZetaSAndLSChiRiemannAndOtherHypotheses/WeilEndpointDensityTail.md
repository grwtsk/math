# A reflection-sensitive, density-controlled negative endpoint tail

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).

## Scope, consumer and evidence

This note advances the bounded-modulation part of the original endpoint
problem after [WeilEndpointModulationCoercivity.md](WeilEndpointModulationCoercivity.md).
It does not prove the remaining finite-head sign. Its contribution is an
explicit bound on the ENTIRE possibly negative zero-tail on the endpoint
span, retaining the cancellation inside each reflected pair before taking
absolute values. The bound vanishes at critical-line pairs. For zeta,
Simonic's unconditional density theorem turns that quadratic cancellation
into a support-polynomial budget in the region 8L<=log T. The former
ordinary-strip bound had a worst-case exp(L/2) support factor.

The elementary reflected-pair estimate applies to every primitive Dirichlet
character, including conductor-one zeta. The numerical density specialization
below is ZETA ONLY. No conductor-uniform Dirichlet version of Simonic's
constants is asserted. The existing ordinary-strip character tail remains
available; neither a seven-eighths strip nor RH/GRH is an input here.

WEDT-v1-1--5 are WRITTEN analytical statements. The companion Lean module
contains only three complex-algebra SOURCE_PROOF_CANDIDATE declarations,
with individual provenance. Formalization of the density theorem, transform
estimates, full sum and source return has NOT been completed here.
Elaboration, full dependency builds, fresh kernel replay, transitive axiom
audit, certified computation and independent analytical review: NOT_RUN.
Originality: UNASSESSED. Publication is not mathematical acceptance.

Initial inspected main: 05c3158365036f6eaa025d78cf2586dbbfb81f20.
Complete base root: 49c727c41d7910d94a4a7c02c6574a239670c42c.
Lean: leanprover/lean4:v4.34.1. Mathlib:
d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801,
scope comment 6831263879. Local source attribution: grwtsk contributors.
No existing statements, root imports, dependency pins or workflows are changed.
The canonical execution skill was inaccessible at Noe revision
1d5f33f44c6b4e64d420b7279d09324d2b8e7268; no dependent proof execution ran.

## 1. The unchanged physical and spectral source

Use exactly the physical conventions of
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md), section 1:

    Q_chi,L(f) = c_q,alpha ||f||_2^2 + Gamma_(alpha+1/2)(f)
                         - <f,P_chi,L f> + delta_chi <f,R_L f>,
    c_q,alpha = log(q/pi)+psi_Gamma(1/4+alpha/2),
    P_chi,L = sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
                        [chi(n)T_(log n)+conj(chi(n))T_(log n)^*],
    R_L(x,y) = exp((x-y)/2)+exp(-(x-y)/2).

Functions on (0,L), L>0, are zero-extended. Inner products are conjugate-linear
in the first variable. Delta_chi is one precisely for conductor-one zeta.
All prime powers, character phases, ramification, conductor, parity, original
scalar and BOTH applicable pole orientations remain. The physical plus-Fourier
convention retains the maintained inverse-character return to
`primitiveArithmeticValue`; no new same-character identification is made.

The two endpoints are

    u(x)=exp(-x/2)*exp(i*eta*x),
    v(x)=exp(-(L-x)/2)*exp(i*eta*x),             0<x<L.

They belong to the logarithmic gamma form domain but their zero extensions
are not generally H1. The full signed explicit-formula extension to their
span, by inward contraction and bounded-variation mollification, is the
WRITTEN source argument in WSEP-v1-2 and WEPD section 1. It keeps full complex
zero locations and analytic multiplicities. This note consumes that exact
identity, not a new form whose positivity is automatic.

Partition the actual source zeros into same-character reflection orbits under
rho -> 1-conj(rho). This uses the dual-character functional equation followed
by conjugation, not conjugation alone for a complex character. A two-point
orbit has common multiplicity m>0 and representative rho=beta+i*gamma with
beta>1/2. Set d=beta-1/2, tau=gamma+eta, and

    p=(1-exp(-(beta+i*tau)*L))/(beta+i*tau),
    r=(1-exp(-(1-beta-i*tau)*L))/(1-beta-i*tau),
    a=exp(d*L/2)*p,        b0=exp(-d*L/2)*r.

The literal matrix from [WeilEndpointPairDefect.md](WeilEndpointPairDefect.md)
(WEPD-v1-1, blob a5cce9eb5f7ca49cc4a25af36bd5282d99cddb42) is

    H_j = [[D_j,B_j],[conj(B_j),D_j]],
    D_j = 2m Re(a*b0),
    B_j = m exp(i*tau*L)*(a^2+conj(b0)^2),
    e_j = |B_j|-D_j > 0.                                  (1)

Reflection-fixed critical-line locations are counted once. Their matrix is
rank-one positive semidefinite and their negative deficit is zero. Real and
central zeros are not discarded; a real zero is in the finite head below.

## 2. A quadratic, reflection-sensitive pair bound

**WEDT-v1-1.** For every two-point orbit,

    0 < e_j <= m |a-conj(b0)|^2.                           (2)

More precisely, for arbitrary complex z,w and p0=exp(i*tau*L),

    (conj(z),conj(w))*H_j*(z,w)^T
       + m|a-conj(b0)|^2 (|z|^2+|w|^2)
      = m|conj(a)*z+p0*a*w|^2
         +m|b0*z+p0*conj(b0)*w|^2.                       (3)

Expand the two squares: their diagonal is m(|a|^2+|b0|^2), their offdiagonal
is B_j, and
|a-conj(b0)|^2=|a|^2+|b0|^2-2Re(a*b0). This proves (3).
Equivalently, the triangle inequality in (1) gives
|B_j|<=m(|a|^2+|b0|^2), which proves (2). Strict positivity of e_j
is the previously proved WEPD determinant result, not needed for the upper
bound. The negative correction in (3) MUST be subtracted to recover H_j.
This is not a positive Gram replacement for the original signed form.

The reflection difference has the following actual-transform estimate.
For all |tau|>=1,

    |a-conj(b0)|
       <= (1+exp(-L/2))*d*exp(d*L/2)*(L+2/|tau|)/|tau|.   (4)

Proof. For real t in [-d,d], define

    A(t) = [exp(t*L/2)-exp(-L/2)*exp(-t*L/2)*exp(-i*tau*L)]
                                      /(1/2+t+i*tau).

Then a=A(d) and conj(b0)=A(-d). The denominator is nonzero and has modulus
at least |tau|. Differentiating this explicit quotient gives

    |A'(t)| <= (1+exp(-L/2))*exp(d*L/2)
                              *(L/(2|tau|)+1/tau^2).

Indeed the numerator has modulus at most (1+exp(-L/2))*exp(dL/2),
and its derivative has modulus at most L/2 times that quantity. Integrate
A' from -d to d and apply the norm bound. This proves (4) without separately
bounding the two original endpoint transforms. In particular

    e_j <= 4m*d^2*(L+2)^2*exp(dL)/tau^2.                  (5)

All constants and the factor d^2 are explicit. Neither a nonnegative D_j
nor a narrower strip is required. The denominators in this proof are never
totalized zero denominators.

## 3. An actual unconditional zeta density supplier

The primary external input is Aleksander Simonic,
*Explicit zero density estimate for the Riemann zeta-function near the
critical line*, arXiv:1910.08274v2 (29 November 2019; manuscript date
2 December 2019), Theorem 1, PDF page 2, with H0 defined on page 1.
The PDF theorem and its range/constants were inspected as rendered pages.
This source is not a statement about all Dirichlet characters.

Let N(sigma,U) count zeta zeros with beta>sigma and 0<gamma<=U,
with multiplicity. The theorem states, for U>=H0=30610046000 and
1/2<=sigma<=831/1000,

    N(sigma,2U)-N(sigma,U)
      <= 10395.2 U^(1-(sigma-1/2)/4) log U
         +1.104(log U)^2+0.173 log U log log U+0.51 log U. (6)

These are exact decimal rationals from the cited edition. Its underlying
verification inputs have not been rerun here. No numerical zero list is
used by the local argument; (6) is an external published theorem, not a new
Lean axiom or a claimed local kernel-verified supplier.

Put

    C=10400,       d0=331/1000,       a0=331/4000.

**WEDT-v1-2.** For U>=H0 and 0<=x<=d0,

    N(1/2+x,2U)-N(1/2+x,U)
                         <= C U^(1-x/4) log U.           (7)

To prove the rounding, write y=log U>=1. Then log y<=y and y<=y^2, so
the final three terms of (6) are at most 1.787*y^2. Also log U<=sqrt U:
for y>=0, exp(y/2)>=1+y/2+y^2/8>=y. Since 1-x/4>=3669/4000>1/2,
these terms are at most 1.787*U^(1-x/4)*log U. Finally
10395.2+1.787=10396.987<10400. This proves (7).

For d0<x<1/2, monotonicity of the counted set gives the SEPARATE bound

    N(1/2+x,2U)-N(1/2+x,U) <= C U^(1-a0) log U.           (8)

It would be incorrect to apply (7) at x>d0. Equation (8) retains, rather
than deletes, all zeros in the far-right remainder of the ordinary strip.

## 4. A weighted shell estimate, with the far-right tail paid

**WEDT-v1-3.** Suppose U>=H0, L>0 and L<=log U/8. Sum over zeta zeros
with beta>1/2 and U<gamma<=2U, weighted by analytic multiplicities. Then

    sum m_rho*d_rho^2*exp(L*d_rho)
      <= 256 C U/log U
         +(C/4) exp(L/2) U^(1-a0) log U.                 (9)

Here d_rho=beta-1/2 lies in (0,1/2). Define w(x)=x^2 exp(Lx).
For each finite shell, the layer-cake identity gives

    sum m_rho*w(d_rho)
      = integral_0^(1/2) (2x+Lx^2)exp(Lx)
                *[N(1/2+x,2U)-N(1/2+x,U)] dx.           (10)

A zero on beta=1/2+x contributes for x below its actual distance; values at
the integration endpoints have measure zero. This is not a projection of
locations to ordinates, and zeros are not assumed simple.

For 0<=x<=d0 use (7), and put A=(log U)/4-L>0. Extending this positive
integrand to infinity bounds its contribution by

    C U log U * (2/A^2+2L/A^3).

Since L<=log U/8, both A>=log U/8 and L<=A hold. The parenthesis is at
most 4/A^2<=256/(log U)^2. This gives the first term of (9).
For d0<x<1/2 use (8). Its contribution is at most

    C U^(1-a0) log U *[w(1/2)-w(d0)]
      <= (C/4)exp(L/2) U^(1-a0) log U.

This proves (9), retaining all far-right zeros without a zero-free input.

## 5. The complete negative tail, uniformly in bounded modulation

Let M>=0 and choose

    T >= max(H0,2,2M),       0<L<=log T/8,
    V(L,T)=(1+exp(-L/2))*(L+4/T),
    nu=81/4000.

Retain the inclusive actual head |gamma|<=T and omit |gamma|>T. This
head is a union of whole reflection orbits. Zeros exactly at T or -T are
included, not silently crossed by a contour. Both signed ordinate tails
are present. For any real eta with |eta|<=M, define E_tail as the sum of
e_j over all omitted off-line orbits; omitted reflection-fixed points
have deficit zero.

**WEDT-v1-4.** With C=10400,

    E_tail <= epsilon_D(L,T),
    epsilon_D = 4096 C V(L,T)^2/(T log T)
                   +4 C V(L,T)^2 log(2T)/T^(1+nu).       (11)

In particular, V(L,T)<=2(L+2), so a simpler valid bound is

    epsilon_D <= 16384 C (L+2)^2/(T log T)
                    +16 C (L+2)^2 log(2T)/T^(1+nu).     (12)

Proof. On the omitted set, |tau|=|gamma+eta|>=|gamma|/2>T/2>=1.
Equations (2) and (4) give, for either ordinate sign,

    e_j <= 4m V(L,T)^2*d^2*exp(dL)/gamma^2.

For zeta, conjugation gives the negative-ordinate orbit with the same d
and multiplicity as its positive-ordinate orbit. Applying the last bound
separately to both signs, not identifying their shifted tau values, gives

    E_tail <= 8 V(L,T)^2
           *sum_(beta>1/2,gamma>T) m*d^2*exp(dL)/gamma^2. (13)

Use shells U_k=2^k T and (9). The near-line contribution to the sum in
(13) is at most

    256 C sum_(k>=0) 1/(U_k log U_k)
                           <=512 C/(T log T).

For the far-right contribution, use 2^(-k(1+a0))<=2^(-k) and the exact
geometric sums sum 2^(-k)=2, sum k*2^(-k)=2. Its bound is

    (C/4)exp(L/2)*sum_(k>=0) log U_k/U_k^(1+a0)
      <=(C/2)exp(L/2)*log(2T)/T^(1+a0).

Multiply by 8 V(L,T)^2 as in (13). Finally
exp(L/2)<=T^(1/16), and a0-1/16=81/4000=nu. This proves (11).
All inequalities are uniform over |eta|<=M and over the stated support
range. No implied constant, numerical mesh or omitted infinite tail occurs.

### Literal arithmetic consumer and norm convention

Let H_<=T be the sum of the actual endpoint matrices for every source zero
with |gamma|<=T, paired as in section 1 and with fixed points counted once.
Absolute convergence and H_j>=-e_j I imply, for every complex c1,c2,

    Q_zeta,L(c1*u_{L,eta}+c2*v_{L,eta})
       >= (conj(c1),conj(c2))*H_<=T*(c1,c2)^T
                           -epsilon_D*(|c1|^2+|c2|^2).   (14)

The left side is literally the scalar+gamma-prime+TWO-POLE form in section
1. Equation (14) is a one-sided bound for its whole omitted ZERO tail on
this endpoint span, not a bound on the infinite-dimensional form-domain
orthogonal complement. It also does not bound the absolute operator norm
of the zero-tail: a critical-line tail can be positive and nonzero while
its negative deficit is exactly zero.

Thus lambda_min(H_<=T)>=epsilon_D is a sufficient fixed-source certificate.
No such head certificate is produced here, and no universal existence of
these certificates is asserted. The remaining full matrix sum may or may
not have the needed sign; the inequality is not assumed.

The error in (14) is in the coefficient norm. The physical L2 Gram matrix
has diagonal 1-exp(-L), offdiagonal Lexp(-L/2), and smallest eigenvalue

    g_L=1-exp(-L)-Lexp(-L/2)>0.

A physical L2 error bound is epsilon_D/g_L, not epsilon_D. Bounded-variation
endpoints have not been inserted into an H1 derivative-tail estimate.

## 6. Growing-window corollary and hostile checks

**WEDT-v1-5.** For L>=log(H0)/8, take T=exp(8L) and any
|eta|<=exp(8L)/2. Equations (11)-(12) give the explicit growing-window bound

    E_tail <=2048 C (L+2)^2/L *exp(-8L)
       +16 C (L+2)^2*(8L+log2)*exp(-(8+81/500)*L).        (15)

Thus the complete negative tail is O(L exp(-8L)) in this stated regime.
For the same actual head, apply the preceding shifted-height ordinary-strip
bound at T/2: the omitted actual heights have |gamma+eta|>T/2. That bound
permits O(L exp(-15L/2)); (15) removes its worst-case exp(L/2) factor. Constants
here are deliberately conservative; at moderate T the former bound can be
smaller, so neither should be discarded. A finite head still grows with T.
This is not positivity for every L, despite the growing-window quantifier.

The following checks delimit the result.

- At d=0, a=conj(b0): the correction is zero and the actual fixed-point
  matrix remains positive semidefinite. No fictitious negative error is
  charged merely because a critical-line zero was omitted.
- At tau=0, a,b0 are positive real and e_j=m(a-b0)^2: inequality (2) is
  attained. As d tends to zero, A(d)-A(-d)=2d A'(0)+O(d^3), where
  A'(0)=L-4+(L+4)exp(-L/2)>0. Positivity follows by pairing x and L-x
  in integral_0^L (L/2-x)exp(-x/2)dx. Thus the deficit is genuinely
  quadratic in d; it is not uniformly fourth order. No tail estimate
  using 1/tau is applied at tau=0.
- A real exceptional zero of a nonprincipal character is in the head
  whenever T>=2; no zero-density statement removes it. Complex-character
  tails cannot use zeta's conjugation symmetry without the inverse source.
  Only (2)-(5), not the numerical constants (6)-(15), are asserted for all chi.
- The synthetic WEPD pair 1/4,3/4 at L=4log2 has a negative endpoint
  eigenvalue. Its entire off-line contribution can lie below H0, so an
  arbitrarily strong high-tail bound alone cannot establish the head sign.
  These are not asserted arithmetic zeros and do not refute RH/GRH.
- Both pole terms, the negative scalar, and every actual prime power remain
  in (14). A scalar shift of Q is not licensed by the spectral estimate.
  Newly active prime powers still have the original zero endpoint tapers.

## 7. Provenance, comparison and unresolved obligations

The local written statement IDs WEDT-v1-1--5 do not change the meanings or
evidence of WEPD, WSEP, WEGR or WEMC. WEPD gives the exact pair matrix and
its determinant; it does not give the reflection-sensitive d^2 estimate
or the use of an actual zero-density theorem. WEMC proves exterior-modulation
positivity at fixed L; it does not pay the present bounded-modulation tail.
The literal arithmetic return and form-core extension are inherited with
their WRITTEN status, not newly elaborated here.

Primary comparison, inspected 2026-11-12:

1. Simonic [1], Theorem 1, PDF pages 1-2, is the only quantitative external
   arithmetic theorem used by the new density specialization. Its restriction
   sigma<=0.831 and additive errors are retained in (6)-(10). The rounded
   constant 10400 and the endpoint transfer are local consequences, NOT a
   claim that the paper proves an endpoint Weil sign theorem.
2. WEPD-v1-1 and v1-4--6 give the actual endpoint orbit and former one-sided
   tail budget. The whole signed product, not an ordinate-only square,
   remains the source. Its finite head still needs an independent lower sign.

The companion `WeilEndpointDensityTail.lean` uses the existing namespace
`GRWTSK.NumberTheory.WeilEndpointPairDefect`. Its public declarations are
`reflection_difference_identity`, `pairValue_lower_bound`, and
`phased_multiplicity_lower_bound`; `pairValue` is only their local algebraic
expression, not a replacement arithmetic target. Each declaration has an
individual record. Pinned Mathlib's canonical `Mathlib.Basic.Complex.Basic`
was inspected (blob 02ad0aa87f370d1fd2bbb34072fc95cefcb27d87); the older
`Mathlib.Data.Complex.Basic` path is a deprecated forwarding module at this pin.
This API observation is not elaboration or a transitive axiom audit.

The unresolved arithmetic requirements remain: the actual endpoint head
sign for every required source/window, control of the full test-domain
complement and its couplings, and the universal all-test lower bound.
No new inhabitant of `WeilNegativeWitness`'s `hpositive` or `hdetect` is
supplied. The targets continue to concern the analytically continued zeta
function and every primitive Dirichlet L-function in the open critical strip,
with conclusion Re(rho)=1/2. A smaller error budget does not establish them.

[1]: https://arxiv.org/pdf/1910.08274v2
