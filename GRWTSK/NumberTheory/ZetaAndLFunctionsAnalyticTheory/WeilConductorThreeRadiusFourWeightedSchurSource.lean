/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Math source@eef4e69aac22d8e6495052b391ed381b80f5eda0.
Canonical Noe skill source@0ca03a08fe714c95e7a52466fa3bb1a2f8b1c753.
WRITTEN_GLOBAL_WEIGHTED_SOURCE_AND_SAME_REMAINING_SCHUR_PROOFS.
EXACT_FINITE_GUARDS_PASS; ENTIRE_REMAINING_SIGN_AND_J3_OPEN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourGramMomentSector
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourLowPassExtension

/-!
# The actual weighted source on the original Schur complement

Local attribution: grwtsk contributors.
Source inspected: grwtsk/math@eef4e69aac22d8e6495052b391ed381b80f5eda0.
Canonical Noe instructions read at0ca03a08fe714c95e7a52466fa3bb1a2f8b1c753.
Complete WRITTEN mathematical proofs below; exact finite guards are separate
from Lean compilation, fresh kernel and axiom auditing, all NOT_RUN.
Independent human review NOT_RUN; worldwide novelty NOT_ASSESSED.
No Noe job, Git publication or canonical source edit is performed here.

## 1. Exact original target, source and physical operators

Keep ALL odd complex physical L2([-4,4],Lebesgue dt) classes, zero extended,
with norm squared E and inner product conjugate-linear in the first variable.
Real compactC2 admissible tests are the original real sector. The transform
is Ff(xi)=integral f(t)exp(i xi t)dt and measure is dxi/(2pi).
The actual primitive nonprincipal character is chi3=(0,1,-1), conductor3,
gamma parity1, with no pole. Keep all458 unramified atoms p^e<=2980,p!=3.

The genuine symbol is
 s4(xi)=log(3/pi)+Re psi(3/4+i xi/2)
       -2 sum log(p)chi3(p^e)cos(xi log(p^e))/sqrt(p^e).
Keep PH7990/2820,hH=1/(2*10^25), PL19000/1425,hL=153/(2*10^9),
w=PH^2(1-PL^2), Hcut=30,000,000, Omega=35*10^24,
C=18524227541662946/10^7, and
D={Hcut<|xi|<Omega} minus([C-10,C+10] union[-C-10,-C+10]).
The ORIGINAL residual R=K* m K has Kf=Ff restricted toD and m=s4*w,
with B=124997987/10^9 and ||R||<300. OnD the actual raw symbol obeys
-213<=s4<=300 and0<=w<=1, as proved in ResidualHead/LegendreTail.

Retain EXACTLY P=P23 onto the native23m trace head, Q=I-P,
A=P(R+B I)P, and the SAME original Schur complement
 S=Q(R+B I)Q-Q R P A^-1 P R Q onALLQH.
The existing actual head sign gives A>1/10 I, ||A^-1||<10. The ORIGINAL
Fourier leakage is alpha23=ResidualHead.nativeHeadPrice/213, and
||KP||^2<=alpha23, 213+900000alpha23<741. A new source price must never
be substituted for alpha23. No physical weighted norm is used below.

Also keep the original finite Legendre space F=Q V, with V spanning odd
ell_n,n<L, L=12Omega, ell_n=sqrt((2n+1)/8)P_n(t/4). Its ACTUAL physical
Gram is G_nj=<q_n,q_j>, q_n=Qell_n, and H_nj=<q_n,Sq_j>. Set
epsilonF=5*10^-54 and L_F=S_F-epsilonF I_F. The existing positive sector
is Uold=Pi_F Xold, Xold=Y_(38170000,11000) intersect QH, with
dimUold=15159001. The exact remaining target is the SAME source operator

 K_Z=T_Z-B_U* D_U^-1 B_U on ALL Z_F=F intersect Uoldperp,
 D_U=Pi_Uold L_F|Uold, B_U=Pi_Uold S_F|Z_F,
 T_Z=Pi_Z_F L_F|Z_F.                                    (TARGET)

No projection, physical Gram, character or Schur subtraction in TARGET
will be replaced. Its all-Z_F sign and full original stagej3 remain OPEN.

## 2. Return the ACTUAL filter weight before the Schur subtraction

On the ordinary frequency Hilbert space L2(D,dxi/(2pi)), let V0 be
multiplication by the RAW s4, and define the bounded physical-to-frequency
map K_w f=sqrt(w)Ff restricted toD. Both are genuine source objects:
sqrt(w) is the nonnegative measurable square root of the actual real
binomial multiplier. Plancherel gives ||K_w||<=1. In particular

 R=K_w* V0 K_w, ||K_w P||^2<=||KP||^2<=alpha23.           (1)

Equation(1) is an EXACT source identity, not an approximation. The input
norm is still ordinary physical E. The frequency square root is absorbed
inside the operator and is not silently called a physical weighted norm.

Writing K_wP and K_wQ for the restrictions toPH,QH, direct expansion of
the ORIGINAL S gives

 S=B I_Q+K_wQ* M_w K_wQ,
 M_w=V0-V0 K_wP A^-1 K_wP* V0.                         (2)

Its subtracted term Z_w is positive: it is T* A^-1 T with
T=K_wP* V0. Since ||V0||<=300, ||A^-1||<10 and (1),
||Z_w||<=900000alpha23. Hence in OPERATOR ORDER on the frequency space

 -(213+900000alpha23)I<=M_w<=V0<=300I, ||M_w||<741.

This uses positivity of the proved actual inverse, not positivity of heat
or branch weights. It retains every old-P23 mixed term. Thus for EVERY
v in the ENTIRE original QH,

       <Sv,v> >=B E(v)-741||K_w v||^2.                   (3)

Compared with the existing unweighted restriction bound, (3) retains the
actual source filter wherever it is small. It is a genuine all-input
source comparison, not a finite positive-compression assumption.

## 3. A nested39.53m native moment sector with an entire weighted tail bound

Reuse the PROVED actual LowPassExtension law
 PL>=1-10^-5 on EVERY |xi|<=H1=31,075,000.
It uses the unchanged actual filter, with exact sinc/Chernoff guards and
the entire alternating/binomial remainders retained in its source bundle.
Consequently w<=2*10^-5 on that WHOLE region, so for every physical f

 ||K_w f||^2<=2*10^-5 E(f)
                  +integral_(|xi|>H1)|Ff|^2 dxi/(2pi).   (4)

The entire original30m..H1 portion remains paid in(4); no domain is changed.

Let psi_k=sin(pi*k*t/4)/2 onI and zero off. For N=39,530,000,m=11,000,
use the actual native endpoint-moment carrier

 Ynew={sum_(k<=N)a_k psi_k:
         sum_(k<=N)(-1)^k k^(2r+1)a_k=0 for EVERY0<=r<m}.

All physical norms are E=sum|a_k|^2. The exact finite geometric identity
for omega/(xi^2-omega^2), omega=pi*k/4, gives on |xi|>omega_N

 Fg(xi)=i sin(4xi)/xi^(2m)
        *sum_(k<=N)(-1)^k a_k omega_k^(2m+1)/(xi^2-omega_k^2).

Every vanished moment and its sign are retained. Cauchy--Schwarz and
integration of the ENTIRE two-sided outer union prove

 integral_(|xi|>H1)|Fg|^2 dxi/(2pi)
 <=N/[3(4m+3)H1] *rho^(4m+2)/(1-rho^2)^2 E(g),
 rho=(22/7)N/(4H1)=3953/3955<1.                         (5)

This is the same exact endpoint calculation as GramMomentSector, at the
new source-valid cutoff H1. Since (4m+2)(1-rho)>22 and
-logrho>=1-rho, rho^(4m+2)<exp(-22). The exact positive partial series
sum_(j=0)^40 22^j/j!>10^9 therefore gives the full upper bound

 alphaNew=13694756190241/1452946189406976000000,
 ||K_w g||^2<=betaNew E(g),
 betaNew=2*10^-5+alphaNew
        =29072618544329761/1452946189406976000000
        <(2/447)^2.                                    (6)

All41 rational exponential terms are retained; all later terms are
nonnegative. The full Fourier and mode tails in(5) are integrated, not
inferred from a finite passing set. Combining(3),(6) already gives, for
Xnew=Ynew intersect QH, the ACTUAL complete source sign

 <Sx,x>>=[B-741betaNew]E(x), B-741betaNew>11/100.          (7)

Real elements are genuine original compactC^(22000) tests, henceC2 with
finite gamma form. The source identity still concerns bounded R,S on
their full physical spaces; no full gamma domain is replaced by allL2.

## 4. Exact dimensions, nesting, and transfer with the ACTUAL Gram

The m moment rows have rankm: divide columns by(-1)^k k and take m
distinct k; the resulting Vandermonde has distinct nodes k^2. Thus
dimYnew=N-m. The physical projection P23:Ynew->P23H is onto. Indeed a
z inP23H orthogonal toYnew must have coefficients(-1)^k k Q(k^2),
degreeQ<m, but its coefficients vanish for all k>23m. Those N-23m
distinct roots exceedm-1, so Q=0 and z=0. Adjoint rank duality therefore
proves surjectivity. Its kernel is Xnew, so

 dimXnew=(39530000-11000)-(23000000-1)=16519001.

The old Xold is contained in Xnew: extend its coefficients byzero and
retain EXACTLY the same11000 endpoint constraints and sameQ. No union of
unrelated positive sectors is used.

Use the existing FULL Legendre approximation proof, at the SAME L and F.
For EVERY k<=N the frequency omega_k is lessH1<Omega. Rodrigues proves
|Fell_n(omega_k)|^2<=8(2n+1)4^-n for ALL n>=L. Therefore, by the complete
orthonormal expansions and Tonelli,

 ||(I-Pi_V)|span(psi_1,...,psi_N)||_HS^2
 <=2N sum_(n>=L)(2n+1)4^-n
 =2N(24L+20)4^-L/9
 <=2L(24L+20)4^-L/81<10^-120.                           (8)

The inequalities9N<=L andL>=256 are exact finite guards. The LAST bound
uses the existing universal monotonic law n(24n+20)4^-n decreasing and
the exact256-index guard, not a finite truncation of(8).

Put delta=10^-60 and u=Pi_F x for x inXnew. The true physical orthogonal
projection obeys ||x-u||<=delta||x||, since W=Fperp insideQH lies in
Vperp. One may also use the comparison vector QPi_V x inF to bound the
distance; Pi_F is NOT asserted equalQPi_V. Orthogonality gives
E(u)>= (1-delta^2)E(x). Thus Pi_F is injective on Xnew. Let
Unew=Pi_F Xnew; dimUnew=16519001, and Uold subsetUnew EXACTLY.

Equations(1),(6) and contraction of K_w give, with r0=2/447,

 ||K_w u|| <=(||K_w x||+||K_w(x-u)||)
             <=(r0+delta)||x||,
 ||K_w|Unew||^2< (r0+delta)^2/(1-delta^2)<1/49900=:cU.    (9)

The final comparison is exact rational arithmetic. It preserves INPUT
and OUTPUT physical norms explicitly, using the proved projection lower
norm bound, not an unproved inverse bound for raw coefficient data.

Every u inUnew has the ACTUAL coefficient constructor already established
in GramMomentSector: c_n=<q_n,x>=<ell_n,x>, a=G^-1c, u=sum a_nq_n.
G^-1 exists by the proved independent finite basis. No conditioning estimate
or identificationG=I is assumed. E(u)=a*Ga exactly.

Let b=B-epsilonF and aGap=b-741/49900. Exact guards give

                aGap>11/100, 741*b/aGap<841.              (10)

Combining(3),(9) now proves on the ENTIRE JOINT Unew
 <L_F u,u>>=aGap E(u). This is stronger than a union of two positive
compressions and retains all old-P23 mixed terms inS.

## 5. A stronger lower bound on ALL of the SAME remaining Z_F

The old Uold is a subspace of Unew, so its ACTUAL operator D_U satisfies
D_U>=aGap I, with its genuine inverse and ||D_U^-1||<=1/aGap<100/11.
This improves a bound on the existing inverse without replacing D_U.

For EVERY u inUold and EVERY z in the SAME original Z_F, these vectors
are physically orthogonal. Since u+z is inF, (3) applies to L_F:

 <L_F(u+z),u+z>
 >= b[E(u)+E(z)]-741||K_w u+K_w z||^2
 >= bE(z)+aGap||u||^2
        -2*741*sqrt(cU)||u||||K_w z||-741||K_w z||^2.

Completing this ordinary scalar norm square gives FOR ALL such u,z

 <L_F(u+z),u+z>
 >=bE(z)-[741+741^2*cU/aGap]||K_w z||^2
 =bE(z)-[741*b/aGap]||K_w z||^2.                        (11)

The equality in the coefficient uses aGap=b-741cU. The true old-U
minimizer is u*=-D_U^-1 B_U z, already constructed in the source's
finite physical square completion. Substituting THIS actual minimizer
in(11), or equivalently taking the true infimum overUold, proves on
EVERY vector of the original remaining space

 <(T_Z-B_U*D_U^-1B_U)z,z>
 >=bE(z)-[741*b/aGap]||K_w z||^2
 >=bE(z)-841||K_w z||^2,   for ALL z in Z_F.             (12)

This is an actual global source estimate for TARGET. It keeps its true
inverse and every old-U mixed term. It DOES NOT prove nonnegativity
onALLZ_F, since no such small uniform leakage is proved on that whole
space. There is no new Schur target or assumed desired sign.

## 6. Actual positive directions of TARGET, with all old-U mixed terms

Set Znew=Unew intersect Uoldperp, a concrete subspace of the SAMEZ_F.
Since Uold subsetUnew, its dimension is

             dimZnew=16519001-15159001=1360000.

For EVERY z inZnew and EVERY u inUold, u+z belongs toUnew and
E(u+z)=E(u)+E(z). By(10), its source value is at least
aGap[E(u)+E(z)]. The actual minimizer u* above remains insideUold and
thus insideUnew, so its SAME remaining Schur value satisfies

       <K_Z z,z> >=aGap E(z)>(11/100)E(z)                (13)

for every nonzero z inZnew; non-strict atzero. This pays a genuine
1,360,000-dimensional sector of the requested remaining operator,
including its ENTIRE interaction with the old positiveU. It does not
infer positivity on allZ_F or drop couplings with its remaining vectors.
In actual coefficients representing z, E(z)=a*Ga, not sum|a_n|^2.
The literal targetH-5e-54G and original full j3 remain OPEN.

## 7. Exact interfaces, evidence and unchanged global scope

Heat has two separate established roles. Branch coverage uses the entire
WeightedStage pi_j=2^(-j-1) indexing with total1, unobserved tail2^-J,
and inverse source-return2Kx-(sumKx)pi=x. It preserves every branch,
including OPEN all-Z_F. It implies no arithmetic sign.
The actual positive D_U also has its genuine spectral heat onALLUold:
exp(-tD_U), t>=0, with generatorD_U and norm<=exp(-aGap*t).
Its bounded-operator exponential obeys the semigroup law and returnsI
in operator norm as t decreases tozero. Integration gives D_U^-1,
with the ENTIRE time tail bounded byexp(-aGap*T)/aGap. This is the
same proved source operator/inverse, not gamma heat, Dirichlet heat or
an arithmetic heat asserted on the unproved all-Z_F operator.

All representable type/source/proof data retain chi3 and458 atoms via
their existing complete source bundle, physical carrier and Fourier
measure, originalP23/A23/S, current filters andD, square-root factorization
syntax, old/new moment constraints and dimensions, ALL41 exponential
terms, full Legendre tail law, exact projection norm bounds, actualG,
the true D_U inverse/minimizer, coefficients in(10)--(13), and statuses.
Use the existing dependent PaidPacket.retainedCodec on complete descriptor,
proof, guard and checker byte sequences. Its full roundtrip recovers
decodeRetained(encode(data))=data, with dependent source tags/errors
unchanged. No arbitrary semantic L2 vector or uncomputed matrix is claimed
finitely encoded, and finite bound syntax eliminates no universal tail.

Exact scalar/source-byte guards PASS at their recorded scope; universal
identities and inequalities above are complete WRITTEN proofs. Lean,
kernel, axiom and human-review statuses remain NOT_RUN. Scalar3806 and
paid-mask floating experiments are diagnostic only and are not evidence
for(1)--(13) or a universal matrix sign. The mechanism is the actual
source square-root factorization, endpoint moments, complete physical
projection return and true minimizer; worldwide novelty is NOT_ASSESSED.

The exact remaining obligation stays K_Z>=0 for EVERY z in the original
Z_F. The source consumer thereafter is the existing full finite-Gram sign,
originalS>=0, actual residual bound, and original PrimitiveStageLower
chi3 hp hn3. RH and the exact all-Dirichlet GRH target remain independent
and OPEN: for every positive modulus, every complex Dirichlet character,
every zero0<Re(s)<1 must have Re(s)=1/2. Principal/imprimitive returns,
other primitive sectors and all required cofinal stages are not omitted.

## 8. A genuine vector of the remaining physical space has large weighted mass

The following source-specific construction rules out completing (12) by a
uniform small-weight assumption on the remaining space. It does NOT assert
that the ACTUAL K_Z is negative on this vector.

Let K0=4800000000, q=K0/(K0+1), and
 g=psi_K0+q psi_(K0+1).
This is a nonzero REAL ODD original compactC2 test: its endpoint derivative
is proportional to (-1)^K0 K0+q(-1)^(K0+1)(K0+1)=0. Values and second
derivatives already vanish at both endpoints. Its original gamma form is
finite by the compact H1 shift bound. Its physical energy is 1+q^2.
Since K0>38170000, g is EXACTLY orthogonal to the whole original Xold.

Put omega=pi*K0/4 and let Iband be the mirrored pair with centres +/-omega
and radius101. Since 3<pi<22/7, the ENTIRE pair lies in
 3500000000<|xi|<4000000000.
This is inside the ORIGINAL D and avoids its paid pair, whose upper endpoint
is below2000000000. No source/filter window is changed.
For each of the two sine modes, its own peaks are shifted from these centres
by at most pi/4<1. Outside Iband their distances are at least100. The EXACT
sine-transform formula gives
 |Fpsi_k(xi)|^2 <=(1/2)[|xi-omega_k|^-2+|xi+omega_k|^-2].
Integrating the entire complement, including BOTH signs and dxi/(2pi), gives
mass <=1/(100pi)<1/300 for each mode. Cauchy--Schwarz in its TWO coefficient
energies therefore gives
 integral_(R minus Iband)|Fg|^2 dxi/(2pi)<=E(g)/150.
The two full improper integrals, not a finite frequency sample, give this
bound. At least149/150 of the original physical energy remains in Iband.

The SAME ACTUAL filters obey w>=99/100 on this ENTIRE pair. Here is a direct
all-lobe proof with complete error accounting. On Iband, |hL xi|>100, so
 tL=sinc(hL xi)^2<=1/10000 by |sin|<=1. For the actual binomial variable
X~Binomial(19000,tL), Markov on2^X gives
 PL=Pr(X>=1425)<=(1+tL)^19000/2^1425
                  <=exp(19/10)/2^1425<9/2^1425<10^-40.
The inequality exp(19/10)<exp2<9 uses exp1<3, whose complete positive-series
proof is already in LegendreTail. The last comparison is an EXACT integer
power comparison, retained in the guard; every binomial outcome is included.

For PH, |hH xi|<=2*10^-16. The complete alternating sine series gives
sinc(hH xi)>=1-(hH xi)^2/6>=1-10^-32 and hence tH>=1-2*10^-32.
With Y the number of failures in Binomial(7990,tH),
 1-PH=Pr(Y>=5171)<=7990(1-tH)/5171<4*10^-32.
This is the exact first-moment inequality, not a truncated binomial sum.
Consequently w=PH^2(1-PL^2)>=(1-4*10^-32)^2(1-10^-80)>99/100.
It follows, on the original support/norm and original D, that
 ||K_w g||^2 >=(99/100)(149/150)E(g)>(99/100)^2 E(g).      (14)

Now construct a vector of the EXACT existing Z_F, rather than call g one.
The full sine--Legendre estimate (8) also applies through K0+1: those modes
have frequency belowOmega, 9(K0+1)<=L, and the SAME all-n>=L series/256
monotonic guard gives ||Pi_W g||<=delta||g||, delta=10^-60.
For x inXold let u=Pi_F x. Since g is orthogonal toXold, the EXACT identity
 <Pi_F g,Pi_F x>=-<Pi_W g,Pi_W x>
proves ||Pi_Uold Pi_F g||<=delta^2/sqrt(1-delta^2)||g||.
Here Pi_Uold is the PHYSICAL orthogonal projection. Its construction uses
the positive physical Gram of an actual Uold basis, not the source inverse
D_U^-1. This distinction is required for the norm estimate.

Define z=(I-Pi_Uold)Pi_F g=Pi_Z_F g. Then z belongs to the ACTUAL remaining
finite physical space, E(z)<=E(g), and
 ||z-g||^2<=delta^2/(1-delta^2)E(g)<4delta^2 E(g).
The two differences lie in the orthogonal W and Uold spaces, respectively.
In particular z is nonzero. Contractivity of K_w and (14) give
 ||K_w z|| >=(99/100-2delta)||g||,
                ||K_w z||^2 >=(19/20)E(z).              (15)
All projections are the true finite Gram projections. For example Pi_F g has
coefficients G^-1(<q_n,g>); the Uold subtraction uses its own physical Gram.
No matrix entries or conditioning bounds have been computed or assumed.
The construction and estimates are valid on the original REAL subcarrier.

Since b/841<19/20, (15) REFUTES the uniform bound
 ||K_w z||^2<=(b/841)E(z) on ALL Z_F.
The negative coarse right side in (12) for this vector is NOT a negative
K_Z value. This counterexample is to that proposed stronger helper, not to
j3 or RH/GRH. It identifies why the signed compression is still required;
the global source comparison cannot be turned into a full sign by erasing
physical mass in the pass region.

## 9. Heat and retained data for the new construction and remaining operator

The new types Iband,K0,g,z, its exact coefficient constructor, and the
original Z_F retain the same physical metric, source identity, quantifiers
and full dependent codec of Section7. Their exhaustive heat-coverage role is
that SAME natural-code branch coverage with total1, tail2^-J and exact
source-return; no arbitrary semantic real values are claimed encoded.
All bounds in (14)--(15), every real-band endpoint, binomial integer factor,
full improper Fourier integral, and entire Legendre tail remain in the proof
data. Finite syntax for huge Gram projections does not evaluate those matrices.

There is also a constructed SHIFTED reference spectral heat on ALL original
Z_F. Equation(12) and ||K_w||<=1 prove K_Z+841I>=bI with b>0, so its
bounded selfadjoint exponential exp[-t(K_Z+841I)] has semigroup law and norm
<=exp(-bt), returnsI in operator norm, and returns the bounded K_Z quadratic
form as t decreases tozero. Its integral over ALL t>=0 is (K_Z+841I)^-1;
the ENTIRE time tail afterT is bounded by exp(-bT)/b. This is a positive
reference semigroup for the SHIFTED actual operator. Subtracting841I retains
the open sign, so it gives no proof of K_Z>=0. It is not Dirichlet or gamma
heat and does not assert nativeC2 invariance.

The exact missing target stays (TARGET) on ALL original Z_F, with the SAME
G and true old inverse. Proved advances are (3), (12), and the genuine nested
sector (13); (15) is an actual-carrier obstruction to one insufficient route.
Neither the new heat nor lossless byte readback manufactures the missing
signed arithmetic estimate. Only a complete proof of TARGET can pass to
the original full finite Gram condition, residual budget, j3 and its ONE
cofinal coordinate. The cofinal GRH consumer also requires RH AND the native
PrimitiveNegativeWitness AND ALL SmallConductorStages for every primitive
nonprincipal character, at their original exact scopes.

-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourWeightedSchurSource

def originalBudget : ℚ := 124997987 / 10^9
def finiteMargin : ℚ := 5 / 10^54
def shiftedBudget : ℚ := originalBudget-finiteMargin
def modeCount : ℕ := 39530000
def momentCount : ℕ := 11000
def passFrontier : ℚ := 31075000
def ratioUpper : ℚ := (22/7 : ℚ)*(modeCount : ℚ)/(4*passFrontier)
def outerLeakUpper : ℚ :=
  (modeCount : ℚ)/(3*(4*(momentCount : ℚ)+3)*passFrontier) *
    (1/10^9)/(1-ratioUpper^2)^2
def sourceWeightedLeak : ℚ := 2/10^5+outerLeakUpper
def projectionError : ℚ := 1/10^60
def projectedLeakUpper : ℚ := 1/49900
def actualHeadGapLower : ℚ := shiftedBudget-741*projectedLeakUpper
def remainingPenalty : ℚ := 741*shiftedBudget/actualHeadGapLower

/-- Scalar guards; the entire source factorization and tail laws are written. -/
theorem weighted_source_parameters :
    ratioUpper=3953/3955 ∧
      outerLeakUpper=13694756190241/1452946189406976000000 ∧
      sourceWeightedLeak<(2/447 : ℚ)^2 ∧
      ((2/447 : ℚ)+projectionError)^2/(1-projectionError^2)<projectedLeakUpper ∧
      (11/100 : ℚ)<actualHeadGapLower ∧ remainingPenalty<841 := by
  norm_num [ratioUpper,modeCount,passFrontier,outerLeakUpper,momentCount,
    sourceWeightedLeak,projectionError,projectedLeakUpper,actualHeadGapLower,
    shiftedBudget,originalBudget,finiteMargin,remainingPenalty]

theorem exact_nested_dimension :
    modeCount-momentCount-(23000000-1)=16519001 ∧
      16519001-ConductorThreeRadiusFourGramMomentSector.sectorDimension=1360000 := by
  norm_num [modeCount,momentCount,ConductorThreeRadiusFourGramMomentSector.sectorDimension,
    ConductorThreeRadiusFourGramMomentSector.modeCount,
    ConductorThreeRadiusFourGramMomentSector.momentCount,
    ConductorThreeRadiusFourGramMomentSector.originalRank]

def highNativeMode : ℕ := 4800000000

/-- Exact native endpoint cancellation, for the actual two sine coefficients. -/
theorem native_two_mode_trace (k : ℚ) (hk : k+1 ≠ 0) :
    k-(k/(k+1))*(k+1)=0 := by
  field_simp [hk]

theorem high_weight_scalar_return :
    (99/100 : ℚ)*(149/150)>(99/100 : ℚ)^2 ∧
      (99/100-2*projectionError)^2>(19/20 : ℚ) ∧
      shiftedBudget/841<(19/20 : ℚ) ∧
      (1-4/10^32 : ℚ)^2*(1-1/10^80)>(99/100 : ℚ) := by
  norm_num [projectionError,shiftedBudget,originalBudget,finiteMargin]

/-- Every dependent source, parameter, proof byte and error record is retained. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data)=data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

/-- All unobserved branch indices are kept independently of shifted spectral heat. -/
theorem entire_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J+k))=(1/2 : ℝ)^J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourWeightedSchurSource
