# Actual signed pickup curves, observation sandwiches, and RH-directed refinement

Local mathematical attribution: grwtsk contributors.

Baseline: grwtsk/math@f597b2416e7e97069b97a7cdd860fda5dfd0cc82.
Lean 4.33.0; pinned Mathlib db584cd6d46c92f209a44c0f1c829460d327499d.
New proof closure: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
Historical verification remains attached to its original source identities.

## 1. Apply accumulated mathematics instead of reopening the analytic return

The existing FiniteResponseSum proves the closed response representation,
continuity at births, the full ordered Gram identity, and energy=diagonal+cross.
LogarithmicPickupSampling already pays the actual sampling error.
LogarithmicPickupSeries already proves the signed sample increment and square
telescope. CompensatedCorrelationCriterion and CompensatedCorrelationLocalization
already preserve the negative terminal square and provide cofinal-checkpoint
consumers. None of these results is claimed as newly constructed here.

The new finite producer instead supplies a literal quadratic to the previously
published RS and observation-sandwich machinery, then applies the existing
GoodScaleEnergyCriterion. It does not equate pickupCross with the distinct
historical reflected compact-source observable. No Landau/analytic return is
reopened and no older acceptance is relabeled by this increment's NOT_RUN status.

## 2. Five actual moments, not an arbitrary Hermitian model

For the original closed inventory 1<=n<=N let

    M_N = sum mu(n),
    A_N = sum mu(n)/sqrt(n),
    D_j,N = sum mu(n)^2 * (1/sqrt(n))^j, j=0,1,2.

The implemented polynomial is

    p_N(x) = 4(A_N^2-D_2,N)
             -8(A_N M_N-D_1,N)x
             +4(M_N^2-D_0,N)x^2.

Equivalently it is exactly

    [sum mu(n)*2(1/sqrt(n)-x)]^2
       - sum [mu(n)*2(1/sqrt(n)-x)]^2.

The square is expanded before diagonal subtraction. This retains EVERY ordered
mixed contribution and its sign. In particular its quadratic coefficient need
not be nonnegative. Positive definiteness or a contraction theorem is not used
as an arithmetic cancellation supplier.

For the unchanged fixed-horizon response inventory, crossDensity(T,u) is the
full response square minus its complete diagonal. The new source proves

    integral_0^T crossDensity(T,u) du = pickupCross(T),

with continuity and interval integrability proved before finite interchange.
On log(N)<=u<=log(N+1), N>=1 and N<=floor(exp(T)),

    crossDensity(T,u) = p_N(exp(-u/2)).

Every not-yet-born response is zero, including at the closed birth event.
Consequently p_N and p_(N+1) agree at x=1/sqrt(N+1). This is value synchronization,
NOT a claim that derivatives match across impulses or that zeta is quadratic.

The five moments have exact one-impulse update formulas. The already proved
CenteredSieveRecovery.sieveCoefficient_eq is applied to every coefficient power
and weight: a changing prime-square sieve leaves these actual moments unchanged.
Surviving signs are still the original Mobius signs; no density normalization or
new sign-computation algorithm is inferred. The radical support invariant is not
reopened and is not used in place of square-divisibility or signed coefficients.

## 3. Whole-cell inequalities and quantitative RS observations

For a normalized quadratic use its three signed Bernstein controls B0,B1,B2:

    p(t)=(1-t)^2 B0+2t(1-t) B1+t^2 B2, 0<=t<=1.

The maximum control bounds the whole closed interval. One exact bisection gives

    left controls  = (B0, (B0+B1)/2, (B0+2B1+B2)/4),
    right controls = ((B0+2B1+B2)/4, (B1+B2)/2, B2).

Recursive upper certificates never increase; lower certificates, constructed
by negation, never decrease. The resulting interval width never increases.
A strict decrease is not promised at every step. For p(t)=4t(1-t), the initial
upper control is 2 and one bisection returns 1, the exact maximum. Endpoint-only
sampling would incorrectly return zero.

The controls convert exactly to the existing RS coefficient basis
(B0,2(B1-B0),B0-2B1+B2). The supplied encoder's encode_apply theorem is used,
without assuming special evaluation nodes for an arbitrary code.

Three actual scalar samples at normalized positions 0,1/2,1 reconstruct the
quadratic. With each sample error at most epsilon>=0, the WHOLE-CELL error is
at most 5*epsilon/4. The proof bounds the sum of the absolute Lagrange weights;
there is no hidden small-node-spacing inverse after normalization. This result
is instantiated on p_N and its actual physical x interval. Samples and radii
computed in floating arithmetic are not certified merely by these identities.

## 4. Canonical coverage and signed global interval

A BirthPartition stores consecutive physical intervals and their actual birth
indices. The canonical producer sets N_T=floor(exp(T)) and

    cut_k = min(log(k+1), T),  k=0,...,N_T,
    index_k = k+1.

For T>=0, the first cut is zero, the last is T, cuts are ordered, and each
interval belongs to the correct closed birth cell. The clipped final interval
and possible zero-length final cell are included. Thus source coverage and
no-birth conditions are PROVED for every nonnegative horizon, not new premises.

Let U_k and L_k be the local whole-cell upper/lower certificates. Then

    L(T)=sum_k (cut_(k+1)-cut_k)*L_k
      <= pickupCross(T)
      <= B(T)=sum_k (cut_(k+1)-cut_k)*U_k.

NEGATIVE cell bounds stay negative. There is no sum of absolute cell bounds,
no replacement by positive parts, and no discarded diagonal. A cell with
U_k<=0 makes no positive contribution; its sign certificate can be retained.
Increasing curve-refinement depths lowers B and raises L on the SAME partition.
This is a whole-cell supremum enclosure, not exact quadrature. Increasing the
control depth alone can plateau and is not claimed to make the integrated
interval width tend to zero. Additional physical partitions remain admissible
when their explicit coverage/birth conditions are proved.

The existing ObservationSandwich is instantiated on actual pickupCross values,
using observed value B(T) and error B(T)-L(T). This is an interval certificate,
not a new barycentric source center. The actual middle relation is unchanged
by the refinement depth. Existing meetEvidence therefore accumulates constraints
without pruning an actual edge and shrinks the unresolved relation. Independent
source/sector compatibility guards remain necessary. These edges are not
unconditionally same-zeta-zero assertions.

## 5. Combine with existing signed prime credit and reach the old RH consumer

MertensSignedPairDescent already proves

    pickupCross(T) <= signedUpper(T,P)

for a finite prime selection P, keeping its actual negative pair credit.
The new combined certificate is

    H(T) = min(B(T), signedUpper(T,P)).

Both increasing curve depth and enlarging P can only decrease H. The minimum
combines two independently proved upper bounds for ONE source; subtracting the
prime credit again from B would double count cancellation and is not done.

The new theorem riemannHypothesis_of_hybrid_good_scales consumes

    SubexponentialOn H G  and  AffineFrequent G,

and immediately applies the existing canonical RH consumer. Each positive rate
has its own constant and threshold. Depths and prime selections may depend on
outer time. The fixed finite-method theorem permits complementary regions and
uses the pre-existing finite-cover rule; individual methods need not cover all
scales. The required all-positive-rate arithmetic bound and actual region
coverage remain unsupplied. No polynomial bound on each moment separately is
added. The signed cross function is NOT assumed monotone; the older consumer
uses the actual monotone cumulative square energy after paying its diagonal.

## 6. Diagnostics and limits

The external finite preflight exited 0 with 29,223 exact rational mathematical
assertions and 12 static checks, plus 2,863 separately labeled 80-digit arithmetic
checks. It did not execute Lean, evaluate zeta zeros, or prove any asymptotic
estimate. Exact checks covered signed quadratics, bisection, sample uncertainty,
finite ordered-pair algebra and source-bound graph inclusions.

Actual Mobius diagnostics tested synchronized births through N=511 and complete
horizons exp(T)=2.5,4.5,8.5,16.5,32.5,64.5. At exp(T)=64.5 the independent literal
ordered-pair calculation gives cross about -10.5973384704753344; the canonical
curve upper is about -10.2025295111481641 and lower -11.0033418143928524. The older
prime-pair allowance using P={2,3,5,7} is about 17.892004417895274. These are
high-precision diagnostics, NOT rigorous interval enclosures. At these six
horizons curve depth zero and four gave the same global upper; no strict
arithmetic gain from depth was claimed there. The gain against the prior
allowance came from retaining the full signed cell polynomial.

No new zero ordinate or zero-height improvement, infinite sofic presentation,
source-to-zeta-zero interpolation, universal negative cross bound, or RH proof
is claimed. The next mathematical supplier is a uniform estimate on the
explicit SIGNED hybrid sum over a genuine covering family of outer scales.
Certified finite numerical bounds can supplement, but not replace, that supplier.

No new external paper theorem is imported in this increment. Existing source
and Mathlib attribution are retained; operational scripts/output stay outside
math. Source hashes, exact declarations, native commands and required controls
are recorded in the passive verification manifest and issue. Git uses the
connector-configured metadata; no author/committer override or history rewrite
is claimed. Root imports and dependency pins are unchanged.
