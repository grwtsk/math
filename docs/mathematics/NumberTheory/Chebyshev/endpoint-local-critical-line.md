# Local critical-line transport of the isolated endpoint candidate

Owner #194; local-zero consumer #134; canonical inventory/prime consumer #261.
Exact parent: `b77494ce33a213b702cd91cea90dd0debbb2ff98`, tree
`9665cb7888ddc587d209032f45274064d13bd207`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This is a new local source
implication, not a kernel-accepted zero certificate. The entire inherited
Bernoulli, finite arithmetic, Newton, canonical-divisor and Mathlib stack still
requires exact-head elaboration and independent transitive trust review. No
execution hold, public-root import, prior declaration, target or pin changes.

## 1. Rehydrate the actual branch, rather than replay the older local proposal

The inspected parent already includes the actual periodic-Bernoulli residual,
its uniform bound for the old outer disk, and
`Checks.EndpointBernoulliSource.centerEstimates`. Its source candidate
`unique_simple_point` has no external source-remainder or center-estimate
argument. This extension reuses it exactly. It does not duplicate that work or
apply the earlier local-only v0.21 patch over the now-maintained modules.

The inherited local conclusion has an actual canonical point z, analytic
multiplicity one, a disk enclosure, and uniqueness among ALL canonical points
in that disk. The literal center and radius are unchanged:

    c = 1/2 + (14134725141735/10^12)i, R = 1/10^8.

The maintained zero predicate, not an independently labeled numeric record,
defines which points participate. Previous proof scripts remain unelaborated.

## 2. Symmetry plus uniqueness, not symmetry alone

Use the existing criticalReflection J(z)=1-conj(z). Its actual source transport
is `NontrivialZetaZero.critical_reflection`, already derived through the zeta
functional equation and conjugation without RH. The geometry derives

    J(J(z))=z,
    |J(z)-J(c)|=|z-c|,
    J(c)=c  iff  Re(c)=1/2.

Consequently the SAME closed disk D(c,R) is invariant when Re(c)=1/2. If z is an
actual zero in it, then J(z) is another actual zero in that same disk. Uniqueness
therefore forces J(z)=z, hence Re(z)=1/2 exactly.

`LocalZeroSymmetry.on_line_of_unique_disk` makes these roles explicit. It needs
existence (the supplied point), exact center-on-line geometry, exact zero
transport and all-point local uniqueness. It does NOT need simplicity. A double
zero can be the only distinct point in a disk, and it would still be fixed by
this argument. Simplicity of the literal candidate remains a separately sourced
Newton/analytic-order result.

No parameter is projected onto the line, and no numerical real-part tolerance
is rounded to one-half. The equality is a logical consequence after the actual
point has been isolated. The earlier Euler--Maclaurin evaluation still evaluates
the same literal center and retains all original error charges.

The classical zero symmetries are described in NIST DLMF 25.10(i),
https://dlmf.nist.gov/25.10 . This is a standard isolated-root symmetry argument,
not a new zeta identity or prime-distribution estimate.

## 3. The negative-height point and its analytic weight are derived

`conjugatePoint` merely packages the maintained exact conjugate-zero theorem in
the existing ZeroPoint subtype. It is an involution, preserves absolute height,
and carries D(c,R) to D(conj(c),R). These are different disks at the literal
positive height, not two names for the same disk.

Local uniqueness is transported for every point of the negative disk by
conjugating it back to the positive disk. No second numerical evaluation or
external negative-zero record is needed for this transport.

Analytic multiplicity one is transported independently. The existing actual
order-one factorization gives nonzero zeta derivative at z. Pinned Mathlib's
HasDerivAt.conj_conj, together with the actual identity

    zeta(conj(w)) = conj(zeta(w)),

gives

    zeta'(conj(z)) = conj(zeta'(z)).

This derivative is nonzero. Analyticity and vanishing at the conjugate point
then give analytic order one, and the canonical finite-order/natural conversion
supplies its multiplicity. No source multiplicity is assigned by metadata.
Conjugating the OUTPUT of a holomorphic function alone is not a holomorphic
chain-rule argument; both input and output are conjugated in the used theorem.

`EndpointCriticalLine.exists_simple_critical_pair` therefore targets a distinct
pair of simple actual canonical points, both on the line, each unique in its own
unchanged-radius disk. Distinctness is derived from the positive imaginary-part
bound, not from different record identifiers or absolute heights.

## 4. Exact ordinate interval and only a lower head count

The inherited disk gives

    |Im(z) - 14134725141735/10^12| <= 1/10^8.

After line membership, the complex distance equals this ordinate distance.
The exact interval, written in terminating decimals, is

    14.134725131735 <= Im(z) <= 14.134725151735.

It lies strictly between 14 and 15; the negative point lies strictly between
-15 and -14. These are consequences of the UNCHANGED geometric radius, not a
new numerical run, improved precision, or a statement of an ordinal zero number.

Both points belong to the existing complete closed head heightHead(15), whose
count uses analytic multiplicities and BOTH imaginary signs. Their two-element
set embeds in that head. Positivity of all canonical multiplicities gives

    2 <= heightCount(15),
    15 <= T  ==>  2 <= heightCount(T).

This is a LOWER count. It does not prove heightCount(15)<=2, equality with two,
exhaustion, absence of lower zeros, or that this is the first positive zero.
In particular it cannot be inserted as the UPPER-count premise of the previous
canonical evaluator. It does not prove that every zero up to height 15 lies on
the line. Any separately needed one-sign counting convention still requires its
own normalization; the maintained both-sign count is not renamed N(T).

## 5. Controls preserve the exact missing premises

The source controls use explicitly SYNTHETIC points at real parts 1/4,1/2,3/4
and height 14; none is asserted to be a zeta zero. The off-line pair is invariant
under reflection and has equal squared distances from the middle point. It is
not pointwise fixed. A smaller invariant disk contains only the middle point,
while the symmetric ambient set still has off-line points outside that disk.
Thus local uniqueness and a local line conclusion cannot be promoted to global
exclusion. The finite rational diagnostics additionally test both-sign symmetric
root sets and polynomials with known exact roots.

Other controls distinguish J(z)=1-conj(z) from 1-z, reject preserving the wrong
conjugate center, retain the center-on-line hypothesis even for radius zero,
and show that two found points need not exhaust a three-point source. Repeated
roots demonstrate that distinct-point uniqueness is not simplicity. A real-axis
point has no distinct conjugate, so the nonreal condition in the generic lower
count theorem cannot be omitted. Closed-boundary membership remains non-strict.

## 6. Evidence and next acceptance boundary

The five Lean files contain 37 theorem commands and six definitions: 43 explicit
source names, not accepted-proof counts. The isolated target records all new
names and retains the exact predecessor target and full transitive trust duties.
It does not replace the canonical source, finite evaluation, source remainder,
analytic-order semantics or any inherited large finite reduction.

4,231 exact-rational Python diagnostic assertions passed. These cover 360
arbitrary rational geometry cases, 120 both-sign symmetric finite root sets
(60 locally unique and 60 nonunique), 180 real-polynomial jet models, 27 explicit
multiplicity models, six literal geometric comparisons and ten directed controls.
Assertions reuse the same inputs; they are not independent numerical zeros.
No zeta evaluation, transcendental arithmetic, root finder or actual zero list
was used. The scripts are an independent model, not execution of Lean.

The remaining acceptance task is pinned elaboration, proof-script/resource
repairs where needed, and independent exact-type/transitive-axiom review of the
whole chain. Operational execution remains outside this pure mathematical
repository and under the unchanged authorization process. The next independent
counting supplier is a complete UPPER count on the same canonical head, not
another lower bound. Canonical coverage, full arithmetic source identities,
omitted-divisor tails and all-interval strict prime margins remain separate.
No RH, Legendre or new prime-distribution result is claimed.
