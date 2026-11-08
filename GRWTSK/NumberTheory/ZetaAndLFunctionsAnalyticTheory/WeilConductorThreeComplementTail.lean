/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors

Source baseline: grwtsk/math 01f185bea6e217fed3ddfb94ed4e56f952322853.
Finite arithmetic was pinned at ddca9b378db8346a564f1cb90c2ed48033a6b6c8;
the consumed character, stage, gamma and prime source files are unchanged.
Primary analytic reference: NIST DLMF 5.9.15 (Binet's digamma integral).
AI-assisted written analytic proof and exact integer/rational computation.
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletCompactFilterReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreePrimitiveGauss
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc

/-!
# The entire high-frequency part of the conductor-three complement

This proves a WRITTEN universal high-variance source inequality and its
return to the original complement. It does NOT prove the remaining finite
annulus sign, complementary bound (7), or PrimitiveStageLower at j=2.
Subsequent progress: WeilConductorThreeFiniteAnnulus supplies the completed
WRITTEN computer-assisted annulus bound and original stage j=2. The open-sign
language below records this earlier reduction's original scope. No compilation
or kernel evidence is transferred from that later written result.

The Lean declarations retain the actual source and finite arithmetic;
the Fourier/variance argument has not been elaborated into Lean.

## Original type, normalization and exact consuming branch

Use the EXISTING genuine `modThreeQuadratic : DirichletCharacter Complex 3`,
its nonprincipal and primitive proofs. It has residue values (0,1,-1)
and gamma parity one. The input is EVERY original
`DirichletStageChain.Admissible modThreeQuadratic 3 f`:
real odd compact C2, zero outside [-3,3], physical Lebesgue L2(dt), and
finite parity-one gamma correction. No sine-mode restriction is imposed.
Put E=integral |f|^2, F(xi)=integral f(t)exp(-i xi t)dt and

 A(xi)=log(3/pi)+Re psi(3/4+i xi/2),
 P_arith(xi)=2 sum_(n=p^e<=403,p!=3)
                    log(p)/sqrt(n)*chi3(n)*cos(xi log n),
 V(xi)=1-sinc(xi/3000000)^12, m(xi)=V(xi)[A(xi)-P_arith(xi)].

The polynomial sum is the literal native `twistedPrime 3` evaluated at
cosine correlations, with all 93 nonzero prime powers. It is not a new
Euler source. The original arithmetic form is
`primitiveArithmeticValue chi3 hp hn 3 (liftReal f)` and equals the
integral of (A-P_arith)|F|^2/(2*pi). Positive angular `paperFT` has the
same real-axis squared norm as F; the declarations below reuse it.

Let Bk be the symmetric closed radius-100 bands about plus or minus ck, where
c0=5941908399/16, c1=7870097212203/10000, c2=371368841677/1000.
Their unions are disjoint and contained in |xi|<10^9. The requested
complement is J_(B0^c)(m), where J_D(a)=integral_D a|F|^2/(2*pi).
Its required bound is -E/5, for EVERY input above.

## Constructed filter and new mathematical theorem

Set M=7990, K=2820, h0=1/2000000000, epsilon=10^-10, and

 t(xi)=sinc(h0*xi)^2,
 p(t)=sum_(j=K)^M binomial(M,j)t^j(1-t)^(M-j),
 H(xi)=1-p(t(xi))^2.

Then 0<=t,p,H<=1 on the whole real line. The WRITTEN conclusions are

 J_all(mH) >= -11567/2500000000000 * E,                       (T1)
 J_(B0^c)(m) >= J_([-Rstop,Rstop]\B0)(m*p(t)^2) - delta*E,    (T2)

where J_all integrates over the whole real line, Rstop=3500000000 and
delta=11567/2500000000000+76*10^-20+192*10^-40
     <462681/10^14.
Thus the ENTIRE unobserved frequency tail is paid. No finite passing
sample is used to assert the remaining signed integral is bounded.

## Exact physical Schur input and its finite assurance

At Tstar=300001/100000, reuse the complete 4096-cell positive weight
from the radius-three conductor-three prime calculation, historical
source bdb52f3b42fbdf668f4853b0eea2653292599500. The complete payload
SHA256 is ffc130970bfd66095046bcb123e1027ea90b9ba1e52d984be00e7404efa7945d;
its pure exact checker SHA256 is
079ae163fae2ade21ac1ee95e68d9c66f36b04e35699a1a45ecc26a55c94caae.
These identify finite evidence, not a proof-kernel receipt.

The finite construction is reproducible: divide absolute time [0,Tstar]
into N=4096 cells. Enclose log(n)/(Tstar/N) strictly in (d,d+1) by
24-term atanh logarithm intervals, and price log(p)/sqrt(n) upward
on the 10^8 grid, using a lower square root on the 10^12 grid. Include
every power n=p^e<=403 except p=3. Start all integer heights at 10^6;
repeat 12 times h_i=floor(10^6*row_i/max(row)). For each row and each
atom (d,price), charge price times
max(h_(i+d),h_(i+d+1))+max(h_reflect(i-d-1),h_reflect(i-d)),
with reflect(j)=-j-1 for j<0 and zero outside the physical support.
The saved full arrays and their exact recomputation agree.

A fresh standalone integer/rational replay of ALL 4096 complete rows
and all 93 original atoms proves the exact maximum
677738564990401/32069900000000 < W=10567/500.
The entire scalar prime half-mass is <181/5, with all rounding errors
upward. No row, prime power or boundary cell is sampled or omitted.

Here is the analytic return: the even step weight omega has strictly
positive heights on [-Tstar,Tstar]. Neighboring translated heights
are bounded by precisely those cell maxima, giving almost everywhere
sum_n weight_n[omega(t+r_n)+omega(t-r_n)]<=W*omega(t).
The weighted 2ab inequality and Lebesgue translation imply, for EVERY
real or complex physical L2 test u supported in that window,

 integral P_arith(xi)|U(xi)|^2/(2*pi) <= W*||u||_2^2.            (S)

Character signs are retained in P_arith and bounded absolutely only
in this upper estimate. There is no parity premise in (S). The metric
is still physical L2: omega is an auxiliary Schur weight.
The inventory stays exactly <=403 throughout Tstar, since
403<exp(6) and exp(2*Tstar)<404.

## Binet bounds and real-axis filter laws

For z=u+iv, u=3/4, v>0, Binet gives
psi(z)=log z-1/(2z)-2 integral t/[(t^2+z^2)(exp(2*pi*t)-1)]dt.
Since |t^2+z^2|>=2uv and integral t/(exp(2*pi*t)-1)dt=1/24,
|psi(z)-log z+1/(2z)|<=1/(18v). The integral value follows by
Tonelli, the exponential geometric series and sum k^-2=pi^2/6.
Consequently
Re psi(z)>=log v-3/(8v^2)-1/(18v),
Re psi(z)<=log v+9/(32v^2)+1/(18v).
With v=|xi|/2 these give A>=log|xi|-3/4 and A<=log|xi|+1 for
|xi|>=100. Exact guards are exp(.74)>44/21 and
.74+3/(2*100^2)+1/(9*100)<.75. The digamma difference series
and the actual quarter special value give A>=A(0)>-2 globally
and monotonicity in |xi|. Thus A<22 for |xi|<=10^9.
The exact exponential guard exp(W+3/4)<3200000000 proves A>=W
on |xi|>=X=3200000000.

The alternating sinc polynomial through degree six, at x=8/5, has
positive square >39/100. Sinc is positive decreasing on [0,8/5]
by the derivative calculation below, so t>=39/100 for |xi|<=X. The upper
polynomial through degree eight at y=7/4 has square <317/1000.
Sinc is positive decreasing on [7/4,2], since the derivative numerator
x*cos(x)-sin(x) has derivative -x*sin(x)<0 on (0,2]. Also
|sinc x|<=1/|x| beyond 2; hence t<=317/1000 for EVERY |xi|>=Rstop,
all lobes included.

For Z~Binomial(M,t), p(t)=Pr(Z>=K). Markov's inequality applied
to r^Z (r=17/20<1) and s^Z (s=47/40>1), respectively, gives
Pr(Z<=K-1)<=(1-t+tr)^M/r^(K-1),
Pr(Z>=K)<=(1-t+ts)^M/s^K.
At the two rational t endpoints, exact integer cross multiplication
makes BOTH bounds <epsilon. Monotonicity in t, proved by coupling
the Bernoulli trials with common uniforms, therefore gives

 |xi|<=X: p>=1-epsilon and H<=2epsilon;
 |xi|>=Rstop: p<=epsilon.

On |xi|<=10^9 use t>459/500 and r=1/10 in the first formula;
its exact bound is <10^-40. Thus H<=2*10^-40 on ALL three bands.

## Actual variance realization; no arithmetic sign from positive weights

Let eta be uniform probability on [-h0,h0]. Then t=|etahat|^2 and
1-t=E_(S~eta)|exp(i*xi*S)-etahat|^2. The latter is the squared
transform of the real signed measure delta_S-eta, averaged over S;
each measure is supported in [-h0,h0]. Write L=1-p. Its Bernstein
expansion has nonnegative coefficients and H=L+Lp. Every monomial
t^a(1-t)^b is an expected squared transform of a convolution of
a copies of eta and b independent delta_S-eta factors. Its radius
is at most (a+b)h0, and a+b<=2M for every term of H.

For the wide factor let mu be SIX uniform box convolutions of radius
h=1/3000000. It has radius 6h, transform sinc(h*xi)^6, and
V=E_(S~mu)|exp(i*xi*S)-muhat|^2. Each delta_S-mu has radius 6h.
Multiplying the variance representations and applying them to the
ORIGINAL f therefore produces actual compact C2 tests of radius

             3+6h+2M*h0=3.00000999<Tstar.                       (D)

They need not be odd; (S) covers precisely this larger test carrier.
All finite-degree signed kernels have uniformly finite total variation.
Their source gamma energies are integrable using
||tau_r u-u||^2<=min(r^2||u'||^2,4||u||^2), and the prime inventory
is finite. Thus expectation, Fourier integration and source return
are justified. Equivalently F=O((1+|xi|)^-2) gives absolute convergence.
Applying (S) to each represented test proves
J_all(P_arith*V*H)<=W*J_all(V*H).
Subtract from the gamma integral. Above X, A-W>=0. Below X,
A-W>=-(W+2), while VH<=H<=2epsilon. Plancherel proves (T1).

For (T2), decompose EXACTLY
J_(B0^c)(m)=J_all(mH)-J_B0(mH)+J_(B0^c)(m*p^2).
The removed term needs an UPPER bound: on B0, m<=96 and H<=2*10^-40,
so J_B0(mH)<=192*10^-40 E. Outside [-Rstop,Rstop], m>=-76 and p^2<=epsilon^2,
so the ENTIRE last tail is >=-76*epsilon^2 E. This proves (T2).

## Connection to the still-open finite sign and the original stage

The previously proved B1,B2 packet bound is J_(B1 union B2)(m)>=
-1037/500000 E at its recorded written/exact-arithmetic scope. Inserting
p^2 subtracts J_(B1 union B2)(mH); combine it with B0 and pay the
ENTIRE disjoint union ONCE by 192*10^-40 E. On |xi|<=10^4, s>=-372/5
and V<=2h^2*xi^2, giving the pointwise m*p^2>=-31/18750. This is why
that inner bound survives; arbitrary mixed-sign quadratic bounds would
not survive merely from 0<=p^2<=1.

Let Dprime={10^4<|xi|<3500000000}\(B0 union B1 union B2).
The resulting PROVED comparison is

 J_(B0^c)(m)>=J_Dprime(m*p^2)-[31/18750+1037/500000+delta]E.       (T3)

The next exact missing lemma is J_Dprime(m*p^2)>=-98136331/500000000 E
for EVERY original Admissible test. Exact arithmetic shows that budget
is strictly smaller than 1/5-31/18750-1037/500000-delta. It remains
UNPROVED. If supplied, (T3) proves (7); the separately recorded original
B0 cost .002652 and source-smoothing cost .001 then give
Q_chi3,3>=-.203652 E>=-E/4, the original PrimitiveStageLower at j=2.
One stage does not supply all SmallConductorStages. The cofinal GRH
consumer still requires every missing primitive sector and the separate
zeta/RH branch. The target remains all Dirichlet L-functions over every
positive modulus, not Hecke or automorphic GRH.

## Evidence transport and comparison

The finite scalar/row replay passed under Python -O, independently rerun
after agent construction. Companion checker SHA256:
130ce850706438bce03a1dd3ffe749d961a57de34561ad7e31dd253696d073a0;
scalar payload SHA256:
0ef5be351a579b584bb8ac8b5540c30d8ebc8991a8924aa5732d836343b46084.
This is exhaustive finite arithmetic, not a fresh Lean/kernel result.
The analytic proof received a separate agent sign/domain audit; human
review, formal Fourier/variance proof, compilation and axiom audit are
NOT_RUN. No finite passing cases assert the missing Dprime inequality.

All branch types are the original Admissible, PrimitiveStageLower and
SmallConductorStages above, with explicit physical norm, source and full
quantifiers. Auxiliary random signed-kernel tests have compact C2
physical radius (D), no parity hypothesis, and retain the same q=3,
parity-one source; (S) is quantified over the full supported physical L2
carrier. For every type, representable finite proof data reuse the typed
description/`dependentProofCodec` interface of
WeilDirichletCompactFilterReturn: source, character table, stage, type
context, exact parameters, full Schur recipe, every rounding error,
whole-tail laws and evidence status are fields. Decode after encode
recovers the dependent pair; on the encoder image decode(encode x)=x.
Finite syntax denotes the infinite integrals and laws, without deleting
their domain or convergence proofs. No semantic real function is claimed
finitely encodable. Branch heat is ONLY exhaustive dyadic coverage,
with pi_n=2^(-n-1), tail 2^(-J), and source return x=2Kx-(sum Kx)pi
for summable x. It proves no arithmetic sign. The variance factorization
in this proof is an actual finite random-convolution construction, not
that branch heat or a spectral semigroup.

This comparison improves the old radius-3e12/narrow-smoothing reduction
to radius 3.5e9 on the original test, and avoids the support error of
applying a physical Schur bound after a hard Fourier projection. Both
routes share the original source and finite Schur witness. Worldwide
novelty is NOT_ASSESSED; no RH/GRH proof is claimed.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeComplementTail

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open OddRootProjection CharacterWindow RealWeilSource

/-- Genuine source parity; no substituted character is introduced. -/
theorem source_parity_one : gammaParity modThreeQuadratic = 1 := by
  have heq : (-1 : ZMod 3) = 2 := by decide
  have hchi : modThreeQuadratic (-1) = -1 := by
    rw [heq, modThreeQuadratic_two]
  norm_num [gammaParity, hchi]

def gammaSymbol (xi : ℝ) : ℝ :=
  Real.log (3 / Real.pi) + (Complex.digamma (3 / 4 + Complex.I * xi / 2)).re

def primeSymbol (xi : ℝ) : ℝ :=
  twistedPrime 3 modThreeQuadratic
    (fun n => (Real.cos (xi * Real.log (n : ℝ)) : ℂ))

def sourceMultiplier (xi : ℝ) : ℝ :=
  (1 - Real.sinc (xi / 3000000) ^ 12) * (gammaSymbol xi - primeSymbol xi)

/-- The explicitly constructed finite probability polynomial, upper tail. -/
def binomialFilter (t : ℝ) : ℝ :=
  ∑ j ∈ Finset.Icc 2820 7990,
    (Nat.choose 7990 j : ℝ) * t ^ j * (1 - t) ^ (7990 - j)

def spectralFilter (xi : ℝ) : ℝ :=
  binomialFilter (Real.sinc (xi / 2000000000) ^ 2)

def symmetricBand (c : ℝ) : Set ℝ :=
  Icc (c - 100) (c + 100) ∪ Icc (-c - 100) (-c + 100)

def originalBand : Set ℝ := symmetricBand (5941908399 / 16)

def criticalAnnulus : Set ℝ :=
  {xi | 10000 < |xi| ∧ |xi| < 3500000000} \
    (originalBand ∪ symmetricBand (7870097212203 / 10000) ∪
      symmetricBand (371368841677 / 1000))

/-- Squared physical Fourier amplitude, with the native positive convention. -/
def fourierMass (f : ℝ → ℝ) (xi : ℝ) : ℝ :=
  ‖Zeta23.paperFT (realTest f) (xi : ℂ)‖ ^ 2

def originalComplement (f : ℝ → ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ xi in originalBandᶜ,
    sourceMultiplier xi * fourierMass f xi

def finiteAnnulusValue (f : ℝ → ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ xi in criticalAnnulus,
    sourceMultiplier xi * spectralFilter xi ^ 2 * fourierMass f xi

def directTailPrice : ℚ :=
  11567 / 2500000000000 + 76 / 10 ^ 20 + 192 / 10 ^ 40

theorem variance_support_margin :
    (3 : ℚ) + 6 / 3000000 + 2 * 7990 / 2000000000 < 300001 / 100000 := by
  norm_num

theorem directTailPrice_lt : directTailPrice < 462681 / 10 ^ 14 := by
  norm_num [directTailPrice]

/-- Finite arithmetic only. It does not supply the missing annulus sign. -/
theorem remaining_budget_margin :
    (98136331 / 500000000 : ℚ) + 31 / 18750 + 1037 / 500000 +
      directTailPrice < 1 / 5 := by
  norm_num [directTailPrice]

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeComplementTail
