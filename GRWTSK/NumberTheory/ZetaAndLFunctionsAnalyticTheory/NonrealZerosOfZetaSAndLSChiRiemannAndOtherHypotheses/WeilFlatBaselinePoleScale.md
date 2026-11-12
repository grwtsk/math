# Flat-baseline scale, overlap-certificate limits, and zeta pole cancellation

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, exact source, and mathematical consumer

This is a written analytical source candidate, not a Lean-checked theorem,
a numerical certificate, or a proof of RH/primitive Dirichlet GRH. Its first
consumer is the explicit penalty in [WeilEffectivePhaseOverlap.md](WeilEffectivePhaseOverlap.md),
WEPO-v1-1 and section 4. The second is the conductor-one source in
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md), section 1.

Inspected main: 69e41c27fb6ba3518728fad8d0629a564bfc68b1; complete root tree:
d5a0ca07aad0159d5c32aa15a7b6f702dec3c917. The overlap note has blob
de0e3e2f1ef9123919be5902cca12bec6153ec11; the Neumann source has blob
a7f0ff2b5ea1d331a2a989b01e024d2883d23785. The gamma-domain/phase source is
[WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md), blob
1af078628992058c0def133e5ffaa9b8c346a72c. Coordination: math#1801,
scope comment 6816027262. Lean pin: leanprover/lean4:v4.34.1; mathlib pin:
d13f23b723b8a846827a245b89c10fc7d3f11612. No import or pin is changed.

The main conclusion is a limitation of the CURRENT explicit certificate, not
of every possible phase estimate. Its guaranteed increment is at most
L*kappa_b(L)/32, independently of the selected jumps and overlap data. For a
fixed conductor the flat comparator has lowest value asymptotic to -exp(L/2).
Thus this certificate, even with an exact baseline and perfect inputs, cannot
prove absolute positivity on all windows. This does not contradict its valid
fixed-window lower bound or the predecessor's qualitative strict phase rise.

Both zeta pole orientations are then retained in an exact recentering. Their
leading contributions cancel the prime main terms on two explicit endpoint
profiles. This is NOT operator-norm cancellation: subtracting a compact operator
from the finite prime-translation operator cannot reduce its norm below the
original prime norm. The full gamma coupling remains indispensable.

All arguments below use the ordinary unconditional prime number theorem,
weighted Schur estimates, elementary translation identities and compactness.
No new zero-free region is used. No novelty is asserted; originality is
UNASSESSED. WFBP-v1-1--6 are local versioned statement identifiers, not Lean
names or accepted frontier claim statuses. Independent analytical review,
formalization, elaboration, kernel replay, transitive axiom audit, numerical
certification and repository-wide validation are NOT_RUN. No proof-execution
automation or external verification is dispatched by this source-only increment.

## 1. Exact source and the distinction between flat and arithmetic operators

Let I_L=(0,L), L>0, and extend all functions by zero. Inner products are
conjugate-linear in the first variable. Write

    T_s f(x)=1_(0<x<L-s) f(x+s), with T_s=0 if s>=L,
    P_L=sum_(n>=2, log n<L) Lambda(n)/sqrt(n) [T_(log n)+T_(log n)^*]. (1)

All prime powers occur through the actual von Mangoldt function Lambda.
The strict endpoint loses only a null overlap. For a fixed integer q>=1 set
P_L^[q] to the same sum restricted to gcd(n,q)=1. This is the ALL-ONE phase
comparator, not the operator of a nonprincipal character. Put

    kappa_b(u)=exp(-b*u)/(1-exp(-2*u)), b in {1/2,3/2},
    Gamma_b(f)=integral_0^infinity kappa_b(u)||f(.+u)-f||_2^2 du,
    A_flat(q,b,c;L): a_flat(f)=c||f||_2^2+Gamma_b(f)-<f,P_L^[q] f>.

The gamma source proves that V_L={f in L2(I_L):Gamma_b(f)<infinity} is the
closed form domain, has a compact embedding into L2, and has C_c^infinity(I_L)
as a form core. The bounded prime term preserves these facts. Let lambda_flat(L)
be the lowest value. Throughout its large-L limit, q,b,c are FIXED.
For the primitive-character comparator take b=a+1/2 and
c=log(q/pi)+psi(1/4+a/2), retaining the actual parity and omitted primes.

For zeta q=1,b=1/2,c=c_zeta=-log(pi)+psi(1/4), the ACTUAL form is

    Q_zeta(f)=c_zeta||f||^2+Gamma_(1/2)(f)-<f,P_L f>+<f,R_L f>, (2)

where R_L has kernel exp((x-y)/2)+exp(-(x-y)/2).
In centered coordinates it is u tensor v+v tensor u, u=exp((x-L/2)/2),
v=exp(-(x-L/2)/2). Its nonzero eigenvalues are L+2sinh(L/2) and
L-2sinh(L/2). Neither pole orientation is deleted.

All source returns remain those of the canonical explicit formula, with
continued L-functions, actual complex centered zeros and multiplicities, and
the signed conjugation-swap pairing. Nothing below replaces that pairing by
an absolute square. For nonreal characters the inverse-character adapter to
primitiveArithmeticValue is unchanged. The new asymptotic concerns an auxiliary
flat comparator, not an asserted off-critical arithmetic zero.

## 2. A universal ceiling on the existing overlap penalty

Use the exact hypotheses and symbols of WEPO-v1-1. For a nonempty selected
set F, g is normalized, |E_j|>=mu_j, g>=m_j on E_j and its translated copy.
Put beta_j=m_j^2 mu_j (called v_j in the predecessor),

    W_*=sum_F w_j beta_j, U_*=sum_F w_j/mu_j,
    Theta=min(1,kappa_b(L)/(8U_*),Delta_* beta_min/(8W_*)),
    B_WEPO(omega)=(Theta/16)sum_F w_j beta_j |1-omega_p^k|^2. (3)

**WFBP-v1-1.** Every admissible choice of this data satisfies

    0<=B_WEPO(omega)<=L*kappa_b(L)/32.                         (4)

Proof. Normalization gives beta_j=m_j^2 mu_j<=integral_(E_j)g^2<=1.
Also mu_j<=L-s_j<L. Since each squared chord is at most four,

    B_WEPO<=Theta W_*/4<=kappa_b(L) W_*/(32 U_*).

The quotient W_*/U_* is a weighted average of beta_j mu_j with nonnegative
weights w_j/mu_j. Every beta_j mu_j<=mu_j<L. This proves (4). QED.

The ceiling is independent of how many primes are selected, of the exact
spectral gap, and of numerical precision. Selecting all jumps does not evade
it. For an empty selection the penalty is zero. The two parity scales are
O(L exp(-L/2)) and O(L exp(-3L/2)), respectively.

This is an UPPER bound on a proved LOWER-CERTIFICATE TERM. It is not an upper
bound on the TRUE rise lambda(omega)-lambda_flat, and cannot be used as one.
It does not invalidate WEPO-v1-1. It tests the power of that particular estimate.

## 3. A sharp unconditional scale for the full prime operator

Use the logarithmic counting functions

    Psi(y)=sum_(n>=2, log n<y) Lambda(n),
    B(y)=sum_(n>=2, log n<y) Lambda(n)/n, y>=0,
    delta(y)=exp(-y)Psi(y)-1,
    M=sup_(y>=0)|delta(y)|,
    eta(Y)=sup_(y>=Y)|delta(y)|.

The ordinary PNT gives eta(Y)->0, while Chebyshev's bound makes M finite and
partial summation gives B(y)=O(1+y). The strict/weak counting endpoint differs
by at most log(exp(y)); its relative size tends to zero. No RH/GRH hypothesis
enters these assertions. A primary explicit source is [4], Theorem 1.1 and
section 1.1. Only psi(x)/x->1 and an O(x) bound are needed here.

Define

    rho(L)=exp(L/2)[eta(L/4)+M exp(-L/4)]+B(L),
    a_L(x)=exp(-x/2), b_L(x)=exp(-(L-x)/2), 0<x<L,
    phi_+(x)=a_L(x)+b_L(x), phi_-(x)=a_L(x)-b_L(x),            (5)

with zero extensions. Then rho(L)=o(exp(L/2)). Direct substitution in the
COMPLETE sum (1) gives, for almost every x in I_L,

    P_L a_L = a_L [Psi(x)+B(L-x)],
    P_L b_L = b_L [Psi(L-x)+B(x)].                            (6)

The null exceptional set consists of the prime-power threshold locations.
In particular the main terms swap the two boundary profiles:

    a_L(x) exp(x)=exp(L/2)b_L(x),
    b_L(x) exp(L-x)=exp(L/2)a_L(x).

The normalized counting error for phi_+ is

    [b_L delta(x)+a_L delta(L-x)]/(a_L+b_L).                  (7)

If both arguments are at least L/4, (7) has modulus at most eta(L/4).
If x<L/4, its coefficient b_L/(a_L+b_L)<=exp(-L/4), while L-x>=L/4.
The other edge is identical. The B-terms have modulus at most B(L)phi_+.
Consequently

    |(P_L-exp(L/2))phi_+|<=rho(L)phi_+,
    |(P_L+exp(L/2))phi_-|<=rho(L)phi_+.                      (8)

The second estimate uses the same unsigned error majorant, not division by
phi_-, which vanishes at the midpoint.

**WFBP-v1-2.** One has

    exp(L/2)-rho(L)<=||P_L||<=exp(L/2)+rho(L),
    ||P_L||/exp(L/2)->1.                                    (9)

Proof. For the upper bound apply weighted Schur directly to the finite shifts.
For each s and positive phi=phi_+,

    2|f(x)||f(x+s)|
      <=[phi(x+s)/phi(x)]|f(x)|^2+[phi(x)/phi(x+s)]|f(x+s)|^2.

Multiply by Lambda(n)/sqrt(n), integrate, and sum. Both directions produce
exactly integral (P_L phi/phi)|f|^2. Thus

    |<f,P_L f>|<=integral (P_L phi/phi)|f|^2
              <=[exp(L/2)+rho(L)]||f||^2.

Since P_L is self-adjoint this bounds its norm. The first estimate in (8),
paired with phi_+, supplies the lower bound in (9). QED.

This weighted estimate does not approximate an atomic prime measure in total
variation. It uses the PNT only to evaluate the operator on a particular positive
weight. All prime powers remain in (6).

For the omitted ramified primes, the elementary contraction bound gives

    ||P_L-P_L^[q]||<=C_q,
    C_q=2 sum_(p|q) log(p)/(sqrt(p)-1), C_1=0.                (10)

This is uniform in L for a FIXED q: it sums every k>=1 in each removed prime.
Also ||P_L^[q]||<=||P_L||, since |P_L^[q] f|<=P_L|f| pointwise.
Therefore ||P_L^[q]||/exp(L/2)->1 as well.

## 4. The flat lowest eigenvalue is asymptotic to -exp(L/2)

The endpoint profiles in (5) have jumps after zero extension. They are not
falsely designated compact smooth functions. They belong to the exact logarithmic
form domain, as the next estimates prove; the established core then transports
the variational bounds to the original smooth tests.

For a_L, E=1-exp(-L) and, for 0<u<L,

    C_(a_L)(u)=exp(-u/2)[1-exp(-(L-u))],
    ||a_L(.+u)-a_L||^2
      =2[1-exp(-u/2)+exp(-L)(exp(u/2)-1)].                  (11)

For L>=1 and u<=1 this is <=2u, using 1-exp(-u/2)<=u/2 and
exp(-L)(exp(u/2)-1)<=u/2. For u>=1 it is <=2E<=2, because the
correlation is nonnegative. The reflected profile b_L satisfies the same bounds.
Thus for either sign

    ||phi_+/- (. + u)-phi_+/-||^2<=8 min(u,1).                (12)

For both b=1/2 and b=3/2, kappa_b(u)<=2/u for u<=1 and
kappa_b(u)<=2exp(-u/2) for u>=1. It follows that

    Gamma_b(phi_+/-)<=48, L>=1.                              (13)

Their exact masses are

    ||phi_+/-||^2=2(1-exp(-L)) +/- 2L exp(-L/2) ->2.          (14)

In particular ||phi_+||^2>1 for L>=1.

**WFBP-v1-3.** For fixed q,b,c,

    c-exp(L/2)-rho(L)
       <=lambda_flat(L)
       <=c+48-exp(L/2)+rho(L)+C_q.                          (15)

Consequently

    lambda_flat(L)/exp(L/2)->-1.                             (16)

Proof. Gamma_b>=0 and (9)-(10) give the lower estimate. Evaluate the exact form
on phi_+/||phi_+||, use (8), (10), (13)-(14), and apply the variational principle
for the upper estimate. The quotient rho(L)/exp(L/2) tends to zero. QED.

Combining (4) and (16), EVEN WITH THE EXACT BASELINE,

    [lambda_flat(L)+B_WEPO(omega)]/exp(L/2)->-1,              (17)

uniformly over phases and all valid overlap selections for the fixed source.
For any sound numerical lower ell_0<=lambda_flat, ell_0+B_WEPO is no larger.
Therefore the precise absolute certificate WEPO equation (22) must fail to be
positive on all sufficiently large windows for each fixed q,b,c. More precise
input data cannot repair that scale mismatch. A stronger inequality or a different
comparison argument is required. Fixed-window positive conclusions remain valid.

This is not a statement that actual primitive Weil forms are eventually negative:
P_L^[q] has all-one phases, not the nonprincipal character's phases, and zeta
requires the poles. Nor is (16) uniform for q depending arbitrarily on L.

## 5. Both zeta pole directions cancel the leading endpoint prime terms

**WFBP-v1-4.** With q=1 and the actual R_L in (2),

    R_L phi_+=[L+2sinh(L/2)]phi_+,
    R_L phi_-=[L-2sinh(L/2)]phi_-.                            (18)

Let e_+/-=phi_+/-/||phi_+/-||. Then

    <e_+,P_L e_+>= exp(L/2)+o(exp(L/2)),
    <e_-,P_L e_->=-exp(L/2)+o(exp(L/2)),
    Q_zeta(e_+/-)/exp(L/2)->0.                               (19)

The same final assertion is uniform on the unit sphere of span{e_+,e_-}.

Proof. Write the centered exponentials u=exp((x-L/2)/2), v=exp(-(x-L/2)/2).
Then ||u||^2=||v||^2=2sinh(L/2), <u,v>=L, and phi_+/- is proportional
to v+/-u. The rank-two pole formula gives (18).
Equation (8) proves the prime assertions; for the minus sign use the norm ratio
||phi_+||/||phi_-||->1 rather than a pointwise quotient. By (13)-(14) the
normalized gamma energies are bounded. Finally

    [L+2sinh(L/2)]-exp(L/2)=L-exp(-L/2),
    [L-2sinh(L/2)]+exp(L/2)=L+exp(-L/2).

After division by exp(L/2), all remaining terms tend to zero. Reflection about
L/2 commutes with Gamma_b, P_L and R_L. The two normalized profiles are of
opposite parity, so all their form cross terms vanish. This proves the uniform
two-dimensional assertion. QED.

In the even direction the poles cancel a large negative pole-free value.
In the odd direction the NEGATIVE pole contribution cancels a large positive
prime contribution. Dropping either orientation changes the leading scale.
Equation (19) gives neither the sign nor the absolute smallness of Q_zeta(e_+/-).
An error o(exp(L/2)) can still grow, have either sign, and overwhelm constants.

## 6. Source-exact recentering before inequalities

For finite L define the bounded integral operators

    C_+(x,y)=exp(|x-y|/2), C_-(x,y)=exp(-|x-y|/2),
    E_L=P_L-C_+.

**WFBP-v1-5.** The actual zeta source is exactly

    R_L=C_++C_-,
    Q_zeta(f)=c_zeta||f||^2+Gamma_(1/2)(f)+<f,C_- f>-<f,E_L f>. (20)

Moreover C_- is positive semidefinite, with zero-extension Fourier formula

    <f,C_- f>=(1/(2pi))integral_R |F_f(xi)|^2/(xi^2+1/4) dxi. (21)

Proof. The first kernel identity is elementary. The Fourier transform of
exp(-|u|/2) is 1/(xi^2+1/4), obtained by integrating the two half-lines.
Plancherel proves (21), and substitution in (2) proves (20). QED.

The discrepancy still uses the exact primes. If
C_f(s)=integral conj(f(x))f(x+s)dx, put S_f(u)=C_f(u)+C_f(-u).
For compact smooth f the exact Stieltjes form is

    <f,E_L f>=integral_(1,e^L) x^(-1/2)S_f(log x) [d psi(x)-dx]. (22)

All prime powers below e^L occur; the endpoint contributes zero since C_f(L)=0.
Writing E_psi(x)=psi(x)-x and integrating by parts gives

    <f,E_L f>=2||f||^2
       -integral_1^(e^L) E_psi(x) d/dx[x^(-1/2)S_f(log x)] dx. (23)

The lower boundary term 2||f||^2 is REQUIRED: E_psi(1)=-1 and S_f(0)=2||f||^2.
It must not be deleted in the name of centering. Equations (22)-(23) can be
checked on L<log2, where the prime sum is empty and their value is -<f,C_+f>.

Thus positivity would require control of this SAME discrepancy against the
actual gamma energy and scalar term. Positivity of C_- alone supplies no such
comparison, and c_zeta is not made nonnegative. PNT with absolute values in
(23) does not give the requisite sign or uniform gamma-form estimate.

## 7. Compact subtraction does not cancel the unrestricted prime norm

**WFBP-v1-6.** For every fixed L and every compact operator K on L2(I_L),

    ||P_L-K||>=||P_L||.                                      (24)

In particular

    ||P_L-R_L||>=||P_L||,
    ||E_L||=||P_L-C_+||>=||P_L||~exp(L/2).                    (25)

Proof. There exist tau_j->+infinity with exp(i tau_j log p)->1 simultaneously
for all finitely many active primes. A direct recurrence proof needs no
independence assumption: partition their finite phase torus into cells of
diameter <1/j. One cell contains infinitely many points of the positive-integer
orbit. Choose two visits with difference tau_j>j. The quotient phases tend to
one. The prime-power phases then converge to one as well.

For M_tau f(x)=exp(i tau x)f(x), direct substitution gives

    M_tau^* T_s M_tau=exp(i tau s)T_s,
    ||M_(tau_j)^* P_L M_(tau_j)-P_L||->0.                    (26)

For any fixed f,h in L2(I_L), conj(h)f is integrable, so the Riemann-Lebesgue
lemma implies M_(tau_j)f converges weakly to zero. Compactness gives
||K M_(tau_j)f||->0. Hence

    <M_(tau_j)f,(P_L-K)M_(tau_j)f> -> <f,P_L f>.             (27)

The top of the numerical range of P_L equals its norm: its nonnegative shift
weights imply |<f,P_L f>|<=<|f|,P_L|f|>. Choose normalized f with this latter
Rayleigh value arbitrarily close to ||P_L||, then use (27). This proves (24).
R_L is finite rank. C_+ has a continuous kernel on the compact square and is
Hilbert-Schmidt, so (25) follows. QED.

The conclusion is consistent with (19): that equation concerns a SPECIFIC
moving two-dimensional test space, not all unit L2 vectors. The large modulations
in (26) can have high gamma energy. The predecessor proves for each fixed smooth
nonzero f that Gamma_b(M_tau f)=||f||^2 log|tau|+O_(b,f)(1).
Thus (24) is not a negative-value theorem for the full gamma-coupled source.
It instead rules out an unrestricted operator-norm approximation P_L=R_L+o(exp(L/2))
or P_L=C_++o(exp(L/2)) as a way to complete the positivity argument.

## 8. Research disposition and falsification boundaries

The concrete conclusion is that the exact current overlap certificate cannot
be the all-scale positivity mechanism for a fixed primitive conductor. Its
valid lower gain is at most O(L exp(-bL)), whereas its own flat baseline is
-exp(L/2)(1+o(1)). This conclusion already grants perfect ground-state data and
perfect eigenvalue enclosures; the bottleneck is the inequality, not precision.

A replacement must retain cancellation BEFORE taking unrestricted norms and
must control the actual low-energy test domain. Equation (20) provides a
pole-inclusive arithmetic starting point for zeta. The precise unresolved
requirement is an all-window gamma-form estimate for E_L with its signed
prime-minus-main source, strong enough for the unchanged scalar in (20).
The current source does not prove that estimate, and does not replace it by
an assumption about real zeros or a positive model operator.

Additional boundaries checked in the written argument:

- P_L and P_L^[q] are auxiliary only when phases or poles differ from the actual
  source. Their negative flat lowest value does not refute RH/GRH.
- Total support length is L, so the scale here is exp(L/2), not exp(L) from a
  silently different radius convention.
- The shift inventory includes prime powers, not just prime locations.
- The strict prime cutoff is harmless only because its overlap is a null set.
- Edge weights phi_+/- are in the gamma domain but not in H1 after zero extension.
  Estimates (11)-(13) and the previously proved smooth core supply the return.
- No pointwise ratio by phi_- is taken at its midpoint zero.
- Ramification omission costs are bounded for fixed q, not uniformly for an
  arbitrary q growing with L. The conductor scalar is not suppressed.
- In (4), a ceiling on a lower certificate is not a ceiling on the true gain.
- The Stieltjes lower boundary in (23) is nonzero and is retained.
- The exact positive kernel C_- is only one term of the signed arithmetic form.
- Recurrence and compactness prove (24) for any compact K; a finite Galerkin
  coincidence cannot override it.
- A finite computation or a fixed-window successful certificate supplies none
  of the missing universally quantified windows, characters or tolerances.

No new certificate was computed, no actual off-critical arithmetic zero was
found, and no improved zero-free exponent or RH/GRH proof is claimed.
The claims above are written analytical source candidates. No numerical
experiment, formal elaboration, kernel audit or independent review was run.
Local file creation and checksums concern source identity only. The publication
scope is one new exposition file; existing source and evidence statuses remain.

## 9. References and individual statement correspondence

[1] grwtsk contributors, WeilEffectivePhaseOverlap.md, exact source and blob
listed above. WEPO-v1-1 supplies the particular penalty audited in WFBP-v1-1.
Its normalized overlap hypotheses alone imply the new ceiling; no defect in
its fixed-window lower-bound proof is alleged. WEPO section 4 is the absolute
certificate consumer shown by WFBP-v1-3 to be insufficient on large windows.

[2] grwtsk contributors, WeilGammaPhaseCoercivity.md, exact blob above.
WGPC-v1-1 supplies the actual logarithmic form domain and smooth core used
for endpoint profiles. WGPC-v1-2 supplies the normalized ground state for
WEPO inputs. Its positivity and compactness are not an RH assumption.
WeilJointPrimePhaseBounds.md supplies the prior phase-modulation comparison;
WFBP-v1-6 uses an elementary recurrence proof and a compact-perturbation test.

[3] grwtsk contributors, PrimitiveWeilNeumannSchur.md, exact blob above,
section 1 (full source, both poles and character orientation), sections 4,6-8
(domains and complete-tail consumers). WFBP-v1-4--5 retain this arithmetic
source; there is no new same-character convention for complex characters.

[4] Daniel R. Johnston and Andrew Yang, Some explicit estimates for the error
term in the prime number theorem, arXiv:2204.01980v2, section 1.1 and Theorem 1.1.
Primary source for the unconditional psi-PNT input. The weighted translation
identity and operator asymptotic WFBP-v1-2--3 are proved here, not attributed
to that paper. No particular numerical threshold or computational verification
from the paper is rerun. https://arxiv.org/html/2204.01980v2

[5] Masatoshi Suzuki, Weil's quadratic form via the screw function, supplied
arXiv:2606.09096v3 edition, version of 24 September 2026, page 1 and section 1.1.
Comparator for the full pole-inclusive zeta form and the distinction between
local operators and universal Weil positivity. No conditional real-zero
spectral-convergence theorem is used. The original test/source conventions
are returned through [3], not replaced by an ordinate projection.

Statement map: WFBP-v1-1 caps the previous explicit penalty; WFBP-v1-2 gives
sharp prime-operator norm scale; WFBP-v1-3 proves the flat-baseline asymptotic
and failure of that particular all-window certificate; WFBP-v1-4 retains both
pole cancellations on explicit profiles; WFBP-v1-5 gives exact discrepancy
recentring with its lower boundary; WFBP-v1-6 rules out compact-subtraction
operator-norm cancellation. No Lean declaration map is claimed for these new
written statements. Prior-art comparison is bounded, not an exhaustive novelty
search. All unperformed verification levels remain NOT_RUN.
