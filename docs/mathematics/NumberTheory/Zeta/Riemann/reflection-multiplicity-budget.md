# Reflection-pair multiplicity budgets

Owner: #330. Consumers: #307 and #139. Regional analytic counts: #135.
Acceptance: #100. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

## Finite argument

For a finite set S with natural weights w, distinct a,b in S satisfy

    w(a) + w(b) <= sum_{x in S} w(x).

Hence, for independently proved bounds

    l <= w(a), r <= w(b), sum_{x in S} w(x) <= K, K < l+r,

the two points must be equal. A common lower bound m specializes the last
condition to K < 2m. Neither exact weights nor an exact count is required.
The inequality is strict: two distinct unit-weight points have total two.
The proof uses the two-element subset and nonnegativity of all remaining
weights. The local finite-set argument needs both memberships, not an unrelated
ambient completeness assertion.

## Same-source zeta application

The application imports the existing `CanonicalZeroDivisor.ZeroPoint`,
`multiplicity`, `heightHead` and `heightCount`. Multiplicity remains the actual
analytic order of Mathlib's `riemannZeta` at the full complex point. Existing
finite-order and positivity proofs remain inherited verification obligations.

`reflected z` is the actual zero at `1-star z`, supplied by the existing
functional-equation zero theorem. It retains the imaginary coordinate and
absolute height. Equality `z = reflected z` forces `Re(z)=1/2`.

`regionHead T U` filters the existing complete closed-height head by membership
in U. Its membership is exactly `height z <= T` AND `z in U`; its count retains
analytic multiplicities. At U=univ it recovers the existing head and count.
A reflection-stable U supplies the second membership from the first. The
primary theorem permits different lower bounds at z and reflected z.

Zero transport alone is NOT used to prove equality of analytic orders. The
convenience theorem that reuses one lower certificate has the additional exact
premise `multiplicity (reflected z) = multiplicity z`. Alternatively supply both
lower certificates independently. This increment constructs neither supplier.

No derivative nonvanishing, inverse multiplier, self-map theorem or simplicity
premise is needed. A single point of weight two with total count two passes the
numerical profile. This is not evidence that zeta has an actual double zero.

## Selected point versus all zeros

With an involution fixing 0 and exchanging 1 and 2, weights (3,1,1) have total
five. The selected fixed point passes `5 < 2*3`, while the exchanged pair is
still present. With weights (1,1,1), total three is odd but the exchanged pair
remains. Thus neither one successful local budget nor count parity proves an
all-root conclusion.

The bounded-height consumer requires a finite family of stable regions, their
actual count upper bounds, and coverage of EVERY actual nontrivial zero through
height N by a region whose pointwise lower budgets pass. It concludes only the
unchanged `RHThrough N`. No all-height supplier is defined or instantiated.

An asymmetric buffered rectangle is not automatically reflection-stable.
The direct finite-set theorem can instead consume an independently proved
membership of BOTH reflected points. A count for another region or endpoint
convention cannot be substituted. Omitting the reflected partner can make a
numeric test look strict while invalidating the theorem's membership premise.

## Trust and remaining work

The source is a proposed proof script, not an elaborated theorem. The isolated
root is not imported by `GRWTSK.lean`. The passive target inventories the new
explicit declarations and pins immediate sources; it is not an executable
request or a claim to have enumerated the full transitive dependency closure.

Remaining obligations include pinned elaboration and repairs, complete authored
expected types, full import and axiom/native dependency review, and source-bound
acceptance. Actual local roots, multiplicity lower certificates, useful regional
upper counts, concrete arithmetic SourceAcceptance, complete finite-height
coverage and all-height suppliers remain separate mathematical obligations.
No choice-free dependency claim, count acceptance, RH result or execution-hold
release follows from this increment. Exact finite diagnostic scripts and outputs
are retained outside the mathematical repository, not as proof receipts.
