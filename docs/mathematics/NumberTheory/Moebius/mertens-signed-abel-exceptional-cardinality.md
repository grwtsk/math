# Actual Abel exceptional cost is controlled by per-depth cardinality

grwtsk

**SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.**
The finite mathematical argument below has authored Lean scripts, not a successful
Lean elaboration, fresh kernel replay, or transitive axiom receipt. The signed
arithmetic cancellation estimate remains open.

## Immutable source

- Source main commit: `731649d94ad6facddb02917dd7cc892b5e7f1286`.
- Path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelExceptionalCardinality.lean`.
- Git blob: `71193b9bd513ac422c3a8821a33b705c69b4c7fc`.
- Source SHA-256: `2b6c855c76462330280d98681213e62ce2a5be4382511b2898764a088202c827`.
- Direct parent module: `MertensSignedAbelKernelTransfer.lean`, blob
  `bcddb12a2b5a3da9b1629dffe5613ee57146f726`.
- Inspected main baseline: `6851913a42c98d0b162eac6fba26a75b56f0a62b`.
- Lean: `leanprover/lean4:v4.33.0`; Mathlib:
  `db584cd6d46c92f209a44c0f1c829460d327499d`.

All new declarations are in
`GRWTSK.NumberTheory.Moebius.MertensSignedAbelExceptionalCardinality`.
The source has two definitions and twelve theorem scripts. This lexical census
is not an elaborated declaration census. The public root is unchanged.

## Actual weight, not an arbitrary subprobability kernel

Put X=2^j and Y=2X. The existing `dyadicMertensShiftWeight_eq_max` identifies

    w_j(b) = 1/max(X,b) - 1/Y.

For b=t+1+h, its forward drop is exactly

    w_j(b)-w_j(b+1) = 0                    if b<X,
                     1/[b(b+1)]           if X<=b.

The crossing case b=X-1 has zero drop: both max values are X. The original
triangular support is still required: h>=1, h<Y, t<Y-h-1. Thus the actual
normalized kernel is

    K(j,t,h) = Y/[b(b+1)]

on that support with b>=X, and zero otherwise. In particular

    0 <= K(j,t,h) <= Y/[X(X+1)] = 2/(X+1).

Source declarations: `reciprocal_drop`, `weightDrop_eq_piecewise`,
`kernel_eq_piecewise`, `kernel_le_two_div_left_succ`.

This is the missing source-specific premise that permits a cardinality bound.
A generic subprobability kernel can concentrate all mass at one label; this
actual kernel cannot do so at large X. The earlier generic hostile control is
not a counterexample to the new actual-weight theorem.

## Exceptional mass and the complete cost

For any finite declared exceptional set B(j,t), the unchanged weighted mass is

    M(j,t) = sum_(1<=h<Y, h in B(j,t)) K(j,t,h).

Therefore

    M(j,t) <= 2*card(B(j,t))/(X+1).

This bound holds at every depth. Out-of-support labels cost zero in M, but the
cardinality upper bound may conservatively count them. No label is silently
removed from the mathematical source.

Define exactly the two pieces of the previous packet allowance:

    R_j = (2/Y) sum_(t<Y) regularPrefixPairing(j,t,B(j,t)),
    E_j = (2/Y) sum_(t<Y) (t+1) M(j,t).

The source proves `exceptionalPacketUpper = R_j + E_j` and E_j>=0.
The regular sum is signed throughout.

Suppose card(B(j,t))<=B_j for every t<Y, with B_j>=0. The exact finite identity
sum_(t<Y)(t+1)=Y(Y+1)/2 gives

    E_j <= (2/Y) * [Y(Y+1)/2] * [2B_j/(X+1)]
         = 2B_j(Y+1)/(X+1)
         <= 4B_j.

The main quantitative declaration is `weightedExceptionalCost_le_four_mul`.
It bounds the complete cost, including the depth sum and normalization; it is
not only a pointwise mass estimate. The allowance B_j is free to depend on j.

## Exact RH consequence and its unpaid arithmetic hypotheses

The new `riemannHypothesis_of_regular_and_cardinality_budgets` requires,
for each delta>0, nonnegative constants C_delta,D_delta such that for EVERY j

    R_j <= C_delta * (2^j)^delta,
    card(B(j,t)) <= D_delta * (2^j)^delta  for EVERY t<2^(j+1).

It derives

    exceptionalPacketUpper(j) <= (C_delta+4D_delta)*(2^j)^delta

and reuses the old `riemannHypothesis_of_kernelExceptionalBudget`.
No new terminal zero predicate, alternate RH target, or equality with
`pickupCross` is introduced.

Neither arithmetic premise is constructed. The cardinality premise is a
SUFFICIENT way to pay the exceptional cost, not a necessary condition and not
an equivalence with the original weighted criterion. A stronger weighted
analysis may handle many more exceptional labels. Empty exceptions leave the
original signed arithmetic difficulty unchanged.

## Rate boundary: small exceptional density is not automatically sufficient

The conclusion E_j<=4B_j does not supply an X^delta bound from B_j=o(X).
There is also an actual-kernel mathematical example showing why density alone
cannot universally do that. This paragraph is a derivation, NOT an additional
Lean declaration in this increment.

For dyadic X>=4, 1<=B<=X/2, and depths X/4<=t<X/2, select the B shifts
h=b-t-1 with X<=b<X+B; select none at other depths. All those shifts satisfy
the literal triangular support. Each K is at least 1/Y, and t+1>=X/4. Hence

    E_j >= (2/Y) * (X/4) * (X/4) * B/Y = B/32.

Taking B of order sqrt(X) makes the per-depth counting density tend to zero
while this exceptional allowance still has polynomial size. This observation
concerns the nonnegative allowance, not a lower bound on the signed regular
sum or the total signed packet; cancellation between signed terms is not
excluded. Finite exact-rational examples of this configuration were tested
outside Lean, but those tests do not establish its quantified theorem.

## Next mathematical task

Construct a specific exceptional family together with a signed bound for R_j
at subpolynomial scale, and either the sufficient per-depth cardinality bound
above or a sharper direct weighted-cost bound. Retain the actual joint
scale/depth/shift ranges. A fixed-shift result, a logarithmic-average result,
a finite sample, or a source-free spectral gap is not that supplier.

This increment removes the need to prove a separate weighted-cost theorem for
families already having subpolynomial per-depth cardinality. It does not prove
an averaged-correlation theorem or improve the signed regular estimate.

## Provenance and verification

The proof is a local consequence of the existing repository's exact max weight,
finite sums, reciprocal arithmetic and ordered-real inequalities. No external
paper theorem, entropy-decrement theorem, Pinsker inequality or divisibility
expansion estimate is used. No new paper-to-formalization import is claimed.

Compilation, direct trust-zero elaboration, fresh kernel checking, and complete
transitive axiom/native/unsafe audits are NOT_RUN. The passive target is
`docs/verification/NumberTheory/Moebius/MertensSignedAbelExceptionalCardinality/exceptional-cardinality-v0.1.toml`.
Operational diagnostics and receipts belong outside this mathematical source.
The earlier #1380 and #1381 requests do not accept these new bytes.
