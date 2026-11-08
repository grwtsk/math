# Original signed Mobius/Gram distance-fiber cancellation: source mathematical disposition (2026-11-02)

Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.

SOURCE_PROOF_CANDIDATE. No Lean elaboration, full compilation, kernel checking,
transitive axiom inspection, or source-bound verification dispatch took place.

## Exact sources and declarations

The finite signed disintegration is proposed in
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSignedDistanceFibers.lean
(source blob 678231792f8263aacf3df557bfa1e8664b7db261).
The source-preserving conditional return is proposed in
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSignedAllPositiveRateConditional.lean
(source blob 58d3797fe005cd79b3fb5f6c78c06cdd39d2).

These files import, without modifying,
MoebiusNearcriticalMovingBankQuantifier.lean (blob
92e856aedb83c90564005cdaeadc644861175a4e, published at
3f85389ac583e3521d649b2edd919d24708726c6), itself importing
MoebiusChebyshevWeightedPrimeAbel.lean (blob
6c3dde6b6c815b7da37c5740fbeea70947a6383d; pinned publication
2fe1354378e4df78947ae04debbde889faa90bf0).

The unchanged original definitions are
MoebiusHighSmoothDensePairs.maskedTaggedBlock, highSmoothBlock,
lowSmoothBlock and the source physical pickupResponseGram. The
source signs are taggedMoebius B.primes a m and taggedMoebius
B.primes b n. The mask is m != n AND Nat.dist m n NOT IN A.
Original high/low and low/high estimates and exact LL/HL/LH residual
appear in MoebiusDyadicBirthHighLowLongGap.lean.

## New finite analytical argument

For ANY two original finite index sets I,J let

  D(I,J) = { Nat.dist m n : m in I, n in J }

and for each d in D(I,J) define the truly signed fiber

  F_d(B,a,b;I,J,T)
   = sum_(m in I) sum_(n in J)
       [m != n AND Nat.dist m n = d]
       taggedMoebius(B.primes,a,m)
       taggedMoebius(B.primes,b,n)
       pickupResponseGram(T,m,n).

The exact distance disintegration, without taking absolute values,
is

  maskedTaggedBlock B.primes a b A I J T
    = sum_(d in D(I,J), d notin A) F_d.

The ordinary finite proof reorders the triple sum and uses the
unique distance label for every original pair. No Fourier,
Mertens, Dirichlet, RH or Chebyshev input is required.

Define the SIGNED-fiber L1 variation
  W(B,a,b;I,J,T) = sum_(d in D(I,J)) abs(F_d).

Two finite inequalities follow:

  abs(maskedTaggedBlock B.primes a b A I J T) <= W

for EACH A, and

  [forall finite A, abs(maskedTaggedBlock ... A ...) <= C]
     IMPLIES W <= 2*C.

The converse proof uses the two admissible finite masks that remove,
respectively, negative and nonnegative fiber contributions. The two
sums remaining have absolute value at most C, so the sum of their
absolute values is at most 2C. Factor 2 is sharp for the abstract
finitely-supported example F_1=1, F_2=-1: the complete sum is zero,
the best masked absolute sum is one, and W=2.

This proves that an ALL-masks cancellation demand is essentially an
L1-signed-gap-correlation problem. Cancellation in the aggregate
over ALL gaps (the A=empty mask) is insufficient: the same example
vanishes for A=empty yet fails after deleting one sign class.

## Numerical budget and conditional composition

At X>=1 set T=log(2X). For genuine PrimeBand B supported by
p<=T^2(log T)^alpha with fixed alpha<2, the previously published
nearcritical source candidate supplies (at source level) eventual

  V_B=bankSquareRootWeight B.primes <= exp(eta*T)

for every eta>0.

The NEW explicitly UNPROVED arithmetic proposition
NearcriticalSignedDistanceVariationTarget demands, for each
alpha<2 and delta>0, an eventual uniform threshold for all X,
genuine moving PrimeBands B supported as above, and all Boolean
tags a,b, such that BOTH ORIGINAL ORIENTATIONS satisfy

  W_HL <= exp(delta*T)*V_B,
  W_LH <= exp(delta*T)*V_B.

There is no mask variable in W; the proved finite inequality therefore
returns the same bound for EVERY finite gap mask. Split any target
epsilon>0 as delta=epsilon/2 and eta=epsilon/2, then

  abs(HL_A), abs(LH_A)
     <= exp(delta*T)*V_B
     <= exp((delta+eta)*T)
      = exp(epsilon*T).

This produces the CONDITIONAL theorem
bothOrderedSignedMixed_allPositiveRate_of_variation. The proof
uses the exact integer ceiling of exp(T0) to return from the
real terminal-time threshold to X. Neither source-level publication
nor a hypothesis named Target proves that hypothesis.

## Full original residual and open low/low arithmetic

The unaltered original source identity is

  taggedDenseRectangle = HH + (LL+HL+LH).

The source candidate proves the finite implication

  abs(LL+HL+LH) <= abs(LL)+2*exp(epsilon*T)

provided both mixed rates are supplied. It defines a separate
UNPROVED NearcriticalSignedLowLowTarget. If both the distance-fiber
input and this LL input are assumed, the entire remaining signed
residual is at most 3*exp(epsilon*T), which is an all-positive-rate
Big-O statement with a numerical prefactor. Neither arithmetic
input is discharged. The pre-existing HH bound and the original
return to any global RH proposition require their own trust gates.

The emptyPrimeBand is a hostile witness to any mistaken inference
from positive prime-bank cost to LL: with original true/true tags
and cutoff Q_X>=1, the entire rough/rough original source is LL.
The new code never assigns zero to this term merely because
the selected prime set is empty.

## Comparison with previous methods and limits

The previous theorem masked_shell_rect_abs_le_card_product applies
termwise magnitudes and bounds every original pair by
4*log(2)/X. Together with |H| <= sqrt(2X)*exp(sqrt T)*V_B
and |L|<=X, it gives original HL and LH rates 1/2+o(1).
The coefficient-16 true-prime estimate and coefficient-64 Euler
budget can make V_B subexponential, but do not eliminate sqrt(2X).

The new object W is intermediate: it keeps signed arithmetic within
each fixed physical distance and only then takes absolute values.
It is strictly more informative than the prior termwise unsigned
cardinality estimate, but W<=exp(delta*T)*V_B is a genuinely new
hard analytic obligation. It is not deduced from a formal rewriting.
It may be too strong for a class of all arbitrary masks; no
unconditional evidence that it holds is asserted.

The literature provides inspiration, not a direct imported proof:
- Matomaki and Radziwill, Multiplicative functions in short
  intervals, arXiv:1501.04585 (almost-all short-interval regime);
- Tao, The logarithmically averaged Chowla and Elliott conjectures
  for two-point correlations, arXiv:1509.05422 (log-averaged regime).
Neither result by itself covers all original physical Gram weights,
all finite Nat.dist masks, all moving banks and all Boolean tags.
Do not register either as proving a repository declaration.

Hostile boundaries checked analytically: both ordered sectors
are separate; d=0 contributes zero owing to m!=n; arbitrary A can
delete just one sign class; the empty bank cannot solve LL; alpha=2
does not give arbitrary positive bank budgets by this method;
epsilon<=0 is excluded; source-specific cancellation cannot be
inferred from pointwise positive Euler control.

## Acceptance and validation

For the exact published final source commits and blob readback,
consult issue grwtsk/math#1589. Pinned environment remains
Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

- Parse/elaborate both new files and their full transitive imports: NOT_RUN.
- Compare expected types of all source-specific and generic lemmas: NOT_RUN.
- Fresh Lean kernel replay of complete source-bound statements: NOT_RUN.
- Transitive axiom, sorryAx, private/opaque/unsafe trust audit: NOT_RUN.
- Independent analytic proof of the distance-fiber variation input: OPEN.
- Independent LL signed cancellation: OPEN.
- Source-to-global RH return: OPEN; RH itself is NOT established.

The new standalone source candidates do not intentionally introduce
axiom declarations or sorry holes. This static fact cannot substitute
for the listed verification gates.
