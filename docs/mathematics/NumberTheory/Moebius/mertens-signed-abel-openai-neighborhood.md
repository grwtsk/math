# OpenAI arithmetic neighborhood of the signed Abel path

Contribution: grwtsk.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
No analytic theorem from openai/math is locally admitted by this increment.

## Immutable scope

The upstream snapshot inspected is `openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. All five new local mathematical leaves coexist at `grwtsk/math@2317d89167091e1acc6b7567ff4b0014c58dbf01`. The initial local review was at `e92edbf4d8c7914e0f2f61bede32b47444583351`; main advanced concurrently before and during publication. Existing concurrent additions and repairs were retained, not reset or incorporated into a claim of authorship for this increment.

Local toolchain: Lean 4.33.0, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Inspected upstream: Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No dependency migration or root promotion was performed.

The detailed bibliographical supplement is `docs/reference/literature/reading-background/openai-math-abel-neighborhood-20261027.md`. Its insertion into the central `paper-to-formalization-references.md` index remains pending; this increment does not claim that central file was updated. The passive verification roster is `docs/verification/NumberTheory/Moebius/MertensSignedAbelFourthMoment/openai-neighborhood-v0.1.toml`.

## The upstream neighborhood actually inspected

The most relevant family is OpenAI, *Ordinary two-point correlations of multiplicative functions*, September 24, 2026, family 007. Its final export distinguishes fixed-form Liouville logarithmic savings from qualitative ordinary Elliott cancellation for one-bounded multiplicative functions when at least one function is uniformly nonpretentious. A fixed affine form is chosen before the limiting averaging length. Neither a growing shift range nor a uniform constant over the source-dependent prime/shift/offset family follows merely by changing notation.

`ComparatorChallenges/OrdinaryTwoPointCorrelations.lean` is a statement template containing `sorry`; it is not the implementation. The comparator JSON points to `OAI.NumberTheory.TwoPointCorrelations.FinalMain`, whose exports call the implementation in `OAI.NumberTheory.TwoPoint.Main`. The permitted-axiom configuration and `enable_nanoda=false` are configuration data, not an execution receipt or a mathematical refutation. No fresh verification of that proof closure was performed here.

Lower in that stack, `MinorArcFourthExpansion.lean` contains an exact complex fourth-moment expansion; `MinorArcBilinearWindow.lean` exposes the actual finite bilinear window; `MinorArcBilinearSieve.lean` states a quantitative short-window prime-sieve bound. The finite fourth-moment method is independently rederived over the reals and extended to the actual local coefficient measure. The analytic bilinear sieve remains a prospective supplier, not an imported dependency.

Two additional inspected neighbors remain contextual only. Family 003 exports a zeta nonvanishing theorem to the right of 7/8; local admission, source-specific arithmetic transport and any further threshold improvement remain separate. Family 130's stated scope concerns exact-complex-arithmetic Fourier evaluation cost. Fast or exact evaluation does not bound the value of an arithmetic response, prove a fourth-moment saving, or imply RH.

## 1. Fixed correlations pay only a fixed finite shift packet

Set X=2^j and Y=2X. Keep the original kernel K(j,t,h), actual ordinary prefixes C_h(N)=sum_(a=1..N) mu(a)mu(a+h), and all original support restrictions.

For a finite set S of shifts define the SIGNED source contribution

    Q_S(j) = (2/Y) sum_(t<Y) sum_(h in S, 1<=h<Y) K(j,t,h) C_h(t+1).

`full_packet_eq_regular_add_fixed` identifies the original packet with Q_S plus the unchanged signed complementary packet. No absolute values or estimates are imposed on the complement.

The quantitative theorem `abs_fixedShiftPacket_le` proves:

    A>=0, eta>=0,
    |C_h(N)| <= A+eta*N for every h in S and N
    ==> |Q_S(j)| <= 4*card(S)*(A/(X+1)+eta).

The intercept uses the ACTUAL atom bound K<=2/(X+1); the slope uses the already established complete exceptional allowance <=4*card(S). This is not a generic assertion about subprobability kernels.

`fixed_family_packet_bound` derives a common initial allowance K for a FIXED finite family from individual eventual ordinary-correlation estimates. K may depend on S and eta; no uniform estimate on K as S grows is constructed. For fixed S, valid cancellation for every eta would consequently control this finite contribution in the limit. Such arithmetic cancellation is an explicit input here, not a locally admitted OpenAI theorem.

The generic counterexample movingFamily(i,N)=1 if N<=i, else zero is eventually zero for every fixed i, yet its average over i in [N,2N) is one. It refutes an invalid quantifier interchange, not a statement about the actual Mobius function.

Source modules: `GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation` and `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer`.

## 2. The actual prime quotient admits positive affine coordinates

The source mu(d*v-h) is not directly an upstream affine form with natural nonnegative offsets. For d>0 set c=floor(h/d)+1. Then h<d*v iff c<=v, and d*c-h>0.

For M>=c the exact identity is

    sum_(1<=v<=M, h<d*v) f(d*v-h) g(v)
      = f(d*c-h)g(c)
        + sum_(1<=n<=M-c) f(d*n+(d*c-h)) g(n+c).

For M<c the original window is zero. The first admissible term is retained; the tail begins at one. For h>0 the forms have positive slopes d,1 and determinant d*c-(d*c-h)=h, so they are nonproportional. The statement excludes d=0 and does not claim nonproportionality at h=0.

For the actual one-prime term take d=p, M=floor((N+h)/p), f=mu and g(v)=1_(p does not divide v)*mu(v). `bandMoment_zero_eq_affine_tails` proves the resulting equality for the existing `bandMomentPrefix 0`, retaining every selected prime, floor, first term, empty case and repeated-prime mask.

`excludePrime_multiplicative` and `excludePrime_oneBounded` preserve the relevant algebraic input conditions. Actual Mobius multiplicativity is derived from Mathlib. Neither lemma proves uniform nonpretentiousness. The real-to-complex finite-sum convention is aligned explicitly, but no OAI module is imported or comparator acceptance claimed.

The per-window first term has absolute value at most one for one-bounded inputs. There are many growing windows: that bound must not be reported as a unit error for the whole packet. Their original kernel weights and their aggregate must still be retained or separately bounded.

Source module: `GRWTSK.NumberTheory.Moebius.PrimeQuotientAffineWindow`.

## 3. Fourth moments of the actual combined arithmetic row

Keep the previously identified signed row ell=w1-w2-w3 and L_j(f)=sum_(a=1..Y) ell_j(a)f(a). The signed rows are combined BEFORE a norm is introduced.

The exact real fourth expansion retains EVERY ordered quartet, including diagonals:

    L_j(f)^4 = sum_(a,b,c,d=1..Y)
        ell(a)f(a) ell(b)f(b) ell(c)f(c) ell(d)f(d).

This is a real specialization of the finite method inspected upstream, not a complex statement with its conjugates dropped. The source additionally proves

    L_j(f)^4 <= W_j^3 * sum_(a=1..Y) |ell_j(a)| f(a)^4,
    W_j = sum_(a=1..Y) |ell_j(a)|.

The cubic coefficient-mass loss is retained. The displayed bound is a sufficient majorant, not automatically an improvement over the previous weighted-square route. Exploiting cancellation in the exact quartet expansion may be preferable to taking this absolute majorant.

For e=mu-g and epsilon>=0, a supplied source-matched bound

    W_j^3 * sum |ell_j| e^4 <= epsilon^4

feeds `full_packet_input_fourth_comparison` and gives

    |full_packet - modelPacket(actual_head,inputProfile(g))|
      <= 2+epsilon/6.

The original unsifted/one-prime/two-prime head is retained. The constant two is only the inherited boundary allowance. No useful g, small fourth moment, or head estimate is constructed.

The threshold form retains both the small-value mass and the WEIGHTED large-value set:

    sum |ell| f^4 <= V*W + U*sum_(f^4>V)|ell|

when V>=0 and f^4<=U on the same source interval. Counting density cannot replace that coefficient mass without another theorem.

Source modules: `GRWTSK.Analysis.FiniteSums.WeightedFourthMoment` and `GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment`.

## 4. The next analytic comparison, not yet supplied

The inspected upstream `OAI.TwoPointCorrelations.minor_arc_bilinear_sieve` fixes an actual bilinear short-window polynomial. Its hypotheses include a positive dilation, primes different from two in a dyadic range, one-bounded coefficient families, a large-prime-scale threshold, 1<=W<=R<=H/W, 2<=q with W<=q<=H/W, coprime rational approximation data and |alpha-r/q|<=1/q^2. Its conclusion retains M^3, X*(3H+1)^3, H, R^3 and the logarithmic/diophantine factors. None can be suppressed when comparing exponents.

The next bounded source task is to identify a piece of the local signed row or prime-quotient aggregate with exactly that polynomial, or a finite superposition of it with explicitly bounded coefficient mass. Prime-dependent masks, translated first terms, floor cutoffs, the remaining major-arc part and the ordinary growing shift/depth ranges all remain payable. A logarithmic saving in a naturally Y-sized aggregate is not an all-positive-exponent Y^delta bound.

The fixed-family and affine identities now make two prerequisites explicit, while the fourth-row theorem gives a local consumer for a correctly normalized moment input. They do not yet complete the arithmetic comparison or admit the upstream analytic proof.

## Evidence and scope

The five files contain eight definitions and thirty-eight theorem scripts. Their source blobs were read back and matched against local bytes. Compilation, fresh kernel replay and complete transitive axiom audit are NOT_RUN. Finite rational/integer diagnostics are reported in the verification issue, not treated as proof acceptance or an operational Noe receipt.

No upstream write, workflow dispatch, dependency change, force push, history rewrite or public-root promotion occurred. The new local contribution is grwtsk; genuine upstream bylines and licenses remain unchanged. Independently rederived finite mathematics is distinguished from upstream analytic source inspection, conditional suppliers, finite evidence and unresolved premises.
