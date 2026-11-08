# Exact-energy arithmetic tube realization and quantitative near/weak Möbius residual

Local mathematical attribution: grwtsk contributors.
Source snapshot: new additive publication on grwtsk/math main, November 1, 2026 (exact commit and blob readback in linked tracking issue).
Status: complete finite analytical argument at the stated scope, Lean source PROOF CANDIDATES; parsing, compilation, expected interfaces, fresh kernel and transitive axiom auditing NOT_RUN. No RH claim.

## 1. Motivation, actual source, and previous geometrical obstruction

The original positive-index causal source remains the literal
  k_T(m,n)=mu(m)*mu(n)*pickupResponseGram(T,m,n),
  d_T(n)=mu(n)^2*pickupResponseGram(T,n,n)>=0,
  D(T)=sum_{n=1}^{N_T} d_T(n) <= 2*T^2,
  N_T=floor(exp T), T>=0,
with the complete ordered off-diagonal source pickupCross(T), both orientations, all finite birth windows and diagonal subtraction unchanged. These objects live in GRWTSK.RiemannHypothesis.CCC; their current source adapters, GoodScale criterion and putnamRateGapSet are unchanged.

Previously published:
- Farey rational stereographic u_n=((n²-1)/(n²+1),2n/(n²+1)) in the actual GRWTSK EuclideanSpace R (Fin 2) unit circle; every original integer n has a genuine source-identical unit direction;
- genuine straight Tube 2 region and actual original endpoint-indexed Euclidean shadings;
- exact four-way signed partition: paid Putnam gaps, angular-near long gaps, transverse weak physical overlap, transverse strong physical overlap;
- canonical common unit-disk shading proves near and weak signed packets vanish, but forces a dense positive geometry row budget >=(N-H-1)_+*(T-log 4). Thus moving all signed source to strong-overlap positivity does NOT control RH.

The new work replaces that geometrically arbitrary common disk by one whose area is calibrated to the original source energy, and independently derives a sharper physical-time Gram Cauchy inequality. Crucially the strong-overlap arithmetic is NOT bounded by this maneuver.

New additive source proof candidates:
- GRWTSK/Combinatorics/GraphTheory/FiniteWeakGramPairs.lean (blob 70039a25bdbccd3bb15aabf13b5000c8b964489f), fully general finite weak Gram pair inequality and arbitrary selected relation.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEnergyMatchedArithmeticTube.lean (blob 1cca2c13cb98f48a9a340139c434948273efcfa6), actual source diagonal determines Euclidean disk radius and its enclosing rational-direction tube; exact physical pair area.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalGramCauchy.lean (blob 01c7128c5c81664405b6fe4d1a373dfdbb0a51dc), actual signed causal-response continuous-real-interval-integral Cauchy determinant, no new arithmetic axiom.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEnergyMatchedWeakResidual.lean (blob 2a3b46e1bb568217732c0a31c927327e03c0b0ff), returns both near and weak source packets with explicit complete original finite endpoint support.

## 2. Concrete actual integer-to-tube with calibrated Lebesgue shading

For every T in R, original integer n, let
  d_n(T)=mu(n)^2*pickupResponseGram(T,n,n),
  d_n^+(T)=max(d_n(T),0),
  rho_n(T)=sqrt(d_n^+(T)).

The maximum only totalizes the definition outside the nonnegative-time source regime; for T>=0 on original n in endpointIndex T it equals d_n(T) exactly. Choose the source tube
  center=0 in the original EuclideanSpace R (Fin 2),
  direction=u_n from the old rational stereographic integer chart,
  halfLength=1+rho_n(T)>0,
  radius=1+2*rho_n(T)>0.
Choose its actual shading
  U_n(T)=closedBall(0,rho_n(T)).

This is a genuine typed GRWTSK Tube 2 / Family 2, not an incidence table, guessed physical mass, or post-hoc favorable sign assignment. For each point x in U_n, ||x||<=rho_n. With ω=u_n and t=<x,ω>, Cauchy-Schwarz gives |t|<=rho_n and ||x-tω||<=||x||+|t|<=2rho_n. Hence x belongs to that original positive-radius Tube 2 with the declared axial and transverse budgets. All labels and even squareful zero-Möbius source indices survive.

The disks U_n are genuine 2D Euclidean Lebesgue-measurable sets of finite area
  vol_2(U_n)=pi*d_n^+(T).
They are CONCENTRIC, so their intersection is the disk with the smaller radius:
  vol_2(U_m ∩ U_n)=pi*min(d_m^+(T),d_n^+(T)).
For T>=0 and genuine endpoint indices, this is exactly
  b_mn(T)=pi*min(d_m(T),d_n(T)).
The native geometric weight is 1 per label; it is NOT equated to mu(n) or to an arithmetic sign.

## 3. The noncircular true original Gram Cauchy estimate

Define actual source continuous responses f_n(u)=mu(n)*pickupResponse(n,u) for u in the unchanged physical-time interval [0,T]. Then
  d_n(T)=int_0^T f_n(u)^2 du,
  k_mn(T)=int_0^T f_m(u)*f_n(u) du.

For every real t,
  0 <= int_0^T (t*f_m(u)+f_n(u))^2 du
     = d_m(T)*t² + 2*k_mn(T)*t + d_n(T).

The nonnegative-real-quadratic discriminant theorem, including the zero-diagonal case, proves
  [k_mn(T)]² <= d_m(T)*d_n(T).        (CS)

This uses no RH, Mobius prefix cancellation, hidden arithmetic axiom, or freely stipulated PSD certificate. It follows from the original source's actual real interval integrals and finite algebra. Its purpose is precisely to strengthen the earlier original integrated two-vector Young inequality.

## 4. Quantitative weak-overlap signed sector

Let N=floor(exp T), T>=0. Set q_N=(N+1)^(-6)>0 and physical Lebesgue threshold eta_N=pi*q_N. For the actual energy-matched indexed Euclidean Family 2,

  b_mn(T) < eta_N
  iff min(d_m(T),d_n(T)) < q_N,

since pi>0. This is a source-equality, not an analogy.

For every original m,n with min(d_m,d_n)<q_N, the original diagonal energies are nonnegative and each is <=D(T). Equation (CS) implies
  |k_mn| <= sqrt(q_N * D(T)).
This includes m or n of zero Mobius energy; then k_mn=0.

Let W(T,H) be the EXACT ORIGINAL signed ordered weak-overlap packet outside already paid Putnam gaps A_H={1,...,H} and the projectively near region, as defined in the previous MoebiusPutnamKakeyaSignedResidual. Even with an arbitrary subset of ordered off-diagonal source pairs, there are fewer than N² terms. Thus the exact finite estimate is
  |W(T,H)| <= N² sqrt(q_N*D(T)).       (W1)

With D(T)<=2T² and T>=0,
  |W(T,H)| <= N²*sqrt(2)*T/(N+1)^3
           <= sqrt(2)*T/(N+1)
           <= sqrt(2)*T*exp(-T).       (W2)
The final inequality uses N+1>exp T; no prime number theorem or RH fact.

W2 is a genuine all-positive-rate and in fact exponentially decaying bound for this SOURCE-DEFINED weak-overlap signed packet. W1 is the exact source-level Lean consumer; W2 is the elementary algebraic consequence documented here. Verification of the algebraic cast and sqrt normalization of W2 in Lean remains pending.

## 5. The full near-angular packet is exactly zero at the fixed source collar

The source unit directions in these energy-matched tubes equal those of the earlier arithmetic chart: changing shading radius does not change u_n. The prior source exact angular identity gives
  g_mn>=2|m-n|/(N²+1)
for all original 1<=m,n<=N. Choose, BEFORE looking at arithmetic signs,
  sigma(T,H)=2(H+1)/(N²+1)>0.

When |m-n|>H, the projective gap g_mn>=sigma(T,H). Thus there is NO source pair both outside the paid Putnam gaps and inside the projectively near collar. The exact original near-angle packet R_near is zero. This is not a proof that a large or fixed angular collar has a small signed mass; the angular scale decays as N^-2.

The previous full signed angular remainder is literally
  R_signed(T,H)=R_near(T,H)+W(T,H)
by the source-exact four-way signed ledger. Hence
  |R_signed(T,H)| <= N² sqrt(q_N D(T))
                  <= sqrt(2)*T*exp(-T).       (R)
All near, weak, strong, Putnam packets retain both ordered source orientations; no diagonal is double counted.

## 6. The remaining genuinely difficult positive/strong arithmetic source

The strong-overlap packet is selected where physical mass b_mn>=eta_N and projective gap>=sigma, outside gaps <=H. As eta_N becomes tiny, almost every positive original diagonal-energy pair is classified strong. No source-specific Möbius cancellation for this dense strong packet is derived by this argument.

The existing endpoint inequality remains
  endpointSum(T) <= |PutnamGap(T)|+
                    physicalStrongUpper(T)+R_signed(T,H)+1/4.
The proven small-gap bound, W2 and geometry provide
  endpointSum(T) <= 4H*T² + physicalStrongUpper(T)
                    +sqrt(2)*T*exp(-T)+1/4
for T>=0, H integer, assuming the selected physicalStrongUpper is the exact previously defined fully paid one. This does NOT establish subexponential endpointSum because the positive strong-overlap budget can remain exponential.

For the original rate Putnam H=floor(exp(epsilon*T/2)), the old source already bounds its small-gap packet by 32/epsilon²*exp(epsilon T), but the strong packet is still RH-strength. Unlike the preceding common-disk no-go example, the weak contribution is now controlled by a nontrivial true arithmetic Cauchy estimate; the cost is that the weak threshold is extremely small and cannot do the strong-sector work.

The exact further research target is either (i) a new signed, source-specific majorant for dense strong pairs with all-positive-rate quantifiers on one fixed adequately covering scale set, or (ii) a stronger true arithmetic-to-geometric comparison in which projective or local incidence estimates capture genuine Möbius cancellation rather than simply moving positive mass between sectors. Both remain OPEN.

## 7. Independent tests, hostile fixtures and evidence

A deterministic standard-library Python Fraction diagnostic with seed 20261101 executed 158,650 exact rational assertions:
- 5,050 source stereographic unit-circle identities;
- 10,100 exact scalar two-vector chord difference and sum identities;
- 10,100 nonnegative projective angle/coercivity inequalities;
- 66,300 exact generic Gram Cauchy inequalities for synthetic 2-feature rational vectors;
- 66,300 selected source-indexed off-diagonal partition cases;
- 800 exact full finite signed residual equality and squared weak-energy bound checks.

All PASS. These are FINITE diagnostic equations and illustrative rational Gram values, not evaluations of the original Mobius causal interval integral, true real Euclidean disk volume, Lean elaboration or independent kernel verification. No new source is claimed checked because of them.

Hostile limitations: a disk with zero original source energy is a singleton Lebesgue-null shading but its index remains. Near angular zero uses a shrinking sigma and therefore does not constrain a fixed-scale high-congestion Kakeya family. Arbitrarily small eta can make W arbitrarily small while leaving all the real signed arithmetic in the strong source. The all-positive-rate estimate W2 is not the RH endpoint condition.

Source status: mathematical argument complete at the stated finite analytic scope, Lean proof candidates published, compiler parsing/elaboration NOT_RUN, expected declaration types NOT_RUN, fresh kernel NOT_RUN, complete transitive axiom/sorry/unsafe audit NOT_RUN. No remote verifier, CI, scheduler, force push, root promotion or change to old mathematical source was authorized. Recheck exact source hashes, toolchain and complete imported dependency closure before changing any status.
