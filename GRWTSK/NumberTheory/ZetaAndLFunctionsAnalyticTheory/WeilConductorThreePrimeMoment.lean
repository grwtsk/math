/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source inspected: grwtsk/math 403254f825950fcdc743fd3cd1043580b7689979.
Actual source: ConductorThreeComplementTail.primeSymbol, all 93 atoms.
Primary argument: exact cosine integration, log-frequency separation,
finite rational majorants and physical Cauchy--Schwarz, written below.
Only finite enumeration and scalar guards are formalized in this file.
Independent AI-agent mathematical challenge; independent human review NOT_RUN.
No RH/GRH sign, complete stage, or worldwide novelty claim is made.
-/
import Mathlib.Tactic

/-!
# Integrated control of the complete conductor-three prime symbol

This repairs a source-normalization inference in AnnulusSineEnclosure:
the prime half-mass <181/5 implies |P|<362/5, not |P|<181/5. We do
not need the latter pointwise claim. The actual integrated consumer B
has a stronger independently proved bound.

Retain the ORIGINAL chi3, parity one, physical T=3 and all prime powers
n=p^e<=403, p!=3, e>=1. The next power cutoff is strict because the
native physical correlation vanishes for log n>=6; these are exactly
the source's 93 nonzero active atoms. Put

 a_n=chi3(n)*log(p)/sqrt(n), r_n=log n,
 P(xi)=2*sum_n a_n*cos(r_n*xi), R=3500000000.

No sign of a_n or P is assumed. All integrations below are Lebesgue
integrations over the ENTIRE [0,R], not a numerical sampling grid.

For p>=2 let k=log2(p-1)+1, the least k with p<=2^k, and
 u(n,p)=ceil(490*k^2/n). The positive exponential Taylor sum through
cubic order at 7/10 is 12013/6000>2. Thus log 2<7/10 and

 a_n^2<49*k^2/(100*n)<=u(n,p)/1000.

The enumeration below generates every prime 2<=p<=403 except 3 and
every exponent 1<=e<=8 with p^e<=403. There is no possible exponent
e>=9 since 2^9>403. It checks all 93 terms, sum u=19675 and u<1000
term by term. Hence D=sum a_n^2<20, and |a_n|<1 gives S=sum|a_n|<93.
The numerator/denominator rounding is upwards throughout.

For distinct n,m<=403,
 |r_n-r_m|=|integral_n^m dx/x|>=1/403;
 r_n+r_m>=log4>1, and r_n>=log2>1/2.
These inequalities hold for EVERY pair, including distinct powers of
the same prime. Direct integration gives

 integral_0^R cos(r_n xi)^2 dxi
    =R/2+sin(2Rr_n)/(4r_n),
 integral_0^R cos(r_n xi)cos(r_m xi)dxi
    =sin(R(r_n-r_m))/(2(r_n-r_m))
       +sin(R(r_n+r_m))/(2(r_n+r_m)).

After multiplying by the ORIGINAL factor 2 in P and retaining all
cross terms, the diagonal remainder is <=2D. Each unordered cross
pair costs at most 4*(403+1)|a_na_m|. Thus

 integral_0^R P^2 <=2RD+2D+1616*sum_(n<m)|a_na_m|
                 <=2RD+808S^2
                 <40R+808*93^2<41R.                        (1)

The last rational guard is checked below. Cauchy--Schwarz on [0,R]
now proves integral |P|<=sqrt(R*integral P^2)<sqrt(41)R<7R.
This argument has no physical-metric change and uses no desired sign.

For the actual gamma symbol A, the existing analytic source bound is
 |A(xi)|<23 on [0,R]. It follows from the increasing digamma difference
series, its parity-one value at zero and the stated Binet bounds;
it remains an analytic source input, not a finite-enumeration theorem.
For ANY measurable mask 0<=w<=1, therefore,

 b=w*(A-P), B_w=integral_0^R |b|<23R+7R=30R.                (2)

In particular (2) applies to EXACTLY BOTH original masks
 1_criticalAnnulus*V*P_H^2,
 1_scanAnnulus*V*P_H^2*(1-P_L^2).
Every band exclusion, low-filter complement and source normalization
is retained. Real-axis binomial/sinc laws prove these masks lie in
[0,1]. No replacement of masked by unmasked head signs is permitted.

The signed physical odd operator is
 A_b=(2/pi)*integral_0^R b(xi)|sin(xi .)><sin(xi .)|dxi
on L2((0,3),dt). Since ||sin(xi .)||^2<=3, (2) proves its actual
trace-class integrability. The original Fourier normalization gives
J_b(f)=2<u,A_bu>, E(f)=2||u||^2, u=f|(0,3), exactly as in
AnnulusSineEnclosure. It also supplies the B input for the improved
ENTIRE endpoint-lift tail in WeilConductorThreeEndpointTail.

This closes the absolute/integrated source-control leaf. It does not
prove a lower spectral bound: the ACTUAL masked finite head remains
signed and unproved. For a sine-only head N=10^26, (2) improves the
mixed norm to <7/500 while the existing high norm remains <1/1000;
a head margin 1/1000 would suffice by the final determinant guard.
This is a conditional consumer, not a claimed passing head.

Heat/coding interface: the analytic types here are the exact finite
character/atom table, real trigonometric polynomial on [0,R], Lebesgue
L1/L2 norms on that frequency interval, bounded measurable source mask,
and the physical odd Hilbert operator just specified. Finite data retain
the original source revision and declaration, chi3 table (0,1,-1),
parity, p,e,n,k,u, full interval/mask and Fourier/physical-norm tags,
all quantified hypotheses, gamma-bound provenance and error statuses.
The atom table and rational proof syntax have the same lossless
tagged finite-tree/length-decoding instance described in
CompactFilterReturn: induction gives decode(encode x)=some x, or
literal equality with decode restricted to the encoder image. (1)
and (2) are retained as complete analytic statements, not inferred
from decoding. Arbitrary w is a bound function variable, not finitely
encoded samples. No codec for all real functions is claimed.

Branch coverage uses the same exhaustive natural-code indexing and
pi_n=2^(-n-1), including its entire reference tail 2^(-J). Its exact
signed inverse and full absolute-tail requirement are recorded in
EndpointTail section 5. No arithmetic Euler sign certificate or
spectral semigroup estimate is used to prove (1)--(2), and coverage
weights assert none. The original branches remain finiteAnnulusValue,
scanHighValue, PrimitiveStageLower chi3 hp hn 2 and ultimately the
existing DirichletGRH; no new target is substituted.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreePrimeMoment

/-- Complete literal inventory; exponent nine and beyond are excluded by 2^9>403. -/
def atomInventory : List (ℕ × ℕ) :=
  (List.range 404).flatMap fun p =>
    if p.Prime ∧ p ≠ 3 then
      (List.range 9).filterMap fun e =>
        if 0 < e ∧ p ^ e ≤ 403 then some (p, p ^ e) else none
    else []

/-- Upward rational square price at denominator 1000, with original (p,n). -/
def squarePrice (atom : ℕ × ℕ) : ℕ :=
  let k := Nat.log2 (atom.1 - 1) + 1
  (490 * k * k + atom.2 - 1) / atom.2

theorem complete_atom_count : atomInventory.length = 93 := by decide

theorem complete_square_price_sum :
    (atomInventory.map squarePrice).sum = 19675 := by decide

theorem every_square_price_small :
    atomInventory.all (fun a => decide (squarePrice a < 1000)) = true := by decide

theorem no_exponent_tail : 403 < (2 : ℕ) ^ 9 := by norm_num

theorem log_two_taylor_guard :
    (2 : ℚ) < 1 + 7 / 10 + (7 / 10) ^ 2 / 2 + (7 / 10) ^ 3 / 6 := by
  norm_num

theorem complete_second_moment_guard :
    (40 : ℚ) + 808 * 93 ^ 2 / 3500000000 =
      17500873549 / 437500000 ∧
    (17500873549 / 437500000 : ℚ) < 41 := by norm_num

theorem integrated_absolute_guard : (41 : ℚ) < 7 ^ 2 := by norm_num

theorem improved_sine_head_guard :
    (7 / 500 : ℚ) ^ 2 < (1 / 1000) * (6 / 25 - 1 / 1000) := by norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreePrimeMoment
