# Odd output traces and directional residuals for the arithmetic Weil Schur problem

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original exposition and manually authored Lean candidate: repository MIT license.
AI-assisted analysis and source drafting; independent analytical review NOT_RUN.

## 0. Result, consumer, and limit

This increment concerns the canonical FULL pole-inclusive Weil operator A_T of
Connes--Consani--Moscovici (CCM), arXiv:2511.22755v1, (3.19)--(3.20), on
L2([-T,T],dt), T>0. It does not replace the operator by a compression.
The selected consumer is the remote residual in the ODD low-Schur lower enclosure.

For a finite odd sine polynomial f, the leading high Fourier coefficient of
A_T f is controlled by its OUTPUT endpoint, not its input endpoint. Although
f(T)=0 automatically, in general (A_T f)(T) is nonzero. We derive its complete
signed arithmetic expression, retaining the boundary images, every prime power,
and the negative odd pole. We prove:

    <s_m,A_T f> = (-1)^m b_T(f)/m + O_explicit(m^-2),
    b_T(f) = -2 sqrt(T)/pi * (A_T f)(T),
    lim_{L->infinity} L ||R_L A_T f||^2 = |b_T(f)|^2.             (0.1)

A second source-exact extraction gives

    <s_m,A_T f> = (-1)^m [b_T(f)/m +
        (1/2+2p_m/pi) d_T(f)/m^2] + r_m,
    |r_m| <= H_2(f)/m^3,                                      (0.2)

where d_T(f)=T sqrt(T) f'(T)/pi and all constants are explicit below.
Thus the L^-1 and L^-3 squared-tail prices lie in two specified trace directions;
on their common kernel the whole squared residual is at most H_2(f)^2/(5L^5).
These are frequency-tail assertions for the stated polynomial, not uniform
statements in a growing polynomial dimension or support window.

The estimate is inserted into the EXISTING residual enclosure; its finite
residual rows and all finite-block errors remain unchanged. Source-series error
in b_T is priced separately. No numerical lower Schur matrix, cofinal sign
margin, or identified genuine ground state is constructed here. Therefore this
increment is NOT cofinal low-energy separation progress and is NOT RH or
Dirichlet GRH closure. The first still unsupported inequality is the sign of the
fully paid finite lower enclosure, on the whole odd head, at the proposed
cofinal thresholds. The second, normalized-ground/prolate obligation also remains.

## 1. Exact sources, domains, and notation

The refreshed baseline is grwtsk/math/main at
67144c4b923ace618dbdb9c80e24f951a8981cac, complete tree
de524f8771a85b09a652ad89f00f22a30f47fc45. Its parent is the supplied low-Schur
publication 2cb02200604cae7cec56880486017090c44a9eb7. All prior contributions,
including the concurrent polarized-observer work, are preserved, not credited
to this increment or independently validated merely by their publication.

Consumed analytical sources at this baseline:

- weil-periodic-boundary.md, blob 704c9ad46d3a27b9485f51d53fc0b67d48fec7b0,
  Sections 1--6; review #1675 remains open with historical NOT_RUN statuses.
- weil-low-schur-enclosure.md, blob 92f973a93ccbf83938401a57a82d4a2e6fe946af,
  Sections 1--2 and 6; review #1679 remains open with historical NOT_RUN statuses.
- WeilLowSchurEnclosure.lean, blob d138d6430f5e0ee809d6c748f18423621f3aefec:
  actual activePrimePowers, primeWeight, primeMass, primeSignal,
  abs_primeSignal_le, primeRow_split and prime_majorant_identity.
  Its proof bodies were read. Transitive Lean qualification remains NOT_RUN.

Use antilinear-first inner products and zero extension. The multiplicative
Fourier transform in logarithmic coordinates is integral f(t)exp(-izt)dt.
The audited comparison is

    A_T=D_T+G_T-P_T+L_T,
    D_T e_n=[c_inf+m(pi*n/T)]e_n,
    G_T(t,s)=sum_{k!=0} kappa(|s-t+2kT|),
    kappa(r)=exp(-r/2)/(1-exp(-2r)),
    P_T=sum_{2<=q<exp(2T)} a_q(S_log(q)+S_log(q)^*),
    a_q=Lambda(q)/sqrt(q),
    L_T=2|cosh(. /2)><cosh(. /2)|-2|sinh(. /2)><sinh(. /2)|.  (1.1)

The consumed domain argument compares truncated zero-extension and periodic
energies with the same small-distance cutoff. Their difference is G_T, whose
nearest corner kernels have a bounded Carleman majorant; the remaining images
are integrably dominated. Strong dominated convergence identifies the maximal
form domains. Bounded perturbation identifies Dom(A_T)=Dom(D_T). In particular
finite sine polynomials are in the actual operator domain. These are the
specific arguments reused, not a new boundary condition or an inference that
an arbitrary form core is an operator core.

CCM (3.5), (3.7)--(3.11), (3.19)--(3.20), and Section 4 were read directly.
They match the minus prime term, both pole moments, and antilinear-first
convention. The equality log(q)=2T contributes zero overlap and hence zero
operator. The one-sided source distribution, its half delta coefficient, and
the core return are unchanged. No global radical identity, RH-dependent
convergence theorem, prime--pole low-form estimate, or finite-prolate asymptotic
is a premise of this increment.

Write

    s_n(t)=T^(-1/2) sin(omega_n t), omega_n=pi*n/T, n>=1,
    f=sum_{n=1}^M x_n s_n, y_n=(-1)^n x_n,
    D_1(f)=sum n|x_n|, D_2(f)=sum n^2|x_n|,
    S(f)=<sinh(. /2),f>,
    d_T(f)=sum n y_n=T sqrt(T) f'(T)/pi.                       (1.2)

The coefficients x_n may be complex. For L>=M>=1 put

    theta=1-M/(L+1), theta_2=1-(M/(L+1))^2,
    K=2 sum_q a_q, k_0=1/2+K/pi,
    alpha_j=2j+1/2, w_j=1-exp(-2alpha_j T),
    p_n=sum_q a_q sin(omega_n log(q)),
    g_n=sum_{j>=0} w_j/(alpha_j^2+omega_n^2),
    C_T=1+exp(-T)/(1-exp(-4T)).                               (1.3)

Both buffers are strictly positive, including L=M, when their small values
M-dependent losses must be retained. The g_n series converges absolutely and
is positive and decreasing in n>=1. The literal finite p_n satisfies |p_n|<=K/2.
No prime-distribution conjecture is involved.

## 2. Actual odd rows and the signed output functional

For m>M, direct sine compression of the periodic note's complex Fourier rows gives

    <s_m,P_T s_n> = 2(-1)^(m+n)/pi * (m p_n-n p_m)/(m^2-n^2),
    <s_m,G_T s_n> = -2(-1)^(m+n)/T * omega_m omega_n
        *sum_j w_j/[(alpha_j^2+omega_m^2)(alpha_j^2+omega_n^2)],
    <s_m,sinh(. /2)> =
        2(-1)^(m+1)omega_m sinh(T/2)/[sqrt(T)(1/4+omega_m^2)].  (2.1)

For example the prime compression is P_mn-P_m,-n. This exchanges the roles
of the low and high signals compared with the EVEN numerator; merely copying
the even row is incorrect. The boundary formula also follows independently
from its negative odd rank-one hyperbolic expansion. The pole row is
-2<s_m,sinh>S(f). D_T f has no coefficients above M.

Define the SIGNED functional

    b_T(f) = -2/T sum n y_n g_n -2/pi sum y_n p_n
             +4 sqrt(T)sinh(T/2)/pi * S(f).                   (2.2)

Absolute values are taken after these three actual source contributions have
been combined. It is not an unsigned norm or an assumed cancellation.

There is a genuine endpoint interpretation on this finite polynomial space:

    (A_T f)(T) = pi/(T sqrt(T)) sum n y_n g_n
                  +1/sqrt(T) sum y_n p_n -2sinh(T/2)S(f),
    b_T(f) = -2sqrt(T)/pi * (A_T f)(T).                       (2.3)

To justify evaluation, the zero extension of an odd sine polynomial is
continuous and vanishes linearly at both endpoints. Every finite prime shift
is therefore continuous. For G_T, the product of the corner majorant
1/(x+y) with a function O(y) is uniformly bounded as x decreases to zero;
dominated convergence, together with the summable remote images, gives a
continuous endpoint value. D_T f is a finite sine polynomial, and L_T f is
smooth. Thus A_T f has the claimed continuous representative at the endpoints.
No endpoint functional is asserted bounded on the complete logarithmic domain.

For a direct check of (2.3), P_T f(T)=-sum y_n p_n/sqrt(T).
Integrating each exponential boundary image gives
G_T f(T)=sum y_n omega_n g_n/sqrt(T); the scalar identity
4sinh(alpha T)^2/(exp(2alpha T)-1)=1-exp(-2alpha T) fixes the factor.
These sums converge absolutely. The odd pole gives -2sinh(T/2)S(f).
This proves (2.3) without an assumed endpoint asymptotic of a Fourier series.

## 3. First extraction and the sharp leading tail

The exact prime identity is

    (m p_n-n p_m)/(m^2-n^2)
       =p_n/m+n*((n/m)p_n-p_m)/(m^2-n^2).                    (3.1)

Its remainder has absolute value at most K*n/[2m(m-n)]. With the source
factor 2/pi its sum is at most K D_1/(pi theta m^2), m>L.
For the boundary use

    u v/[(a^2+u^2)(a^2+v^2)]
       =(v/u)/(a^2+v^2)-(v/u)a^2/[(a^2+u^2)(a^2+v^2)].       (3.2)

The decreasing-series estimate

    sum_j 1/(alpha_j^2+u^2) <= 1/u^2+pi/(4u), u>0,           (3.3)

follows by the first term plus one half of the integral from 1/2 to infinity.
Consequently the boundary remainder is at most
D_1/(2m^2)+2T D_1/(pi^2 m^3).
The odd pole row equals (-1)^m b_p/m times
omega_m^2/(1/4+omega_m^2), where
b_p=4sqrt(T)sinh(T/2)S(f)/pi. Its remainder is at most
T^(5/2)sinh(T/2)|S(f)|/(pi^3 m^3).

Set

    H_1(f)=[K/(pi theta)+1/2+2T/(pi^2(L+1))]D_1(f)
           +T^(5/2)sinh(T/2)|S(f)|/[pi^3(L+1)].              (3.4)

Equations (2.1)--(3.3), including the minus sign of P_T, prove for every m>L

    |<s_m,A_T f>-(-1)^m b_T(f)/m| <= H_1(f)/m^2.             (3.5)

All low sums are finite; all boundary sums before and after splitting are
absolutely convergent. Hence Parseval and Minkowski give the whole residual

    ||R_L A_T f|| <= |b_T(f)|/sqrt(L)+H_1(f)/sqrt(3L^3).      (3.6)

On ker(b_T), the squared bound improves to H_1(f)^2/(3L^3).
The slow term is not a removable artifact. Put t_2(L)=sum_{m>L}m^-2.
Expanding the squares in (3.5) gives

    | ||R_L A_T f||^2-t_2(L)|b_T(f)|^2 |
       <= |b_T(f)|H_1(f)/L^2+H_1(f)^2/(3L^3).               (3.7)

Here sum m^-3<=1/(2L^2), and
1/(L+1)<=t_2(L)<=1/L. For fixed T,M,f, H_1 stays bounded as L increases.
Multiplication by L proves (0.1). The same estimate, uniformly on the unit
sphere of this FIXED finite polynomial space, proves operator-norm convergence
of L times the tail Gram matrix to b_T^*b_T. It is not uniform in T or M.

### A source-exact counterexample to input-endpoint cancellation in the odd sector

Take 0<T<=log(2)/2 and f=s_1. There are no active prime powers, f(T)=0, and

    b_T(s_1)=2g_1/T+
      8omega_1 sinh(T/2)^2/[pi(1/4+omega_1^2)] >0.           (3.8)

Both terms are strictly positive. Therefore L||R_L A_T s_1||^2 has a strictly
positive limit. No L-independent C(T) can give
||R_L A_T s_1||^2<=C(T)L^-3 for all L. This refutes only the transfer of the
even input-trace argument to odd sine vectors; it does not refute odd-sector
positivity, spectral separation, or a direct transform comparison.

## 4. Second extraction: a derivative-trace price and an L^-5 remainder

The two exact rational identities are

    (m p_n-n p_m)/(m^2-n^2)
      =p_n/m-n p_m/m^2+n^2(m p_n-n p_m)/[m^2(m^2-n^2)],
    mn(g_n-g_m)/(m^2-n^2)
      =n g_n/m-n g_m/m+n^3(g_n-g_m)/[m(m^2-n^2)].           (4.1)

The boundary mixed sum in (2.1) is equivalently
-2(-1)^(m+n)mn(g_n-g_m)/[T(m^2-n^2)]. This follows by partial fractions;
it is valid because m>n. Since 0<g_m<=g_n, its last remainder is bounded by

    [(2T/pi^2)D_1+D_2/2]/(theta_2 m^3).                    (4.2)

Indeed g_n<=T^2/(pi^2 n^2)+T/(4n), by (3.3).

For every u>0 the elementary shifted integral test also gives

    |sum_j 1/(alpha_j^2+u^2)-pi/(4u)| <= 1/u^2.

To see both sides, sandwich the sum between one half of the integral from
1/2 to infinity and that integral plus its first summand; the omitted interval
[0,1/2] costs at most 1/(4u^2). The exponential subtraction has absolute value
at most exp(-T)/[(1-exp(-4T))u^2]. Therefore

    |g_m-T/(4m)| <= C_T T^2/(pi^2 m^2).                    (4.3)

The second term in the boundary identity (4.1) consequently contributes
(-1)^m d_T(f)/(2m^2), with error at most
2T C_T |d_T(f)|/(pi^2 m^3).
The second prime term contributes
(-1)^m (2p_m/pi)d_T(f)/m^2. Its remaining term is bounded by
K D_2/(pi theta m^3), since
|m p_n-n p_m|<=(K/2)(m+n). The pole cubic remainder remains as in Section 3.

Define

    a_1=2T/(pi^2 theta_2),
    a_2=K/(pi theta)+1/(2theta_2),
    a_d=2T C_T/pi^2,
    a_p=T^(5/2)sinh(T/2)/pi^3,
    H_2(f)=a_1 D_1+a_2 D_2+a_d|d_T(f)|+a_p|S(f)|.           (4.4)

This proves (0.2) for all m>L. In particular, for ALL such odd polynomials,

    ||R_L A_T f|| <= |b_T(f)|/sqrt(L)
       +k_0|d_T(f)|/sqrt(3L^3)+H_2(f)/sqrt(5L^5).            (4.5)

On ker(b_T) intersect ker(d_T), the squared norm is at most H_2^2/(5L^5).
This common kernel need not be a trial complement and is not the entire odd
head. It cannot replace positivity on the entire odd head. All constants retain
the support, dimension and buffer dependence; no cofinal estimate is inferred
from a fixed-polynomial power of L.

## 5. Finite quadratic prices and the existing low-Schur consumer

For a matrix inequality put nu_n=a_1 n+a_2 n^2 and

    s_nu=a_1 M(M+1)/2+a_2 M(M+1)(2M+1)/6,
    J_2(f)=3s_nu sum nu_n|x_n|^2
               +3a_d^2|d_T(f)|^2+3a_p^2|S(f)|^2.            (5.1)

Weighted Cauchy--Schwarz and the three-square inequality prove H_2^2<=J_2.
Thus (4.5) supplies the positive finite form

    Omega_-(f)=3|b_T(f)|^2/L+k_0^2|d_T(f)|^2/L^3
                                +3J_2(f)/(5L^5),
    ||R_L A_T f||^2 <= Omega_-(f).                          (5.2)

On the common trace kernel keep the sharper J_2/(5L^5), but do not use that
restriction to claim odd-sector positivity. Section 3 also gives a separately
valid rank-one/L^-3 price. Either can be compared to the old buffered scalar
allowance; no uniform superiority for all T,M,L or vectors is asserted.

Reuse the exact residual construction, in the odd sector, with
N<=M<L, z<c_-(T,N), delta=c_-(T,N)-z, any finite stored Y into P_M-P_N,
X=P_N-Y, U=X^*(A_T-z)X and F_L=(P_L-P_N)(A_T-z)X. The source-bound identity is

    U-S_-(z)=R_Y^*(C_--z)^(-1)R_Y,
    R_Y^*R_Y=F_L^*F_L+(R_L A_T X)^*(R_L A_T X).

It follows, without discarding ANY row N<n<=L, that

    U-[F_L^*F_L+X^*Omega_- X]/delta <= S_-(z) <= U.          (5.3)

The form-domain inverse and congruence are the audited Section 2 of the
low-Schur note, not newly supplied by a finite-matrix identity here.
For a finite block Ahat with proved error epsilon, the lower enclosure is

    Uhat-epsilon X^*X
      -[(1+s)Fhat^*Fhat+(1+1/s)epsilon^2 X^*X
                           +X^*Omega_- X]/delta, s>0.      (5.4)

Only the remote penalty has changed. The full intermediate residual, diagonal
and boundary-series truncation, finite prime/pole rounding, and uncertainty
in z and delta still have to be paid exactly as in the prior enclosure.
No solve Y, spectral value z, or positive sign margin is postulated as existing.

## 6. The infinite output coefficient has its own finite source allowance

Keep j<J in g_n, and let a=2J+1/2. The omitted tail satisfies

    0<=g_n-g_n^(J)<=a^-2+1/(2a)=:q_J.                      (6.1)

Hence the exact functional b_T and its finite-series version b_T^(J) obey

    |b_T(f)-b_T^(J)(f)| <=(2q_J/T)D_1(f)
       <=epsilon_b,src ||f||,
    epsilon_b,src=(2q_J/T)sqrt(M(M+1)(2M+1)/6).             (6.2)

This is additional to the finite-block allowance epsilon; it is not silently
covered by it. With a stored functional bhat and independently proved total
coefficient error epsilon_b, use

    |b_T(f)|^2 <=2|bhat(f)|^2+2epsilon_b^2||f||^2.

Replacing the first term of (5.2) by
6|bhat(f)|^2/L+6epsilon_b^2||f||^2/L gives a finite safe remote price.
The exact pole vector, derivative functional, weights, T-dependent constants,
K and buffer reciprocals must themselves be evaluated exactly or by outward
bounds with their errors included. No interval arithmetic or spectral sign
computation is claimed in this turn. The formulas state how to pay those
costs, not that numerical values have already paid them.

## 7. What remains unsupported, and what was not changed

The primary open arithmetic inequality remains

    L_{T_j,N_j,M_j,L_j,-}(beta_j) >= 0

on the ENTIRE odd head, together with the corresponding even lower-enclosure
condition and a full even trial strictly below beta_j, on an explicitly
unbounded common sequence. Equations (5.3)--(5.4) do not prove this sign.
An output-trace kernel or a pair of trace kernels cannot delete the remaining
odd directions. The derivative-cutoff competitors, crossings and multiplicities
remain in the actual operator and have not been excluded by this calculation.

No windows/cutoffs/solves/margins constituting such a certificate were produced;
there is no fixed-window spectral certificate either. The estimates above
hold for every T>0 and finite M,L in their ranges, but that quantifier is about
the residual bound, not the low-energy sign. No quantified spacing or residual
to an independently proved trial separation is obtained.

The actual finite-prolate family, b_star=-sqrt(3)/2 representative, two additive
trace repairs, reflection defect, normalization denominator, and Fact 6.4
remain separate. In particular b_T is an output trace of a logarithmic odd
polynomial, not H_lambda(0), integral H_lambda, or the even input endpoint trace.
Nothing here proves normalized transform convergence of genuine ground states.
The source's two Section 6.6 obligations remain distinct, as verified on page
30 of the supplied v1 PDF. Its printed Fact 6.4 strip mismatch is not repaired.
The Connes--van Suijlekom real-zero theorem still requires the genuine simple,
isolated, even ground state. No invocation of its conclusion is made here.

Mathlib's exact RiemannHypothesis and the existing repository DirichletGRH are
unchanged and unproved by this increment. No character-dependent operator,
conductor/gamma/root-number comparison, or inducing-character return is supplied.
The hard-cutoff and cone obstructions are not repeated, weakened, or transferred.

## 8. Hostile checks, nearest prior work, and verification

The counterexample (3.8) checks a genuinely different input/output distinction.
The signed functional was also recomputed numerically by integrating the actual
periodic image kernel at the endpoint, separately from the Fourier-row formula,
and adding the finite prime and negative pole terms. This shares the source
kernel with the proof; it is not independent peer review or an independent RH
argument. Tests included nonzero primes, adjacent buffers, negative coefficients, and a
two-mode vector with d_T=0. The analytical inequalities allow complex coefficients;
the executed numerical fixtures used real coefficients.
No favorable sign from a nonnegative hard-cutoff tail was assumed.

Closest primary sources: CCM Section 4 supplies the matrix structure;
Connes--van Suijlekom arXiv:2511.23257v1 Proposition 4.1 and Theorem 6.1 supply
the general distributional setting, not the cofinal signs. Standard Fourier
endpoint extraction and shifted integral tests are not claimed new. The local
low-Schur note supplies the EVEN cancellation and the residual consumer; this
increment supplies the stated ODD output and derivative functionals and prices.

Focused web searches also located the primary rStation report *Full-source
Schur certificates for Weil positivity at support radius two*, paper 60,
26 October 2026. It already reports displacement-rank-two and complete Schur
methods, uses a different parity-basis presentation, and limits its positivity
claim to fixed support. Its computation was NOT_REPLAYED, and no theorem or
certificate from it is a premise here. No priority claim for rank-two methods,
Schur complementation, or endpoint asymptotics is made. Worldwide novelty is
UNASSESSED; a search does not establish absence of an earlier exact estimate.

Actual diagnostics performed in this turn:

- Five symbolic rational identities simplified exactly to zero: first and second
  prime splits, first and second boundary splits, and the pole split.
- With deterministic seed 20261104, 1200 exact rational prime-remainder fixtures,
  1200 exact rational boundary-remainder fixtures, and 1200 exact rational finite
  tail-Gram error fixtures passed. These are finite algebra diagnostics only.
- Exploratory floating-point row checks used T in {0.3,0.8,1,2}, polynomial
  coefficient lists [1], [1,-0.7,0.2,1.3], and (for the second expansion) [2,1].
  L was M, 2M+1, or 50, with high rows L+1,L+2,L+5,L+20,L+100,1000.
  The tested remainders lay below their explicit majorants. Endpoint quadrature
  for the first two lists agreed with (2.3) to below 3e-15 in these runs.
  This is neither interval-certified evidence nor a spectral computation.

New Lean file: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
WeilOddOutputTrace.lean. It reuses the literal prime definitions and proves
candidate finite algebra and source-expression scripts. The infinite series,
continuous endpoint return, whole residual bounds, asymptotic Gram theorem,
and spectral interpretation are NOT fully formalized by that file.

Repository AGENTS.md and the proof-comparison disposition were read. The
layout file returned an empty decoded body at blob
ec7ae0dce9138e0e1f44f36b65d433e0e9897e00; placement follows the actually inspected
current subject directory alongside WeilLowSchurEnclosure.lean. No taxonomy,
root import, dependency pin, existing source, or historical status is modified.
No operational runner, mutable receipt, scheduler, or diagnostic output is
committed to the mathematics repository.

Pins were refreshed: Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612. No Lean, Lake, or elan executable or
verified local canonical skill checkout was found. The canonical
workflows/research/orchestration/skills/noe-proof-automation/SKILL.md returned
404 at grwtsk/noeaaeue/main 53f1622af5dc87a29e20408c25f76bbb55243eb1.
Dependent proof/browser automation and workflow dispatch were not run.

Compilation/elaboration: NOT_RUN. Fresh kernel checking: NOT_RUN.
Transitive axiom audit: NOT_RUN. Independent analytical review: NOT_RUN.
Certified spectral computation: NOT_RUN. Full operator formalization: NOT_DONE.
Novelty: UNASSESSED. Publication revision and source hashes belong in the
exact-source review issue; publication does not upgrade any of these statuses.

The smallest next mathematical obligation is still an actual paid low-Schur
sign on the full odd head and the requisite even space, with a lower trial
threshold on cofinal windows. The new estimate makes the odd remote debit more
directional; it does not manufacture that arithmetic sign.
