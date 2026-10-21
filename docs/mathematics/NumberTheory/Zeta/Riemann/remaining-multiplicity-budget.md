# Remaining multiplicity after certified critical-line contributions

Owner: #330. Source records: #139. Count supplier: #135. Research consumer:
#307. Acceptance: #100. This is authored mathematical source, not a replay
receipt or a new zero-count calculation.

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**. Every proof script and
inherited dependency still requires exact-source elaboration and trust review.

## Source and definitions

Inspected parent: `47619c01d13e365916bae38e799734279df6844b`, tree
`434b354a5870bf9860ddab90b4975af83c6a3403`. Keep the parent's canonical
`ZeroPoint`, analytic `multiplicity`, `heightHead`, `heightCount`, regional
filter/count, reflected point and `RHThrough` unchanged. The parent supplies
reflection of actual zeros and source-derived multiplicity preservation.

For a cutoff T and exact region U, write H for the OLD `regionHead T U` and
w(z) for its positive finite analytic multiplicity. Supply a finite known
set A of the SAME canonical points, with A contained in H and every point
of A proved on the critical line. Define only the complement mass

    R = sum_(z in H minus A) w(z).

This is not an external zero list or a new divisor. The canonical head is
noncomputable mathematical data, not an enumerator. Its closed absolute-height
endpoint, both signs, full complex locations and U's boundary remain intact.

## Exact accounting before subtraction

The disjoint finite partition gives

    R + mass(A) = regionCount(T,U).

Only after A is proved a subset may this be rewritten with natural subtraction.
For separate certified bounds L <= mass(A) and regionCount(T,U) <= K, derive

    L <= K,
    R <= K-L.

K-L is an UPPER bound, not the exact unobserved count. Summing per-point lower
weights supplies a lower bound for mass(A), not exact analytic orders. Repeated
reports of the same full point do not add mass. The finite-set representation
deduplicates identities but does not itself certify a parser or reconciliation
of independent numerical enclosures.

## Off-line points survive removal

Fix an actual off-line z in H. If U is stable under critical reflection,
Rz = 1-conj(z) also belongs to H and is distinct from z. Neither is in A:
all A's points are on the line, and reflection cannot take an off-line point
onto the line. Source-derived analytic order preservation gives

    mass(A) + 2*w(z) <= regionCount(T,U).

Consequently a supplied lower bound m <= w(z), together with

    regionCount(T,U) <= K < L+2*m,

forces THIS selected point onto the line. This strictly strengthens the
previous selected-pair budget by retaining already-certified, disjoint mass.
It does not select an actual zero, evaluate its multiplicity, or compute K.

Because every actual zero has w(z)>=1, the UNIFORM sufficient condition

    K < L+2

forces every point of H onto the line. Equivalently, with the proved
consistency L<=K, K-L<2 suffices. The exact-complement form is R<2.
This is a sufficient criterion; failure is not evidence of an off-line zero.

For the universal region and natural cutoff N, the new consumer uses the
unchanged `heightHead` and `heightCount` and returns only `RHThrough N`.
Every-zero coverage comes from that canonical head, NOT from assuming A is
complete. An arbitrary numerical list with its own count cannot replace H.

## Line location is not enumeration completeness

At generic reflection-stable regional scope, R=1 can represent one additional
simple line point. Thus R<2 does not prove A=H. The separate R=0 theorem does
prove A=H, using positivity of ALL canonical weights. A zero-weight synthetic
point shows why that positivity cannot be omitted.

The two-point threshold is sharp at this regional scope: a known fixed point
plus an exchanged simple pair has R=2. A repeated fixed point of weight two
also has R=2, demonstrating that a failed test does not locate the remainder.
Both-sign/conjugation parity can impose additional structure on some regions;
this increment neither claims those refinements nor asserts that R=1 is
realized in the complete both-sign zeta head.

## Controls and source alignment

Eight unexecuted Lean controls distinguish one missing fixed point, two missing
exchanged points, a falsely certified known point, outside-region known points,
overlapping reports, zero weights, an overstated known-mass lower bound, and a
repeated fixed point for which the sufficient test is inconclusive.

The asymmetric buffered rectangle used by the separate #135 route is NOT
automatically reflection-stable. Retain its independent region/coverage
adapter; never apply the stable-region consumer just because its count is
small. Open and closed cutoffs also cannot be interchanged after evaluating
the known and total counts. No claim about a missing root's horizontal
coordinate follows from a positive arithmetic count gap alone.

## Dependencies and acceptance

The finite partition reuses Mathlib's additive `Finset.sum_sdiff` and
nonnegative subset-sum inequality at pinned revision
`db584cd6d46c92f209a44c0f1c829460d327499d`. The preceding budget and multiplicity
supplier are imported rather than copied. Upstream authorship is retained;
these finite counting deductions are not claimed to be novel mathematics.

The new isolated root and passive target do not alter public-root imports or
older sources/targets. Acceptance retains the predecessor's full obligations:
exact-source elaboration/repairs; independent complete expected types; full
import, generated-declaration, axiom/native and compiler qualification; and
source-bound replay under separately authorized execution. Static text checks
and exact finite arithmetic models do not discharge any of these gates.

Actual source-correct known zeros, line certificates, count upper bounds,
useful margins, concrete SourceAcceptance, contour/divisor alignment and
all-height suppliers remain substantive independent tasks. This increment
creates no actual zeta count, accepted bounded-RH result, global RH proof,
choice-free closure claim, execution authorization or hold release.
