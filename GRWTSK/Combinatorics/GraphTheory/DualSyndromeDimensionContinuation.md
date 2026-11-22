# Exact binary-dimension continuation of the two-syndrome adjacency law

Source: [DualSyndromeDimensionContinuation.lean](DualSyndromeDimensionContinuation.lean).
Issue: [math #1844](https://github.com/grwtsk/math/issues/1844).

## Algebraic proof

For any m, use `Port m = Fin m → ZMod 2`, with 2^m
independent coordinate directions, and
`Cell m = Port m → ZMod 2`, with 2^(2^m) vertices.
The original additive syndrome satisfies
`H(x + e_i) = H(x) + i`.

For any selected syndrome target t, the unique face-adjacent
position of syndrome t is `neighbor x (t - H(x))`.
This statement holds for every dimension parameter, not merely
a finite collection of enumerated cubes. Choosing distinct targets
t,u yields exactly one marked face neighbor from each class and
therefore exactly two marked face neighbors overall.

The m=6 instance is the 64D binary hypercube. It has 2^64
vertices, 64 face directions and a primary zero-syndrome kernel of
2^58 cells. Two full syndrome layers occupy 2^59 physical
marked cells. Retaining *only* 4096 physical markers cannot
two-cover the entire 64D universe. A 16D chart can be embedded
as a finite subchart, while new 64D territory requires newly
assigned identities or explicit replicated/virtual reference rules.

This is a mathematical **combinatorial continuation** of the
adjacency construction, not analytic continuation of zeta,
Dirichlet L-functions, or arbitrary automorphic/motivic families.
No Langlands or Weil positivity result is assumed. An infinite
directed atlas is represented by compatible finite stages and
source-identified inclusions, not by allocating an infinite buffer.

Candidate source status: Lean compilation, transitive axiom
audit, fresh independent replay and external review NOT_RUN.
