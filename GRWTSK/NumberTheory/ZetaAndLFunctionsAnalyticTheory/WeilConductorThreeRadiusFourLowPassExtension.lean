/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source math@553e4682eb7a3caaeeefd56ccb2698d7699d370f.
Canonical Noe instructions@370b8664d28f68876e878b47c02b7efcd1af303f.
WRITTEN_ACTUAL_LOW_FILTER_AND_FIVE_MILLION_DIRECTION_SCHUR_RETURN.
FINITE_RATIONAL_AND_EXACT_INTEGER_GUARDS_PASS.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
FULL_FINITE_GRAM_SIGN_AND_ORIGINAL_J3_OPEN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourSchurHeadExtension

/-!
# An actual low-filter extension and an enlarged original Schur-positive head

Local attribution: grwtsk contributors.
Inspected source: grwtsk/math@553e4682eb7a3caaeeefd56ccb2698d7699d370f.
Canonical Noe skill source read at370b8664d28f68876e878b47c02b7efcd1af303f.
Complete WRITTEN analytic result and exact finite rational guards below.
No Noe job, Git publication, Lean compilation, fresh kernel, transitive axiom
audit or independent human review is claimed. Worldwide novelty NOT_ASSESSED.

## 1. Exact source, original target, and the new result

Keep the ORIGINAL actual primitive nonprincipal real odd chi3=(0,1,-1),
conductor3, gamma parity1, and all458 unramified atoms p^e<=2980,p!=3.
The physical Hilbert space is all odd L2([-4,4],Lebesgue dt), complexified
only for Hermitian comparisons, with norm squared E and zero extension.
Use Ff(xi)=integral f(t)exp(i xi t)dt and measure dxi/(2pi).
There is no pole, weighted norm, derivative ratio or alternate character.

The actual raw symbol is s4=A-Pchi, where
A=log(3/pi)+Re psi(3/4+i xi/2) and
Pchi=2 sum log(p)chi3(p^e)cos(xi log(p^e))/sqrt(p^e).
Keep the EXISTING filters PH7990/2820,hH=1/(2*10^25),
PL19000/1425,hL=153/(2*10^9), and w=PH^2(1-PL^2).
Let H0=30,000,000,R0=35*10^24,C=18524227541662946/10^7,
Ipaid=[C-10,C+10] union[-C-10,-C+10],
D={H0<|xi|<R0} minus Ipaid, and
Rres(f)=integral_D s4 w |Ff|^2 dxi/(2pi).
The original whole residual allowance is B=124997987/10^9.
Neither D nor any filter parameter is changed by this note.

The new actual statements are:

 PL(xi)>=1-10^-5 for EVERY real |xi|<=H1=31,075,000;      (P)

 Rres(g)>=-d28 E(g) for EVERY g in H_28m^0,
 d28< B-1/1000;                                          (R)

and, for the SAME original23m Schur complement S23,

 <S23 v,v> >=(1/1000) E(v)
 for EVERY v in Q23H intersect H_28m^0.                  (S)

Here psi_k(t)=sin(pi*k*t/4)/2 on[-4,4], zero off, and
H_N^0={sum_(k=1)^N a_k psi_k:sum(-1)^k k a_k=0}.
These are full physical trace heads, with E=sum|a_k|^2. No further moment
constraints or sampled coefficient vectors occur. Their real elements are
actual original compactC2 admissible tests: values and second derivatives
vanish at endpoints and the displayed trace cancels first derivatives.
The original gamma form is finite by the H1 shift-energy bound.

## 2. Prove the new whole real pass law for the UNCHANGED filter

Put x1=hL*H1=190179/80000<3<pi. On[0,pi], sinc is decreasing: the
derivative numerator is x cosx-sinx, whose negative has derivative x sinx
and valuezero at0. It remains to lower-bound sinc atx1. The alternating
series gives the exact interval

 Ls=sum_(j=0)^5 (-1)^j*x1^(2j)/(2j+1)!,
 Ls<=sinc(x1)<=Ls+x1^12/13!.

Every term decreases in magnitude, since x1^2<6 and later factorial ratios
are still smaller. The omitted ENTIRE alternating tail lies betweenzero
and the displayed first positive omitted term. Exact rational comparison
gives Ls>0 and Ls^2>339/4000=:p0. Therefore t(xi)=sinc(hL xi)^2>=p0
for ALL |xi|<=H1, including xi0 by continuity and negative xi by evenness.

The actual PL is Pr[X>=1425] for X~Binomial(19000,t). For r=22/25<1,
Markov's inequality applied to r^X gives

 1-PL=Pr[X<=1424]
 <=(1-t+t*r)^19000/r^1424
 <=(98983/100000)^19000/(22/25)^1424 <10^-5.               (1)

The last assertion is EXACT integer cross multiplication:

 98983^19000 *25^1424 *10^5 <100000^19000 *22^1424.

This is checked in arbitrary-precision integers. All exponents and all
integer bases are retained, so both integers are exactly reconstructible;
no approximate logarithm decides this sign. This proves (P) for the whole
interval, not a frequency sample. Since0<=PL,PH<=1 onR,

       w<=2*10^-5 on EVERY |xi|<=H1.                     (2)

In particular (2) pays the ENTIRE original annulus piece H0<|xi|<=H1.
It does not change the original source-return cutoff or delete that piece.

## 3. Actual signed source comparison, with the true physical prime support

Reuse SchurHeadExtension's constructed all458/all4096 instance on
Tcap=4.003006 and its exact covariance return for THIS SAME w:

 J_R(Pchi*w)<=Wcap J_R(w),
 Wcap=1304249574098451/22517000000000<5793/100.             (3)

This is the unweighted physical-L2 Schur law, derived by actual finite
variance components of support at most
4+2*19000*hL+2*7990*hH<Tcap. The support stays belowlog2999/2 and has
exactly the original458 atoms. The source law includes every signed prime
power; it is not inferred from nonnegative scalar weights. Its complete
source rows, signs, intervals and errors remain at their recorded exact
standalone arithmetic plus written universal-return scope.

The original source Binet bound gives A(xi)>=log|xi|-3/4 for |xi|>=100.
Exact range-reduced atanh lower bounds prove log(H0)>1721/100, hence

                   A>=823/50=16.46 throughout D.         (4)

The atanh approximation uses24 terms with its complete positive remainder
2*y^49/[49(1-y^2)] after writing n=2^k v,1<=v<2,y=(v-1)/(v+1).
Both log2 and logv intervals and all accumulated errors are retained by the
guard record; no rounded decimal establishes (4).
The actual full prime absolute mass gives |Pchi|<211 onALLR.

Let mD=J_D(w), mout=J_(R minus D)(w). Source(3) yields
J_D(Pchi*w)<=Wcap*mD+(Wcap+211)*mout: the removed prime contribution is
paid by its ABSOLUTE bound, in the correct subtraction direction.
Combining (3),(4) therefore proves for EVERY physical input

 Rres(f)>=-(4147/100)mD-(26893/100)mout.                  (5)

No positive paid interval is discarded for free. Write K_H1 for Fourier
restriction to {|xi|>H1}, and K_I for restriction to Ipaid. Equation(2)
and the unchanged original low/high pass/stop laws imply

 mD<=||K_H1 f||^2+2*10^-5 E(f),
 mout<=(2*10^-40+10^-20)E(f)+||K_I f||^2.                 (6)

Thus a genuine ALL-INPUT bounded-operator lower bound is

 R >=-(4147/100)K_H1* K_H1-(26893/100)K_I* K_I-c I,
 c=(4147/100)*2*10^-5+(26893/100)*(2*10^-40+10^-20).       (7)

Every real frequency is assigned: the entire low strip, finite masked
pair, original annulus and entire unbounded high tail appear in(6).
There is no heat/input-output norm exchange in (5)--(7).

## 4. Prove the entire28m trace-head source bound and original S23 return

For EVERY g inH_N^0 with omega_N=pi*N/4<H1, the exact sine transform
and its true native boundary trace give

 Fg(xi)=i sin(4xi)/xi^2
          *sum_(k<=N)(-1)^k a_k omega_k^3/(xi^2-omega_k^2).

Cauchy--Schwarz in E(g)=sum|a_k|^2 and the full two-sided tail integral
prove ||K_H1 g||^2<=alpha_N(H1)E(g), where

 alpha_N(H1)=pi^5 sum_(k<=N)k^6 /
        [28672 H1^7(1-(pi*N/(4H1))^2)^2].

On the complete paid mirror pair, with Cmin=C-10, the SAME identity gives
||K_I g||^2<=beta_N E(g), where

 beta_N=20*pi^5 sum_(k<=N)k^6 /
        [4096 Cmin^8(1-(pi*N/(4Cmin))^2)^2].

The factor20/pi is the total pair length40 divided by2pi; no frequency
sign or physical-basis factor is lost. Replace pi by22/7 in these formulas
to get rigorous upper prices: numerators increase and positive denominator
factors decrease. Keep the exact sixth-power polynomial
sum k^6=N(N+1)(2N+1)(3N^4+6N^3-3N+1)/42, with its existing universal
polynomial-difference proof, not a sampled identity.

At N=28,000,000 define the COMPLETE rational upper price

 d28=(4147/100)[alpha28_upper(H1)+2*10^-5]
       +(26893/100)[2*10^-40+10^-20+beta28_upper].          (8)

The exact guard gives d28=0.123630088021845... and
B-d28=0.001367898978155...>1/1000. The complete fractions are retained;
these decimals are explanatory only. Equations(5)--(8) prove (R) for ALL
coefficients. Individual smooth/complex observations are not promoted to
the full infinite physical domain.

Preserve P23, Q23, A23, Cop and S23 EXACTLY as in SchurHeadExtension.
Since H23^0 subsetH28^0, set V28=Q23H intersectH28^0. This is a physical
subspace of dimension(28m-1)-(23m-1)=5,000,000. For EVERY v inV28 and
EVERY u inH23^0, u+v lies inH28^0 and E(u+v)=E(u)+E(v). Hence(R) gives

 <(R+B I)(u+v),u+v>>=(B-d28)[E(u)+E(v)].

The old head operator A23 is already genuinely positive invertible.
Its actual completed-square minimizer u=-A23^-1 Cop v belongs toH23^0
and therefore toH28^0. Substitution proves(S), including the ENTIRE mixed
interaction with the old23m head. It does not require S23 to preserveV28.

The remaining physical complement includes the boundary direction b28
and ALL sine modes k>28m, plus their full mixed terms withV28. Its sign is
OPEN. Positivity on this source subspace and on a separate Legendre far
tail does not prove their joint sign or the finite H-5e-54G condition.

## 5. Exact original consumer, coverage, coding and evidence

The new source-aware sub-obligation discharged is a full-dimensional
trace-head sign and a positive compression of the ORIGINAL S23 with its
old-head mixed terms included. It is a genuine direct arithmetic/gamma
comparison, not a certificate framework, a full residual proof or GRH.
The exact target H-5e-54G on the actual Legendre-derived finite carrier
remains OPEN; its physical Gram is not replaced by a Euclidean norm.
The original all-test PrimitiveStageLower chi3 hp hn3 and the other stages,
zeta RH, and all other primitive Dirichlet sectors remain OPEN.
The exact GRH target remains every complex Dirichlet character modulo every
positive integer and every zero0<Re(s)<1 lying on Re(s)=1/2. No Hecke or
automorphic family and no omitted principal/imprimitive return is inferred.

No new spectral heat is needed. Reuse the existing actual residual heat
exp[-t(R+300I)] only on its justified physical L2 carrier, where its
norm-convergent exponential and bounded-source return are proved. It is
not claimed to preserveH28^0 or nativeC2 traces. Branch coverage reuses
WeightedStage's pi_j=2^(-j-1), total1 and full tail sum2^-J. Its signed
coverage step (x+(sumx)pi)/2 has exact source return2Kx-(sumKx)pi=x.
These are coverage laws only, with every unpaid branch retained.

Representable data retain the full source/type/proof descriptor, original
character/conductor/parity and norm, exact filter parameters, H0,H1,N,
Taylor/log remainder intervals, all Chernoff integer bases/exponents,
all rational Fourier/source prices, originalP23/S23, entire unobserved
tails and separate evidence statuses. Reuse PaidPacket.retainedCodec on
the TOTAL dependent descriptor plus complete guard/proof/checker bytes.
Its native partial roundtrip is decode(encode(data))=some(data); existing
decodeRetained then proves decodeRetained(encode(data))=data for EVERY
retained packet. Finite factored integer descriptions reconstruct exact
integer powers; they do not manufacture their checked comparison. No
arbitrary semantic L2 input is asserted finitely encoded. All infinite
mode/frequency and source-return obligations remain in the bound syntax.

Status: complete WRITTEN proof of(P),(5)--(8),(R),(S); exact rational,
polynomial and arbitrary-precision integer guards PASS; actual source
row/variance laws reused at their recorded scope. Numerical paid-mask
experiments elsewhere are diagnostic only and do not support this sign.
Lean/kernel/axiom/human review NOT_RUN. This standard Chernoff/source/
Fourier/minimization mechanism is specialized to the actual unchanged
filter; novelty beyond that quantitative instance is NOT_ASSESSED.

-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourLowPassExtension

def extendedPassFrontier : ℕ := 31075000
def lowBoxWidth : ℚ := 153 / 2000000000
def passEndpoint : ℚ := lowBoxWidth * (extendedPassFrontier : ℚ)
def sincLower : ℚ :=
  ∑ j ∈ Finset.range 6, (-1 : ℚ)^j * passEndpoint^(2*j) /
    (Nat.factorial (2*j+1) : ℚ)
def binomialProbabilityLower : ℚ := 339 / 4000
def markovRatio : ℚ := 22 / 25
def binomialBase : ℚ :=
  1 - binomialProbabilityLower + binomialProbabilityLower * markovRatio

def nativeHeadRank : ℕ := 28000000
def piUpper : ℚ := 22 / 7
def sixthPowerSum : ℚ :=
  let n := (nativeHeadRank : ℚ)
  n*(n+1)*(2*n+1)*(3*n^4+6*n^3-3*n+1)/42

def outerRatio : ℚ :=
  piUpper * (nativeHeadRank : ℚ) / (4 * (extendedPassFrontier : ℚ))
def paidCenterLower : ℚ := 18524227541662946 / 10^7 - 10
def paidRatio : ℚ := piUpper * (nativeHeadRank : ℚ) / (4 * paidCenterLower)
def outerLeakageUpper : ℚ :=
  piUpper^5 * sixthPowerSum /
    (28672 * (extendedPassFrontier : ℚ)^7 * (1 - outerRatio^2)^2)
def paidMassUpper : ℚ :=
  20 * piUpper^5 * sixthPowerSum /
    (4096 * paidCenterLower^8 * (1 - paidRatio^2)^2)
def nativeHeadPrice : ℚ :=
  (4147/100 : ℚ) * (outerLeakageUpper + 2/10^5) +
    (26893/100 : ℚ) * (2/10^40 + 1/10^20 + paidMassUpper)
def originalBudget : ℚ := 124997987 / 10^9

/-- Complete real pass and Chernoff laws are the written proof; this is scalar. -/
theorem exact_pass_parameters :
    passEndpoint = 190179/80000 ∧ (0 : ℚ) < sincLower ∧
      binomialProbabilityLower < sincLower^2 ∧
      binomialBase = 98983/100000 := by
  norm_num [passEndpoint, lowBoxWidth, extendedPassFrontier, sincLower,
    binomialProbabilityLower, binomialBase, markovRatio, Finset.sum_range_succ]

/-- All-mode trace-head/source return is written above, independently of Lean. -/
theorem exact_head_source_gap :
    (0 : ℚ) < outerRatio ∧ outerRatio < 1 ∧
      (0 : ℚ) < paidRatio ∧ paidRatio < 1 ∧
      (1/1000 : ℚ) < originalBudget - nativeHeadPrice ∧
      nativeHeadRank - ConductorThreeRadiusFourResidualHead.nativeHeadRank = 5000000 := by
  norm_num [outerRatio, piUpper, nativeHeadRank, extendedPassFrontier,
    paidRatio, paidCenterLower, originalBudget, nativeHeadPrice,
    outerLeakageUpper, sixthPowerSum, paidMassUpper,
    ConductorThreeRadiusFourResidualHead.nativeHeadRank]

/-- Full dependent source/type/proof/error bytes; no arithmetic sign manufactured. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

/-- The entire unobserved branch tail stays separate from the residual heat. -/
theorem entire_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1/2 : ℝ)^J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourLowPassExtension
