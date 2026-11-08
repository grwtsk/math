# Original signed Möbius primitive slopes: exact sign rigidity and quartic diagonal floor

Date: 2026-11-02. Original mathematical direction/source: grwtsk
contributors. Additional source formalization assistance: OpenAI.
Status: mathematical derivation and Lean SOURCE_PROOF_CANDIDATES.
COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No RH or GRH theorem.

## 1. Prior source being strengthened

The newest grwtsk/math releases include:
- MoebiusRationalSlopeCausalDilation.lean: original signed
  mu(ka)mu(kb)Gram_T(ka,kb), with exact 1/k and T-log k
  transport under Coprime(k,a), Coprime(k,b).
- MoebiusPrimeFreeExactTripleReindex.lean: source-exact
  original prime-free, low-gcd signed pair reindex into
  gcd multiplier k and primitive slope (a,b), with original
  IsOtherLowGcdPair Q T (ka,kb) and squareful-zero guards.
- MoebiusDirichletOriginalQuarticCollision.lean:
  genuine signed original causal ratio-class four-index
  collision with unit denominator, offdiagonal and
  ratio-unit masks. When q>=N(T)^2, the modular ratio
  equation equals INTEGER rational slope equality.
- MoebiusReducedRationalSlopeUnique.lean: equal rational
  slopes have a uniquely normalized positive coprime
  numerator/denominator pair.

The old rational-slope source explicitly withheld the
non-coprime common-multiplier cases. The old quartic
source proved GLOBAL nonnegativity as a class square,
but did not establish TERM-BY-TERM nonnegativity.
The new mathematics closes those exact distinctions.

## 2. Every original common-dilation slope has a CONSTANT SIGN

For positive g,a,b, let
  K_T(m,n) = pickupResponseGram T m n
and keep the ORIGINAL signed term
  S_(T,g,a,b)=mu(ga)*mu(gb)*K_T(ga,gb).

Define the literal, nonnegative slope mass
  W_(T,g,a,b) =
    1_{g coprime a AND g coprime b}
      mu(g)^2 * K_T(ga,gb).

For T>=0, K_T(ga,gb)>=0 by the exact ORIGINAL
nonnegative causal response integrand. Thus W>=0.
The original multiplier factorization gives

  S_(T,g,a,b) = mu(a)*mu(b)*W_(T,g,a,b).           [RIGID]

If gcd(g,a)>1, then ga is squareful, so mu(ga)=0;
if gcd(g,b)>1, then gb is squareful, so mu(gb)=0.
These are the ACTUAL zero values of the original source,
not skipped nonzero terms. If both gcd guards are one,
the prior genuine Mobius coprime multiplication gives
  mu(ga)*mu(gb)=mu(g)^2*mu(a)*mu(b).

The EXACT prior causal dilation preserves the more
informative true physical form
  W_(T,g,a,b) =
    1_{coprime(g,a),coprime(g,b)}
    mu(g)^2/g * K_(T-log g)(a,b).                 [SHIFT]

The shift is T-log g, NOT T, and all masks in the
source are still evaluated at original (ga,gb) and T.
For T>=0 the shifted mass is nonnegative by equality
with the original nonnegative Gram.

For any finite original multiplier subset S, summing [RIGID]
gives
  P_(S,T)(a,b)=mu(a)mu(b)*M_(S,T)(a,b), M>=0,
and hence the stronger NO-INTERNAL-CANCELLATION identity
  |P_(S,T)(a,b)|
    = sum_(g in S) |mu(ga)mu(gb)K_T(ga,gb)|.
The identity includes original mu=0 cases.

New source: MoebiusRationalSlopeSignRigidity.lean.
It adds candidate actual source zero, exact sign factor,
positive original and true shifted masses, and finite
positive/negative/absolute packet returns.

## 3. EXACT original prime-free low-gcd source by slope

Keep the full original source predicate
  IsOtherLowGcdPair Q T (ga,gb),
including unchanged fixedGcdCutoff T, selected additive
gap exclusions, integer-ratio exclusions, nonpositive
prime-dilation exclusions, both ordered orientations
and original endpointIndex T.

Define M_(Q,T)(a,b)>=0 as the sum over original
g in endpointIndex T with ga,gb in endpointIndex T
AND IsOtherLowGcdPair Q T (ga,gb) of W_(T,g,a,b).
The genuine finite source/gcd reindex gives

  otherLowGcdCross Q T =
    sum_(a,b in endpointIndex T, gcd(a,b)=1)
       mu(a)*mu(b)*M_(Q,T)(a,b).                 [CORE]

This is the SAME original low-gcd prime-free signed
cross, not a surrogate positive energy.
No original mixed term is missing. The new
MoebiusPrimeFreeSlopeSignLedger.lean contains a
candidate proof of [CORE] by direct finite Fubini and
source mask reassembly.

The new negative-slope sector
  N_(Q,T)=sum_(primitive a,b, mu(a)mu(b)<0)
              mu(a)mu(b) M_(Q,T)(a,b)
is NONPOSITIVE, with no change to source weight.
It is disjoint from the previously paid prime-dilation
packet because IsOtherLowGcdPair explicitly forbids
IsPrimeDilation.

This new class includes potentially incomparable,
opposite-parity primitive slopes, not only prime
integer multiples. Example: a=2, b=15 are coprime,
mu(2)=-1 and mu(15)=+1, so their full authentic
common-dilation packet is nonpositive. With Q empty
and physical T>log15, its g=1 pair is nonzero and
is not a prime dilation. At rate-dependent Q(T),
that particular small gap may be excluded, so no
asymptotic survival claim is made from this example.

The proof candidate establishes one-sided
  otherLowGcdCross Q T <= nonnegativeSignSlopeCross Q T,
where the right side contains only original
nonnegative-sign primitive slopes and their actual
nonnegative causal masses. This is arithmetic-free
one-sided PRUNING, but a global all-positive-rate upper
bound on this positive remainder is NOT proved and
could be much harder than the required signed bound.
One must NOT report the bound as an RH supplier.

## 4. Exact integer-slope four-Möbius positivity

A second proof avoids gcd bookkeeping entirely.
Pinned Mathlib defines the Liouville function lambda,
completely multiplicative and equal to mu(n) for
every ORIGINAL squarefree n.

For arbitrary nonnegative integers m,n,r,s with
  m*s=n*r,
if any source integer is nonsquarefree then
  mu(m)mu(n)mu(r)mu(s)=0.
Otherwise all four are squarefree, so
  mu(m)mu(n)mu(r)mu(s)
    =lambda(m)lambda(n)lambda(r)lambda(s)
    =lambda(ms)lambda(nr)
    =lambda(ms)^2
    =1.                                               [FOUR]

Therefore the fourfold ORIGINAL Möbius product is
ALWAYS nonnegative under exact integer-slope equality.
For T>=0 the original pair Grams K_T(m,n),K_T(r,s)
are nonnegative. Multiplying [FOUR] gives

  [mu(m)mu(n)K_T(m,n)]
  [mu(r)mu(s)K_T(r,s)] >=0
  whenever m*s=n*r.                                 [QUARTIC+]

This is TERM-WISE positivity of the exact rational
slope collision, stronger than the previous statement
that the entire ratio-class square sum is nonnegative.

New source: MoebiusExactSlopeQuarticTermwisePositive.lean.
Its candidate proof uses pinned Mathlib:
  ArithmeticFunction.moebius_apply_of_squarefree,
  ArithmeticFunction.liouville_apply,
  ArithmeticFunction.liouville_apply_mul,
and literal source Gram nonnegativity.

## 5. The NO-ALIAS modulus condition is essential

For q>=N(T)^2, N(T)=floor(exp T), the maintained
exact Dirichlet ratio theorem converts genuine modular
ratio key equality into m*s=n*r, provided BOTH original
denominators are units. A nonunit denominator makes
the original masked weight exactly ZERO.

Thus every nonzero term of the ORIGINAL four-index
ratio collision is nonnegative individually under
T>=0 and q>=N(T)^2. This does NOT hold at fixed q
as N(T) grows: modular aliases of DIFFERENT integer
slopes can have opposite original Möbius signs.

Explicit source counterexample outside the no-alias
range: q=7, original ordered pairs (m,n)=(2,3)
and (r,s)=(1,5). All four residues are units modulo7.
Their ratio keys coincide:
  2*(3^-1)=3 (mod7),  1*(5^-1)=3 (mod7),
but their integer products differ:
  m*s=2*5=10, n*r=3*1=3.
Their original signs are
  mu(2)mu(3)=+1, mu(1)mu(5)=-1.
At T>log5 both source Grams are positive, so the
fixed-q four-index collision term is NEGATIVE.
The distinction between fixed-q and q>=N(T)^2
is a mathematical requirement, not a presentation choice.

## 6. New quantitative ALL-character diagonal lower bound

Let w_(q,T)(m,n) be the EXACT earlier real pair
weight with original m!=n and denominator-unit
mask, and let R_(q)(m,n) be its actual unit-ratio
key. The previous source gives
  sum_(chi mod q) familyCross(chi,T)^2
    = phi(q) * originalQuarticCollision(q,T).

Under T>=0, q>=N(T)^2, all surviving collision
summands are nonnegative individually. Taking the
four-index COLLISION diagonal p=t gives

  sum_chi familyCross(chi,T)^2
    >= phi(q) * sum_(p original ordered pair,
                       ratio(p) is a unit)
                         w_(q,T)(p)^2.                [FLOOR]

This is NOT the ORIGINAL pickup diagonal m=n:
those pairs are excluded by w. The p=t diagonal
is the square of a genuine ordered OFFDIAGONAL
original signed Möbius Gram term, with all
unit masks retained for composite q.

New source: MoebiusDirichletQuarticDiagonalFloor.lean
contains a candidate finite proof via Finset.single_le_sum
and the previous all-character Parseval identity.

The lower bound exposes an arithmetic limitation
of this large-modulus family method. It does not
give an upper bound for ANY individual character
or for the original primitive slope signed cross,
and it does NOT prove RH or GRH.

## 7. Independent finite hostile tests

Using exact integer Möbius coefficients, all
38,304 non-diagonal integer-slope collision quartets
at N=96 had fourfold signed product >=0.
At N=8,16,32,64 the corresponding quartets
were 96,576,2928,14960 respectively, all passed.

Independently, the ORIGINAL birth-gated causal Gram
was evaluated at 50-digit mpmath precision from
the exact closed integral
  K_T(m,n) = 4 [
      (T-v)/sqrt(mn)
      + 2(1/sqrt m+1/sqrt n)
          (exp(-T/2)-exp(-v/2))
      + exp(-v)-exp(-T) ],
with v=log(max(m,n)), T>v, else K=0.
Across 6,323 tested coprime slope and multiplier
instances at T=log N for N in {8,13,25,37,64},
the genuine
  mu(ga)mu(gb)K_T(ga,gb)
and guarded shifted
  mu(a)mu(b)mu(g)^2/g K_(T-log g)(a,b)
agreed to approx 1.1e-50 or better; no
negative physical Gram was found.

These reference tests check source mathematical
identities independently. They are NOT Lean
compiler, fresh kernel or transitive axiom receipts.

## 8. New formal acceptance and remaining frontier

The files are additive; prior sources stay unchanged:
- MoebiusRationalSlopeCausalDilation.lean
  blob 93f863f1bed0bae39dfcf799f8c69b1060006796;
- MoebiusPrimeFreeExactTripleReindex.lean
  blob 0db3152b7108d1a9e8f7819a8114458bc9070cab;
- MoebiusDirichletOriginalQuarticCollision.lean
  blob 1b37c37caec2af8cba1c8176c5db2db68456f6cf;
- MoebiusDirichletSignedCrossReality.lean
  blob 082806186c6af9661c1c98844517e9e0da0baab8.
- Pinned Mathlib Liouville.lean
  blob 72f70aaee6aade95868b72e6d4b2408f6bcad694;
- Pinned Mathlib Moebius.lean
  blob 05f76c89adb09318abbec6ada574be955267b03d.

Pinned Lean v4.34.1, Mathlib commit
d13f23b723b8a846827a245b89c10fc7d3f11612.
The new Lean scripts and all upstream imported source
proof candidates are NOT_RUN, expected types NOT_RUN,
fresh kernel NOT_RUN and axiom/opaque/native-helper
audit NOT_RUN. A passive acceptance file lists exact
#check and #print axioms targets; it is NOT a receipt.

There is NO new proof of the unresolved
PrimitivePrimeFreeEveryRateOn G. The next genuinely
arithmetic problem is cancellation BETWEEN primitive
slopes with opposite parity signs, under the original
Q,T source-dependent masks and their positive
common-dilation weights. Within each slope packet,
there is mathematically no such cancellation to exploit.

No original Möbius signs, squareful zeros, indices,
causal time shift, fixedGcdCutoff, prime-dilation
exclusions, character ratio-unit masks, graph observer
defects, root imports, Lean pin, CI or runner is altered.
