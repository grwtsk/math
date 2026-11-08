# Prime-knot neighborhoods and source-colocated routing

Local attribution: grwtsk contributors. Date: 2026-11-08.
Status: complete elementary written proof; Lean elaboration, kernel replay,
axiom audit and independent mathematical review: NOT_RUN.

## Arithmetic definition

Let P denote the positive primes. Define N(p)=(pred(p),succ(p)),
where pred(2)=none, and succ(p) is the least larger prime.
The successor exists by infinitude and well-ordering.

For distinct primes a<b, define the chosen modular adjacency relation:

```text
adj(a,b) := (b mod a = 1) OR (b mod a = a - 1).
Parents(p)  := { a prime | a<p and adj(a,p) }
Children(p) := { b prime | p<b and adj(p,b) }
Triplet(p)  := (N(p), Parents(p), Children(p)).
```

These are the two nonzero residues immediately next to zero modulo a.
The relation is a project definition, not a canonical number-theoretic
notion. Consecutive primes need not be modularly adjacent:
11 mod 7 = 4, although 7 and 11 are consecutive.

## Total-prime reachability theorem

For every prime q, the undirected modular adjacency graph has a path
from 2 to q of length at most one.

Proof: q=2 has a length-zero path. Otherwise q is odd, so
q mod 2=1=2-1; hence adj(2,q). The edge (2,q) completes the path. QED.

Independently, every prime has finitely many smaller primes and
iteration of its immediate predecessor terminates at 2. Thus the
consecutive-neighbor graph is itself connected.

The modular graph is very dense: 2 is adjacent to every other prime
and 3 to every greater prime. This elementary reachability does not
prove a prime-gap bound, efficient traversal or a result about zeta.
By Dirichlet's theorem, infinitely many primes lie in 1 mod p
for every fixed prime p. Children(p) is generally infinite and cannot
be completely listed in a finite repository registry.

## Optional knot labels

The positive torus knot K(p)=T(2,2p+1) has Seifert genus p by the
usual coprime torus-knot genus formula. This recovers the assigned
prime only on this constructed family. A two-component link
T(2,2(q-p)) with K(p) and K(q) locally tied into its respective
components has ordered component genera (p,q) and linking q-p.
No general link classification, global smooth embedding of the
infinite graph, or Weil positivity follows from this example.

## Source-colocation and finite-directory reachability

Let D be a finite set of annotated directories containing root '.'.
Any two ancestor directories of a single non-GRWTSK file path
are comparable by inclusion. Therefore D has a unique longest
matching prefix d(x) for that file, and the inherited AGENTS.md
chain is uniquely determined. This proves total, deterministic
source-local guidance routing outside the excluded subtree,
not actual execution or authorization.

[registry.json](registry.json) uses distinct prime labels from an initial
consecutive-prime segment. It stores globally correct predecessor and
successor primes, but **only registered** modular parents and children.
An arithmetic link is a context cross-reference, not an ownership or
instruction-precedence edge. Original source files and the MSC2020
layout are unchanged by this construction.

Background on the chosen knot example:
[Torus Knot](https://mathworld.wolfram.com/TorusKnot.html) and
[Grid Homology](https://web.math.princeton.edu/~petero/GridHomologyBook.pdf).

## Context is not arithmetic adjacency

The prime graph is a chosen global carrier, not a semantic dependency
relation. For example, `2` is adjacent to every larger prime, so
unconditional traversal would visit every registered scope even when
an edit affects only one source file. Conversely, a justified source
comparison may join scopes whose primes are not adjacent: the
source-mappings scope at `23` must consult the MSC layout scope at
`41` when a `layout_exact` reference changes, yet
`41 mod 23 = 18`. The path `23--2--41` exists by the proved
connectivity theorem but is not itself evidence of the layout contract.

**Source-context routing lemma.** Assume a finite registry of directory
prefixes containing the root, with unique scope IDs, one path per ID,
and an acyclic parent relation equal to strict directory ancestry.
For any tracked path outside the excluded `GRWTSK/` subtree, all
matching prefixes form a finite chain under inclusion. Their unique
longest element determines a unique ancestor-instruction chain.
Adding an optional context handoff does not change this routing
because the handoff is not a parent relation. Proof: any two prefixes
of one path are comparable by the prefix property; choose its longest
registered prefix. Strict parents shorten the path, so no parent
cycle exists, and following the declared unique parents terminates.
A conditional extra reference neither changes the prefix set nor
the parent map. QED.

The finite [route fixtures](route-fixtures.json) exercise that
claim for selected source paths. They are not an exhaustive test of
all tracked files. A handoff record provides a documented reason and
an exact evidence-source locator, which must be inspected independently.
No source relationship grants a user authorization or establishes
the truth of a theorem.

