# Finite joint-premise restriction and its semantic boundary

Local attribution: grwtsk contributors.

This note retains the mathematical argument from the former structural-intelligence
reference. Its exact origin is
[`grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec`](https://github.com/grwtsk/math/blob/8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec/documentation/mathematics/_support/reference/structural-intelligence.md),
blob `4638d4889d30c884c37716cc25403a14d2a530da`. This is a source-preserving
extraction, not a fresh mathematical review or formal verification.

## The object and exact restriction

A rule has a collection of premises `P` and a conclusion `c`. Application of that
rule requires every member of `P`; separate rules with the same conclusion are
alternative derivations. Let `G` be a goal set and let `S` contain `G` and be
backward closed: whenever a retained rule concludes in `S`, all its premises
belong to `S`. Restriction keeps rules with conclusions in `S` and intersects
the initial facts with `S`.

The retained source statement is

```text
Derivable(restrictRules R S, facts intersect S, g)
  iff Derivable(R, facts, g), for g in G.
```

The statement assumes the complete supplied rule inventory and the stated
backward closure. It does not identify a sampled external graph with that
inventory.

## Argument and consumer

For the forward direction from an original derivation to a restricted derivation,
induct on the original derivation of a conclusion in `S`. An initial fact lies in
the intersected fact set. In a rule application, backward closure places every
premise in `S`, the induction hypotheses give all restricted premise derivations,
and the retained rule gives its conclusion. The reverse direction uses only that
the restricted rules and facts are subsets of the original rules and facts.

This licenses exclusion of a region without changing derivability for the goals.
It does not assert that every retained atom is true, nor that the retained region
is a smallest proof. Knowing `A` alone does not discharge `A AND B implies C`.
For alternative rules `A implies C` and `B implies C`, a proof using `A` need not
also establish `B`; the all-routes restriction may nevertheless retain `B`.

## Existing source comparisons

The original [joint-premise inference article](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/Combinatorics/joint-premise-inference.md)
and [verification issue #1424](https://github.com/grwtsk/math/issues/1424) retain
the original source identity and verification scope.

The existing
[`FiniteJointPremiseClosure.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteJointPremiseClosure.lean)
has the source-proof-candidate declarations `mem_finiteClosure_iff` and
`finiteClosure_filter_iff`, with the original
[NOT_RUN record #1427](https://github.com/grwtsk/math/issues/1427). The
[finite goal-pruning note](../../_support/reviews/finite-goal-pruning-2026-11-02.md)
composes finite prerequisite closure, exact rule-list-to-edge correspondence and
redundant-rule elimination. The external-graph formulation has an explicit
edge-coverage premise; the source-derived formulation proves that coverage for
its supplied inventory.

The [bounded source-connection atlas](../../_support/reviews/finite-proof-source-connections-2026-11-02.md)
separates forward Horn entailment, backward prerequisite retention, proof-carrying
applications, exact representation transport and reverse-edge invalidation.
These comparisons retain their own premises and consumer boundaries.

## Unresolved transfer and evidence

Atoms represent already instantiated propositions. Checked extraction from actual
Lean theorem applications still requires source identities, instantiations,
quantifier/binder scope and a justified semantic interpretation of every rule.
A sound finite closure calculation does not supply those missing maps. A solver
complexity claim additionally needs a defined finite source class, a sound and
complete encoding, the relevant constraint graph, structural parameters and a
total cost model. Directory shape, formal dependency size and CNF treewidth are
different objects.

The retained primary argument is the derivation induction above. No distinct
independent second proof or new independent review is asserted. Native
compilation, fresh kernel replay and transitive axiom auditing remain **NOT_RUN**
at the original recorded scope. This extraction supplies no SAT running-time
result or new mathematical acceptance.
