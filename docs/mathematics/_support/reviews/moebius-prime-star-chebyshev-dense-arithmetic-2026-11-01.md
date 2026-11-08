# Source-exact dense prime-star saving, Chebyshev lower bound and prime-prime counterweight

Local attribution: grwtsk contributors. Research date: 2026-11-01.
Mathematical-source assistance: OpenAI ChatGPT.
The new Lean declarations are SOURCE_PROOF_CANDIDATE only.

## Objects and original signed source

Use the unchanged `GRWTSK.RiemannHypothesis.CCC.pickupCross T`, original
integer inventory I_T={1,...,floor(exp T)}, actual Möbius μ(n), and the
causal response r_n(u) with K_T(m,n)=int_0^T r_m r_n.
The original Putnam short-gap set is A_ε(T)={1,...,floor(exp(εT/2))}.
The actual signed dense source is the ordered m!=n sum whose
distance is NOT in A_ε(T), as proved in
`MoebiusSmoothBirthDenseSingleBudget.original_dense_eq_complement`.
No prime-power, rough, matched, mixed or sign term is altered.

For a general finite distance set A select
Q_A(T)={p in I_T: p prime and |p-1| not in A}.
The finite selected ordered source edges are precisely
E_A(T)={(1,p),(p,1):p in Q_A(T)}.
The index 1 belongs to I_T whenever any such prime p does,
and prime p never equals 1. Forward and reverse image sets are
therefore disjoint, preserving both orientations exactly.
Since μ(1)=+1 and μ(p)=-1, for T>=0,

 P_A(T)=Σ_{e in E_A(T)} μ(e1)μ(e2)K_T(e1,e2)
       =-2 Σ_{p in Q_A(T)} K_T(1,p) <=0.

The new Lean source candidates prove this finite reindexing,
exact sign, original-edge inclusion, and the COMPLETE dense return

 denseLongGapSource(ε,T)
   = P_(A_ε(T))(T) + R_star(ε,T),

where R_star is the EXPLICIT sum over every original ordered dense
edge outside E_A. This is not an unrestricted residual identity
standing alone: every original pair is placed in exactly one
source-defined finite set.

## New quantitative saving: elementary Chebyshev, not PNT

Define the wider fixed real logarithmic prime window

 W_T={prime p: exp(T-7)<p<=exp(T-3)}.

Let t=T-3, X=exp t, Y=exp(t-4). For T>=40 (thus t>=37),
Mathlib's explicit Chebyshev inequalities give

 θ(X) >= (X-1)log2 - log(X+2)-2 sqrt(X)log X,
 θ(Y) <= Y log4.

They occur in pinned `Mathlib/NumberTheory/Chebyshev.lean` as
`Chebyshev.theta_ge'` and `Chebyshev.theta_le_log4_mul_x`.
The θ difference is EXACTLY Σ_(p in W_T) log p because
prime endpoints use the correct strict lower and inclusive upper bounds.

For clarity, the following are elementary conservative estimates:
log2>=1/2 and log2<=1, log4<=2, exp(4)>=16;
log(X+2)<=t+1 for t>=37 because X+2<=2X<=exp(1)X.
The exponential series gives exp(t)>=t^3/6 and
exp(t/2)>=t^3/48. For t>=37,

  (log2+log(X+2))/X <= 6(t+2)/t^3 <= 1/24,
  2t/sqrt(X) <= 96/t^2 <= 1/12,
  log4*Y/X <= 1/8.

Consequently,

  (θ(X)-θ(Y))/X
    >= 1/2-1/24-1/12-1/8 = 1/4.

Since each selected prime has log p<=log X=t<=T,

  #W_T >= (θ(X)-θ(Y))/T >= X/(4T),  T>=40.

This is an UNCONDITIONAL classical Chebyshev consequence; no
PNT, zero-free region or RH assumption occurs. This full
real-variable Chebyshev inequality is a complete mathematical
argument at stated T>=40 scope, but has NOT been added as a
compiled Lean theorem to the new file.

## Original causal Gram lower bound

For p in W_T and u∈[log p+2,log p+3]⊆[0,T],
both original responses satisfy r_1(u)>=1 and
r_p(u)>=p^(-1/2). Indeed exp(-1)<=1/2 and
exp(-u/2)<=exp(-1)*p^(-1/2).
Responses remain nonnegative on the rest of [0,T], so

  K_T(1,p) >= int_(log p+2)^(log p+3) p^(-1/2) du
            = p^(-1/2) >= X^(-1/2).

For each fixed 0<ε<2, choose for example
R_ε=max(40,10/(1-ε/2)).
For T>=R_ε,

  exp(T-7)-1 > exp(εT/2),

since T(1-ε/2)>=10. Thus every p in W_T
satisfies p-1 not in A_ε(T), so W_T⊆Q_(A_ε(T))(T).
All star contributions are nonpositive. Combining the
cardinality and Gram estimates gives

  P_(A_ε(T))(T)
    <= -2 Σ_(p in W_T) K_T(1,p)
    <= -2*#W_T/sqrt(X)
    <= -exp((T-3)/2)/(2T)
    = -(exp(-3/2)/2)*exp(T/2)/T.

The negative magnitude is genuinely exponential at exponent 1/2
in the original real outer time, uniformly for T above an
epsilon-dependent threshold. This is a source-specific
QUANTITATIVE signed subpacket estimate independent of RH.
It does not bound the full dense signed source.

## Hostile positive dense packet and why RH remains open

For distinct primes p,q in W_T, μ(p)μ(q)=+1.
On u∈[T-1,T], both responses are at least
p^-1/2 and q^-1/2; hence K_T(p,q)>=1/sqrt(pq)>=1/X.

There are N=#W_T>=X/(4T) such primes. At fixed p, at most
2H other integers have |p-q|<=H, where H=floor(exp(εT/2)).
For every fixed 0<ε<2, eventually N>=4 and H<=N/8,
because X/(4T) has exponential rate one while H has rate ε/2.
Therefore the number of ORDERED dense p!=q prime-prime edges
is at least N(N-1-2H)>=N^2/2. The selected original
positive dense prime-prime packet consequently obeys

  Q_ε(T)>=N^2/(2X)>=X/(32T^2)
          = exp(-3)*exp(T)/(32 T^2)

for all sufficiently large T (threshold may depend on ε).
This is an ACTUAL source-positive dense block of exponent one.
It is disjoint from the star edges because all prime-prime
endpoints are >1. The new Lean candidate proves its FINITE
source inclusion and nonnegative sign, but not its quantitative
Chebyshev/neighbor-count lower bound.

Thus even the prime-only dense source has competing signed
contributions at different exponential scales. The larger
positive sector must be canceled by other actual signed pairs
(including squarefree composite interactions) before the
RH-facing upper bound can hold. No such cancellation is
supplied by selecting prime stars. The positive block is a
hostile control against claiming that P_star alone closes RH.

## Comparison with prior sign-selection results

The earlier `MertensSignedPairDescent` programme (#1401)
already establishes a general finite prime-multiple negative
pair family, including m=1 in its abstract scope. We do
NOT claim the individual (1,p) sign or generic finite
complement as newly discovered mathematics.

This increment specializes the ORIGINAL Putnam dense gap
criterion, gives an explicit no-PNT Chebyshev *exponential
lower bound* on the negative anchor-prime packet, and
quantifies a larger positive prime-prime countersector.
The closest upstream source is the pinned Chebyshev proof
by Alastair Irving, Terry Tao, and Ruben Van de Velde
(Mathlib, Apache-2.0). No originality claim for classical
Chebyshev inequalities or causal kernel positivity.

## Formal assurance, verification and next consumer

New source:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPrimeStarDenseArithmetic.lean`.
Its finite `primeStarPacket_eq_negative_gram`,
`primeStarPacket_nonpos`,
`starOrderedEdges_subset_dense`,
`denseLongGapSource_eq_star_add_remaining`,
`primePrimeDenseEdges_subset_dense` and
`primePrimeDensePacket_nonneg` are Lean SOURCE_PROOF_CANDIDATES.
The quantitative Chebyshev and original integral lower
bounds remain paper-only; no new research axiom or `sorry`
is hidden in the Lean source.

Exact-rational preflight: 816 finite arbitrary-gap
complete/star/remainder partition checks (N=1..17, 48
instances per N), and 900 symmetric rational-kernel
two-orientation sign checks (N=1..30, 30 per N) PASS.
Exploratory actual-Gram evaluations for T=8..12
checked prime-window K_T(1,p)*sqrt(p)>1; these are
floating-point diagnostics, not an all-T proof.
No numerical tests are called a compiler/kernel receipt.

Current Lean pin: v4.34.1, Mathlib revision
d13f23b723b8a846827a245b89c10fc7d3f11612.
Lean parsing, compilation, expected-types, fresh kernel
replay, transitive axiom audit: ALL NOT_RUN.
No hardware, native proof-controller, scheduler or
external repository write is asserted.

The next substantive arithmetic challenge is NEW
source-bound signed cancellation across the positive
prime-prime and squarefree composite/rough/mixed blocks,
uniformly in the actual long-gap range, at every positive
rate and one fixed affine-covering set G. The earlier
finite negative pair selector and the new exponential
negative star are insufficient by themselves.
