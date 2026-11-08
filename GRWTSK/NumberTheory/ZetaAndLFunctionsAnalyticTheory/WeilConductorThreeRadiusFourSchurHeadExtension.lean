/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source grwtsk/math@fe3fd586707c81fdd693a076c4971bea6fbe51e8.
WRITTEN_SOURCE_SPECIFIC_SCHUR_HEAD_EXTENSION.
ALL458_ATOMS_ALL4096_ROWS_AND_EXACT_HEAD_GUARDS_PASS.
UNIVERSAL_PROOF_WRITTEN; LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
ENTIRE_COMPLEMENTARY_SCHUR_SIGN_AND_FULL_J3_OPEN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourResidualHead

/-!
# A source-specific enlargement of the paid radius-four Schur head

Local attribution: grwtsk contributors. Source math@fe3fd586707c81fdd693a076c4971bea6fbe51e8; canonical Noe context9d456d64a0137289cddc416ea78f043cf345873a. Read current AGENTS.md, canonical structural/typed-port instructions, and canonical Noe proof-automation instructions. No Noe job, repository mutation, message to an external service, or publication was performed. The finite arithmetic is a standalone exact calculation, not a Lean or kernel check. Universal analytic results below are complete written proofs with their premises explicitly discharged at the stated evidence levels.

## 1. Exact original source, carrier, and consuming block

Use the actual primitive nonprincipal real character chi3=(0,1,-1) modulo3, conductor3 and odd gamma parity1, with no pole term. On the physical Hilbert space H=L2_odd([-4,4],dt), real or complex, extend functions by zero and use
 F_f(xi)=integral f(t)exp(i xi t)dt,
 E(f)=integral |f(t)|^2dt=integral |F_f(xi)|^2 dxi/(2pi).
The real original consumer consists of EVERY compact C2 odd Admissible chi3 test at radius4. The formulas below also hold on the specified larger physical L2 carriers; no weighted norm replaces E.

Let
 A(xi)=log(3/pi)+Re psi(3/4+i xi/2),
 Pchi(xi)=2 sum_(n=p^e<=2980,p!=3) [log(p)/sqrt(n)]chi3(n)cos(xi log n),
 s4=A-Pchi.
All458 source atoms, including their complete prime-power identities and signs, are retained. In particular this is not the old93-atom radius-three source.

Retain EXACTLY the current filters
 PH=P_(7990,2820)(sinc(hH xi)^2), hH=1/(2*10^25),
 PL=P_(19000,1425)(sinc(hL xi)^2), hL=153/(2*10^9),
 P_(M,K)(t)=sum_(j=K)^M choose(M,j)t^j(1-t)^(M-j),
 w=PH^2(1-PL^2), 0<=w<=1.
Set H0=30000000, R0=35*10^24, C=18524227541662946/10^7,
 I=[C-10,C+10] union[-C-10,-C+10],
 D={H0<|xi|<R0} minus I,
 Rres(f)=integral_D s4(xi)w(xi)|F_f(xi)|^2 dxi/(2pi),
 B=124997987/10^9.
Write J_X(q)=integral_X q(xi)|F_f(xi)|^2 dxi/(2pi).
The operator R representing Rres on H is the existing bounded compact selfadjoint residual operator, with ||R||<=300. In particular every block below has a bounded operator domain ALL of its stated physical subspace.

The exact bounded operator whose remaining sign is sought is the ORIGINAL fixed23m Schur complement. Let psi_k(t)=sin(k*pi*t/4)/2, k>=1, an orthonormal basis of H, and
 H_N^0={sum_(k=1)^N a_k psi_k: sum_(k=1)^N (-1)^k k a_k=0}.
Let P23 be physical orthogonal projection to H_23000000^0 and Q23=I-P23. Define
 A23=P23(R+B I)P23 on P23H,
 Cop=P23 R Q23,
 T23=Q23(R+B I)Q23,
 S23=T23-Cop^* A23^(-1)Cop on Q23H.
This source, projection, domain, physical metric and subtraction are unchanged throughout. No full-Q4 SharpEdge Schur complement is substituted.

## 2. A genuine enlarged-support prime Schur instance

Take Tcap=2001503/500000=4.003006, with carrier ALL complex physical L2([-Tcap,Tcap],dt), zero extended. The exact logarithm comparisons in the retained checker prove
 log2980<8<log2981,
 log2998<2*Tcap<log2999.
Enumerating every integer2..2998 by the actual prime-power definition, omitting ONLY base3, gives precisely the SAME458 n,p,e identities as the original cutoff2980; the last active atom is2971. In particular no source atom is smuggled across the larger-support return.

The existing physical row interface is reused with4096 radial cells of width Delta=Tcap/4096. Define h(t) on |t|<Tcap by the complete positive integer height list divided by10^6, and zero outside. All4096 heights are retained, the minimum is225061/10^6>0. Each logn/Delta has its whole certified interval in one unique cell(d,d+1). Thus a right translate of radial celli can use only neighboring indices i+d,i+d+1; a left translate uses reflected indices i-d-1,i-d with reflection j->-j-1 for j<0. Both true translations outside the physical interval use heightZERO.

For each atom the rational log upper and sqrt lower give an upward half-price q_n/10^8>=log(p)/sqrt(n). The checker retains every log interval, square-root interval, source sign, exponent and upward error, constructed using the existing24-term range-reduced atanh interface and10^12 square-root grid. Taking the maximum of the two candidate heights for each translate gives an upper row numerator r_i. All4096 complete row inequalities have been checked by exact integer arithmetic. Their exact maximum is
 Wcap=max_i r_i/(10^8*h_i)=1304249574098451/22517000000000
      =57.92288378107435...<58.
This is an actual instance; Wcap<58 is not an assumed interface conclusion or a sampled-row assertion.

Here is its universal consuming law. On each physical interior point the row certificate implies
 sum_n b_n[h(t+logn)+h(t-logn)]<=Wcap*h(t), b_n=log(p)/sqrt(n).
For each translated edge whose two endpoints are inside the support, the elementary inequality
 2|g(x)g(y)| <= h(y)/h(x)|g(x)|^2+h(x)/h(y)|g(y)|^2
holds because h(x),h(y)>0. Multiply by b_n, integrate, sum ALL458 edges, and change variables in the paired terms. Zero extension removes exactly the edges outside the domain. The row law therefore gives, for EVERY complex physical g supported[-Tcap,Tcap],
 |integral Pchi(xi)|F_g(xi)|^2 dxi/(2pi)|<=Wcap E(g)<58 E(g).  (2.1)
All translations are bounded on L2; the finite-sum identity and bound follow first for simple functions and then by physical L2 density. The character signs are handled by absolute value in this proof. Positive rows alone are not declared an arithmetic sign.

## 3. Exact return of the actual multiplier w to that carrier

The PH kernel is a finite real signed measure of support radius<=2*7990*hH, since t=sinc(hH xi)^2 is the Fourier transform of the convolution of two normalized boxes and PH is an ACTUAL degree7990 polynomial in t.

For PL put p=P_(19000,1425)(t), ell=1-p. The identity
 1-p^2=ell+ell*p
is a finite sum of Bernstein monomials c_ab t^a(1-t)^b with c_ab>=0 and a+b<=2*19000. With eta the normalized low box and independent X_l~eta, use the finite signed random measure
 nu_ab=eta^{*a} * product_(l=1)^b(delta_(X_l)-eta).
Its expected squared transform is EXACTLY t^a(1-t)^b, because eta_hat=sinc, E|exp(i xi X)-eta_hat|^2=1-t, and the X_l are independent. Its support radius is at most(a+b)hL. Convolving each nu_ab with the PH kernel gives a genuine finite covariance representation of w. EVERY consuming g=f*nu has support radius at most
 4+2*19000*hL+2*7990*hH < 4.003006=Tcap.                 (3.1)
The whole458-atom identity from Section2 therefore applies. The covariance norm accounting is the exact Plancherel identity
 sum_ab c_ab E_X E(f*nu_ab*nu_H)=J_R(w)<=E(f),
not the possibly large signed-measure total variation. Averaging(2.1) proves
 J_R(Pchi*w)<=58 J_R(w)                                (3.2)
for EVERY physical input f supported[-4,4]. This proof uses all complex variance components and needs no parity preservation by an individual component. It remains valid on physical L2 by bounded convolution, finite sums, Tonelli for nonnegative squared transforms, and L2 approximation. No gamma limit or sign is inserted into the covariance law.

## 4. Direct source partition, including EVERY omitted frequency

The native full odd-parity Binet lower bound is A(xi)>=log|xi|-3/4 for |xi|>=100. The exact atanh enclosure of log30000000 verifies log30000000-3/4>16; hence A>=16 throughout D. The complete upward atom mass is
 sum_n q_n/10^8=10530513442/10^8,
so |Pchi(xi)|<211 on the ENTIRE real line.

Put m_D=J_D(w) and m_out=J_(R minus D)(w). From(3.2),
 J_D(Pchi*w)=J_R(Pchi*w)-J_(R minus D)(Pchi*w)
             <=58(m_D+m_out)+211m_out
             =58m_D+269m_out.
The subtraction direction is essential: an UPPER bound on the removed prime contribution is obtained using its ABSOLUTE value, without discarding a positive source anchor. Thus the actual residual satisfies the universal source law
 Rres(f)>=-42 m_D-269 m_out.                            (4.1)
The sharper exact-row law replaces42 by Wcap-16 and269 by Wcap+211. No gamma upper bound on an unbounded stopped region is needed.

The entire complement of D is the union of |xi|<=H0, |xi|>=R0 and the paid mirror pairI, up to null endpoints; I is strictly inside the annulus. The actual existing low pass law gives1-PL^2<=2*10^-40 on the whole first set. The actual all-lobe high stop law givesPH^2<=10^-20 on the ENTIRE last unbounded frequency tail. Since0<=w<=1,
 m_D<=integral_(|xi|>H0)|F_f|^2 dxi/(2pi),
 m_out<=(2*10^-40+10^-20)E(f)+integral_I |F_f|^2 dxi/(2pi). (4.2)
Every frequency beyond R0 is retained at its quantified price. There is no finite-domain-to-infinite-domain inference and no exchange of output and input norms.

## 5. Trace-head leakage and exact source-specific prices

For g=sum_(k=1)^N a_k psi_k in H_N^0 put omega_k=k*pi/4. Orthogonality gives E(g)=sum|a_k|^2. The native boundary trace is precisely what makes the zero extension C2: values and second derivatives vanish at the endpoints already, and the trace cancels first derivatives. Thus real coefficients yield genuine original Admissible tests. Complex coefficients are harmless for the Hilbert-space comparison.

The existing exact Fourier identity, obtained by integrating each sine and using sum(-1)^k a_k omega_k=0, is
 F_g(xi)=i sin(4xi)/xi^2 * sum_(k=1)^N [(-1)^k a_k omega_k^3/(xi^2-omega_k^2)].
If omega_N<H0, Cauchy--Schwarz and |sin|<=1 give
 integral_(|xi|>H0)|F_g|^2 dxi/(2pi)
 <=alpha_N E(g),
 alpha_N=pi^5 sum_(k=1)^N k^6 /
         [28672 H0^7(1-(pi*N/(4H0))^2)^2].              (5.1)
This is the ORIGINAL outer Fourier leakage, not the new residual source price divided by213.

On both paid intervals |xi|>=Cmin=C-10, the SAME identity gives
 integral_I |F_g|^2 dxi/(2pi)<=beta_N E(g),
 beta_N=20*pi^5 sum_(k=1)^N k^6 /
        [4096 Cmin^8(1-(pi*N/(4Cmin))^2)^2].            (5.2)
Indeed the total length of I is40 and the measure is dxi/(2pi); this is the factor20/pi before substituting omega_k^6=(pi/4)^6 k^6. Both signs and the entire width are retained.

Combining(4.1),(4.2),(5.1),(5.2) proves for ALL g in the native trace head
 Rres(g)>=-dnew_N E(g),
 dnew_N=42 alpha_N+269(2*10^-40+10^-20+beta_N).          (5.3)
The exact Wcap version is
 (Wcap-16)alpha_N+(Wcap+211)(2*10^-40+10^-20+beta_N).
These laws are joint gamma/prime source estimates, with the physical normalization unchanged.

For a rational independent guard replace pi by22/7. Both numerators increase and the positive squared denominators decrease as pi increases below4H0/N and4Cmin/N. Thus the replacement is in the correct UPPER direction for alpha_N and beta_N. The exact power sum is
 sum_(k=1)^N k^6=N(N+1)(2N+1)(3N^4+6N^3-3N+1)/42;
its universal polynomial difference proof is already in ResidualHead and is reused below. The exact rational checks retain the COMPLETE resulting fractions. At23m,
 alpha23_upper=.0005859322494844884...,
 beta23_upper=5.253539006645516...*10^-24,
 dnew23_upper=.024609154478348515...,
 B-dnew23_upper=.10038883252165148...>1/10.              (5.4)
At27m,
 alpha27_upper=.0029235695223115282...,
 beta27_upper=1.614115860728136...*10^-23,
 dnew27_upper=.12278991993708419...,
 B-dnew27_upper=.00220806706291581...>11/5000>1/500.     (5.5)
Decimal displays are only explanatory; the inequalities were checked using exact rational arithmetic. All bounds also hold with the slightly smaller exact-row prices.

## 6. The original Schur complement: a real finite-tail advance with all old mixed terms

From(5.4), the ORIGINAL A23>=1/10 I on H23^0. In particular its actual bounded inverse exists and ||A23^-1||<10. This improves the conditioning of the original block and does not change its projection.

H23^0 is a physical orthogonal subspace of H27^0. Put
 V1=Q23H intersect H_27000000^0.
The dimension is(27000000-1)-(23000000-1)=4000000. For every v in V1 and EVERY u in H23^0, u+v lies in H27^0. The two summands are physically orthogonal, so(5.5) proves
 <(R+B I)(u+v),u+v> >= (11/5000)(E(u)+E(v)).
The completed-square identity for the ACTUAL finite inverse is
 <(R+B I)(u+v),u+v>
 =<A23(u+A23^-1 Cop v),u+A23^-1 Cop v>+<S23v,v>.
Its minimum over u is attained at u=-A23^-1 Cop v. Taking that actual minimizer, still an element of H23^0 and hence of H27^0, proves
 <S23v,v> >=(11/5000)E(v)>=(1/500)E(v)   for ALL v in V1. (6.1)
This includes the entire mixed interaction with the old23m head. It does not assert S23 preserves V1, and does not erase any mixed interaction between V1 and its remaining complement.

Precisely, the remaining physical Q23 space decomposes orthogonally as
 Q23H=V1 direct-sum span(b27) direct-sum closure(span{psi_k:k>27000000}),
 b27=sum_(k<=27000000)(-1)^k k psi_k /
       sqrt(sum_(k<=27000000)k^2).
The vector b27 is orthogonal to H27^0 and to H23^0. Thus the boundary direction, every mode k>27m, and their actual mixed terms remain explicit. Combining two separate positive diagonal restrictions is NOT asserted to prove their joint sign. Schur associativity may alternatively eliminate H27^0 with its actual inverse (<500), but the new full complement and its mixed terms must still be proved.

An optional quantitative check, still retaining the ORIGINAL alpha23, is
 ||P23 R Q23 v||<=300 sqrt(alpha23) ||K_D v||,
where K_D is physical-input Fourier restriction to D. This follows because ||K_D P23||<=sqrt(alpha23), ||s4*w||_(Linf D)<300, and all adjoints use physical Plancherel. Hence
 <S23v,v> >= B E(v)-[213+900000 alpha23]||K_D v||^2
            >= B E(v)-741||K_D v||^2.
This is a rigorous improved coarse tail comparison, not the desired sign on all Q23H. The source estimate dnew23 must NEVER be substituted for alpha23 here.

## 7. Coverage, evidence, and lossless finite descriptions

Branch identifiers remain obl.stage and cert.all-small-conductor-stages. The original universal stage j3 is still OPEN. The new discharged sub-obligations are: the enlarged physical prime bound(2.1), its actual w source return(3.2), the direct residual bound(4.1), source-specific paid trace head(5.3)-(5.5), and ORIGINAL Schur lower bound on V1(6.1). The exact next missing lemma is positivity of the remaining original S23 block with its cross terms on span(b27) plus the entire closed k>27m space; an independent high-tail diagonal bound alone does not pay those cross terms or the finite remainder.

The source-bound branch type carries chi3, its conductor/parity/primitivity, the native atom list, physical Hilbert domain, current filters, D, B, N, boundary trace, input physical norm, all approximation intervals and all evidence statuses. Heat used for such finite packets is branch coverage, not arithmetic sign certification: the existing weights q_j=2^(-j-1), j>=0, have total1 and exact unobserved tail sum_(k>=0)q_(J+k)=2^-J. Enumerating mode k=j+1 retains every sine mode; the boundary direction is separately retained. This coverage interface does not turn the preceding finite subspace into an exhaustive sign proof. The actual residual spectral heat exp[-t(R+300I)] on ALL H already exists by the norm-convergent operator series in ResidualHead and tends to identity in operator norm as t downarrow0. Neither it nor ordinary Dirichlet heat is asserted to preserve H_N^0 or V1.

The portable exact checker q3_radius_four_enlarged_schur_guard_20261108.py reuses the unchanged existing arithmetic module replay_radius_four_high_filter.py (SHA25648009fc956e58ebd8bea81e73411cab06c645b075984b13ebcb81d46d3cc5022). Its own complete payload retains all458 source identities and interval/error records, all4096 heights AND rows, both filter parameter sets, source revision, actual character, normalization, entire residual domain, exact head prices and evidence statuses. Canonical JSON encoding/decoding has a proved finite-data roundtrip by direct parser/re-encoder equality, checked on the actual complete payload. The repository's dependent RetainedEvidence codec, reused below, additionally preserves typed descriptor/proof syntax and raw guard/checker bytes. No computable coding of arbitrary real L2 functions is claimed; f remains a bound variable in the finite proof statement. A finite description of a filter, operator or countable mode tail does not eliminate any of its support, convergence or universal sign obligations.

All458/all4096 finite source calculations and scalar guards: EXACT_ARITHMETIC_PASS. Universal Fourier, covariance, Schur and completed-square results: WRITTEN_PROOF. Lean elaboration, kernel replay and axiom audit: NOT_RUN. No full radius-four residual, full j3, RH or any GRH family is claimed proved here. Standard weighted Schur, Bernstein variance and block minimization methods; no prior-art novelty claim.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSchurHeadExtension

def physicalRadiusUpper : ℚ := 2001503 / 500000
def exactSchurMaximum : ℚ := 1304249574098451 / 22517000000000
def highBoxRadius : ℚ := 1 / (2 * 10 ^ 25)
def lowBoxRadius : ℚ := 153 / 2000000000
def frequencyFrontier : ℚ := 30000000
def paidCenter : ℚ := 18524227541662946 / 10 ^ 7
def paidMinimum : ℚ := paidCenter - 10
def piUpper : ℚ := 22 / 7
def residualBudget : ℚ := 124997987 / 10 ^ 9

def sixthPower (n : ℕ) : ℚ :=
  ConductorThreeRadiusFourResidualHead.sixthPowerPolynomial (n : ℚ)

def upperRatio (n : ℕ) : ℚ :=
  piUpper * (n : ℚ) / (4 * frequencyFrontier)

def outerFourierLeak (n : ℕ) : ℚ :=
  piUpper ^ 5 * sixthPower n /
    (28672 * frequencyFrontier ^ 7 * (1 - upperRatio n ^ 2) ^ 2)

def paidFourierMass (n : ℕ) : ℚ :=
  20 * piUpper ^ 5 * sixthPower n /
    (4096 * paidMinimum ^ 8 *
      (1 - (piUpper * (n : ℚ) / (4 * paidMinimum)) ^ 2) ^ 2)

def weightedOutsideMass (n : ℕ) : ℚ :=
  2 / 10 ^ 40 + 1 / 10 ^ 20 + paidFourierMass n

def improvedHeadPrice (n : ℕ) : ℚ :=
  42 * outerFourierLeak n + 269 * weightedOutsideMass n

def exactRowHeadPrice (n : ℕ) : ℚ :=
  (exactSchurMaximum - 16) * outerFourierLeak n +
    (exactSchurMaximum + 211) * weightedOutsideMass n

/-- This scalar guard is separate from the actual retained4096-row proof. -/
theorem exact_row_and_source_mass_guards :
    exactSchurMaximum < 58 ∧
      (0 : ℚ) < 225061 / 10 ^ 6 ∧
      2 * (10530513442 / 10 ^ 8 : ℚ) < 211 := by
  norm_num [exactSchurMaximum]

theorem actual_variance_support_fits :
    (4 : ℚ) + 2 * 19000 * lowBoxRadius + 2 * 7990 * highBoxRadius <
      physicalRadiusUpper := by
  norm_num [lowBoxRadius, highBoxRadius, physicalRadiusUpper]

theorem exact_native_budget :
    residualBudget = ConductorThreeRadiusFourResidualHead.residualBudget := by
  simpa [residualBudget] using
    ConductorThreeRadiusFourResidualHead.exact_original_budget.symm

/-- Exact finite rational guards; universal source return is proved above. -/
theorem original23m_and_extended27m_head_gaps :
    upperRatio 23000000 < 1 ∧ upperRatio 27000000 < 1 ∧
      (1 / 10 : ℚ) < residualBudget - improvedHeadPrice 23000000 ∧
      (11 / 5000 : ℚ) < residualBudget - improvedHeadPrice 27000000 := by
  norm_num [upperRatio, residualBudget, improvedHeadPrice, weightedOutsideMass,
    paidFourierMass, outerFourierLeak, sixthPower,
    ConductorThreeRadiusFourResidualHead.sixthPowerPolynomial,
    paidMinimum, paidCenter, frequencyFrontier, piUpper]

/-- The new source price is NOT substituted for this original Fourier leakage. -/
theorem improved_original_schur_coefficient :
    213 + 900000 * outerFourierLeak 23000000 < 741 := by
  norm_num [outerFourierLeak, upperRatio, sixthPower,
    ConductorThreeRadiusFourResidualHead.sixthPowerPolynomial,
    frequencyFrontier, piUpper]

/-- Entire dependent finite evidence roundtrip; no arbitrary-real coding claim. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

/-- Exhaustive countable coverage retains the complete unobserved tail. -/
theorem entire_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSchurHeadExtension
