# From separated local enclosures to the canonical tent sum

Owner #194; canonical source and evaluation consumers #139/#140/#261.
Additive extension of draft #274. Reviewed parent
`61d62e59a82b5cfbe6fbb76079e0efb6ef0226ef`, tree
`b192ec8b82531da75af1dbfd3f7c590579c4a319`.
Mathlib stays `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** No proof term has been elaborated
or accepted. The new finite definitions and analytic applications remain source
candidates. The elementary exhaustion argument is not claimed as original.

## 1. What the predecessor still required

The previous tent-family evaluator accurately distinguishes the supplied record
sum from an independently specified finite source. Its source transport takes an
entire equivalence, exact parameter agreement and exact multiplicity agreement.
Unique record keys alone cannot provide those mathematical inputs.

This increment constructs that equivalence and derives exact multiplicities from
three different ingredients: finite rational separation/height checks, genuine
local zero witnesses with order lower bounds, and an independently proved upper
bound on the complete canonical count. Only the first ingredient is checked by
rational geometry. The other two remain explicit analytic proof arguments.

The target is now literally the existing `CanonicalZeroDivisor.heightHead T` and
its actual `analyticOrderNatAt riemannZeta` multiplicities. Its source owner is
reused unchanged, blob `892f796ab9074813b89f58b2321f2683c80bef7b`, originally in
#279 and re-read at #286 head `b3b9aa54ff926c08b719711406c4347b54f7e4ec`.
The direct repository dependency `ZeroSymmetry` is identical on both branches,
blob `5f465139ee895a99b79af84ee0866aa5f637bdfa`. This is selective source reuse,
not a merge or acceptance of the moving contour stack.

## 2. Positive weight exhaustion

Let I and S be finite types, f:I->S injective, and w:S->N strictly positive.
Let m:I->N satisfy m_i<=w(f(i)). If y is omitted from the image, finite sum
comparison gives the stronger diagnostic

    sum_i m_i + w(y) <= sum_(u in S) w(u).

Now assume the independent upper count inequality

    sum_(u in S) w(u) <= sum_i m_i.

A missing point would have w(y)<=0, contradicting source positivity. Thus f is
surjective. If any local lower bound were strict, summing the local inequalities
would contradict the same upper count. Consequently

    f is bijective;
    w(f(i))=m_i for every i;
    sum_(u in S) w(u)=sum_i m_i.

No exact count equality or exact local multiplicity is assumed. They are derived.
A lower bound on the total count is the wrong direction and cannot discharge this
step. Zero source weights or duplicated selections invalidate the argument.

## 3. Rational closed disks supply distinctness and height membership

Keep the SAME rational centers and radii used by `RationalTentEnclosure`.
The separation test for two records is

    r>=0, s>=0,
    (r+s)^2 < (Re(c-d))^2+(Im(c-d))^2.

The source derives a strict center-distance bound using the squared complex norm.
The triangle inequality then prevents any point from lying in both closed disks.
Tangency is rejected: two tangent closed disks can share their boundary point.
The comparison is genuinely two-dimensional and uses no floating square root.

For each disk, require

    |Im(c)|+r <= T.

Every enclosed point then has absolute height <=T, with both signs retained.
The cutoff is closed, matching the canonical height head. No supplied label or
rounded cutoff determines membership. A disk straddling the cutoff fails this
sufficient geometry test even if its intended point happens to lie below T.
Exactly one radius per record is required. Missing/defaulted radii do not count.

The geometry does not certify that the disks contain zeros. It also need not
force every point of a disk into the critical strip: the selected actual zero
already has the independently established unconditional strip property.

## 4. Local witnesses and one global upper count

For every record i, `LocalWitnesses` requires a proof that there exists ONE actual
nontrivial zeta point rho_i in its closed disk, with

    m_i <= analytic multiplicity(rho_i).

It does not ask for uniqueness, an exact multiplicity, or prior height-head
membership. Height membership follows from the checked disk bound; separation
makes the selected map injective. The existing canonical multiplicity-positivity
theorem supplies the positive weights of the exhaustion argument.

The remaining global input is

    heightCount(T) <= recordMass(family).

`heightCount` is the COMPLETE both-sign, analytic-multiplicity-weighted count,
not the length of a file, a count of distinct points, or a sum over observed data.
A separately certified integer upper bound U also suffices when U<=recordMass.
The Boolean geometry has no field pretending to verify the actual count.

These inputs construct

    RecordIndex(family) equiv {rho // rho in heightHead(T)},

with the same coordinate enclosures and EXACT source multiplicities. The new
source also derives equality of the total masses, equality between canonical
point cardinality and record length, and uniqueness of the actual zero in each
disk. Uniqueness follows from the derived complete correspondence: any competing
actual zero is in the same head, hence selected somewhere, and strict separation
forces it to have the same record index.

The local premise concerns one point of sufficiently high order. A disk with
weighted zero count two may contain TWO simple points, and does not thereby
supply a single point of order at least two. Cluster certificates need a different
representation and are not silently coerced into this one-point-per-record rule.
For unit record weights, local existence is enough; global exhaustion then forces
simplicity as well as completeness, conditional on those same analytic inputs.

## 5. The actual canonical tent-evaluation theorem

`CanonicalTentEvaluation.checkWithin` combines the geometry check and the
UNCHANGED rational tent-enclosure/tolerance check. Its soundness theorem also
takes the genuine local witnesses and the complete upper-count proof described
above. It constructs the source equivalence and supplies the prior
`reindexed_source_sound` theorem, obtaining

    norm(sum_(rho in heightHead(T)) multiplicity(rho)*tentKernel(x,h,rho)
         - checkedOutput) <= epsilon.

The entire sum is the actual canonical head, with the actual zeta multiplicities.
There is no arbitrary source map, external equivalence, independent exact-order
premise or extra strip premise in this application's signature. Actual strip
membership comes from the maintained zero source, not a critical-line projection.

The finite error accounting is unchanged: tent discretization, logarithm and
exponential node uncertainty, internal and family accumulation, and coordinate
movement remain separate and fully charged. Radius normalization and the original
tent kernel are unchanged. This increment does not alter a prime-count consumer,
source identity, correction, omitted tail, or required strict arithmetic margin.

## 6. Controls and limitations

The controls use synthetic finite maps and rational disks, not actual zeta data.
They expose a hidden zero-weight point, duplicated assignment with matching total
mass, the wrong direction of the count inequality, inflated local order masking
an omission, and two simple points misrepresented as one double point. Geometric
controls retain tangent boundaries, both height signs, diagonal distances,
negative-radius rejection and exact radius-list shape. A positive finite weighted
model exercises the generic constructive theorem; empty geometry still does not
prove an empty canonical head without its actual count input.

The correspondence uses classical choice from proved local witnesses. It is not
an executable zero enumerator or a validator of unproved database labels. No
actual local-zero certificate or complete zeta count is constructed here. In
particular the arbitrary-function polynomial models in the diagnostics do not
validate the zeta analytic-order or compact-finiteness theorems.

Pinned elaboration, repairs and independent full transitive type/trust review
remain mandatory. Source hashes and finite diagnostics are not acceptance.
The two outstanding analytic suppliers are now specifically local actual-point
existence/order certificates and a certified upper count on the SAME complete
height head. The #135 analytic count supplier remains separate. Its illustrative positive-height
normalization cannot be substituted for this both-sign heightCount: an explicit
normalization and boundary/multiplicity comparison is still required. No factor
of two is inserted without those proofs. A contour/winding implementation must
prove that comparison before serving as this count supplier. No issue acceptance
criterion is weakened and no bounded critical-line claim is made.

No actual numerical zero inventory, all-height zero statement, global explicit
formula, useful omitted-tail estimate, or favorable all-interval prime margin is
produced. Parser correctness, operational list/bit-size limits, rounded-input
transport and compiled-code qualification remain separate. No worker action,
Lean/Lake build, F06 release, merge, closure, Legendre or RH conclusion is made.
