# Prime-knot triplets and shared certified factor memo

Canonical source: [PrimeKnotFactorMemo.lean](PrimeKnotFactorMemo.lean).
Coordinating issue: [math #1845](https://github.com/grwtsk/math/issues/1845).
Consumer: source-pinned prime forest [math #1844](https://github.com/grwtsk/math/issues/1844).

## Prime order versus geometry

`primeAt k = Nat.nth Nat.Prime k` is the actual unbounded
arithmetic index. The unique predecessor is absent at k=0
(prime 2), and the successor always exists for every k.
This does not claim that the entire infinite prime list is
materialized, or that every knot has a position in the current
4096-identity atlas. A missing *cached* next knot is not
a statement that no subsequent mathematical prime exists.

The 16D placement interface `PlacedAtlas` is separate.
`atlasKnot` associates a knot to an address for
i : Fin 4096, retaining its prime ordinal across placement
epochs. The arithmetic successor graph is a line;
graph shortest paths in this successor graph must not be
confused with shortest paths through the 16D cube or
optimal physical-memory I/O.

## Factoring and truthful shared memo

`FactorCertificate n` carries a list of integers, a proof
that every member satisfies actual `Nat.Prime`, and a proof
that the list's product equals n. The dependent interface
`VerifiedFactorMemo.lookup` may only return a certificate
for the requested n, precluding the use of a raw unchecked
object as proof.

`FactorCursor n` maintains `factors.prod * residual = n`
and primality of every recorded factor. A step requires
an actual `Nat.Prime p` proof and exact `p*q = residual`.
Only a state with residual=1 can be closed into a complete
factor certificate. If a cursor has not found a divisor or
reached a sufficient prime-coverage threshold, it cannot
silently declare its residual prime.

These exact correctness conditions do not claim a new fast
factoring algorithm. For inputs supported by a complete
smallest-prime-factor table, no additional prime search is
necessary; for arbitrary previously unseen integers there
remains a genuine factor-discovery obligation. Account for
preprocessing and arbitrary bit length in any P-versus-NP
claim. The JS reference prototype is a separate executable
artifact, not an unverified source module included in math.

## Original mathematical sources and status

- Root Lean 4.34.1 and Mathlib
  d13f23b723b8a846827a245b89c10fc7d3f11612.
- Mathlib `Nat.nth`, `Nat.prime_nth_prime` and the
  infinite-prime index theorem `Nat.nth_strictMono`.
- `HierarchicalPrimeDirectory16.lean`: existing
  placement-epoch and typed prime-ID directory.

New Lean compilation, fresh kernel replay, transitive axiom
audit and external mathematical review are all **NOT_RUN**.
The earlier 59 theorem declarations have an independent
user-provided scoped Lean PASS; the larger frontier contains
additional, separately unchecked candidates. This file does
not assert a signed Weil positivity criterion or GRH.
