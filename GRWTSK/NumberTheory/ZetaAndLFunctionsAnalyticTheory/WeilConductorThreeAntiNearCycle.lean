/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors

Source candidate at grwtsk/math 01f185bea6e217fed3ddfb94ed4e56f952322853.
Finite arithmetic pin ddca9b378db8346a564f1cb90c2ed48033a6b6c8;
the original prime, character and Schur source identities are unchanged.
Finite declarations cover integer/rational source words and physical cores.
The full operator inequality below is WRITTEN, not formalized in Lean.
AI-assisted source; INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
WRITTEN_EXACT_ARITHMETIC_CHECKED_EXTERNALLY; LEAN_COMPILATION_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
No radius-three complementary integral sign is asserted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeComplementTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeOrbitWeightedWeilBridge

/-!
# An actual conductor-three arithmetic return in the physical prime form

This gives a WRITTEN operator inequality on the ENTIRE physical L2 carrier,
with exact finite source-word, row and coverage arithmetic. It does NOT
prove the finite annulus sign or PrimitiveStageLower at radius three.
The finite Lean bodies below have NOT been compiled or kernel checked.

Use Tstar=300001/100000, Istar=[-Tstar,Tstar], the genuine
modThreeQuadratic, and every one of the 93 original unramified prime powers
n=p^e<=403, with w_n=log(p)/sqrt(n), r_n=log(n). For arbitrary COMPLEX
zero-extended f in L2(Istar,dt), keep the original physical mass E(f) and
Pchi(f)=2 sum_n w_n chi3(n) Re integral conj(f(t))*f(t+r_n)dt.
This is the existing twistedPrime applied to the existing source correlation.
There is no oddness, derivative or gamma-energy hypothesis in this theorem.

Let Wstar=677738564990401/32069900000000, the EXACT maximum of all
4096 physical Schur rows in the full witness reproduced in
WeilConductorThreeComplementTail. Put
 d=log(100004958529/100004958530).
The result is

 Pchi(f) <= (Wstar-13/35000)E(f)
                     +(13/3150)||f(.+d)-f||_2^2.                 (A)

The translation term is indispensable. This is a bound on the original
physical norm and signed prime source, not a weighted-norm replacement
or an unconditional constant spectral gap.

## Source defect, arithmetic word and exhaustive physical coverage

Let h be the even Schur step weight, normalized by dividing its retained
integer heights by 10^6. The full exact calculation gives
3/10<=h<=1 on Istar (actual minimum integer height 301978). Extend f/h
by zero outside Istar and call it u. For each atom set

 D_n=w_n integral_(t,t+r_n in Istar) h(t)h(t+r_n)
                                 |u(t+r_n)-chi3(n)u(t)|^2dt.

Expanding the squares and changing variables gives EXACTLY
 sum_n D_n=integral V_h(t)|f(t)|^2dt-Pchi(f),
 V_h(t)=sum_n w_n [h(t+r_n)+h(t-r_n)]/h(t),
where neighbors outside Istar are zero. The full row inequality is
V_h<=Wstar almost everywhere. Hence S=Wstar E(f)-Pchi(f)>=sum_n D_n.
All D_n are nonnegative, but their phases are the ACTUAL chi3(n).
No arithmetic sign is inferred merely from a positive weight.
For real u this square expansion is precisely the weighted instance of
the existing `PrimeOrbitWeightedWeilBridge.primePowerEdge_source`.
The complex case uses the same antilinear-first correlation and the
Hilbert norm-square expansion; no new arithmetic edge is substituted.

The consecutive integers have the exact factorizations
 N=100004958529=7^2*37^2*79*113*167,
 M=100004958530=2*5*19*41*43^2*53*131.
They are respectively 1 and 2 modulo 3, so chi3(N/M)=-1. An actual
ordered prime word is
 +7,-53,+79,-131,+167,-43,+37,-43,+37,-19,-5,+113,-41,-2,+7,
where a signed prime denotes a shift by plus or minus log(p).
Its total shift is d and |d|=log(1+1/N)<1/N. Every edge is an original
source prime; all other original prime powers remain in sum D_n.

The exact prefix-product extrema are 553/6943 and 92351/6943; their
ratio is 167. For any reflected/cyclically rotated word, with exact
prefix extrema a<=b, its safe starting interval is
 C(T)=[-T-log(a), T-log(b)]. Every vertex of that complete path stays
in [-T,T]. A reflection inverts each signed factor, changes d to -d,
and preserves the total character sign -1.

Use the nine (reflection,zero-based rotation) pairs
 (-1,5),(-1,1),(+1,6),(+1,10),(-1,0),(-1,10),(-1,8),(-1,2),(+1,5).
Their ACTUAL source words and attained extrema are retained together in
coreData below, not inferred from unrelated numerical boxes. In their
listed order both extrema decrease; the first minimum is 1, the last
maximum is 1, and every adjacent quotient b_k/a_(k+1) is <403.
Also a<=1<=b and b/a<403 for each word. Since 403<exp(6)<=exp(2T)
for EVERY T>=3, the nine safe intervals are nonempty, stay in [-T,T],
and overlap in order from -T to T. This proves exhaustive coverage of
the ENTIRE physical interval, including Tstar. No unobserved physical
remainder is discarded.

## Exact local-to-global proof of (A)

On a safe core, telescope u along its complete source word, multiplying
by the preceding character phases. The final anti-return is
u(t+sigma*d)+u(t), sigma=+1 or -1. The coefficients have modulus one.
A backward p-edge is charged to the SAME D_p by translation.

If m_p is its number of p occurrences, three primes (7,37,43) occur
twice and nine occur once, so sum_p m_p^2=21. Exact rational logarithm
and square-root enclosures give w_p>=39/100 on every path prime.
Taking L2 norms on the safe core, grouping repeated primes, and applying
Cauchy-Schwarz gives

 ||u(.+sigma*d)+u||_core
 <= sum_p m_p sqrt(D_p/(w_p*hmin^2))
 <= sqrt(sum_p m_p^2/(w_p*hmin^2))*sqrt(sum_n D_n).

Thus for EACH of the nine actual cores,
 S >= c integral_core |u(t+sigma*d)+u(t)|^2dt,
 c=(3/10)^2*(39/100)/21=117/70000.                              (B)

Choose disjoint measurable A_k contained in core k and covering Istar,
by assigning each point to its first covering core. There is no need
for the discontinuous Schur weight to satisfy a derivative estimate.
At each such point, both endpoint weights are positive and

 u(t+sigma*d)+u(t)
   =[1/h(t+sigma*d)+1/h(t)]f(t)
                  +[f(t+sigma*d)-f(t)]/h(t+sigma*d).

The first coefficient is real and >=2, and the second reciprocal is
<=10/3. The Hilbert-space inequality |a+b|^2>=|a|^2/2-|b|^2 gives
 |u(t+sigma*d)+u(t)|^2
 >=2|f(t)|^2-(100/9)|f(t+sigma*d)-f(t)|^2.

Sum over the DISJOINT A_k. The physical mass is exactly E(f), with no
multiplicity cost. For sigma=+1 the error regions together cost at most
||f(.+d)-f||^2; for sigma=-1 they cost at most
||f(.-d)-f||^2, the same norm by translation. Therefore

 sum_k integral_(A_k) |u(t+sigma_k*d)+u(t)|^2
       >=2E(f)-(200/9)||f(.+d)-f||^2.

Each integral is bounded by its full core integral. Sum the nine bounds
(B), obtaining 9S/c as an upper bound on this sum. Multiplication by
c/9 proves (A): 2c/9=13/35000 and 200c/81=13/3150. All integrals
exist for the stated physical L2 domain because h and its reciprocal
are bounded on Istar; only bounded translations occur.

## Actual consumers and scope

For physical H1 functions with the EXPLICIT hypothesis
||f'||_2<=4600000000||f||_2, translation gives
||f(.+d)-f||_2<=(23/500)||f||_2, since N>10^11. Thus
 Pchi(f)<=[Wstar-285623/787500000]E(f)
        <=[Wstar-1/3000]E(f).                                  (C)
This is a genuine improvement below the EXACT Schur maximum Wstar,
not merely below a rounded row price. It applies to that derivative
carrier, which cannot replace all Admissible radius-three tests.

For the constructed compact binomial filter in
WeilConductorThreeComplementTail, let v=p(sinc(h0*D)^2)f with
h0=1/(2*10^9), M=7990, K=2820. Here t=sinc(h0*xi)^2 is the
transform of eta*eta, of radius 2*h0. The degree-M polynomial P
therefore has signed convolution kernel radius at most 2*M*h0,
so v has physical support radius <=3.00000799<Istar.
Its multiplier P satisfies sup_xi |xi*P(xi)|<=3500000000:
below Rstop this is immediate; between Rstop and 8*10^9 the stop
bound P<=10^-10 gives |xi*P|<=4/5; for |xi|>=8*10^9, x=h0|xi|>=4
and binomial Markov gives P<=binomial(M,K)*x^(-2K)<=2^M*x^(-2K).
Thus |xi*P|<=8*10^9*2^(-3290)<Rstop on the ENTIRE last tail.
Plancherel now proves ||v'||<=3500000000||f||, and
||v(.+d)-v||<=(7/200)||f||. Substitution in (A) yields the ACTUAL
inhomogeneous return

 Pchi(v)<=[Wstar-13/35000]||v||^2+(91/18000000)||f||^2.           (D)

The negative coefficient retains ||v||^2; it is not silently replaced
by ||f||^2. A bandlimitedness premise is neither asserted nor needed.
There is also an exact return to the wide-variance branch: apply (A) to
(delta_S-mu)*v for S~mu, where mu is the original six-box probability.
Every such test has radius 3+2*M*h0+6*h=3.00000999<Istar. Averaging
gives, with V=1-sinc(h*xi)^12 and the native Plancherel normalization,

 J_all(P_arith*V*P^2)
   <=(Wstar-13/35000)*J_all(V*P^2)+(91/18000000)*E(f).

Indeed translations commute with these signed convolutions, and their
averaged translation error is integral V*|exp(i*d*xi)-1|^2*P^2*|F|^2/(2*pi),
bounded by (7/200)^2 E(f) using V<=1 and the proved bound on xi*P.
Thus this arithmetic result supplies an actual upper estimate for the
prime part of the original filtered complementary source, including
all support and error costs. It does not supply its remaining sign.
The complete original complement still requires the finite signed
annulus bound isolated in WeilConductorThreeComplementTail. Neither
(C) nor (D) proves that remaining universal inequality, the stage at
j=2, RH, or the other Dirichlet GRH sectors.

## Comparison, assurance, coding and heat

Unique factorization makes the finite prime logarithms rationally
independent. Kronecker approximation permits very high modulations to
approach the positive prime operator, even on real odd tests. Therefore
a frequency-independent improved constant obtained by erasing the
translation term would be unjustified. The nonzero d and its physical
translation cost in (A) preserve precisely this hostile high-frequency
case. This proof is an actual small-conductor arithmetic return, using
exact near-neighbor products and complete physical coverage, rather
than a positive reference-heat sign assertion.

The exact word/core checker passed under Python -O and was independently
rerun, as were all source rows and the original twelve-step weight recipe.
Word/core checker SHA256:
ca233aa9b6a5d526bdaa9670635e833c02eff014789ac092d4954bd7cd5c891b;
full word/core payload SHA256:
98320c4a2793ed7d9cb8d13f4bfffe0c07178af2321516d7b31c9cd0b1726c45.
The combined row/weight/path/constant replay SHA256 is
835383e94fcd3257b275ac6e84d1354837dc1f246fc69681e2f91b4cfa9045a3.
This is finite exact computation plus written analysis; compilation,
fresh kernel replay, transitive axiom audit and human review are NOT_RUN.

Representable source-bearing proof data use the existing dependent
Lossless interface in WeilDirichletCompactFilterReturn: encode the source
revision, actual chi3, original carrier/norm, every signed prime occurrence,
rotation/reflection, rational prefix and core, all 93 source atoms, complete
Schur recipe/errors, translation d, constants and evidence status together.
Decode after encode recovers that dependent record and every field; on
the encoder image decode(encode x)=x. Function parameters stay typed bound
variables. No finite data is claimed to replace physical L2 functions or
an infinite convergence proof. Heat is branch coverage only: exhaustive
natural codes have weights 2^(-n-1), full unobserved tail 2^(-J), and the
source-return law x=2Kx-(sum Kx)pi on summable states. It creates no
arithmetic sign. The original Admissible and PrimitiveStageLower branch
identifiers, carrier, sector and all quantifiers remain unchanged.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletAntiNearCycle

def numerator : ℕ := 100004958529
def denominator : ℕ := 100004958530

theorem exact_consecutive_factorizations :
    7 ^ 2 * 37 ^ 2 * 79 * 113 * 167 = numerator ∧
    2 * 5 * 19 * 41 * 43 ^ 2 * 53 * 131 = denominator ∧
    denominator = numerator + 1 := by
  norm_num [numerator, denominator]

theorem actual_character_residues :
    numerator % 3 = 1 ∧ denominator % 3 = 2 := by
  norm_num [numerator, denominator]

/-- Every entry is one actual forward or backward unramified prime shift. -/
def sourcePrimes : List ℕ :=
  [7, 53, 79, 131, 167, 43, 37, 43, 37, 19, 5, 113, 41, 2, 7]

theorem actual_source_primes :
    ∀ p ∈ sourcePrimes, Nat.Prime p ∧ p ≠ 3 ∧ p ≤ 403 := by
  norm_num [sourcePrimes]

def signedFactors : List ℚ :=
  [7, 1 / 53, 79, 1 / 131, 167, 1 / 43, 37, 1 / 43,
   37, 1 / 19, 1 / 5, 113, 1 / 41, 1 / 2, 7]

def partialProducts : List ℚ → List ℚ
  | [] => [1]
  | r :: rs => 1 :: (partialProducts rs).map (fun x => r * x)

def prefixRatios : List ℚ :=
  [1, 7, 7 / 53, 553 / 53, 553 / 6943, 92351 / 6943,
   92351 / 298549, 3416987 / 298549, 3416987 / 12837607,
   126428519 / 12837607, 126428519 / 243914533,
   126428519 / 1219572665, 14286422647 / 1219572665,
   14286422647 / 50002479265, 14286422647 / 100004958530,
   100004958529 / 100004958530]

theorem exact_prefix_ratios : partialProducts signedFactors = prefixRatios := by
  norm_num [partialProducts, signedFactors, prefixRatios]

theorem exact_word_product :
    signedFactors.prod = (numerator : ℚ) / denominator := by
  norm_num [signedFactors, numerator, denominator]

theorem prefix_extrema :
    (∀ r ∈ prefixRatios, (553 / 6943 : ℚ) ≤ r ∧ r ≤ 92351 / 6943) ∧
    (553 / 6943 : ℚ) ∈ prefixRatios ∧
    (92351 / 6943 : ℚ) ∈ prefixRatios := by
  norm_num [prefixRatios]

theorem exact_range_ratio :
    (92351 / 6943 : ℚ) / (553 / 6943) = 167 := by norm_num

/-- Each pair is the minimum and maximum prefix product of one full cyclic
rotation or reflected cyclic rotation. Its safe physical core at radius T is
[-T-log(pair.1), T-log(pair.2)]. Reflection means inversion of every signed
prime factor; rotation is zero-based. The matching theorem below checks
all extrema against their actual rotated/reflected source words. -/
def coreBounds : List (ℚ × ℚ) :=
  [(1, 100004958530 / 598832087),
   (6943 / 13193, 6943 / 79),
   (598832087 / 2325696710, 100004958529 / 2325696710),
   (437423 / 2846630, 73049641 / 2846630),
   (6943 / 92351, 6943 / 553),
   (2846630 / 73049641, 2846630 / 437423),
   (54085970 / 2702836717, 54085970 / 16184651),
   (131 / 13193, 131 / 79),
   (598832087 / 100004958530, 1)]

theorem core_bounds_positive_and_internal :
    ∀ q ∈ coreBounds, 0 < q.1 ∧ q.1 ≤ 1 ∧ 1 ≤ q.2 ∧ q.2 / q.1 < 403 := by
  norm_num [coreBounds]

theorem adjacent_core_overlap_data :
    ∀ q ∈ coreBounds.zip coreBounds.tail,
      q.2.1 ≤ q.1.1 ∧ q.2.2 ≤ q.1.2 ∧ q.1.2 / q.2.1 < 403 := by
  norm_num [coreBounds]

/-- `true` reflects the source word by inverting every signed factor. -/
def coreIDs : List (Bool × ℕ) :=
  [(true, 5), (true, 1), (false, 6), (false, 10), (true, 0),
   (true, 10), (true, 8), (true, 2), (false, 5)]

def wordForCore (id : Bool × ℕ) : List ℚ :=
  let w := signedFactors.drop id.2 ++ signedFactors.take id.2
  if id.1 then w.map (fun r => r⁻¹) else w

/-- The pair's source ID and rational extrema are encoded together. -/
def coreData : List ((Bool × ℕ) × (ℚ × ℚ)) := coreIDs.zip coreBounds

theorem all_nine_cores_retained : coreData.length = 9 := by
  norm_num [coreData, coreIDs, coreBounds]

/-- Every displayed pair is genuinely the attained range of the full
prefix-products of its stated actual source word, not an independent box. -/
set_option maxRecDepth 4096 in
theorem exact_core_word_extrema :
    ∀ d ∈ coreData,
      (∀ r ∈ partialProducts (wordForCore d.1), d.2.1 ≤ r ∧ r ≤ d.2.2) ∧
      d.2.1 ∈ partialProducts (wordForCore d.1) ∧
      d.2.2 ∈ partialProducts (wordForCore d.1) := by
  norm_num [coreData, coreIDs, coreBounds, wordForCore,
    signedFactors, partialProducts]


/-- Exact source-row maximum, not the looser rounded price. -/
def exactRowMaximum : ℚ := 677738564990401 / 32069900000000

/-- The actual logarithmic return of the complete arithmetic word. -/
noncomputable def returnTranslation : ℝ :=
  Real.log ((numerator : ℝ) / (denominator : ℝ))

theorem derivative_carrier_gap :
    (1 / 3000 : ℚ) < 13 / 35000 - (13 / 3150) * (23 / 500) ^ 2 := by
  norm_num

theorem compact_filter_translation_price :
    (13 / 3150 : ℚ) * (7 / 200) ^ 2 = 91 / 18000000 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletAntiNearCycle
