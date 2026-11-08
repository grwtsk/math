# Reciprocal-zeta/Perron original Möbius bridge: unconditional half-integer truncation and exact fixed-boundary rate frontier

Research date: 2026-11-02. Local attribution: grwtsk contributors; source proof formalization assistance by OpenAI ChatGPT.
Classification: established ordinary mathematics with an independent elementary proof; Lean source proof candidates, NOT kernel checked. User explicitly deferred compilation.

## 1. Source identity and current imports

Repository grwtsk/math main, original exact source:
 GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
   MoebiusReciprocalZetaPerronBridge.lean
   Git blob 69ae2587f1f6e30adec21b9d7dcf43eeffa2a499.

Its unchanged definitions are
 halfIntegerCutoff N = (N:real)+1/2,
 perronHeight N = halfIntegerCutoff(N)^2,
 regularizedReciprocalZeta(s) = (s-1)/riemannZeta₁(s),
 perronVertical(x,c,H) = 1/(2pi) int_{-H}^H
      x^(c+it)*regularizedReciprocalZeta(c+it)/(c+it) dt.

The source's original real coefficients are the unchanged
 finiteMertensPrefix N = sum_{n=1}^N mu(n)
from MoebiusCausalMertensSquareBridge.lean.
No original terminal inventory, signs, squareful zero values,
birth-gated response, pickupResponseGram, endpoint or RH-facing
farReducedOrLongCross has been changed.

Pinned Lean 4.34.1; pinned Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
The PINNED file Mathlib/NumberTheory/LSeries/Dirichlet.lean
has exact declarations
 ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius
 ArithmeticFunction.LSeries_zeta_eq_riemannZeta
 ArithmeticFunction.LSeriesSummable_moebius_iff.
They give on Re(s)>1 the absolutely convergent ORIGINAL
Möbius Dirichlet series
  sum_{n>=1} mu(n)/n^s = 1/zeta(s).
The old regularizedReciprocalZeta agrees with this reciprocal
away from the pole; on the line Re(s)=2 this is automatic.
No zero-free premise beyond the elementary Re(s)>1 region
is involved in the right-line statement.

## 2. An explicit source-independent truncated Perron kernel

For x>0 and H>0 define the elementary scalar kernel
  I_H(y)=1/(2pi)*int_{-H}^H y^(2+it)/(2+it) dt,
where y>0, y!=1.

For real lambda=log y!=0, Fourier/Perron inversion of
the one-sided exponential e^(-2u)*1_{u>=0} gives
  1/(2pi)*int_{-infinity}^infinity
     exp(it*lambda)/(2+it) dt
  = exp(-2lambda) if lambda>0, and 0 if lambda<0.

The ordinary improper integral exists (oscillatory) for
lambda!=0. Equivalently, close a contour in the upper half
plane for lambda>0 and in the lower half plane for lambda<0.
The former encloses only the pole t=2i. Multiplying the
infinite integral by y^2 returns exactly
  1_{y>1}; at y=1 the half-weight is deliberately avoided.

For either tail, integration by parts gives
  |int_H^infinity exp(it lambda)/(2+it) dt|
    <= 1/(|lambda|sqrt(4+H^2))
      +1/|lambda| int_H^infinity dt/(4+t^2)
    <= 2/(|lambda|H).
The negative t tail has the same bound. Thus
  |1_{y>1}-I_H(y)| <=
      (2/pi)* y^2/(H*|log y|).                (P1)
This uses only Fourier/complex calculus, not a zero-free
statement, Mertens estimate, or RH.

## 3. Absolutely convergent original Möbius termwise interchange

Let N>=1, x=N+1/2, H=x^2.
For every t in [-H,H], the right-line Möbius Dirichlet
series converges absolutely and uniformly:
  sum_{n>=1} |mu(n)|/n^2 <= sum_{n>=1} 1/n^2 <2.
Therefore integrating its product with x^(2+it)/(2+it)
commutes with the ORIGINAL infinite series. The correct
perronVertical(x,2,H) equals
  sum_{n>=1} mu(n)*I_H(x/n).

Since x is a half-integer,
  x!=n and |x-n|>=1/2 for all positive integers n.
From (P1) and |mu(n)|<=1,
  |M(N)-perronVertical(x,2,x^2)|
  <=(2/pi)*sum_{n>=1}
       [1/(n^2*|log(x/n)|)].                 (P2)
No Perron branch-cut or half-weight error is hidden;
1_{x/n>1}=1_{n<=N} exactly.

## 4. Explicit UNIFORM bound <40 for EVERY N>=1

Split the positive integer n into three disjoint regions:
 A: n<=x/2;
 B: x/2<n<2x;
 C: n>=2x.

For A and C respectively |log(x/n)|>=log 2>1/2.
The genuine positive zeta-at-two sum satisfies
sum_{n>=1} 1/n^2<2 (integral comparison).
Hence each of A and C contributes strictly less than 4
to the sum in (P2).

For B use the elementary mean-value comparison
  |log(x/n)|>=|x-n|/max(x,n).
Here |x-n|>=1/2 and max(x,n)<2x, so
  |log(x/n)|>1/(4x).
Also n>x/2 gives n^(-2)<4/x^2. Each middle term
is therefore <16/x. Since the middle range has at most
2x positive integers, its entire contribution is <=32.
Thus the reciprocal-logarithm sum is <4+32+4=40.

Because 2/pi<1, (P2) proves for EVERY N>=1:
  |finiteMertensPrefix(N)-
       perronVertical(N+1/2,2,(N+1/2)^2)|<40.  (P3)

This is stronger than the already existing
HalfIntegerMertensTruncatedPerron proposition, which
only asks for some K>=0 with an error
<=K*(1+log(N+1/2)). It is supplied with K=40,
since log(N+1/2)>=0. There is NO special N=1 issue:
the same three-region proof includes x=3/2.

This closes the right-line truncated Perron theorem as
ordinary mathematics, without importing any RH-strength
hypothesis. It does NOT give any new zero-free half-plane.

The additive Lean module
 MoebiusPerronRightLineExplicit.lean
contains candidate source proofs of the half-integer
distance and the old Perron-target consumer with K=40.
The two independent unported Lean analytic/real-series
interfaces are named explicitly:
  OriginalRightLineTermwisePerronBoundTarget,
  HalfIntegerReciprocalLogBudgetTarget.
They correspond EXACTLY to (P2) and the three-region
bound; neither is an axiom or a research cancellation
assumption. Existing target names are not modified.

## 5. Where the contour can legally move

The regularized reciprocal is
  R(s)=(s-1)/ZetaAsymptotics.riemannZeta₁(s).
The pinned local source already proves that R is holomorphic
on a genuinely zero-free half-plane. The new source adds
the exact converse:
  ZetaZeroFreeRightOf(theta)
    iff forall s with re(s)>theta,
        riemannZeta₁(s)!=0.
Away from s=1 this is the exact zeta factorization;
at s=1 the denominator is nonzero from its entire
pole-correction normalization.

Crucially, Lean's totalized division at denominator zero
does NOT imply genuine complex differentiability there.
At an actual nontrivial zero of zeta, this reciprocal has
a pole, and a contour shift cannot ignore its residue.
The missing ability to move to an arbitrarily near-1/2
boundary is a real mathematical obstacle, not a missing
Perron truncation constant.

The other original analytic interfaces remain:
  RegularizedReciprocalSubpower (vertical minimum modulus);
  ReciprocalSubpowerSegmentIntegration (from pointwise
    reciprocal bounds to horizontal/vertical integrals).
These are NOT supplied merely by (P3) and still require
actual analytic proofs in pinned Lean (with hypotheses
consistent with the exact zero-free region).

## 6. Conditional fixed-rate WHOLE original far source; NO RH assumption hidden

Under an independent genuine zero-free region
  ZetaZeroFreeRightOf(theta0), 1/2<theta0<1
and the existing zero-free reciprocal segment bound, the
now ordinary-proved half-integer right-line Perron formula
returns, for any theta0<theta<1, the genuine signed Mertens
prefix estimate |M(N)|<=C_theta*N^theta.

The existing original causal source then gives
  pickupVelocity(u)=exp(-u/2)M(exp u),
  wholePickup(T)=int_0^T pickupVelocity,
  pickupEnergy(T)=int_0^T wholePickup(u)^2du,
and the associated energy exponent is 2*theta-1.

At every requested fixed
  r>2*theta0-1
choose theta satisfying
  theta0<theta<min(1,(1+r)/2)
and theta>1/2.
For this choice the actual causal energy and endpoint are
O_r(exp(r*T)). The already source-exact finite identity
  pickupCross=collarIncident+shortRatio+reducedClose
                        +farReducedOrLongCross,
alongside the previous independent elementary absolute
all-rate prices, implies the WHOLE ORIGINAL FAR source
  farReducedOrLongCross(B_J,empty,J)<=C_r*exp(r*T_J)
uniformly over all admissible growing genuine-prime bank
families |B_J|<=floor(sqrt J).

The Lean source MoebiusPerronCompleteFarRateFrontier.lean
provides a candidate proof body for this general quantified
conditional transfer. Every input is individually named:
 original two right-line elementary targets,
 ZeroFreeReciprocalPerronBounds,
 PickupVelocityPowerEnergyTransfer,
 UniformCollarAllRateTarget,
 ShortRatioUniformAllRateTarget,
 ReducedCloseUniformAllRateTarget,
 ZetaZeroFreeRightOf theta0.

NO theta0=1/2 source theorem is assumed; all statements
here have strictly theta0>1/2. The original external
OpenAI 7/8 proposed source, if independently accepted,
would specialize to r>3/4; it would NOT imply every r>0.

## 7. Exact scalar obstruction to the requested EVERY-rate conclusion

For any fixed theta0>1/2, the mathematical contour/energy
proof requires an exponent
  theta>theta0
and then a requested rate
  r>2*theta-1.
Therefore it necessarily requires
  r>2*theta0-1>0.
Take the still positive number
  r0=2*theta0-1.
Then the condition theta0<(1+r0)/2 is
theta0<theta0, impossible.

The new Lean candidate proofs
 strict_energy_rate_above_fixed_zeroFree_boundary,
 fixed_boundary_cannot_cover_all_positive_rates,
 exists_intermediate_mertens_exponent
make this quantifier boundary explicit. This is a
limitation of this fixed-half-plane contour argument,
not a claimed general theorem that RH is unprovable.

To obtain EVERY positive r by the current scheme would
require genuinely new arithmetic cancellation, or
zero-free information down to the entire open half-plane
Re(s)>1/2 (RH-equivalent). The latter is FORBIDDEN as an
UNCONDITIONAL premise for this user's noncircular task.
No unproved half-plane statement, signed far all-rate bound,
or kernel RH conclusion has been imported as an axiom.

## 8. Independent source verification controls and citations

Local independent numerical evaluation of the strictly
positive reciprocal-logarithm infinite sum with 200000
terms (NONCERTIFYING finite diagnostics):
 N=1: S_N≈3.68244;
 N=2: S_N≈3.13768;
 N=10: S_N≈1.58193;
 N=100: S_N≈0.55702;
 N=1024: S_N≈0.28476;
 N=4096: S_N≈0.22220.
Every value lies safely below the analytically proved
uniform 40 budget; the proof did not rely on these samples.

External analytic references, clearly distinguished
from pinned-Lean theorem imports:
- Jason Tang and Richard Chen, The Prime Number Theorem
  with Error Term (MIT 2019), PDF slide/page 33,
  https://math.mit.edu/research/highschool/primes/materials/2019/December/Chen-Tang-PrimeNumberTheorem.pdf
  states a general right-line truncated Perron estimate.
  It implies a weaker but valid universal bound 420 for
  the current x=N+1/2,H=x^2 specialization.
  Its proof is outlined rather than Lean-imported.
- Manuel Eberl, "Perron's Formula," Archive of Formal
  Proofs / Isabelle, 17 June 2026,
  https://isa-afp.org/entries/Perrons_Formula.html
  formalizes general Perron inversion and explicit
  remainders in a DIFFERENT proof assistant, not an
  accepted Lean translation.
- Pinned Mathlib LSeries/Dirichlet.lean at
  https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Dirichlet.lean
  records the actual Mobius/zeta Dirichlet identity,
  not an assumed zeta theorem beyond Re>1.
- Clay Mathematics Institute, RH remains unsolved:
  https://www.claymath.org/problem/unsolved/

## 9. Verification and target status

This work is STRICTLY ADDITIVE, with two new Lean proof
candidate sources, this review and one passive verification
target. Original Möbius signs, original physical kernel,
root imports, Mathlib pin and Lean toolchain are unchanged.
No new sorry, axiom, admit, unsafe, native_decide, or
opaque trusted oracle is authored. The ordinary mathematical
Perron proof is complete, but its source-level Lean
analytic integrations and reciprocal-log infinite sum
remain unproved Prop interfaces.

Per user: compilation DEFERRED. Parser, elaboration,
exact expected target types, full module build, fresh
kernel recheck and complete transitive axiom/opaque/native
auditing ALL NOT_RUN. No Noe native owner, CI, scheduler,
or other execution authority used. No RH proof or
every-positive-rate complete far upper was established.
