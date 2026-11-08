/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Consumed original math source:901c989b9899251f08b3fe8e87bae731fb465e3b.
WRITTEN_PROOFS_COMPLETE_AT_THEIR_STATED_SCOPE; ORIGINAL_J3_OPEN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeFiniteAnnulus
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage

/-!
# The actual conductor-three continuous kernel and physical Green pencil

Local attribution: grwtsk contributors. Source context: grwtsk/math901c989b with the original chi3 source core unchanged. Publication tree was refreshed through12e3471d075669ca7ff09c41b8df7e5ab64f18fc; its added gamma-floor lemmas leave these source definitions unchanged. Primary paper read: Suzuki, *Weil's quadratic form via the screw function*, arXiv2606.09096v1 PDF, June9version, Sections8.1,8.2,8.5, equations8.2--8.4. The HTML address labelledv1 currently displays a different manuscript date, so only the PDFv1 is used here. The scalar guard has been replayed independently in exact rational arithmetic. No Noe job was dispatched. Universal analytic results below are WRITTEN proofs; Lean/kernel/axiom audit NOT_RUN.

Primary PDF: https://arxiv.org/pdf/2606.09096v1 . Suzuki's objects in this paper are zeta objects. The conductor-three construction below is derived from the actual local source; it is not obtained by silently importing a zeta pole or assuming an arithmetic positivity theorem.

## 1. Exact source and the derivative carrier

Fix a4 and I=[-a,a]. The character is primitive real odd chi3=(0,1,-1) modulo3, conductor3 and gamma parity1, with NO principal pole. The original source has all458 unramified prime powers n=p^e<=2980,p!=3. Put r_n=log n and w_n=chi3(n)log(p)/sqrt(n), retaining their actual signs. Set

    kappa(r)=exp(-3r/2)/(1-exp(-2r)), r>0,
    c_chi=log(3/pi)+psi(3/4).

For a zero-extended physical test f in H0^1(I), define

    E(f)=integral_R |f|^2dt,
    C_f(r)=integral_R f(t+r)conjugate(f(t))dt,
    Q4(f)=c_chi E+integral_0^infty kappa(r)||tau_r f-f||_2^2dr
                 -2sum_n w_n Re C_f(r_n).                    (1)

This is exactly the source gamma/correlation form for original radius4, with positive-angular Fourier measure dxi/(2pi). The same identity holds with the negative-angular convention because its complete symbol is even. It extends from compact smooth tests to H0^1 by continuity: the gamma integral has majorant min(r^2||f'||^2,4E), integrable at zero and infinity, and the finite correlations are bounded byE. The extension does NOT assert that a nonodd local test satisfies an originally odd stage lower bound.

Let V be the odd subspace of H0^1(I;C), and

    U={u in L2(I;C):u even almost everywhere and integral_Iu=0}.

Ordinary derivative D:V->U is bijective. Its inverse is

    (Tu)(x)=integral_(-a)^x u(t)dt.                            (2)

Indeed integralu=0 gives both zero boundary traces, evenu gives oddTu, and(Tu)'=u. Conversely derivative of oddH0^1 is even with integralzero. Suzuki uses an additional scalar factori inD; multiplication ofu byi is unitary and changes none of the quadratic identities. Here D is stated explicitly to avoid a convention change.

All Hilbert norms below are the ORIGINAL physical LebesgueL2 norms. In particular ||u||_2=||f'||_2 is NOT identified with ||f||_2.

## 2. Construct the genuine continuous chi3 kernel

Define, for all realt,

    g4(t)=-c_chi|t|/2
          -integral_0^infty kappa(r)min(|t|,r)dr
          +sum_(n=p^e<=2980,p!=3) w_n (|t|-r_n)_+.             (3)

The458-term sum is fixed at the ACTUAL radius-four source. The integral converges absolutely because min(|t|,r)<=r and integral kappa(r)r dr<infinity. Dominated convergence proves g4 continuous, real and even, and g4(0)=0. Hence g4(x-y) and its centered screw kernel

    C4(x,y)=g4(x-y)-g4(x)-g4(-y)+g4(0)

are genuine continuous kernels on I squared. Their positivity is NOT asserted.

The following elementary distribution identities prove the source return:

    -(-c_chi|t|/2)''=c_chi delta0,
    -[-min(|t|,r)]''=2delta0-delta_r-delta_(-r),
    -[(|t|-r)_+]''=-delta_r-delta_(-r).                        (4)

For a smooth zero-boundary f, integrating twice by parts gives

    integral_I integral_I h(x-y) f'(y)conjugate(f'(x))dydx
       =pairing(-h'',C_f).

Apply(4) term by term in(3). The constant gives c_chiE, the min kernel gives exactly ||tau_r f-f||^2, and each hinge gives-2w_n ReC_f(r_n). Interchanging the full r integral is justified absolutely by ||u||_1^2 integral kappa(r)r dr<infinity. Density in H0^1 and the continuity bound after(1) prove for EVERYf inV

    Q4(f)=integral_I integral_I g4(x-y)u(y)conjugate(u(x))dydx,
    u=Df.                                                    (5)

Let P_U be the ordinaryL2 orthogonal projection ontoU and let

    G_chi=P_U K_(g4) P_U restrictedtoU.

This is bounded compact selfadjoint, with domainALLU; compactness follows from the continuous kernel on a finite square. Since integralu=0, the g4(x),g4(-y),g4(0) terms in the centered screw kernel vanish in its quadratic form. Thus either continuous kernel gives the SAME compressed operator. Projection is essential: the uncompressed convolution need not have mean-zero output.

This constructs the actual chi3 instance unconditionally, including every arithmetic sign and the infinite gamma contribution. If a filtered test has larger physical support, its prime inventory must be recomputed. In particular a support crossing log(2999)/2 requires a new hinge; this458-atom source is not silently transported there.

## 3. Exact physical norm through the inverse Neumann Green kernel

For u inU, Fubini applied to(2) gives

    ||Tu||_2^2=integral_I integral_I [a-max(x,y)]u(y)conjugate(u(x))dydx.

Define

    N_a(x,y)=(x^2+y^2)/(4a)-|x-y|/2+a/6,
    N_4(x,y)=(x^2+y^2)/16-|x-y|/2+2/3.                      (6)

The difference between a-max(x,y) andN_a is a sum of a function ofx, a function ofy and a constant. Its quadratic form on mean-zero inputs vanishes. Therefore

    E(f)=<N_a u,u>, u=Df.                                   (7)

Independently, integral_I N_a(x,y)dx=0, its x derivative vanishes at both endpoints, and -partial_x^2N_a=delta_y-1/(2a). Hence N_a is EXACTLY the inverse Neumann Laplacian on mean-zeroL2; it preserves evenness and is positive, compact and injective onU. Its positivity is a reference-norm fact, not arithmetic positivity.

Equations(5),(7) yield the exact desired physical-norm statement

    Q4(f)>=-epsilon E(f) for everyoriginalrealodd admissiblef
       iff G_chi+epsilon N_a is positive semidefinite onU.    (8)

Proof of both directions: derivative images of oddcompactC-infinity tests are dense inU. For example approximate an even mean-zero u by even compact smooth functions, correcting their means by a fixed even compact smooth bump; their primitives are oddcompact smooth tests. Since G_chi andN_a are bounded, positivity on that dense core extends to allU. Conversely(8) immediately gives(1) on every original admissible test. Real positivity and complexified positivity coincide because the kernels are real selfadjoint and the form of v+iw splits into the sum of its real and imaginary forms. This complexifies the TEST carrier only; it does not change the character sector.

At epsilon1/8 this is the actual radius-four target. No positivity premise is hidden in the construction ofG_chi. The form identity A=D*G_chiD is valid onH0^1; a full unbounded-operator domain/spectrum identification would require its own closed-form/core argument and is not needed for(8).

## 4. An actual positive entire gamma-tail law

For everyr>0,

    kappa(r)=sum_(m>=0)exp(-alpha_m r), alpha_m=2m+3/2.

Tonelli and elementary integration give the EXACT uniformly convergent representation

    g_gamma(t)=-c_chi|t|/2
               -sum_(m>=0)(1-exp(-alpha_m|t|))/alpha_m^2.     (9)

Its ENTIRE unobserved tail afterM terms is bounded in absolute value by1/(4M+1), uniformly int. Indeed

    1/alpha_m^2 < 1/[(alpha_m-1)(alpha_m+1)]
      =1/2[1/(alpha_m-1)-1/(alpha_m+1)],

and the sum telescopes. This is a genuine infinite-series approximation law, not finite passing evidence.

Let Q4,M use the firstM gamma summands, the SAME c_chi, and ALL458 signed prime hinges. Its exact omitted source has Fourier multiplier

    R_M(xi)=2sum_(m>=M) xi^2/[alpha_m(alpha_m^2+xi^2)]>=0.     (10)

To check the sign directly, the distributional source of -(1-exp(-alpha|t|))/alpha^2 is2delta0/alpha-exp(-alpha|t|), whose Fourier transform is2xi^2/[alpha(alpha^2+xi^2)]. Thus positivity here is PROVED for the gamma source; it is not inferred from coverage weights or transferred to the signed Euler sum.

Consequently, for EVERY physicalH0^1 test,

    0<=Q4(f)-Q4,M(f)
      =integral_R R_M(xi)|F(xi)|^2dxi/(2pi)
      <=2/(4M+1)^2 *||f'||_2^2.                             (11)

The last inequality follows from R_M<=2xi^2 sum_(m>=M)alpha_m^-3 and

    alpha_m^-3 <1/4[(alpha_m-1)^(-2)-(alpha_m+1)^(-2)],

which gives sum alpha_m^-3<=1/(4M+1)^2. In particular Q4,M increases toQ4 for every fixed test. Formula(11) retains the derivative norm explicitly and does NOT turn it into a physicalE error. For any fixedM the multiplierR_M grows without bound at highfrequency, even though the integrated kernel tail in(9) is uniformly small.

This is a new useful lower-approximation theorem: a valid full-carrier lower bound forQ4,M would transfer toQ4. It does not assert such a lower bound or permit exchanging forallf existsM with existsM forallf.

## 5. Exact point where preconditioning restores the physical tail

The complete orthonormal basis ofU is

    eta_k(x)=cos(k*pi*x/a)/sqrt(a), k>=1,
    omega_k=k*pi/a, mu_k=omega_k^(-2).

The excludedk0 mode is exactly the mean-zero constraint. One has N_a eta_k=mu_k eta_k. The corresponding physical normalized odd basis is f_k=sin(omega_kx)/sqrt(a), with Df_k=omega_k eta_k. Therefore EXACTLY

    A_nm=omega_n omega_m G_nm,
    [N^(-1/2)(G+epsilon N)N^(-1/2)]_nm
                  =A_nm+epsilon delta_nm.                  (12)

Initially(12) is an identity on finite expansions and then on its specified form domain. The inverse square roots are unbounded; their domains must not be erased. Multiplication by both frequencies cancels the two integrations that made the kernel continuous.

An ordinary derivative-carrier bound G>=-delta I gives Q4(f)>=-delta||f'||^2, NOT a physical bound-deltaE. Poincare has the wrong direction for the proposed negative-norm exchange. On a head throughkM the conversion costs omega_M^2delta; on the infinite tail there is no finite uniform conversion because mu_k tends0.

Here is a concrete obstruction within the SAME even continuous convolution/screw schema. Fix c>epsilon and k beyond any tested head and define

    h_k(t)=c mu_k/a *[1-cos(omega_k t)].

Then h_k is real even continuous, h_k(0)=0, and ||h_k||_infinity<=2c mu_k/a tends0. OnU its compressed integral operator is exactly

    E_k=-c mu_k eta_k tensor eta_k.

All finite heads belowk are identicallyzero and hence positive semidefinite. Nevertheless

    <(E_k+epsilon N)eta_k,eta_k>=(epsilon-c)mu_k<0,

and its physical quotient is-c. Take c1/4,epsilon1/8 for the stated target. The physical sine primitive is approximable by original oddcompact smooth tests inH0^1, preserving the strict failure for this counterkernel. This is NOT a counterexample for the actualchi3 kernel. It proves that arbitrarily accurateC0 kernel approximation plus finiteG positivity cannot certify(8).

A sufficient approximation interface is instead

    |<E u,u>|<=delta<N u,u> for EVERYu inU.                   (13)

For example if the integrated kernel errorh has a twice differentiable source with ||K_(-h'')||_physicalL2<=delta, integration by parts proves(13). The crude condition2a sup|h''|<=delta suffices by the row-sum bound. But hinge locations, cusp singularities and their entire tails must be preserved exactly or estimated in this SOURCE-relative way. A small shift in a hinge is small inC0 and need not be small as a physical translation operator at unbounded frequency.

The separately written original unsigned bound P4<=58E and gamma lower A(xi)>=log|xi|-.75 still yield the same high cutoff when used in(12); neither sign is inferred from this kernel construction. Nothing in the change of carrier improves that inequality. A finite gamma truncation has highfrequency level

    c_chi+2sum_(m<M)1/alpha_m=log(3/pi)+psi(M+3/4),

by digamma recurrence, growing onlylogM. To make that level dominate58 by this unsigned argument again requires exponentially largeM. This is a limitation of that retained argument, not a proof that every source-specific continuous-kernel method must use that cutoff.

## 6. Actual heat/source-return interface and evidence boundary

The derivative carrier has the genuine Neumann spectral semigroup H_t eta_k=exp(-t omega_k^2)eta_k for t>=0, with nonnegative selfadjoint generator-Delta_N on even mean-zero NeumannH2 domain. Everyk>=1 is retained. Foru=sum u_k eta_k the exact physical tail afterJ is sum_(k>J)mu_k|u_k|^2, and after heat it is sum_(k>J)mu_k exp(-2t omega_k^2)|u_k|^2. No unobserved tail is set tozero.

Its exact source-return is f_t=T H_tu, Df_t=H_tu, E(f_t)=<N H_tu,H_tu>, Q4(f_t)=<G H_tu,H_tu>. Strong convergenceH_tu->u gives f_t->f inH0^1 and Q4(f_t)->Q4(f), by the continuity proved after(1). Heat inputs need not remain native compactC2 after zero extension; the justified carrier isH0^1, with approximation by oddcompact smooth tests as already used in(8). Positive heat weights do not prove G+epsilonN positive.

Representable proof data consist of finite source parameters, the exact458-atom description, finite expression syntax for(3),(6),(9), their bound variablesk,m, all retained convergence/tail laws and separate written/kernel statuses. Reuse the existing dependent finite-description codec on the sigma type of source/parameter-indexed packets. Its decode-after-encode theorem recovers every dependent field; symbolic real variables are retained as bound syntax rather than encoded as arbitrary real values. No coding of all semanticL2 functions, no loss of the infinite tail, and no manufactured sign certificate are claimed.

The proved advance is the unconditioned actualchi3 kernel construction, exact physical Green-norm return, positive full gamma-tail law, and a sharp certification boundary. What remains forj3 is source-specific positivity of G_chi+N/8 onALLU, or a rigorously source-relative complete head/mixed/tail argument for it. Numerical positivity of finiteG matrices is not that missing lemma.


## 6a. A constructive physical-energy tail return after actual heat

The derivative error in(11) CAN be converted to a uniform original
physical-energy error after a justified heat regularization. This
supplies a positive source-return lemma rather than another sign
interface. Let H_odd be the physical odd subspace ofL2[-4,4]. Its
complete orthonormal basis is f_k=sin(k*pi*x/4)/2, k>=1. Put
lambda_k=(k*pi/4)^2. Define for EVERY f inH_odd and t>=0

 S_t f=sum_(k>=1)exp(-t*lambda_k)<f,f_k>f_k.

This is the actual odd Dirichlet spectral heat: selfadjoint positive
contraction, S_0=I, S_t S_s=S_(t+s), strong continuity at0, and
nonnegative generator -Delta_D with domain oddH2 intersectH0^1.
All assertions follow directly from the COMPLETE sine expansion,
Parseval and dominated convergence. Outputs are zero-extended from
this SAME physical interval; there is no Gaussian support leakage,
so the source retains exactly the original458 atoms. On original oddH0^1 inputs,
D S_t=H_t D, hence this is exactly the physical primitive of the
Neumann heat already constructed, not a new source normalization.

For t>0 every S_t f lies in oddH0^1. The elementary inequality
x exp(-x)<=1 forx>=0 (from exp(x)>=x) gives

 ||(S_t f)'||_2^2
   =sum_(k>=1)lambda_k exp(-2t*lambda_k)|<f,f_k>|^2
   <=E(f)/(2t).

Apply(11) to this ACTUAL physical heat output. For ALL oddL2 f,
ALL t>0 and ALL integersM>=0 the whole omitted gamma source obeys

 0<=Q4(S_t f)-Q4,M(S_t f)
       <= E(f)/[t*(4M+1)^2].                                (15)

The right side uses the INITIAL physical energy E(f), not E(S_t f)
or the derivative norm. No uniform inverse heat bound is used. Every
signed Euler atom is unchanged in both sides. The heat outputs need
not be native compactC2 after zero extension, so(15) uses the exact
H0^1 source extension proved in Section1; oddcompact smooth density
returns it to native tests whenever a native test is required.

For each realt>0 take the genuine integerM(t)=ceil(1/t). Since
M(t)>=1/t, the error in(15) is at most(t/16)E(f). All ratesk and
all gamma indicesm>=M(t) are retained in this proved bound. For any
fixed original oddH0^1 f, sine-series dominated convergence also gives
S_t f->f inH0^1 as t decreases tozero. The finite translations and
the gamma continuity bound after(1) therefore imply

 Q4(S_t f)->Q4(f), E(S_t f)->E(f), and
 Q4,M(t)(S_t f)->Q4(f).                                    (16)

This is a complete source-return law with an explicit physical-error
budget tendingzero, valid without an arithmetic sign assumption.
Only the gamma truncation error(15) is uniform in the inputL2
energy. The heat bias Q4(S_t f)-Q4(f) tendszero for each FIXED
H0^1 input; no uniformL2 bound for that bias is claimed.
There is no interchange of a fixed-M limit with the full series:
M(t) increases cofinally and(15) pays its ENTIRE unobserved tail.
Section7's fixed truncation obstruction therefore does not contradict
(15)--(16). Positive heat only regularizes the domain and controls the
error; it does not supply a lower sign for the truncated heat forms.

The next exact SIGN lemma on this alternative return would be
 Q4,M(t)(S_t f)>=-(1/8+eta(t))*E(f)
for ALL original f, on some t tendingzero, witheta(t)->0 justified
uniformly in the physical INPUT norm. Then(16) would return thej3
bound. That sign is OPEN. A bound inE(S_t f) is different and must
not be substituted silently. The unconditional advance discharged
here is(15)--(16), not this desired lower bound.

## 6b. A proved physical head, mixed and ENTIRE tail approximation

For each fixed finiteM the actual partial source is a bounded
selfadjoint operator A_M on the physical oddL2 carrier. Indeed its
single gamma multiplier is2xi^2/[alpha_m(alpha_m^2+xi^2)], between0
and2/alpha_m. Compressing from the whole-line zero extension preserves
this bound and parity. The finite signed translations have norm at
most A=sum_(all458)2log(p)/sqrt(n). Thus a genuine bound is

 ||A_M||<=B_M:=|c_chi|+2sum_(m<M)1/alpha_m+A.

Let P_N be the orthogonal physical projection onto sine modesk1..N,
includingN0 withP_0=0. S_t commutes withP_N, and
 ||(I-P_N)S_t||=exp(-t*lambda_(N+1)).
The exact decomposition
 K-P_NKP_N=(I-P_N)K+P_NK(I-P_N), K=S_t A_M S_t,
therefore proves, with BOTH mixed terms and the ENTIRE physical tail,

 ||S_t A_M S_t-P_NS_t A_M S_tP_N||
          <=2B_M exp(-t*lambda_(N+1)).                     (17)

The norm in(17) is the ordinary PHYSICAL L2 operator norm. The actual
finite head entries are
 exp[-t*(lambda_n+lambda_m)]*omega_n*omega_m*(G_M)_nm,
whereG_M is compressed from the literal partialSourceKernel below.
The two frequencies must be included: raw continuous-kernel entries
on the derivative carrier are not this physical matrix.

Let H_tMN(f) be that finite-head quadratic form in the firstN physical
sine coefficients of the ORIGINAL inputf. Equations(15),(17) give,
for EVERY odd physicalL2f, EVERY t>0 and ALL naturalM,N,

 |Q4(S_t f)-H_tMN(f)|
  <=[1/(t*(4M+1)^2)+2B_M exp(-t*lambda_(N+1))]*E(f).        (18)

This is an actual source-bound quantitative approximation theorem,
not a claim that a certificate format has supplied the sign. Every
source atom, the full gamma complement, physical basis complement
and mixed terms have been paid explicitly.

For example choose integern>=1, t=1/n, M=N=n. Sincealpha_m>=3/2,
B_n<=C+4n/3 withC=|c_chi|+A, andlambda_(n+1)>=(pi^2/16)*n^2.
The entire error in(18) is at most
 delta_n=1/(16n)+2(C+4n/3)exp[-(pi^2/16)*n],
which tendszero by the elementary exponential-versus-linear limit.
Together with(16), for EVERY fixed original oddH0^1 inputf,

       H_(1/n,n,n)(f) -> Q4(f).                            (19)

Only the source comparison(18) is uniform in physical inputenergy;
the separate heat bias in(19) is the fixed-H0^1 limit already proved.
No finite passing collection of these actual heads yields the
universal source sign. A sufficient next sign lemma would bound the
ENTIRE cofinal family of these physical heads by
 -(1/8+eta_n)*E(f), eta_n->0, for all originalf. That lemma is OPEN.
Neither(17), heat positivity nor the lossless codec can prove it.

## 7. Actual-source obstruction to a finite gamma-only replacement

This theorem concerns the actual458-atom chi3 source, not the arbitrary
counterkernel of Section5. Let Mmax=10^19 and Q4,M be exactly the lower
approximation from Section4. There EXISTS a nonzero original real odd
compact smooth radius-four admissible f such that SIMULTANEOUSLY for
EVERY integer0<=M<=Mmax,

    Q4,M(f)<-E(f)/2<-E(f)/8.                                 (14)

All458 prime atoms and the original c_chi are retained in Q4,M. Thus
finite gamma truncation at any such M cannot itself have the target
lower bound on the full physical carrier. This does NOT disprove the
bound for Q4. The positive omitted gamma source cannot be discarded
uniformly in the physical norm.

Here is a complete proof, including the required phase return. Write
P_+(v)=2sum_n |w_n| Re C_v(r_n). For g=1_[-4,4], E(g)=8 and
C_g(r)=8-r for0<=r<8. Hence exactly

    P_+(g)/E(g)=2sum_(all458) log(p)/sqrt(n)*(1-log(n)/8).

Outward rational intervals for EVERY term give the enclosure
 [23124229533263/500000000000,4624845906699/100000000000],
whose lower endpoint is>46. The entire retained458-row certificate
uses the original prime/power tags,24-term atanh log enclosures,
integer square-root intervals on the10^12 grid and exact outward
summation on the10^12 price grid. It includes every rounding error;
no independent prime phase is substituted here. Each real translation
is an L2 isometry, so this finite unsigned P_+ is a bounded quadratic
form. There is an explicit smooth profile. Put eps=10^(-12), b(s)=0 for
s<=0 and b(s)=exp(-1/s) for s>0, and
 theta(s)=b(s)/(b(s)+b(1-s)),
 v(t)=1-theta((|t|-(4-2eps))/eps).
The denominator is always positive; theta is smooth and flat at0,1.
Since v is constant near0, the absolute value introduces no singularity.
Thus v is real even compact smooth, equals1 on|t|<=4-2eps, and
vanishes on|t|>=4-eps. It is nonzero and0<=v<=1. In particular
E(v)<=8 and ||v-g||_2<=2sqrt(eps). The norm of P_+ as an L2
quadratic form is at most A=sum_(458)2log(p)/sqrt(n)<458*16=7328,
because every log(p)<8 and sqrt(n)>1. Consequently
 |P_+(v)-P_+(g)|<=A||v-g||_2(||v||_2+||g||_2)
                 <12A sqrt(eps)<1.
It follows that P_+(v)>367>45E(v). This gives the genuine profile
without an unknown approximation parameter or a positivity premise.

For all positive real x, Binet's formula on the positive real axis is

 psi(x)=log(x)-1/(2x)
        -2 integral_0^infinity t/[(t^2+x^2)(exp(2pi t)-1)]dt
        <log(x).

Digamma recurrence, with alpha_m=2m+3/2, therefore yields

 c_chi+2sum_(m<M)1/alpha_m
   =log(3/pi)+psi(M+3/4)<log(M+1).

Here log(3/pi)<0 because pi>3. The exact positive180-term Taylor
partial sum for exp(44) is>10^19+1; consequently the displayed finite
high-carrier level is<44 for EVERY M<=Mmax. The full exponential
tail is positive, so no unproved exponential approximation is used.

It remains to tie all prime phases to an ACTUAL real carrier. There
are428 distinct unramified primes p<=2980. The numbers log(p) are
linearly independent over Q: an integer relation exponentiates to a
product of prime powers equal to1, so every exponent iszero by unique
factorization. Put z_p(c)=exp(i*c*log(p)), and target b_p=chi3(p) in
{1,-1}. For an integer L>=1 define the NONNEGATIVE trigonometric
polynomial

    W_L(c)=product_p |(1+b_p*z_p(c))/2|^(2L).

By the binomial theorem its Fourier constant coefficient is
b_L^428 where b_L=binom(2L,L)/4^L. There are no other zero-frequency
terms, by the proved integer independence. Integrating each of the
FINITELY MANY Fourier exponentials over[C0,C0+H] and lettingH tend
infinity proves that the time average of W_L tends b_L^428>0, for
EVERY C0. Since the central binomial coefficient is maximal among
2L+1 coefficients of(1+z)^(2L), b_L>=1/(2L+1).

If any |z_p(c)-b_p|>=epsilon, then
 W_L(c)<=(1-epsilon^2/4)^L.
For fixed0<epsilon<2 chooseL large enough that this exponential is
less than(2L+1)^(-428)/2<=b_L^428/2. Such an L exists because an
exponential decay dominates a fixed power; this also follows directly
by the ratio test. The positive limiting average then proves the
existence of c>=C0 with EVERY phase error<epsilon. ChoosingC0=j and
epsilon=1/j constructs c_j tending infinity with

    exp(i*c_j*log(p)) -> chi3(p) for EVERY original primep.

All original power phases follow because n=p^e has log(n)=e log(p)
and chi3(n)=chi3(p)^e. This is an actual one-parameter source return,
not an independent assignment of458 torus coordinates. If a finite
expression for the sequence is wanted, enumerate positive rationals
and select the first q>=j satisfying these finitely many strict
inequalities. Their solution set is open and contains a real point
arbitrarily far out, hence such a rational exists. The predicate,
all source tags and the proof of totality are retained; no numerical
computation of astronomical carriers is claimed or needed.

Define f_j(t)=v(t)sin(c_j*t). These are original real odd compact
smooth tests supported strictly inside[-4,4], and their FULL gamma
integrals are finite by the bound in Section1. The physical
Riemann-Lebesgue lemma applied to v^2 gives E(f_j)->E(v)/2>0.
For each fixed source shift r, product-to-sum gives

 C_fj(r)=cos(c_j*r) C_v(r)/2
       - integral v(t+r)v(t)cos(2c_j*t+c_j*r)dt/2.

The second term tendszero because v(t+r)v(t) is L1. The actual
prime phases just proved consequently give

    P_chi3(f_j)/E(f_j) -> P_+(v)/E(v)>45.

For the FIXED finite Mmax put k_M(r)=sum_(m<Mmax)exp(-alpha_m*r).
This is integrable. The same product-to-sum identity, first using
Riemann-Lebesgue on its L1 r kernel and then dominated convergence
on the L1(t,r) kernel, proves

 integral_0^infinity k_M(r)||tau_r f_j-f_j||^2dr/E(f_j)
                      ->2sum_(m<Mmax)1/alpha_m.

The entire finite kernel is retained; the proof does not require
performing Mmax separate computations. Combining these limits gives

 lim_(j->infinity) Q4,Mmax(f_j)/E(f_j)
       <44-45=-1.

Some nonzero f_j therefore has Q4,Mmax(f_j)<-E(f_j)/2. Every omitted
single gamma summand is nonnegative, so Q4,M<=Q4,Mmax whenever
M<=Mmax on this SAME test. This proves the simultaneous statement(14).

The same actual carrier family provides a hostile check of this scope.
For every fixed frequency radiusR, the normalized Fourier mass of
v sin(c_j*t) inside[-R,R] tendszero, by translation of the fixed
L2 Fourier transform ofv and c_j tending infinity. The unconditional
full-source bounds A>=-2 and A(xi)>=log|xi|-.75 for|xi|>=100
therefore give liminf of its full gamma quotient at least logR-.75
for everyR>=100. Thus that quotient tends positiveinfinity. The
finite signed prime quotient is bounded by A<7328, so
 Q4(f_j)/E(f_j) -> positiveinfinity.
In particular the truncated negative tests are eventually POSITIVE
for the full source. This argument assumes no stage sign. An
independent written audit checked the source, parity, fixed-M limit
and all phase-law quantifiers; it inspected but did not rerun the
458 arithmetic rows. A separate direct Python-O replay checked their exact guard.

This result discharges an actual-source diagnostic connection:
any successful continuous-kernel proof must control the positive
full gamma tail jointly with the arithmetic, or provide a physical
N-relative mixed/tail estimate; it cannot certifyj3 by proving the
false universal finite-truncation sign(14) contradicts. Neither the
proof of(14) nor its exact scalar guards supplies the still OPEN
positivity G_chi+N/8. Written independent formula audit is recorded
separately; no numerical locator or Lean acceptance is inferred.

## 8. Exact coding, exhaustive coverage and consumer boundary

Reuse WeightedStage.dependentProofCodec on finite source descriptors
and rational/byte expression payloads, retaining source identity,
character/conductor/parity, j3/T4, original and derivative carriers,
N metric, every bound variable, source formula, retained finite
proof syntax and all truncation/error/evidence tokens. This is the
dependent TOTAL type Sigma Payload, rather than separately coded
contexts that might be paired with the wrong proof. A finite expression
for g4 or the c_j selection rule is not a finite approximation to an
arbitrary semantic L2 function. Its laws were proved above for all
arguments; representation does not remove those quantifiers.

For literal equality use the encoder IMAGE: encodeImage(x) is the
natural code together with proof that it encodes some dependent x;
decodeImage selects its unique preimage. Uniqueness follows by
applying the existing partial decoder to two equal codes and using
Encodable.encodek. Thus decodeImage(encodeImage(x))=x. Every field,
including dependent source and all approximation errors, is recovered.
This is a roundtrip law, not a theorem that encoded claims are true.
All exact scalar rows and proof syntax also undergo complete-byte
bundle readback, with receipt bound to their original bytes.

Every representable type here uses the SAME natural-code index:
encode(x) decodes to x, while invalid and unavailable codes remain
marked instead of being discarded. The existing stageCoverageWeight
pi_n=2^(-n-1) is positive, sums to1, and its ENTIRE unobserved tail
atJ is2^(-J). On summable signed branch masses the actual coverage
step is Kx=(x+(sum x)pi)/2, preserving total mass; its EXACT inverse
is x=2Kx-(sum Kx)pi. These identities follow by summing pi and
substitution and preserve the full tail. This is BRANCH COVERAGE,
not an Euler sign certificate. The separately constructed Neumann
heat in Section6 is an ACTUAL spectral semigroup on the stated
physical derivative carrier. Neither heat can assert the open sign.

For every branch the retained mathematical type is now explicit:
 kernel-return: ALL oddH0^1 f, u=Df inU, Q4(f)=<G_chiu,u> and
                 E(f)=<Nu,u>, with physical Lebesgue normalization;
 full-gamma-tail: ALL H0^1 f and ALL naturalM, inequalities(11),
                 derivative error retained, same458 source parameters;
 heat-tail-return: ALL odd physicalL2 inputs, t>0 and naturalM,
                 inequality(15), initial physicalE; cofinalM(t) and
                 fixed-H0^1 source limit(16), same458 atoms;
 physical-head-return: ALL odd physicalL2 f, t>0, naturalM,N,
                 error(18) in ordinary operator norm; all mixed
                 terms and tails retained, fixed-H0^1 limit(19);
 truncation-obstruction: EXISTS original admissiblef FOR ALL
                 M<=10^19, strict inequality(14), same physicalE;
 remaining-j3: FOR ALL original Admissible chi3 4 f,
                 Q4(f)>=-E(f)/8, still OPEN.
Dependencies and evidence statuses above remain attached to these
quantifiers. Only the source/norm/tail/heat-return and obstruction connections
are discharged here; remaining-j3 is not.

The cofinal consuming path is unchanged:
 foundations -> these exact source/norm/tail returns -> missing
 radiusFour.filteredMiddle OR radiusFour.sharpEdgeSchur (or a proved
 full relative Green-pencil sign) -> PrimitiveStageLower chi3 3 ->
 its single cofinal source-chain coordinate -> DirichletGRH ONLY
 after RH, PrimitiveNegativeWitness and EVERY other required stage
 and primitive sector. In particular no finite stage implies the
 remaining infinitely many stages. The exact GRH family is all
 complex Dirichlet characters modulo EVERY positive integer,
 including principal and imprimitive characters, and their zeros
 0<Re(s)<1. No Hecke/Artin/automorphic extension is claimed.

Comparison: Section2 adapts the continuous-kernel device of Suzuki's
zeta paper to the literal chi3 source; the Green norm and positive
series tail are derived here. Section7 uses elementary finite
trigonometric-polynomial averaging, unique factorization, Binet,
physical L2 density and Riemann-Lebesgue. These classical methods
are not a claim of global novelty. The new actual-source finite
constants and their consumer are explicit. Hostile checks include
the exact counterkernel in Section5 and the simultaneous actual
finite-gamma obstruction in Section7. No distinct independent full
proof ofj3 exists here. Universal Lean formalization/kernel/axiom
checking remains NOT_RUN.

-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open CharacterWindow OddRootProjection
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction

/-- The exact spectral rates of the native parity-one kernel. -/
def gammaRate (m : ℕ) : ℝ := 2 * (m : ℝ) + 3 / 2

/-- The physical inverse Neumann Green kernel; this is not the identity norm. -/
def physicalGreen (x y : ℝ) : ℝ :=
  (x ^ 2 + y ^ 2) / 16 - |x - y| / 2 + 2 / 3

/-- Native signed arithmetic hinges. The factor one half cancels exactly
`twistedPrime`'s factor two; there is no replacement of the character. -/
def primeHinges (t : ℝ) : ℝ :=
  twistedPrime 4 modThreeQuadratic
    (fun n => ((max (|t| - Real.log (n : ℝ)) 0 / 2 : ℝ) : ℂ))

/-- Actual full continuous source kernel; convergence and source return
are proved in the written argument above, not by the definition alone. -/
def sourceKernel (t : ℝ) : ℝ :=
  -gammaConstant 3 1 * |t| / 2 -
    (∫ r in Set.Ioi (0 : ℝ), parityKernel 1 r * min |t| r) +
    primeHinges t

/-- Positive gamma lower approximations retain the SAME signed arithmetic. -/
def partialSourceKernel (M : ℕ) (t : ℝ) : ℝ :=
  -gammaConstant 3 1 * |t| / 2 -
    (∑ m ∈ Finset.range M,
      (1 - Real.exp (-gammaRate m * |t|)) / gammaRate m ^ 2) +
    primeHinges t

/-- Every retained exponential rate is positive, independently of an
arithmetic sign. This is a finite formal candidate until compilation. -/
theorem gammaRate_pos (m : ℕ) : 0 < gammaRate m := by
  unfold gammaRate
  positivity

/-- These strict rational prices are finite guards, not the j3 sign. -/
theorem actual_truncation_prices :
    (46 : ℚ) < 46248459066526 / 10 ^ (12 : ℕ) ∧
    (44 : ℚ) - 45 < -(1 / 2) ∧
    (-(1 / 2) : ℚ) < -(1 / 8) := by
  norm_num

/-- Metric identity at the midpoint is a scalar check only. -/
theorem physicalGreen_zero : physicalGreen 0 0 = (2 / 3 : ℝ) := by
  norm_num [physicalGreen]

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
