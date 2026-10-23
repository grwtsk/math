---
schema_version: 0.1.1
id: urn:uuid:4be88bee-cf4e-4ec3-a4a9-bd85e16ab45f
record_kind: proposal
proposal_type: addition
lifecycle: proposed
affected_concept_ids: ["urn:uuid:f9dfc34e-20f8-4ee4-8c63-c54e06947ed9", "urn:uuid:c20ca165-7737-4291-9a0b-f39e7a3f3744", "urn:uuid:5eef2939-f9f7-482e-bc71-db9926df1540", "urn:uuid:3347007f-4ae3-4c1d-9b3a-f17102a0895f"]
affected_source: {"repository": "grwtsk/math", "commit": "5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c", "vocabulary": "0.4-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
sources: [{"key": "L7", "locator": "Group-theory subject scope and homomorphism terminology."}, {"key": "L11", "locator": "Algebraic-topology and homotopy subject scope."}, {"key": "L15", "locator": "General-topology, compactness and path-space subject scope."}]
revision_history: [{"version": "0.4-pilot", "date": "2026-10-21", "change": "Proposed typed theorem-classification profile for critical-strip witnesses, group squares, path-groupoid transport and null-loop obstructions."}]
decision_refs: ["D01", "D03", "D04", "D07"]
---
# Typed critical-strip witness classification proposal

[Taxonomy](../index.md) · [Proposals](index.md) · [Registry](../registry.md) · [Mathematical theorem packet](../../mathematics/NumberTheory/LSeries/typed-critical-strip-witnesses.md)

Tracking issue: [grwtsk/math#435](https://github.com/grwtsk/math/issues/435)

## Problem and scope

The mathematical theorem packet combines four established languages:

- analytic or meromorphic zero data in the critical strip;
- a commutative square of group homomorphisms;
- compactness, path connectedness and local systems;
- null-homotopy and the fundamental groupoid.

A repository directory, shared phrase or diagram does not determine the
relations among these languages. The proposal records a conservative
classification profile while leaving every mathematical implication inside
the theorem packet.

This is a proposal for statement-level classification, not a proposal to make
“typed witness,” “binary square,” “compact plane,” or “null geodesic loop” into
new mathematical subjects. It introduces no new parent edge in the subject
hierarchy.

The phrase “compact plain” is normalized only for this packet to **compact
Hausdorff parameter space**. The Euclidean plane is not compact. The phrase
“null geodesic loop” is normalized only to **null-homotopic loop with trivial
functorial holonomy**. No Lorentzian-geometric classification is asserted.

## Proposed theorem packet

The local theorem labels below identify statements within the companion
mathematical document. They are not persistent concept identifiers and do not
become authority records merely by appearing here.

| Label | Classification | Exact content |
|---|---|---|
| `TW1` | transport theorem | Domain, pole, strip and forward-zero preservation send a typed strip witness to a target witness. |
| `TW2` | coherence theorem | One functorial interpolator sends equal binary-square composites to equal witness maps. |
| `TW3` | bijectivity theorem | A functor from a groupoid sends every path to a bijection, with inverse supplied by the inverse path. |
| `TW4` | null-holonomy theorem | A null-homotopic loop acts as the identity in a path-groupoid local system. |
| `TW5` | classification theorem | Path connectedness plus simple connectedness makes fiber bijections independent of path. |
| `TW6` | comparison theorem | For already-bijective square edges, square commutativity is equivalent to identity boundary holonomy. |
| `TW7` | obstruction theorem | A commuting square of integer-group homomorphisms with horizontal doubling has nonbijective edges. |
| `TW8` | independence theorem | Compactness of the base and bijectivity of transport imply neither one another. |
| `TW9` | obstruction theorem | Critical-strip location does not imply critical-line location or an RH conclusion. |

All nine statements are documented mathematical schemata. No Lean statement,
elaboration, kernel acceptance, axiom audit or independent replay is part of
this proposal.

## Subject associations

Use `relevantTo` only for the following associations.

| Existing concept | Persistent identifier | Exact relevance | Excluded inference |
|---|---|---|---|
| Analysis | `urn:uuid:f9dfc34e-20f8-4ee4-8c63-c54e06947ed9` | Analytic domains, poles, zero sets, multipliers and the critical strip | no analytic continuation, zero theorem or RH implication from subject membership |
| Group theory | `urn:uuid:c20ca165-7737-4291-9a0b-f39e7a3f3744` | Vertex groups, homomorphism squares, actions and equivariance | no bijectivity from commutativity |
| General topology | `urn:uuid:5eef2939-f9f7-482e-bc71-db9926df1540` | Compactness, path connectedness and the parameter space | no simple connectedness, holomorphy or bijectivity from compactness |
| Homotopy theory | `urn:uuid:3347007f-4ae3-4c1d-9b3a-f17102a0895f` | Fundamental groupoid, null-homotopy and path independence | no arithmetic or analytic interpolator from null-homotopy |

No one of these concepts is proposed as a specialization of another. The
combined theorem packet is polythematic, not a new discipline.

## Typed theorem relations

If statement records are added in a later accepted profile, the intended
relation graph is:

```text
TW1 requires exact L-data, strip membership and transport identities.
TW1 suppliesPremiseFor witness-level uses of TW2.

TW2 requires one functorial square restriction.
TW3 requires a groupoid-valued path source and functorial transport.
TW3 suppliesPremiseFor TW4, TW5 and TW6.

TW4 requires a null-homotopy class.
TW4 suppliesPremiseFor path independence in TW5.

TW6 requires edge bijectivity before boundary inverses are formed.
TW7 refutes the proposed implication SQUARE_COHERENT -> EDGE_BIJECTIVE.
TW8 refutes both COMPACT_PARAMETER -> EDGE_BIJECTIVE
    and EDGE_BIJECTIVE -> COMPACT_PARAMETER.
TW9 refutes STRIP_WITNESS -> CRITICAL_LINE_WITNESS.
```

The theorem packet is `relevantTo` the RH atlas and typed-relation work tracked
by issues #225, #231, #232 and #89. That relevance is not `implies`,
`equivalentTo`, `formalizes` or `suppliesPremiseFor` until exact repository
declarations establish such an edge.

## Number-theory taxonomy gap

The current pilot registry has no canonical Number Theory subject concept.
The path

```text
docs/mathematics/NumberTheory/LSeries/
```

is repository organization, not a taxonomy assertion. This proposal therefore
does not invent a Number Theory identifier, infer a parent from a directory,
or attach the existing subject concepts through a fabricated hierarchy.

A later Number Theory proposal must independently define its scope, sources,
granularity, relation to analysis and algebra, and compatibility with the
existing pilot. This theorem packet is not sufficient evidence for that broad
disciplinary addition.

## Compactness, loops and bijectivity boundary

The accepted classification must preserve this dependency order:

```text
groupoid morphism + functorial transport
  -> bijective path map

null-homotopic loop + the same transport functor
  -> identity holonomy

path connected + simply connected
  -> path-independent fiber bijections
```

Compactness is optional in this chain. A square of forward homomorphisms has
only two comparable composites unless its edges are independently invertible.
The phrase “boundary loop” is not admissible when it is manufactured from
formal inverses of nonisomorphisms.

## Analytic and RH boundary

The taxonomy association records no common interpolating family of arithmetic
\(L\)-functions. An accepted analytic instance would still need:

- exact arithmetic identities for every family member;
- the parameter space and topology;
- analytic or meromorphic domains and pole treatment;
- one source-bound normalization;
- functorial maps preserving the critical strip and zero relation;
- inverse data where exact zero equivalence is claimed;
- complete zero-divisor coverage before a global conclusion;
- an exact critical-line theorem and named RH-facing consumer.

Without those suppliers, the packet is abstract classification and
obstruction mathematics only.

## Compatibility and alternatives

Alternative A is to create four new subject concepts for the terms in this
packet. Reject for this increment: the terms are structures or statement
roles, not established disciplines, and the current sources do not support a
new subject hierarchy.

Alternative B is to place the entire packet under group theory because it
contains groups. Reject: the analytic zero witness and topological path data
would be lost.

Alternative C is to place it under topology because it uses a fundamental
groupoid. Reject: topology does not supply the \(L\)-function identities,
strip preservation or holomorphy.

The recommendation is one mathematical exposition with multiple explicit
`relevantTo` associations and a typed theorem-relation graph kept separate
from subject navigation.

## Evidence and acceptance

Current evidence state for the mathematical packet: `SOURCE_DRAFT`.

Accept this proposal only after review confirms:

- every cited concept ID resolves to its current canonical record;
- no repository path becomes a subject parent;
- all theorem relations retain their exact direction;
- the nonbijective commuting-square counterexample remains visible;
- compactness, simple connectedness, null holonomy and bijectivity remain
  independent fields;
- the RH relevance edge remains non-entailing;
- no source-only prose is reported as Lean elaboration or kernel checking.

No external standards submission, subject acceptance, Lean migration,
execution, merge or publication permission follows from this proposal.

## Nonclaims

This proposal does not add a Number Theory subject, construct an
\(L\)-function family, prove an interpolation theorem for arithmetic
\(L\)-functions, derive holomorphy from topology, interpret a Lorentzian null
geodesic, establish a spectral correspondence, prove GRH, or prove the
Riemann Hypothesis.
