# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RelationSchema.Variant23d5d7dd55aa60e92b1242d75aae85e50c967ff9d5f626ab69fdaa310e5ffe7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17b67a404962c13eed5fb25b0f4159d76430bd18` · SHA-256 `23d5d7dd55aa60e92b1242d75aae85e50c967ff9d5f626ab69fdaa310e5ffe7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# RelationSchema.lean

## Role

`RelationSchema.lean` defines universe-safe relation infrastructure for the Lean proof core.

It provides typed schemas for total relations, partial relations, functional relations, relational graphs, selected relations, stochastic relations, approximate relations, quotient relations, observable relations, rejected relations, unknown relations, and research-obligated relations.

A relation schema is not a runtime function.

It is not a JavaScript callback.

It is not a database relation.

It is not an implementation edge.

It is a proof-core object describing how source and target types are related under explicit domain, codomain, mode, scope, dependencies, certificates, epochs, and replay behavior.

## Core principle

A framework relation may be total, partial, functional, relational, approximate, quotient-valued, observable-valued, stochastic, rejected, unknown, or unresolved.

The proof core must not force all relations into total functions:

    X -> Y

The general shape is:

    R:X -> Y -> Prop

with optional structure for domain, codomain, mode, dependency closure, proof obligations, and replay.

This supports migrations, refinements, projections, reconstructions, replay claims, certificate claims, authority updates, tensor compatibility, sheaf restriction compatibility, operator action compatibility, and history append preservation.

## Formal shape

A generic relation schema has schematic form:

    RelationSchema=(sourceType,targetType,domain,codomain,relation,mode,scope,deps,certs,replay)

where:

- `sourceType` is the source type `X:Type u`;
- `targetType` is the target type `Y:Type v`;
- `domain` records where the relation is defined or meaningful;
- `codomain` records the target predicate or admissible target region;
- `relation` records `R:X -> Y -> Prop`;
- `mode` records exact, approximate, quotient, observable, stochastic, partial, selected, rejected, unknown, trusted-boundary, or research-obligated behavior;
- `scope` records the consumer scope;
- `deps` records dependency closure;
- `certs` records accepted evidence;
- `replay` records reconstruction behavior.

The schema describes a relation.

It does not prove that a particular pair satisfies it unless paired with a theorem or certificate.

## Universe safety

Relations must be universe-polymorphic.

A relation may connect:

    X:Type u

to:

    Y:Type v

without requiring `u=v`.

The relation itself may live in `Prop`:

    R:X -> Y -> Prop

or may be wrapped in a data-bearing record if audit, mode, dependency, or certificate information is required.

Universe levels must remain explicit or inferable.

## Prop-valued relation

The simplest relation is:

    R:X -> Y -> Prop

This states when a source and target are related.

It carries no data by itself.

It does not record dependencies, certificates, epochs, modes, or replay behavior unless wrapped in a richer schema.

For framework use, bare relations are usually insufficient for audit and replay.

## Data-bearing relation record

A data-bearing relation record may include relation metadata.

It may record:

- relation identity;
- relation kind;
- source and target types;
- domain and codomain predicates;
- proof mode;
- scope;
- dependencies;
- epoch;
- certificates;
- replay references;
- audit references.

This record is a proof-core artifact.

It is not runtime execution.

## Total relation

A total relation is defined for every source object.

For a functional relation:

    f:X -> Y

totality is built into the function type.

For a relational schema:

    R:X -> Y -> Prop

totality is:

    x:X, y:Y, R(x,y)

Totality is not assumed.

It must be declared or proven where needed.

## Partial relation

A partial relation is defined only on a domain:

    D:X -> Prop

with relation:

    R: {x:X // D(x) } -> Y -> Prop

or:

    R:X -> Y -> Prop

with the convention that `R(x,y)` may hold only when `D(x)`.

Partiality must be explicit.

No theorem may consume a partial relation as total unless totality over the required domain is certified.

## Functional relation

A relation is functional when:

    R(x,y_1) R(x,y_2) => y_1=y_2

for the relevant equality on `Y`.

Functionality is stronger than existence.

A relation may be total but not functional, functional but partial, or neither.

The schema must allow these distinctions.

## Relation as graph

A function may be represented by its graph:

    Graph(f)(x,y) := f(x)=y

A partial function may be represented by a graph over its domain.

Graph representation is useful for migrations, refinements, and operator actions.

A graph relation is not automatically computable.

Computability belongs to verifier or runtime extraction layers.

## Selected relation

A selected relation chooses one target from a possibly many-valued relation.

Given:

    R:X -> Y -> Prop

a selection functional may have form:

    select: x:X, {y:Y // R(x,y) }

where total selection is certified, or a partial selected form over a domain.

Selection is proof-relevant.

Runtime enumeration order, hash order, file order, branch order, or UI choice cannot supply hidden selection.

## Stochastic relation

A stochastic relation maps a source to a probability distribution over targets:

    K:X -> Prob(Y)

or a relation between source and target distributions.

The schema must record probability carrier, support, normalization, randomness boundary, stochastic kernel, mode, dependencies, and replay behavior.

A stochastic relation is not a selected deterministic relation.

A sampled target requires separate sampling semantics or trusted boundary.

## Approximate relation

An approximate relation has comparison structure:

    d:X' -> Y' -> E

and bound:

    d(x',y') <=

where `X'` and `Y'` may be reconstructed or projected forms of `X` and `Y`.

The schema must record metric, topology, norm, order, residual, tolerance carrier, and scope.

Approximate relations cannot discharge exact obligations unless a strengthening theorem is accepted.

## Residual relation

A residual relation records violation of an equation or predicate:

    res(x,y) <=

or:

    res(y) <=

Residual zero does not imply equality unless a soundness theorem proves it.

Residual relations are useful for approximate sheaf compatibility, operator action error, tensor contraction error, spectrum admissibility residuals, and replay divergence.

## Quotient relation

A quotient relation compares source and target after quotienting.

A typical law is:

    q_Y(y)=M_q(q_X(x))

or:

    [x][y]

under declared quotient structures.

Quotient relation supports quotient-level consumers only.

It does not support representative-sensitive use without recovery, representative selection, or representative-independence evidence.

## Observable relation

An observable relation compares observables:

    Obs_X(x)=Obs_Y(y)

or an approximate observable relation.

Observable relation supports observable-level consumers only.

It does not preserve hidden state unless faithfulness or recovery is certified.

The observable codomain may live in a different universe from the source and target types.

## Summary relation

A summary relation compares summaries:

    Summary_X(x)=Summary_Y(y)

It retains only summary-level information.

The schema must record retained information, omitted information, loss policy, and sufficiency scope.

A summary relation cannot support raw replay or raw proof unless summary sufficiency is certified.

## Checkpoint relation

A checkpoint relation compares or validates materialized replay state.

It must record covered prefix, covered records, checkpoint payload, invalidation policy, dependency closure, certificates, and replay scope.

Checkpoint relation is not raw replay relation unless checkpoint-only replay is accepted for the declared scope.

## Rejected relation

A rejected relation records that a claimed relation does not hold or cannot be accepted.

It may include source, target candidate, failure reason, dependency closure, verifier result, epoch, and replay data.

Rejected relation is history and audit content.

It does not provide a usable target relation.

## Unknown relation

An unknown relation records that the framework cannot decide whether the relation holds.

Unknown is not accepted.

Unknown is not false.

It may block downstream consumers or create a research obligation.

Unknown relation must not be silently converted into approximate, quotient, observable, or accepted mode.

## Research-obligated relation

A research-obligated relation records an unresolved relation required by some consumer.

It must identify source, target, intended statement, missing evidence, dependencies, scope, and replay context.

It does not prove the relation.

It prevents silent forced choices in gluing, migration, convergence, replay, halting, or selection problems.

## Domain predicate

The domain predicate has form:

    D:X -> Prop

It identifies where a relation is defined or admissible.

Domain membership must be proven before using a partial relation.

For operators, this corresponds to operator domain.

For migrations, this corresponds to migration domain.

For refinements, this corresponds to refinement domain.

## Codomain predicate

The codomain predicate has form:

    C:Y -> Prop

It identifies admissible target values.

A target may be in type `Y` but fail codomain admissibility.

Codomain predicates are distinct from type membership.

This distinction supports spectra, target domains, output admissibility, and certificate result modes.

## Domain preservation

A relation schema may include domain preservation law:

    D_X(x) => D_Y(f(x))

or, for relations:

    D_X(x) R(x,y) => D_Y(y)

Domain preservation must be certified where proof-relevant.

It is not automatic.

## Codomain preservation

A relation schema may include codomain preservation law:

    R(x,y) => C_Y(y)

This is necessary when the target must satisfy a target spectrum, operator codomain, replay result carrier, or certificate schema.

Relation existence alone does not imply target admissibility unless the law is included.

## Exact relation

An exact relation preserves raw structure according to declared equality.

For functions, exactness may be:

    f(x)=y

For compatibility squares, exactness may be:

    R_Y(g_X(x))=g_Y(R_X(x))

Exactness depends on the equality relation in use.

Raw equality, quotient equality, observable equality, and approximate equality must remain distinct.

## Mode field

The mode field classifies relation strength.

Examples include exact, approximate, quotient, observable, summary, checkpoint, stochastic, partial, rejected, unknown, audit-only, trusted-boundary, and research-obligated.

Mode values do not prove anything.

They constrain how the relation may be consumed.

Mode correctness must be certified where proof-relevant.

## Scope field

The scope field classifies admissible consumers.

A relation may be valid for audit, display, proof, replay, migration, refinement, authority mutation, frame construction, tensor consumption, sheaf gluing, or operator action.

A relation valid in one scope is not automatically valid in another.

The schema must carry scope or allow scope-indexed admissibility.

## Dependency field

A relation schema must allow dependency attachment.

Dependencies may include source object, target object, carrier, spectrum, authority state, tensor data, sheaf data, operator data, history prefix, certificate, replay manifest, migration node, refinement node, metric, quotient relation, observable map, trusted boundary, or epoch.

Hidden dependencies invalidate replay and audit.

## Certificate field

A relation schema may reference certificates proving:

    R(x,y)

or proving laws about `R`, such as totality, functionality, domain preservation, codomain preservation, composition, identity, soundness, completeness, replay preservation, and freshness.

A relation declaration is not a certificate.

Accepted certificates are separate proof artifacts.

## Replay field

A relation schema must allow replay metadata.

Replay reconstructs the source, target, relation definition, domain, codomain, mode, dependencies, certificates, and comparison law.

A relation that cannot be replayed is not admissible for framework proof use.

Stored source-target pairs are not replay evidence.

## Relation identity

Relation identity includes:

- source type;
- target type;
- domain predicate;
- codomain predicate;
- relation predicate or rule;
- mode;
- scope;
- dependency closure;
- certificates;
- epoch;
- replay behavior.

Two relations with the same printed name or same source-target examples are not identical unless all identity components coincide.

## Relation equality

Two relation schemas are equal only if their typed source and target universes, domains, codomains, relation predicates, modes, scopes, dependencies, certificates, epochs, and replay policies coincide.

Same relation name is insufficient.

Same graph on sampled values is insufficient.

Same runtime implementation is insufficient.

## Relation equivalence

Two relations may be equivalent under pointwise equality, quotient equivalence, observable equivalence, approximate equivalence, migration equivalence, replay equivalence, or proof-irrelevance.

Equivalence is not equality.

Downstream modules must declare which relation equivalence they accept.

## Relation composition

Given:

    R:X -> Y -> Prop

and:

    S:Y -> Z -> Prop

composition may be:

    (S R)(x,z):= y, R(x,y) S(y,z)

Composition of modes, dependencies, domains, codomains, and errors must be explicit.

Exact followed by approximate is approximate unless strengthened.

Quotient followed by raw does not recover representatives without evidence.

## Functional composition

If `R` and `S` are functional, their composition may be functional.

This requires functionality proofs and domain compatibility.

Functional composition is not automatic for arbitrary relations.

A theorem must state conditions under which composition preserves functionality.

## Identity relation

The identity relation on `X` is:

    Id_X(x,y):=x=y

or another declared equality relation.

Identity relation depends on the chosen equality.

A runtime no-op is not identity relation unless object equality and epoch identity are certified.

## Path coherence

If multiple composed relation paths connect `X` to `Z`, path coherence may require equality or equivalence of composites.

Without path coherence, target semantics depend on relation path.

Migration paths, refinement paths, projection paths, and replay paths must record the chosen path unless coherence is certified.

## Soundness

A relation may be sound with respect to predicates:

    A(x) R(x,y) => B(y)

Soundness must specify `A`, `B`, mode, scope, and dependencies.

Soundness is not automatic.

Carrier migration soundness does not imply spectrum migration soundness unless `B` is a spectrum predicate and the theorem says so.

## Completeness

A relation may be complete with respect to predicates:

    B(y) => x, A(x) R(x,y)

Completeness is distinct from soundness.

It may be required for invertibility, representative recovery, full migration, or exhaustive replay.

Completeness must be certified where used.

## Invertibility

A relation may have an inverse relation:

    R^{-1}:Y -> X -> Prop

Invertibility requires composition with inverse to yield identity or an accepted weaker relation.

A forward relation does not imply backward relation.

Approximate, quotient, observable, and partial inverses must remain marked as weaker modes.

## Determinism

A relation may be deterministic if every source relates to at most one target.

For relation `R`:

    R(x,y_1) R(x,y_2) => y_1=y_2

Determinism depends on target equality.

It is not automatic.

Determinism is required when downstream consumers expect a unique target.

## Nondeterminism

A relation may be nondeterministic.

Nondeterminism is admissible when downstream consumers are relation-aware, target-independent, selected, stochastic, quotient, observable, or research-obligated.

Nondeterministic relations cannot be consumed as functions without selection or uniqueness evidence.

## Totality

Totality states:

    x, D(x) => y, R(x,y)

or unrestricted:

    x, y, R(x,y)

depending on domain.

Totality is proof-relevant.

A relation defined for observed inputs is not total.

## Empty relation

The empty relation relates no source to any target.

It may represent rejection or impossibility if certified.

It must not be silently used as unknown.

An empty relation and an unknown relation are different.

## Universal relation

The universal relation relates every source to every target.

It is usually too weak for semantic preservation.

It may support diagnostic or unconstrained modes.

It cannot discharge proof obligations unless the downstream claim requires only existence of some relation with no preservation content.

## Relation over certificates

A relation may relate certificate records, proof payloads, statements, verifier results, or proof modes.

It must distinguish raw payload migration from certificate migration.

A relation between payloads does not imply a relation between accepted certificates unless verifier result and statement semantics are included.

## Relation over histories

A relation may relate records, prefixes, views, forks, merges, commitments, invalidations, or replay results.

It must preserve append-only semantics where exact mode is claimed.

A relation between final states does not imply a relation between histories.

## Relation over authorities

A relation may relate authority states.

It must distinguish:

    Uninstalled

from installed mathematical values.

It must not treat `none`, `null`, or missing value as a default section.

Authority-specific relations belong in authority modules but use this schema infrastructure.

## Relation over replay

A relation may relate replay results.

It must record replay procedures, targets, dependency closure, result carrier, comparison relation, and certificates.

Stored output equality is not replay relation evidence.

Replay-preservation relations must be explicit.

## Relation over epochs

A relation may relate epochs:

    e ~> e'

Epoch relations are semantic compatibility relations.

They are not universe relations.

They are not refinement indices.

They must be certified when used for migration, freshness, or cross-epoch comparison.

## Relation over refinements

A relation may relate coarse and fine objects.

It must distinguish refinement movement from migration movement.

Projection, reconstruction, and error relations are separate relation kinds.

A relation that only maps target payloads is not proof of refinement.

## Relation over migrations

A relation may relate source-epoch and target-epoch objects.

It must carry loss mode.

Exact, approximate, quotient, observable, summary, checkpoint, partial, rejected, unknown, and audit-only migrations are distinct relation modes.

Mode must be explicit.

## Trusted-boundary relation

A relation may be certified by a trusted boundary.

The trusted boundary must state exactly which relation it certifies.

A trusted hash boundary certifies byte equality, not semantic relation.

A trusted replay engine certifies replay only under its declared input schema and proof boundary.

## Relation invalidation

A relation may become stale if its source type, target type, domain, codomain, predicate, mode, scope, dependencies, certificates, epoch, or replay behavior changes.

Invalidation is append-only in history.

The old relation remains audit content.

## Relation migration

A relation schema may migrate across epochs.

Migration must preserve source type, target type, domain, codomain, predicate semantics, mode, scope, dependencies, certificates, and replay behavior, or declare a weaker loss mode.

Same relation name after migration is insufficient.

## Relation refinement

A relation schema may refine by strengthening domain, sharpening codomain, reducing error, adding dependencies, improving proof strength, or making a relation more precise.

Refinement is not migration.

The relation schema must allow both relation migration and relation refinement as distinct properties.

## Certificate relation

Relation-schema certificates may prove:

    R(x,y)

    Functional(R)

    Total(R)

    Sound(R,A,B)

    Complete(R,A,B)

    R_2 R_1=R_3

    ReplayPreserving(R)

or domain, codomain, mode, scope, dependency-closure, equality, equivalence, migration, refinement, invalidation, and replay claims.

Only accepted certificates discharge relation-schema obligations.

## Epoch rule

`RelationSchema.lean` artifacts are epoch-indexed by:

- relation-schema epoch;
- source-type epoch;
- target-type epoch;
- domain-predicate epoch;
- codomain-predicate epoch;
- relation-predicate epoch;
- mode epoch;
- scope epoch;
- dependency-record epoch;
- certificate-schema epoch;
- replay-schema epoch;
- proof-boundary epoch.

Changing any component may stale downstream relation proofs.

The old relation schema remains audit content.

## History relation

A history record depending on `RelationSchema.lean` must record:

1. source file identity;
2. declaration identity;
3. source and target types;
4. domain and codomain predicates;
5. relation predicate or rule;
6. mode and scope;
7. dependency closure;
8. certificate references;
9. epoch;
10. replay data.

The relation name alone is insufficient.

## Replay rule

Replay of `RelationSchema.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean` and object infrastructure;
3. checking relation-schema declarations;
4. checking domain and codomain schema;
5. checking total, partial, functional, relational, selected, stochastic, approximate, quotient, observable, rejected, and unknown relation constructors;
6. checking mode and scope hooks;
7. checking that no concrete runtime or application constants are introduced;
8. checking proof objects or trusted boundaries where present;
9. checking dependency closure and certificate metadata.

If any step fails, downstream relation proofs are not replay-admissible.

## Runtime representation

`RelationSchema.lean` may lower to:

- Lean relation declarations;
- relation record schemas;
- graph relation definitions;
- partial-map schemas;
- mode-indexed relation metadata;
- dependency metadata;
- verifier-facing relation descriptors;
- audit references.

Runtime representation is not relation identity.

Identity depends on typed source and target, relation predicate, domains, codomains, modes, scopes, dependencies, epochs, certificates, and replay behavior.

## Non-collapse theorem

Let two relation schemas produce the same result on one source-target pair.

This does not imply the relation schemas are equal.

They collapse only if their source and target types, domains, codomains, relation predicates, modes, scopes, dependencies, certificates, epochs, replay policies, and history effects coincide.

Thus one successful relation judgment is insufficient for relation-schema identity.

## Proof obligation

`RelationSchema.lean` is admissible only if the framework can certify:

1. relation schemas are universe-safe;
2. source and target types may differ;
3. total, partial, functional, and relational forms are distinct;
4. selected and stochastic relations are explicit;
5. approximate, quotient, observable, summary, checkpoint, rejected, unknown, audit-only, and research-obligated modes are distinct;
6. domain and codomain predicates are explicit;
7. mode and scope are explicit;
8. dependencies and certificates may be attached;
9. replay behavior is distinct from stored source-target pairs;
10. concrete runtime and application constants are excluded;
11. replay can reconstruct relation-schema declarations and dependencies.

## Exclusion rule

`RelationSchema.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application values, runtime functions, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only generic universe-safe relation schemas.

## Commitment rule

`RelationSchema.lean` may define relation records and relation laws.

It cannot prove specialized framework semantics by itself.

It cannot turn partial relations into total functions.

It cannot select representatives without selection evidence.

It cannot make approximate, quotient, observable, summary, checkpoint, unknown, rejected, or audit-only relations exact.

It cannot infer defaults from `none` or `null`.

It cannot make stored outputs self-justifying.

It cannot commit a frame.
-/
```
