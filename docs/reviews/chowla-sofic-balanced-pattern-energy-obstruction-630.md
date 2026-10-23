# Sharp finite-sample Walsh energy floor from integer pattern counts

Research date: 2026-10-22
Owner: grwtsk/math #630; arithmetic scope #441
Parent PR #638 head: 8a9a51daa1523414b754e9426a34be74b8d6088e (historical support-bound parent)
Evidence: PAPER_PROOF / NOT_LEAN_FORMALIZED / NOT_KERNEL_AUDITED

## Exact theorem

Let N>0, k=|H|, q=2^k and let P be the empirical
distribution of ANY N Boolean words on k coordinates.
Write N=a*q+r, 0<=r<q. The full nonempty Walsh energy E
satisfies the SHARP lower bound

    E >= r*(q-r)/N^2.

Proof: write n_w for the nonnegative integer pattern counts,
sum_w n_w=N. Parseval gives

    E=q*sum_w (n_w/N)^2-1.

If two counts differ by at least two, moving one observation
from the larger count to the smaller strictly decreases the
sum of squares. At a minimum, counts differ by at most one:
exactly r counts equal a+1, and q-r counts equal a.
Therefore

    sum_w n_w^2 >= (q-r)*a^2+r*(a+1)^2
                = q*a^2+2*a*r+r.

Multiplying by q and subtracting N^2=(a*q+r)^2
gives r*(q-r). Equality is realized by any balanced
assignment of N observations to q patterns.

This lower bound refines the earlier support bound
E>=max(0,q/N-1). For N<q, a=0,r=N and both coincide:
r*(q-r)/N^2=q/N-1. For N>=q, the new bound can remain
strictly positive if q does not divide N.

## Necessary asymptotic condition

For growing shift sets H_N, energy decay requires

    r_N*(q_N-r_N)/N^2 -> 0,

where q_N=2^|H_N| and r_N=N mod q_N.

This is only a necessary finite-sample integrality condition,
not a sufficient arithmetic cancellation theorem. In
particular, q_N|N makes the bound zero but does not imply
the actual Liouville patterns are balanced.

## Lean implementation target

Use existing FiniteWalshParseval.lean and the integer
pattern count definitions. Prove a balancing lemma for
Finset counts (or an exact integer quadratic identity),
then derive the rational bound. Keep N>0, q>0, exact
Euclidean quotient/remainder and full nonempty character
energy explicit. Include fixtures N=1, N<q, q|N and
N>=q with nonzero remainder. Do not promote without
pinned Lean elaboration and transitive axiom inspection.

No compiler, kernel or independent replay was performed.
No Chowla, GUE, Montgomery or RH claim follows.
