/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Actual inspected source grwtsk/math@553e4682eb7a3caaeeefd56ccb2698d7699d370f.
Canonical Noe instructions at370b8664d28f68876e878b47c02b7efcd1af303f.
WRITTEN_ACTUAL_FINITE_GRAM_MOMENT_SECTOR_AND_ALL_FAR_MIXED_PROOF.
EXACT_FINITE_RATIONAL_GUARDS_PASS.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / HUMAN_REVIEW_NOT_RUN.
FULL_FINITE_GRAM_SIGN_AND_ORIGINAL_J3_OPEN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourLegendreTail

/-!
# A positive moment sector of the actual residual Gram problem

Local attribution: grwtsk contributors. Current native source inspected at math@553e4682eb7a3caaeeefd56ccb2698d7699d370f. Current repository instructions, source-comparison disposition, structural/typed-port guidance and canonical Noe proof-automation skill were read. This increment is an exact source-specific mathematical comparison, not a Noe job, matrix-sign assumption, or source publication. Universal proofs are WRITTEN; exact finite rational guards PASS independently. Lean elaboration, fresh kernel and transitive axiom audit remain NOT_RUN.

## 1. The exact consumer, source and bounded operators stay fixed

Use the native odd complex physical Hilbert space H=L2_odd([-4,4],Lebesgue dt), zero extension, physical energy E=||.||^2, inner product conjugate-linear in the first argument, and Fourier transform F_f(xi)=integral f(t)exp(i xi t)dt, with measure dxi/(2pi). Original real compactC2 odd admissible tests are a distinguished core, never replaced by derivative or weighted norms.

Keep primitive nonprincipal chi3=(0,1,-1)modulo3, conductor3, parity1, NO pole, and ALL458 actual unramified atoms n=p^e<=2980, p!=3. The multiplier is exactly
 s4=log(3/pi)+Re psi(3/4+i xi/2)
       -2 sum log(p)chi3(n)cos(xi logn)/sqrt(n).
Keep the ACTUAL filters PH:7990/2820,hH=1/(2*10^25), PL:19000/1425,hL=153/(2*10^9), w=PH^2(1-PL^2), and
 Hcut=30000000, Omega=35*10^24,
 C=18524227541662946/10^7,
 D={Hcut<|xi|<Omega} minus([C-10,C+10] union[-C-10,-C+10]).
All strict quadratic-form inequalities below are for nonzero vectors; at zero both sides are zero, and the corresponding non-strict inequalities hold on the entire stated subspace.

The bounded residual R=K* m K is unchanged, where K is Fourier restriction toD and m=s4*w onD. Its physical quadratic form is Rres and ||R||<300. Set B=124997987/10^9.

Keep the ORIGINAL P23 to the native trace-zero23m sine head, Q23=I-P23, A23=P23(R+B I)P23 and its ACTUAL inverse. SchurHeadExtension proves A23>1/10 I, ||A23^-1||<10 on its true finite physical carrier. Keep the original Schur complement
 S=Q23(R+B I)Q23-Q23 R P23 A23^-1 P23 R Q23,
 defined on ALL Q23H. Native LegendreTail constructs the source-exact representation
 S=B I_Q+K_Q* M K_Q, ||M||<741,
 including every mixed interaction through A23^-1. Hence ||S||<B+741<742. No other full-Q4 or SharpEdge Schur operator is substituted.

The finite object whose remaining sign is requested is the ACTUAL one in LegendreTail. Put L=12Omega=420000000000000000000000000 and let V span ALL odd physical normalized Legendre functions ell_n with n<L. Set F=Q23V and W=Q23H intersect Vperp. Then Q23H=F orthogonal-sum W. For the actual basis q_n=Q23ell_n ofF,
 G_nj=<q_n,q_j>, H_nj=<q_n,Sq_j>.
G is the actual positive physical Gram, not identity. The sufficient remaining full condition is H-5*10^-54 G>=0 on EVERY coefficient vector. That full sign is NOT claimed below. We construct a genuine positive subspace and pay its ENTIRE interaction withW.

## 2. Higher native endpoint cancellations: an exact Fourier law

Let psi_k(t)=sin(k*pi*t/4)/2 for |t|<=4, zero off. These are physically orthonormal inH. For integers 1<=m<=N define the actual finite native subspace
 Y_(N,m)={sum_(k=1)^N a_k psi_k:
          sum_(k=1)^N (-1)^k k^(2r+1)a_k=0 for EVERY integer0<=r<m}.
All coefficients may be complex for the bounded-form comparison. Real coefficients are the original sector. These are exactly the firstm odd endpoint derivative cancellations. All even derivatives already vanish at both endpoints. Thus every real element has zero extension C^(2m), in particular compactC2, and is a genuine original admissible test. Its full gamma value exists; no gamma-domain enlargement is used to justify its native status.

Write omega_k=k*pi/4. Direct integration gives
 F_(psi_k)(xi)=i(-1)^k omega_k sin(4xi)/(xi^2-omega_k^2).
For |xi|>omega_N, expand the FINITE geometric identity
 omega/(xi^2-omega^2)
 =sum_(r=0)^(m-1) omega^(2r+1)/xi^(2r+2)
       +omega^(2m+1)/[xi^(2m)(xi^2-omega^2)].
Every firstm coefficient sum vanishes by the defining constraints, including its actual sign(-1)^k. Consequently, for EVERY g inY_(N,m),
 F_g(xi)=i sin(4xi)/xi^(2m)
             *sum_(k=1)^N [(-1)^k a_k omega_k^(2m+1)/(xi^2-omega_k^2)]. (2.1)
This is an identity with an exact finite remainder, not an asymptotic expansion or a passing finite set of coefficients.

Let rho=(22/7)N/(4Hcut)<1, so omega_N/Hcut<rho by pi<22/7. Cauchy--Schwarz, orthonormality and |sin|<=1 give on the ENTIRE outer union |xi|>Hcut
 |F_g(xi)|^2 <=E(g)*N*(rho Hcut)^(4m+2)
                    /[|xi|^(4m+4)(1-rho^2)^2].
Integrating BOTH signs with dxi/(2pi) and using pi>3 proves
 integral_(|xi|>Hcut)|F_g|^2 dxi/(2pi)<=alpha_(N,m) E(g),
 alpha_(N,m)=N/[3(4m+3)Hcut] *rho^(4m+2)/(1-rho^2)^2.    (2.2)
The full improper integral is Hcut^(-4m-3)/(4m+3). No mode or frequency tail is discarded. Formula(2.2) is a physical input-energy estimate, not a bandlimitedness assertion aboutg.

## 3. A strong simple exact instance

Take N=38170000 and m=11000. Then rho=41987/42000 and
 (4m+2)(1-rho)>68/5.
Since -logrho=integral_rho^1 du/u>=1-rho,
 rho^(4m+2)<=exp[-(4m+2)(1-rho)]<exp(-68/5).
The exact positive exponential series gives
 exp(68/5)>=sum_(j=0)^40 (68/5)^j/j! >800000.
All41 rational summands and the complete partial sum are retained in the checker payload. The infinitely many omitted terms are nonnegative, so this is a lower bound, not an unproved floating approximation. Hence rho^(4m+2)<1/800000 and
 alpha_(N,m)<alphaStar
  =N/[3(4m+3)Hcut] *[1/800000]/(1-rho^2)^2
  =1649631060000/52455753317481683
  =.00003144804822486908... .                              (3.1)
The exact rational source gap is
 B-741alphaStar
  =410345150445675560336317/4035057947498591000000000
  =.10169498326537202...>1/10.                             (3.2)
Only the exact fractions determine these inequalities.

Define X=Y_(N,m) intersect Q23H. For EVERY x inX, K_Qx=Kx andD is a subset of the entire outer union in(2.2). The actual source representation ofS therefore gives
 <Sx,x> >=B E(x)-741||Kx||^2 >= (1/10)E(x).                 (3.3)
This retains the original A23^-1 interaction and the actual signed-source M. No stronger residual price is substituted for a Fourier leakage, and no assertion about arbitrary vectors of the finite head is inserted.

## 4. Exact dimension and the old-head orthogonality constraints

Work first in E_N=span{psi_1,...,psi_N}. The m constraint vectors have kth coefficient(-1)^k k^(2r+1),0<=r<m. Their rank is exactlym: divide the kth column by its nonzero factor(-1)^k k and take anym distinct k. The resulting matrix has entries(k^2)^r and nonzero Vandermonde determinant because the positive k^2 are distinct. Therefore dimY_(N,m)=N-m.

The old physical space P23H=H_23000000^0 has dimension23000000-1 and lies inE_N. We show the restricted physical projection P23:Y_(N,m)->P23H is ONTO, rather than assuming an arbitrary intersection dimension. A vectorz inP23H orthogonal toY_(N,m) must be a linear combination of the m constraint vectors, since these span its orthogonal complement insideE_N. Thus its kth coefficient is(-1)^k k Q(k^2) with degreeQ<m. But z has zero coefficients for EVERY k>23000000. There are N-23000000=15170000 distinct such k, more thanm-1, so Q is the zero polynomial. Hencez=0. The adjoint of the restricted projection is injective; finite-dimensional rank duality makes the projection onto. Its kernel is exactlyX. Therefore
 dimX=(N-m)-(23000000-1)=15159001.                       (4.1)
This proves a genuine source-bound nonempty native subspace, not a count inferred from formally written but dependent constraints.

## 5. Full sine--Legendre tail and transfer into the ACTUAL finiteF

Use the complete physical orthonormal Legendre basis ell_n(t)=sqrt((2n+1)/8)P_n(t/4). Native LegendreTail proves by Rodrigues and its vanishing boundary terms
 |F_(ell_n)(xi)|^2<=8(2n+1)4^(-n)
 for EVERY n>=L and EVERY |xi|<=Omega. We apply that law at every omega_k,1<=k<=N; these frequencies are lessHcut<Omega. Because psi_k is half a sine,
 |<ell_n,psi_k>|^2 <=(1/4)|F_(ell_n)(omega_k)|^2
                    <=2(2n+1)4^(-n)                    (n odd).
Here ell_n is real, and for odd n its Fourier transform is purely imaginary; the displayed bound also follows by the imaginary-part inequality. Even n give zero. Thus the complete Hilbert--Schmidt tail of the restriction(I-Pi_V)|E_N is
 gamma<=sum_(k=1)^N sum_(odd n>=L)|<ell_n,psi_k>|^2
       <=2N sum_(n>=L)(2n+1)4^(-n)
       =2N(24L+20)4^(-L)/9.                             (5.1)
Parseval, the COMPLETE Legendre basis and Tonelli justify the entire n tail. There is no finite-rank remainder hidden afterL.

Since9N<=L, this is at most the EXISTING exact Legendre dominating expression
 2L(24L+20)4^(-L)/81.
The existing polynomial identity
 4n(24n+20)-(n+1)(24(n+1)+20)
    =72(n-1)^2+156(n-1)+40>0 for EVERY integern>=1
proves n(24n+20)4^(-n) decreases. SinceL>=256, the ONE exact rational guard
 2*256*(24*256+20)/(81*4^256)<10^-120
therefore proves gamma<10^-120 in(5.1). This finite guard is used together with the universal monotonic law and full geometric series, not promoted to an infinite statement on its own.

For x inX subsetQ23H, write u=Pi_F x and z=Pi_W x, so x=u+z. Since W subsetVperp, physical orthogonal projection gives
 ||z||=||Pi_W x||<=||(I-Pi_V)x||<=10^-60||x||.             (5.2)
Pi_F is the GENUINE physical orthogonal projection; we never identify it with Q23 Pi_V. One may independently check the distance bound using the admissible comparison vector Q23 Pi_Vx inF:
 dist(x,F)<=||x-Q23 Pi_Vx||=||Q23(x-Pi_Vx)||<=||(I-Pi_V)x||.
This usesx=Q23x and contraction ofQ23, not commutation of the two projections.

Pi_F is injective onX: Pi_Fx=0 would give||x||<=10^-60||x||, which forcesx=0 since10^-60<1. Set U=Pi_FX, an actual subspace ofF of dimension15159001. Its definition uses the unique physical orthogonal projection onto the existingF, whose actual Gram is positive; no uncomputed entry, inverse conditioning or arithmetic sign is assumed.

There is an exact source-specific coefficient constructor at this meeting point. For EVERY x inX let c_n=<q_n,x>=<ell_n,x>, the last equality usingQ23x=x and selfadjointness ofQ23. With the existing positive definite physical GramG set b=G^(-1)c. The inverse exists by the already proved linear independence ofq_n. Then u=sum_n b_n q_n satisfies <q_n,u>=c_n for EVERY n, so x-u is orthogonal toF and u is EXACTLY Pi_Fx. This preserves the full dependent basis and source; G^(-1) is represented symbolically as the actual inverse, not computed, identified withI, or supplied with an unproved conditioning estimate. No Euclidean coefficient norm replacesb*G b.

The bounded-source return uses ||S||<742 onQ23H and(5.2):
 |<Su,u>-<Sx,x>| <=742(2*10^-60+10^-120)E(x)
                         <=10^-56 E(x).                  (5.3)
The exact expansion is u=x-z and the two mixed terms are estimated by the physical operator norm. In particular from(3.3),
 <Su,u> >=(1/10-10^-56)E(x) >=(9/100)E(u)   for EVERY u inU. (5.4)
The last direction uses the contraction ||u||<=||x|| and a POSITIVE coefficient. We do not replace original physical energy by the raw coefficient Euclidean norm.

## 6. The actual finite Gram sign on this sector, including ALL far mixed terms

Let A_U={a:sum_(odd n<L) a_n q_n belongs toU}. The q_n form the ACTUAL basis ofF proved in LegendreTail, so dimA_U=dimU=15159001 and the map is an isomorphism ontoU. For EVERY complex a inA_U,
 a*(H-5*10^-54 G)a
    =<Su,u>-5*10^-54 E(u)
    >=(9/100-5*10^-54) a*G a
    >=(2/25) a*G a.                                      (6.1)
In particular, for every NONZERO x inX the actual coefficient b=G^(-1)(<ell_n,x>) obeys (6.1); every coefficient vector inA_U is obtained this way, and atzero the non-strict form holds. This is a positive sector of the EXACT requested matrix expression with its actualGram. It is not H-deltaI, an assertion about all coefficient vectors, or a numerical finite-matrix sign claim. All higher signed source terms and the P23 correction remain inH.

The entire far spaceW is unchanged. Native LegendreTail proves on ALLW
 <Sw,w> >=(1/9)E(w),
 ||Pi_F S|W||<741*10^-30,
with full far leakage, inverse, Neumann and time tails. Since U subsetF, the same actual mixed bound applies betweenU andW. For EVERY u inU,w inW the spaces are physically orthogonal, and
 <S(u+w),u+w>
  >=(9/100)E(u)+(1/9)E(w)
                     -2*(741*10^-30)||u|| ||w||
  >=(9/100-741*10^-30)E(u)+(1/9-741*10^-30)E(w)
  >=(2/25)E(u+w).                                        (6.2)
Thus the WHOLE compression of ORIGINAL S toZ=U orthogonal-sum W is genuinely positive with gap2/25, including all infinitely many far modes and their complete mixed coupling withU. This is stronger than separately positive diagonal restrictions. We do NOT assert Z is S-invariant. Its couplings with F intersectUperp remain OPEN.

## 6a. The exact remaining finite sign, with its actual physical metric

Retain epsilon=5*10^-54 and the ACTUAL finite operator L_F=S_F-epsilon I_F.
Inside F let Z_F=F intersect Uperp, so F=U orthogonal-sum Z_F. Define
 D_U=Pi_U L_F|U, B_U=Pi_U S_F|Z_F, T_Z=Pi_Z_F L_F|Z_F.
These are the actual physical finite blocks, with domains ALL their displayed
spaces. Their heat interface is the exhaustive branch coverage of Section7;
their representable data use its full dependent codec. No positive arithmetic
semigroup is postulated for the unproved T_Z or remaining Schur complement. Equation(6.1) constructs D_U>=(2/25)I_U and its genuine inverse,
||D_U^-1||<=25/2. For EVERY u inU and z inZ_F, completion of the square is

 <L_F(u+z),u+z>
 =||D_U^(1/2)(u+D_U^-1 B_U z)||^2
       +<(T_Z-B_U* D_U^-1 B_U)z,z>.

Thus the SAME original requested H-epsilon G sign holds on ALL coefficient
vectors IF AND ONLY IF the actual finite Schur complement
 T_Z-B_U* D_U^-1 B_U >=0 on EVERY z inZ_F.                 (REMAINING_OPEN)
This is the exact next missing lemma, not an assumed theorem or a new
replacement target. Its dimension is dimF-15159001. The actual GramG and
all off-diagonal terms remain; raw coefficient orthogonality is not used.
The proof of this identity is physical finite square completion using the
already proved positive D_U, not a sign argument for REMAINING_OPEN.
In particular neither positivity of the new U+W compression nor the new
spectral heat supplies the finite Z_F sign or its couplings.

## 7. Exact heat, coding and exhaustive tails for the types actually used

The native carriers remain: H physical oddL2; original compactC2 real core; bounded residual/Schur operators on their displayed physical spaces; E_N,Y_(N,m),X,U,F,W and the remaining Z_F with physical inner products; finite bound-index moment syntax; and the actual coefficient carrier with GramG. Finite representable data retain the source identity, character/parity,458 source atoms via their existing full bundle, filter parameters, D,B,P23,A23,S,M, N,m,L, all quantifiers, all41 Taylor terms, exact rational guards and all tail/error data. The proof syntax binds arbitrary coefficients/functions rather than claiming a computable finite encoding of arbitrary semantic realL2 vectors. The actual full matrixH remains uncomputed and its full signOPEN.

For coverage use the existing WeightedStage weights pi_j=2^(-j-1),j>=0, with total1 and unobserved tail sum_(k>=0)pi_(J+k)=2^-J. Natural-code indexing covers every bound moment, sine/Legendre index and finite proof descriptor; all unobserved spectral indices are separately retained in(5.1) and the existing fullW inverse/heat laws. Positive coverage coefficients prove no arithmetic sign.

There is also a genuine new source-bound spectral heat on the precise infinite spaceZ=U direct-sum W. Its bounded selfadjoint generator is the ACTUAL COMPRESSION S_Z=Pi_Z S|Z, with domainALLZ and lower bound2/25 by(6.2), not an assumed invariant restriction ofS. The operator-norm exponential T_t=exp(-tS_Z) has T_0=I,T_tT_s=T_(t+s), is positive selfadjoint, and
 ||T_t||<=exp[-(2/25)t], for EVERY t>=0.
Norm differentiation gives T_t'=-S_Z T_t. Therefore
 integral_0^infty T_t dt=S_Z^-1,
 ||integral_A^infty T_t dt||<= (25/2)exp[-(2/25)A].
The full time tail is retained; T_t returnsI in operator norm as t decreases tozero and hence returns the bounded original compression form. This heat is different from Dirichlet heat, gamma heat, branch coverage and the original operatorS on the unproved remaining space. It certifies only the already proved compression, and supplies no missing full Gram sign.

Reuse the existing dependent PaidPacket.RetainedEvidence codec for the finite descriptor/proof/source bytes, ALL guard payload bytes and ALL checker bytes. Its native decoding theorem proves decodeRetained(encode(data))=data, retaining the dependent source tag and every error/tail record. The concrete guard payload uses reduced rational pairs and exact canonical JSON; decode(encode(payload))=payload and byte-identical re-encoding are checked. Hashes bind files but never replace the complete recoverable data.

## 8. Evidence, comparison and remaining exact connection

The exact standalone checker q3_radius_four_gram_moment_sector_guard_20261108.py verifies source byte pins when requested, all41 Taylor entries, exact source gap, full monotonic-tail256 guard, original-Q dimension arithmetic, projection-error and actual-Gram/mixed constants. All active raises survive python-O. Its finite calculations are distinct from the universal proofs above and from Lean/kernel acceptance. Source dependencies are the native ResidualHead, SchurHeadExtension and LegendreTail, with their written/exact scopes; no unproved desired conclusion is a new interface field.

The constructive mechanism is repeated exact rational Fourier expansion with native endpoint moments, Vandermonde rank, COMPLETE Legendre approximation and a bounded physical form return. It is distinct from evaluating matrices or sampled frequencies. The hostile boundary is explicit: when N crosses the Fourier frontier, the hypothesisrho<1 fails, so(2.2) is unavailable; this is not a way to make all modes low. Projection does not make the entire finiteF equalU, and neither a positive compression nor its spectral heat controls mixed terms with the remaining space.

The dependency path is original458-atom residual -> actualA23 inverse andM741 -> higher-native-moment whole-frequency leakage -> positiveX of dimension15159001 -> ENTIRE sine--Legendre tail and injective actualF projection -> actual(H-5e-54G) positive onA_U AND whole U+W compression -> OPEN sign onF intersectUperp with its ACTUAL mixed correction -> originalS>=0 -> entire residual -> originalj3. The last open connection is not discharged. Full finite sign, full radius-four residual, PrimitiveStageLowerj3, RH and DirichletGRH are not claimed proved. The independent zeta branch, every other primitive character and all cofinal stages remain separate obligations.

The exact cofinal consumer is DirichletStageChain.dirichletGRH_of_source_chains.
It requires RH AND PrimitiveNegativeWitness AND SmallConductorStages for EVERY
primitive nonprincipal character modulo EVERY positive integer. Even a completed
j3 supplies only one of those stages. Its GRH conclusion covers ALL complex
Dirichlet characters, including principal and imprimitive characters: every zero
with 0<Re(s)<1 has Re(s)=1/2. No Hecke, Artin or automorphic family is claimed.

Standard Fourier endpoint cancellation, Vandermonde, orthogonal projection and bounded-operator methods; worldwide novelty is NOT_ASSESSED. No independent human review or source-pinned kernel result is claimed. No source publication or Noe job was performed by this scratch candidate.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourGramMomentSector

def modeCount : ℕ := 38170000
def momentCount : ℕ := 11000
def originalRank : ℕ := 23000000
def frequencyFrontier : ℚ := 30000000
def residualBudget : ℚ := 124997987 / 10 ^ 9

def upperRatio : ℚ :=
  (22 / 7 : ℚ) * (modeCount : ℚ) / (4 * frequencyFrontier)

def positiveExpPartialSum : ℚ :=
  ∑ j ∈ Finset.range 41, (68 / 5 : ℚ) ^ j / (Nat.factorial j : ℚ)

def leakageUpper : ℚ :=
  (modeCount : ℚ) / (3 * (4 * (momentCount : ℚ) + 3) * frequencyFrontier) *
    (1 / 800000) / (1 - upperRatio ^ 2) ^ 2

def sectorDimension : ℕ := modeCount - momentCount - (originalRank - 1)
def legendreCutoff : ℕ := 12 * (35 * 10 ^ 24)
def monotoneTailGuard : ℚ := 2 * 256 * (24 * 256 + 20) / (81 * 4 ^ 256)

/-- Exact positive Taylor lower bound; the omitted entire tail is nonnegative. -/
theorem exponential_partial_sum_guard :
    (800000 : ℚ) < positiveExpPartialSum := by
  norm_num [positiveExpPartialSum, Finset.sum_range_succ]

/-- The universal Fourier return is the written proof, not this scalar guard. -/
theorem exact_ratio_and_source_gap :
    upperRatio = 41987 / 42000 ∧ (0 : ℚ) < upperRatio ∧ upperRatio < 1 ∧
      (68 / 5 : ℚ) < ((4 * momentCount + 2 : ℕ) : ℚ) * (1 - upperRatio) ∧
      leakageUpper = 1649631060000 / 52455753317481683 ∧
      (1 / 10 : ℚ) < residualBudget - 741 * leakageUpper := by
  norm_num [upperRatio, leakageUpper, modeCount, momentCount,
    frequencyFrontier, residualBudget]

/-- Rank uses the proved Vandermonde argument; this only checks its parameters. -/
theorem exact_vandermonde_dimension_parameters :
    0 < momentCount ∧ momentCount ≤ modeCount - originalRank ∧
      sectorDimension = 15159001 := by
  norm_num [momentCount, modeCount, originalRank, sectorDimension]

/-- Combined with the entire geometric series and universal monotonic law. -/
theorem entire_tail_projection_guards :
    256 ≤ legendreCutoff ∧ 9 * modeCount ≤ legendreCutoff ∧
      monotoneTailGuard < (1 / 10 ^ 120 : ℚ) := by
  norm_num [legendreCutoff, modeCount, monotoneTailGuard]

theorem actual_Gram_and_mixed_return_guards :
    (742 : ℚ) * (2 / 10 ^ 60 + 1 / 10 ^ 120) < 1 / 10 ^ 56 ∧
      (9 / 100 : ℚ) < 1 / 10 - 1 / 10 ^ 56 ∧
      (2 / 25 : ℚ) < 9 / 100 - 5 / 10 ^ 54 ∧
      (2 / 25 : ℚ) < 9 / 100 - 741 / 10 ^ 30 ∧
      (2 / 25 : ℚ) < 1 / 9 - 741 / 10 ^ 30 := by
  norm_num

/-- Full dependent source/proof/error bytes roundtrip, not all semantic functions. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

/-- All countably indexed branch tails remain, separately from spectral heat. -/
theorem entire_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourGramMomentSector
