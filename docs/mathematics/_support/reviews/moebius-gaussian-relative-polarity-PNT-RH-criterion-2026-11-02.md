# Original Möbius source atlas v6: Gaussian relative polarity cancellation, PNT logarithmic saturation, and RH-facing exponential precision

Date: 2026-11-02. Original mathematical direction and source attribution: grwtsk contributors. Source-analysis and Lean candidate assistance: OpenAI ChatGPT.
Trust: complete ORDINARY mathematical source argument with separately stated independent classical PNT and standard analytic facts. Lean statements are UNCOMPILED SOURCE_PROOF_CANDIDATES, and all existing named unported inputs remain visible. Neither RH nor a counterexample is proved.

## 1. Latest actual repository search and identities

Current Git tree scan: grwtsk/math/main a82ea53e2e7683cfb06f53f7cb293571398c6155, root tree bdcb16f14a97b6be2219e5d1dafdbc5b6d0c2a50, analytical Möbius subtree 6448ca11e8fbe67e8a754ba2ffc7d4aa78577a0b.
The maintained ZetaAndLFunctionsAnalyticTheory/ tree contains 226 immediate Moebius*.lean sources. The earlier v5 atlas had 191 such files; every original 191 Git blob remains identical. Exactly 35 added immediate module names are pinned by content SHA in the accompanying v6 graph; none of the 191 disappeared or changed. It is a bounded *file-level* inventory, not semantic verification of every 226 Lean theorem.

Newly related families inspected in addition to the original Gaussian/physical source:
- MoebiusDenseCoreRowControlVariate.lean blob ab3c4fa71e53f6d512560b0dab32edb04ef1c9f3 and DenseCoreZeroWitness blob 709a23d08cc6ff9084147549904684c82edc5d38: exact original gap+ratio+signed dense-core ledger, true row/pair importance and conditional hypothetical-zero spikes; unbiased sampling DOES NOT imply a deterministic all-scale signed upper.
- MoebiusSparseHighGcdDenseCoreReturn.lean blob db5e80b45f95ad20b2463ed8d5e85fcd27e3d74c: original three-sector sparse payments and a stricter still-SIGNED low-gcd dense core all-rate equivalence; it is not a proof of the target. Its error rate and fixed mask are separately preserved.
- MoebiusDirichletResidueParseval.lean blob 152ef7002c566bcca14ec8aac8c027c523693347, DirichletLargeModulusEnergy blob 4a5b31bb26d0c5c7592cc41b51beceaae8a32810, DirichletMeanSignedCross blob 4e4260e695ad30e3a0d9f04a6a6c5a90b4b19e32, and DirichletMeanSignedFixedCutoff blob abcaa68aab3b71a5a4fe908ddb980611f20be9bd: unit-residue orthogonality and ORIGINAL character-family mean signed cross with finite occupancy upper. Growing moduli q(T)>=D_*(T) yield a family-MEAN all-positive-rate estimate. Neither the fixed original untwisted μ nor a fixed Dirichlet-character series acquires an RH/GRH all-rate bound from varying-modulus averages.
- MoebiusResidueSignedFibreArithmetic.lean blob 0692631728b95319edb50e32a3569e3035b8a368: pure finite complex fiber offdiagonal-after-diagonal estimate; it cannot be identified with an individual true signed FAR remainder.
- The previously published original fixed compensated core/FAR/source and Laplace zero-barrier branches remain exact *conditional* source comparisons. No choice among these models is a source-independent all-scale cancellation supplier.

## 2. Original Möbius and the physically born Gaussian heat object

Retain all original n>=1 and μ(n)=ArithmeticFunction.moebius n cast to REAL, including μ(1)=1, μ(n)=0 on squareful n. The ORIGINAL physical response is r_n(u), born only for u>=log n and nonnegative. The authentic closed terminal support at physical time T is n∈endpointIndex(T)=1..floor(exp T). The ORIGINAL nonnegative square pickupEnergy is the integral of the original signed waveform square, not a synthetic kernel.

At artificial log-Gaussian heat parameter s>=0:
  c_s(n)=μ(n)*exp(-s(log n)^2),
  H_s(T)=sourceHeatEnergy(s,T)
       =integral_0^T (sum_(n<=exp T) c_s(n)r_n(u))^2du,
  U_s(T)=unsignedHeatEnergy(s,T)
       =integral_0^T (sum_(n<=exp T) |c_s(n)|r_n(u))^2du.
Both original index and physical causal birth are unchanged. Let c_s^+=max(c_s,0), c_s^-=max(-c_s,0), with positive response waves P_s(T,u),N_s(T,u) and genuine mixed overlap
  O_s(T)=integral_0^T P_s(T,u)*N_s(T,u)du.
The maintained exact source theorem signedHeatCancellationDebt_eq_four_overlap proves in candidate Lean:
  U_s(T)-4O_s(T)=H_s(T).                         (E1)
The 4 counts BOTH ordered offdiagonal polarities, not an arbitrary normalization.

Use the meaningful near-identity schedule:
  s(T)=exp(-T/2) >0, T_J=J log2, J>=9, T_J>=32.
Set H_J=H_{s(T_J)}(T_J), U_J=U_{s(T_J)}(T_J),
O_J=O_{s(T_J)}(T_J).
The previous ordinary source squarefree-band count and birth
response give U_J>=exp(T_J)/65536. This is a POSITIVE
arithmetic-free lower, NOT a signed-energy lower.

## 3. NEW unconditional unsigned physical energy U upper

The concurrent source proves the true original inverse-root sum bound
  sum_(n<=floor exp T)1/sqrt(n)<=2 sqrt(exp T).
For s>=0 the original positive heat multiplier≤1 and |μ(n)|≤1, so
  0<=|c_s(n)|<=1.
Each actual causal response 0<=r_n(u)<=2/sqrt(n). Therefore
  0<=sum_(n<=exp T)|c_s(n)|r_n(u)
       <=2sum_(n<=exp T)n^-1/2<=4sqrt(exp T).
Squaring over ACTUAL physical u∈[0,T] yields the
source-preserving, completely unconditional bound
  U_s(T)<=16T exp T,  T>=0,s>=0.               (E2)
There is no signed Möbius cancellation in (E2). The new
Lean proof candidate unsignedHeatEnergy_le_sixteen_time_exp
implements the exact pointwise and integral comparison.

## 4. NEW quantitative PNT relative cancellation at ALL log powers

The old original arithmetic repository input is
  OriginalBalancedPNTLogPowerTarget:
    for every integer A>=1, ∃C_A>=0,
    for all T>=0 pickupCross(T)<=C_A exp T/(1+T)^A.
This is a genuine unconditionally available classical
PNT consequence in ordinary mathematics, but remains
EXPLICIT UNPORTED pinned Lean input; it is not an RH or
zero-free Re(s)>1/2 assumption.

The old nonnegative original diagonal satisfies
pickupDiagonal(T)<=2T². The genuine physical
pickupEnergy=pickupDiagonal+pickupCross therefore obeys
  pickupEnergy(T)<=2T²+C_A exp T/(1+T)^A.
The same original true Gaussian heat/error comparison at
s(T)=exp(-T/2) and the independently elementary source
radius<=16T^5 yield
  H_s(T)<=2pickupEnergy(T)+2radiusEnergy(s,T)
        <=2C_A exp T/(1+T)^A+4T²+32T^5.     (E3)

For J>=9 and T_J>=32, U_J>=exp T_J/65536>0,
so dividing (E3) by this positive source lower gives
  0<=H_J/U_J
     <=131072*C_A/(1+T_J)^A
       +65536*(4T_J²+32T_J^5)*exp(-T_J).     (E4)
By EXACT source (E1), the relative cancellation deficit is
  1-4O_J/U_J=H_J/U_J.
This is NOT a heuristic variance ratio or signed-PNT
without absolute coefficients; it is a literal original
physical Gram identity.

For any fixed A>=1 the second term in (E4) is
O_A((1+T)^-A) by the elementary exponential series:
  exp T>=T^k/k!, and (1+T)^A<=2^A(1+T^A).
An explicit choice is
  B_A=2^A[4(2!+(A+2)!)+32(5!+(A+5)!)],
which satisfies for all T>=0
  (4T²+32T^5)(1+T)^A<=B_A exp T.           (E5)
Thus for each A>=1, C'_A=131072 C_A+65536 B_A
satisfies
  0<=1-4O_J/U_J=H_J/U_J<=C'_A/(1+T_J)^A.   (E6)

This is a source-faithful PNT result: the original
positive/negative Gaussian wave overlap asymptotically
cancels the FULL unsigned squared energy to RELATIVE
precision faster than every LOGARITHMIC power. The
all-log-power result is an ordinary classical consequence,
not a new theorem about zeta zeros. It improves the
previous source's much weaker lower bound
4O_J>=exp(T_J)/65536-O(exp T/(1+T)) because it
compares overlap against the ACTUAL unsigned energy U_J,
not just its constant lower envelope.

The source proof candidate
 MoebiusGaussianRelativePolarityPNT.lean
contains hPNT as explicit old source named unproved Lean
Prop and only ONE new elementary *real* Prop
 GaussianPolynomialExpAbsorptionTarget for (E5).
Its finite upper/ratio and all-log-power theorem bodies
are not compiled.

## 5. The precise missing RH-facing EXPONENTIAL relative precision

Define two clearly OPEN source properties on exactly the SAME
original large-scale dyadic grid J>=9, T_J>=32:

SignedAllRates:
  for every r>0 ∃C_r>=0 ∀J large,
    H_J<=C_r exp(rT_J).                        (R1)

RelativeAllRates:
  for every r>0 ∃D_r>=0 ∀J large,
    H_J<=D_r exp(-(1-r)T_J)*U_J.               (R2)

They are mathematically EQUIVALENT from (E2) and
the independent positive lower U>=exp T/65536.

(R1)->(R2): At a fixed r, use
  C_r exp(rT)<=65536 C_r exp(-(1-r)T)*U.

(R2)->(R1): For requested exponent r>0 choose R2 at
relative parameter q=r/2. From U<=16T exp T,
  H<=16 D_q T exp(qT).
The exponential series T<=exp(qT)/q for q>0 yields
  H<=16 D_q/q exp(2qT)
   =(32D_{r/2}/r) exp(rT).                   (R3)
No RH or PNT input is used in these equivalence steps.

The exact original HEAT/UNSMOOTHED energy inequalities with the
independently paid positive radius<=16T^5 are:
  pickupEnergy(T)<=2H_s(T)+32T^5,
  H_s(T)<=2pickupEnergy(T)+32T^5.
For all-positive-rate bounds on the SAME large-scale grid,
T^5<=120/r^5 exp(rT), hence (R1) is also
equivalent to every-positive-rate original pickupEnergy
on that grid. Finite earlier J (below T=32) are an
ordinary finite set; their energy can be paid by increasing
the rate constant. This last finite-exception closure is
explicit separately as unported elementary pinned Lean
 FiniteDyadicOriginalEnergyPrefixAbsorptionTarget.

The original source Laplace-to-zero-free analytic theorem,
under its previously named standard but UNPORTED complex
analysis/Dirichlet suppliers, then gives:
  (R2) => ZetaZeroFreeRightOf(1/2).            (R4)
The established RH-facing energy/FAR/fixed-core source
comparisons explain how the same relative-precision
criterion would suffice for the canonical RH.
But (R2) is STILL AN UNPROVED RH-STRENGTH ARITHMETIC
ASSUMPTION; neither (E6) nor finite data provides it.

Numerical meaning: (E6) is super-logarithmic
relative precision; (R2) demands relative precision
exp(-(1-r)T) for every r>0. No step bridges this gap.
The huge cancellation overlap by itself is not evidence
of the required exponentially small signed difference.

The source module MoebiusGaussianRelativeRHReturn.lean
defines both honest rate predicates and proof candidates
for their equivalence and return to physical square energy
and (under explicit standard analytic source gates) to
genuine zeta zero-freeness.

## 6. All inspected source branches and NON-transfer warnings

The refreshed v6 Git tree pins 226 maintained analytic
Moebius modules, 35 new since the v5 scan and 191 unchanged.
Its graph types the new:
- dense core row control variate and exact signed hard dense
  source, with TRUE full error paid by sparse sectors;
- residue-fibre exact complex Cauchy–Schwarz and original
  Dirichlet-character Parseval/signed-family mean;
- Gaussian positive radius, near-identity mixed polarities,
  and new relative rate/laplacian consumers.

The Dirichlet character mean signed cross at q>=D_*(T)
has all-positive-rate size only AFTER averaging over all
characters with a modulus that itself grows with T.
This does NOT imply the fixed original μ(n) signed
pickupCross or fixed-χ GRH. Offdiagonal diagonal
subtraction and unit-residue restrictions cannot be
deleted. The dense-core source sampling theorem proves
an unbiased estimator and bounded variance relative to
raw pair sampling, not the deterministic all-J upper
for the actual signed dense core; no concentration
theorem at all scales with uniform constants was found.

The physical two-bit, sofic, topology, gauge and
generalized family traces in the prior v5 atlas are
source-preserving but not independent arithmetic
sign-cancellation suppliers. They cannot substitute
for (R2) without a complete signed source-minus-observer
defect estimate at the SAME fixed dyadic scales.

No finite-height P&T zero verification or reciprocal
pole-free compact region provides a uniform all-height
certificate of (R2). The existing analytic
OriginalLaplaceRightLineIdentityTarget,
WeightedWholePickupLaplaceHolomorphyTarget,
LaplaceProductIdentityTheoremTarget and dyadic-ceiling
gates remain UNPORTED; R4 is a conditional source
composition and does not import their statements as
trusted axioms.

## 7. Independent, NONCERTIFYING illustrative diagnostics

Historical direct physical original μ index calculations:
  J=9  : signed heated H_J≈2.4744,
         unsigned U_J≈354.772,
         ratio H/U≈0.006974.
  J=12 : signed heated H_J≈5.9608,
         unsigned U_J≈3043.270,
         ratio≈0.001959.
  J=14 : signed heated H_J≈8.5961,
         unsigned U_J≈13770.189,
         ratio≈0.0006243.
These are FINITE floating-point diagnostics from the
existing source review, NOT rigorous values, kernel
replays, asymptotic RH data or proof of R2.

Source note: U_J>=exp(T_J)/65536 is a strict
PNT-free positive source estimate from
ElementarySquarefreeBandPopulationTarget and original
terminal response. It is currently a named UNPROVED
pinned Lean proposition, albeit proved in the ordinary
review. The PNT all-log-power input is known classical
mathematics but likewise UNPORTED pinned Lean. The new
real exponential-factorial absorption and finite
initial dyadic-scale absorption are elementary
UNPORTED pinned-Lean Props. No authored axiom, sorry,
a native computation shortcut, unsafe declaration or opaque trusted algorithm
in either new Lean source.

## 8. Trust, publication and unresolved goal

Additive files only: two new Lean source proof candidate
modules, one full review, one v6 typed graph and one
passive verification manifest. Existing μ coefficients,
original physical response/Gram, true endpointIndex,
Jlog2 time and original source masks are unchanged.
No CI, Noe automation, native runner, root import,
Lean or Mathlib pin is modified.

The ordinary mathematical derived PNT estimate is
(E4)-(E6). Its Lean proof bodies remain uncompiled,
parser/expected theorem types/fresh independent kernel
and full transitive axiom/native/opaque audits NOT_RUN
per user's previous compilation defer.

The missing research supplier is still a genuine
original-source all-positive-rate upper for signed
Gaussian H_J, or its now EXACT equivalent relative
precision (R2), original pickupEnergy, and under
independent source-paid packets the complete original
signed FAR or fixed compensated core.

The canonical Riemann Hypothesis remains OPEN.
