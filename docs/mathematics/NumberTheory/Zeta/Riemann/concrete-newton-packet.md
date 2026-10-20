# Concrete rational local-zero candidate

Parent: `e73a39f44907e2ca7235b083365b3036e725cd60` (PR #323).
Subject: #189/#261 under #257; actual-zero source boundary: #139.
Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

This increment instantiates the existing joint zeta/Newton checker. It does
not change an analytic estimate or introduce an alternative zero predicate.
The external exact-rational Python computation observed a passing candidate.
That observation is not a Lean proof, compiled-code validation or independent
accepted replay. In particular, `SourceAcceptance` is explicitly unproved.

## Exact source and finite plan

The proposed center is

    c = 1/2 + (7067362571/500000000)i = 1/2 + 14.134725142 i.

The finite decimal is a search seed, not an assertion that c is a zero. Its
ordinate agrees with the first displayed entry of Andrew Odlyzko's public
`zeros1` table, inspected 2026-10-20. The checker imports no zero table, ordering,
critical-line assertion, claimed residual or supplied center-enclosure proof.
The source of the seed is not evidence of the output's mathematical validity.

Use N=4096 included integers and the separate terminal base L=N+1=4097.
For every integer base k from 1 through 4097, the schedule uses:

- dyadic logarithm exponent floor(log_2(k));
- 18 logarithm terms and 22 exponential Taylor terms;
- 8 squarings and 64 grid bits.

The Lean proposal rule computes the exponent by at most 13 integer halvings.
It is not a new source theorem. Every proposed schedule still has to pass the
unchanged rational guards. The finite diagnostic reconciles this rule with
integer bit length at every one of the 4097 used bases.

The Cauchy radius is 1/2. Value and derivative outputs each use 64 grid bits.
The two requested tolerances are 1/400000 and 1/100000. Every exponent is -c.
No prefix term or terminal derivative correction is omitted.

## Six exact claimed output fields

Put G=2^64=18446744073709551616. The candidate data are

    V = (-593543767 + 3832149473 i)/G,
    Ev = 43571967602713/G,
    D = (14449270289225919641 + 2300305842400270138 i)/G,
    Ed = 95798856128413/G.

The error constants satisfy Ev < 1/400000 and Ed < 1/100000. These inequalities
alone certify nothing about zeta. The original verifier must recompute ALL six
fields from the fixed source and plan, not merely accept these small numbers.
V is deliberately not replaced by zero.

The value budget is approximately 2.36204110e-6; the derivative budget is
approximately 5.19326640e-6. Decimal presentations are not used by the checks.
The budgets retain the complete analytic tails, every finite power/log-product
error, all coefficient propagation, and separate final upward error rounding.
The arithmetic formulas and analytic tail constants are exactly the parents'.

## Concrete Newton inequalities

Use signed chart 12, positive height, so its center is 2+(27/2)i and its
inherited curvature ceiling is 8*(12+2)^3=21952. Use the fixed inverse proposal

    A = 5/4 - i/5

and Newton radius r=1/100000. This radius is NOT the Cauchy radius.

The existing checker computes

    Y = rect(A)*(rect(V)+Ev),
    q = rect(1-A*D)+rect(A)*(Ed+21952*r).

Here rect(z)=|Re(z)|+|Im(z)|. Exact rational values are

    Y = 1263715405582637/368934881474191032320,
    q = 93143563205112180234051/288230376151711744000000.

In particular Y<7/2000000 and q<1/3. Exact disk containment and the nonzero
inverse guard hold. The self-map slack is

    r-Y-q*r =
      96359046885456048140949/28823037615171174400000000000
      > 3/1000000.

Thus the small rational Newton test passes with strict slack. Small rational
proof scripts for these facts are supplied but have NOT been executed by Lean.
They do not supply the much larger source-recomputation equality.

The associated a posteriori radius is

    Y/(1-q) = 3949110642445740625/780347251786398255063796
            < 21/4000000.

This is a consequence of the conditional root theorem, not a substitute for
source verification. The stored Newton radius remains 1/100000.

## Exact logical status

`SourceAcceptance` is the equality asserting that the existing joint verifier
returns true for this precise prefix, center, plan, both tolerances and six-field
claim. There is NO theorem or axiom asserting SourceAcceptance here. There is
also no embedded evaluation command or native decision bypass.

`newton_accepts` is a source draft concerning the smaller rational contraction
predicate alone. `combined_acceptance_of_source` combines it with an explicit
SourceAcceptance premise. `local_zero_of_source_acceptance` then reuses the
unchanged actual-source theorem to obtain a canonical nontrivial zero in the
closed Newton disk, a nonzero derivative there, and uniqueness in that disk.

Consequently the current increment has concrete numerical acceptance evidence
but no unconditional Lean-accepted zero theorem. The full inherited chain of
source identities, complete tails, rounding, casts, Cauchy and Banach arguments
still needs elaboration and transitive trust review.

No theorem says this is the first zero, lies exactly on the critical line, or
accounts for every zero below a height cutoff. In particular one local disk
cannot supply the independent complete count required by count saturation.
No canonical head binding, successful prime margin, Legendre theorem or RH
theorem is constructed. Exact source/claim identity is not data provenance.

## Reproducibility boundary

The companion outside this pure-math repository uses Fraction and integers,
checks every endpoint guard, retains all rounding stages, and independently
compares each stored stage against an integer-grid recurrence. Exact balanced
summation changes only evaluation order of rational sums, not their values.
All 4096 prefix bases and the terminal 4097 are reconciled exactly once.

Independent seed-polynomial/logarithm checks and mutated-output, wrong-chart,
zero-inverse and invalid-radius controls accompany the packet. A smaller N
can fail purely because its retained analytic tail exceeds tolerance. Such a
failure does not imply that the true zero is absent or the numerical value bad.
Two ordinary high-precision comparisons with zeta and its derivative are only
secondary diagnostics; they are not certified interval arithmetic and are
never inputs to acceptance. Python checks do not prove analytic theorems.

Diagnostic scripts, result JSON and runtime checkpoints remain outside math.
The static verification target contains mathematical acceptance obligations,
not execution authority or a receipt. No Lean/Lake/build/replay/worker action,
merge, issue disposition, public-root change or verification-hold release is
part of this increment.
