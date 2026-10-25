# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EpochParam.Variant161011ce39974952c591845867faf2f76db80ffa187b5f7a4120ce73e86ee543

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `660de0e95da643c7dc4edc8cdbf70ee1803b5ae0` · SHA-256 `161011ce39974952c591845867faf2f76db80ffa187b5f7a4120ce73e86ee543`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# EpochParam.lean

## Role

`EpochParam.lean` defines semantic epoch infrastructure for the Lean proof core.

An epoch records the semantic coordinate under which definitions, schemas, carriers, spectra, authorities, tensors, sheaves, operators, histories, refinements, migrations, certificates, replay procedures, proof modes, scopes, statuses, dependencies, and trusted boundaries are interpreted.

An epoch is not a universe level.

An epoch is not a refinement level.

An epoch is not a timestamp alone.

An epoch is not a runtime version string.

It is a proof-relevant semantic parameter.

## Core principle

A theorem valid at epoch `e` is not automatically valid at epoch `e'`.

The proof core must distinguish:



    e=e'



from:



    Compatible(e,e')



from:



    e~> e'



from:



    Migrated(x_e,x_{e'})



Epoch movement requires explicit compatibility, migration, re-verification, trusted-boundary, or audit-only evidence.

It must not be treated as Lean universe lifting.

It must not be treated as refinement.

## Formal shape

An epoch parameter record has schematic form:



    EpochParam=(id,kind,status,parent,scope,mode,deps,certs,invalidations,audit,replay)



where:

- `id` identifies the epoch;
- `kind` classifies the epoch role;
- `status` records lifecycle state;
- `parent` records predecessor or ancestry where relevant;
- `scope` records the consumer scope for which epoch validity is asserted;
- `mode` records proof mode or migration loss mode where relevant;
- `deps` records dependency closure;
- `certs` records certificates proving epoch claims;
- `invalidations` records stale or invalidating effects;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record classifies semantic context.

It does not migrate artifacts by itself.

## Epoch type

The file may define an abstract type:



    Epoch : Type



or a universe-polymorphic epoch identifier interface.

The epoch type must remain abstract in `lean/core/`.

It must not encode concrete application version numbers, runtime build ids, bitmap artifact ids, UI states, JavaScript object versions, Rust crate versions, or WASM module ids as core constants.

Concrete epoch instances belong outside the abstract core.

## Epoch identity

Epoch identity is proof-relevant.

Two epochs are equal only if their identifiers, semantic assumptions, schemas, proof boundaries, trusted boundaries, dependency policies, replay policies, and audit identities coincide or are certified equal.

Same displayed label is insufficient.

Same timestamp is insufficient.

Same runtime build is insufficient.

Same imported Lean module name is insufficient.

## Epoch equality

Epoch equality has form:



    e=e'



or a framework-level equality predicate:



    EpochEq(e,e')



Epoch equality is stronger than compatibility.

If epochs are equal, theorem transport may use equality transport where the dependent types and statements are definitionally or propositionally aligned.

If epochs are merely compatible, migration or compatibility theorems are still required.

## Epoch compatibility

Epoch compatibility has form:



    Compatible(e,e',scope,mode)



Compatibility says that some uses across epochs are admissible under a declared scope and mode.

Compatibility is weaker than equality.

Compatibility may support audit, display, quotient use, observable use, or selected proof use.

It does not imply general theorem reuse.

## Epoch migration relation

Epoch migration has form:



    e~> e'



or:



    EpochMigrates(e,e',mode)



This relation records that source-epoch artifacts may be transported to target-epoch artifacts only through declared migration objects and certificates.

An epoch migration relation is not object migration by itself.

Each object kind still requires its own migration evidence.

## Source-target coordinates

Many artifacts require explicit source and target epoch coordinates:



    sourceEpoch=e





    targetEpoch=e'



These coordinates are part of migration, replay, certificate, refinement, and audit identity.

A target artifact without source-target coordinates cannot discharge cross-epoch claims.

A source certificate cannot be treated as target evidence without source-target semantics.

## Active epoch

An epoch may be active for a scope.

Active status means that the epoch is accepted as current for a declared consumer policy.

Active status is prefix-relative and scope-relative.

An active runtime epoch is not automatically an active proof epoch.

A proof epoch is active only when proof-core status and dependencies support it.

## Deprecated epoch

An epoch may be deprecated.

Deprecation does not erase old artifacts.

Deprecated epochs remain audit-replayable if dependencies remain available.

Artifacts from deprecated epochs may be audit-only, migrated, stale, or superseded for current-use scopes.

Deprecation is append-only status.

## Superseded epoch

An epoch may be superseded by another epoch.

Supersession is not equality.

Supersession is not migration.

A supersession record must identify scope, successor epoch, invalidation effects, migration requirements, and replay behavior.

Old epoch artifacts remain audit content.

## Stale epoch

An epoch may become stale for a scope if its schemas, proof boundaries, trusted boundaries, replay procedures, dependency policies, or verifier assumptions are no longer accepted.

Staleness is not deletion.

A stale epoch may remain audit-valid.

A stale epoch cannot support current proof use unless revalidated, migrated, or accepted under audit-only policy.

## Epoch status

Epoch status is lifecycle state relative to prefix and scope.

Examples include:

- proposed;
- accepted;
- rejected;
- unknown;
- active;
- deprecated;
- stale;
- migrated;
- superseded;
- invalidated;
- audit-only;
- research-obligated.

Status is not epoch equality.

Status is not proof mode.

Status must be replayable.

## Prefix-relative epoch status

Epoch status may vary by history prefix:



    HasEpochStatus(p,e,scope,status)



A record appended after prefix `p` cannot establish epoch status at prefix `p`.

Status queries must respect append-only history.

Later acceptance, invalidation, migration, or supersession records do not rewrite earlier epoch status.

## Epoch freshness

Epoch freshness has form:



    FreshEpoch(p,e,scope)



or:



    FreshAt(x,e,scope)



Freshness says that the epoch remains admissible for a subject and consumer scope at a prefix.

Freshness depends on dependencies, certificates, invalidations, proof boundary, trusted boundaries, replay schemas, status rules, and scope policies.

Freshness is not global.

## Epoch dependency

Epochs are dependencies of artifacts whose meaning changes by semantic coordinate.

Examples include:

- theorem statements;
- carrier equality;
- spectrum predicates;
- authority policies;
- tensor kernels;
- sheaf restrictions;
- operator domains;
- history append rules;
- refinement maps;
- migration maps;
- verifier behavior;
- certificate schemas;
- replay procedures;
- extraction boundaries.

If an artifact omits epoch dependency, its proof statement is underspecified.

## Epoch and Lean universe

Lean universe level `u` is not an epoch.

A type:



    X:Type\ u



may be interpreted at many epochs.

Changing from `e` to `e'` is semantic movement, not movement from `Type\ u` to `Type\ v`.

Universe lifting cannot discharge epoch migration obligations.

## Epoch and refinement

A refinement index records precision or representation detail.

An epoch records semantic interpretation.

A transition:



    x_{h,e}-> x_{h',e}



is refinement without epoch movement.

A transition:



    x_{h,e}-> x_{h,e'}



is migration without refinement.

A transition:



    x_{h,e}-> x_{h',e'}



requires both refinement and migration evidence.

## Epoch and schema

Schemas are epoch-indexed.

A payload decoded under schema epoch `e` may not have the same meaning under schema epoch `e'`.

Schema compatibility or schema migration is required.

A target decoder accepting source bytes is not epoch equality.

Decoding success is not semantic preservation.

## Epoch and carrier

Carrier semantics may vary by epoch.

Equality, operations, topology, metric, measure, finite enumeration, encoding, and content-address policy may change.

Carrier-theorem reuse across epochs requires carrier migration or epoch equality.

Same Lean type is insufficient.

## Epoch and spectrum

Spectrum predicates and admissibility conditions may vary by epoch.

A proof of:



    xin S_e



does not prove:



    xin S_{e'}



unless spectrum equality, compatibility, migration, or re-verification is accepted.

Carrier membership cannot replace spectrum epoch evidence.

## Epoch and authority

Authority state is prefix-relative and epoch-relative.

An authority binding at epoch `e` is not automatically a binding at epoch `e'`.

Authority migration must preserve uninstalled versus installed state.

No epoch relation may turn `null` or `none` into a mathematical default.

## Epoch and tensors

Tensor factors, product spectra, kernels, contraction plans, contraction results, dependency graphs, and local emissions may vary by epoch.

Same tensor shape across epochs is insufficient.

Tensor migration or re-verification is required for target tensor use.

## Epoch and sheaves

Sites, covers, restriction maps, compatibility conditions, obstruction cochains, repair witnesses, gluing data, and global candidates may vary by epoch.

A sheaf theorem at epoch `e` does not apply at epoch `e'` without sheaf migration or equality evidence.

Local sections do not become target gluing data by epoch movement.

## Epoch and operators

Operator domains, codomains, partiality policies, action rules, kernels, images, adjoints, fixed points, and spectrum actions may vary by epoch.

Runtime target execution does not prove epoch migration.

Same function name across epochs is insufficient.

Operator migration certificates are required where operator semantics are used.

## Epoch and histories

History semantics may vary by epoch.

Record schema, prefix schema, parent relation, append policy, status derivation, commitment policy, replay manifests, and invalidation policy may change.

Exact history reuse across epochs requires history migration.

A final replay state is not epoch equality.

## Epoch and certificates

A certificate accepted at epoch `e` is not automatically accepted at epoch `e'`.

Certificate migration or re-verification is required.

Same proof payload, theorem name, or verifier name is insufficient.

Certificate status must record source and target epoch coordinates where reused.

## Epoch and replay

Replay procedures are epoch-indexed.

A replay manifest at epoch `e` may not be executable or semantically equivalent at epoch `e'`.

Replay migration must preserve target, procedure, schemas, content references, dependencies, verifier calls, comparison relation, result carrier, certificates, and invalidation behavior.

Stored output is not epoch migration.

## Epoch and extraction

Extraction boundaries are epoch-indexed.

A Lean theorem at one epoch does not automatically validate an extracted checker at another epoch.

Extraction scope requires source Lean epoch, target runtime epoch, proof-erasure policy, trusted assumptions, schema relations, dependencies, and replay behavior.

## Epoch and verifier export

Verifier-facing artifacts are epoch-indexed.

A statement exported under one statement schema or certificate schema may change meaning under another.

Verifier-export status must record source theorem epoch, exported schema epoch, verifier epoch, proof-boundary epoch, and replay schema epoch.

## Epoch and application instantiation

Application instantiations are epoch-indexed but must remain outside the abstract core.

`EpochParam.lean` may define generic application-instantiation epoch hooks.

It must not define concrete application epochs, artifact constants, bitmap values, matrix dimensions, hash constants, Feistel constants, UI states, or current application payloads.

## Epoch equality certificate

An epoch-equality certificate may prove:



    e=e'



or framework-level epoch identity.

It must record statement, subject, proof boundary, dependencies, scope, mode, prefix, and replay behavior.

Same displayed epoch id cannot substitute for a certificate.

Epoch equality may allow theorem transport only where the dependent statements align.

## Epoch compatibility certificate

An epoch-compatibility certificate may prove:



    Compatible(e,e',scope,mode)



It must identify retained information, lost information, admissible consumers, invalidations, dependencies, and replay behavior.

Compatibility is scoped.

It does not imply full cross-epoch theorem reuse.

## Epoch migration certificate

An epoch-migration certificate may prove:



    EpochMigrates(e,e',mode)



It establishes that migration from source to target epoch is accepted under declared mode.

It does not migrate every object.

Object-specific migration certificates remain required.

## Epoch freshness certificate

An epoch-freshness certificate may prove:



    FreshEpoch(p,e,scope)



or:



    FreshAt(x,p,e,scope)



It must account for dependencies, invalidations, supersessions, verifier changes, proof-boundary changes, replay schema changes, scope-policy changes, and status records.

Freshness is prefix-relative and scope-relative.

## Epoch invalidation

An epoch claim may be invalidated by changes to:

- schema interpretation;
- carrier equality;
- spectrum predicate;
- authority policy;
- tensor semantics;
- sheaf restriction maps;
- operator action semantics;
- history append policy;
- verifier behavior;
- proof boundary;
- replay procedure;
- extraction boundary;
- trusted boundary;
- scope policy.

Invalidation is append-only.

It does not rewrite old epoch records.

## Epoch supersession

Epoch supersession records that a later epoch replaces an earlier epoch for a declared scope.

It must identify successor, scope, migration requirements, invalidation effects, and replay policy.

Supersession is not object migration.

It is not proof transport.

It is lifecycle metadata requiring downstream certificates.

## Epoch ancestry

Epochs may have parent or ancestry relations.

A parent relation may support migration planning, replay explanation, or audit.

Ancestry is not compatibility by itself.

A child epoch does not inherit all theorems of its parent unless inheritance, migration, or compatibility is certified.

## Epoch path

A path of epoch migrations has form:



    e_0~> e_1~> ... ~> e_n



The chosen path may affect target semantics.

Path identity and path coherence must be explicit.

A direct migration:



    e_0~> e_n



is not automatically equal to the composite path.

## Epoch path coherence

Path coherence may require that two epoch migration paths produce equivalent target semantics.

A path-coherence certificate must identify paths, object families, modes, scopes, dependencies, certificates, and replay behavior.

Without path coherence, dependent artifacts must record the chosen epoch path.

## Epoch identity relation

The identity epoch relation is:



    id_e:e-> e



It supports same-epoch reasoning.

Identity relation still requires the relevant object, proof boundary, dependency, and replay contexts to match.

A no-op runtime version change is not identity epoch evidence.

## Epoch composition

Epoch migration relations may compose:



    e~> e'





    e'~> e''



to produce:



    e~> e''



only under declared composition laws.

Composition must account for loss modes, invalidations, dependency closure, path coherence, certificates, and replay behavior.

Composition does not silently strengthen evidence.

## Epoch invertibility

An epoch migration may be invertible if forward and backward relations compose to identity:



    M_{e',e}M_{e,e'}=id_e





    M_{e,e'}M_{e',e}=id_{e'}



Invertibility must be certified.

A backward map alone is insufficient.

Approximate, quotient, observable, summary, checkpoint, or audit-only inverses remain weaker modes.

## Epoch partiality

Epoch compatibility or migration may be partial.

It may apply only to selected object kinds, selected scopes, selected records, selected schemas, selected prefixes, selected proof modes, or selected dependencies.

Partial scope must be explicit.

A partial epoch relation cannot support total cross-epoch reuse without coverage evidence.

## Epoch unknown

An epoch relation may be unknown.

Unknown epoch compatibility is not accepted.

Unknown is not rejection.

Unknown may block migration, replay, extraction, certificate reuse, or frame construction.

Unknown may create a research obligation.

## Epoch rejected

An epoch relation may be rejected.

Rejected epoch compatibility or migration provides no target-use evidence.

It remains audit content.

A rejected epoch migration must identify failure reason, dependencies, proof boundary, scope, and replay behavior.

## Epoch audit-only

An epoch relation may be audit-only.

Audit-only epoch relation preserves historical explanation.

It does not support current target proof, replay, certificate reuse, authority mutation, or frame construction.

Audit-only use must be explicit in status and scope records.

## Epoch research obligation

A required epoch relation may become research-obligated if no accepted proof exists.

The obligation records source epoch, target epoch, intended scope, required mode, missing evidence, dependencies, blocked consumers, and replay context.

It does not prove epoch compatibility.

## Epoch and dependency closure

Epoch records must participate in dependency closure.

If a theorem depends on an epoch, the epoch must be included in its dependency set.

If a migration depends on source and target epochs, both epochs must be included.

If a certificate depends on verifier epoch or proof-boundary epoch, those must be included.

Hidden epoch dependencies invalidate replay.

## Epoch and certificates

Certificates are epoch-indexed.

A certificate must record:

- statement epoch;
- subject epoch;
- verifier epoch;
- payload schema epoch;
- proof-boundary epoch;
- dependency epoch;
- replay schema epoch.

Omitting these fields makes certificate replay incomplete.

## Epoch and proof boundary

Proof boundaries are epoch-indexed.

If the trusted kernel, axiom set, verifier, arithmetic model, decoder, finite enumerator, extraction boundary, or replay engine changes, certificates depending on the old boundary may become stale.

Epoch infrastructure must expose proof-boundary dependency.

## Epoch and trusted boundary

A trusted boundary has an epoch.

A trusted hash boundary at one epoch may not certify byte identity under another encoding epoch.

A trusted replay engine at one epoch may not certify target replay at another.

Trusted-boundary epoch must be part of the dependency record.

## Epoch and audit

Audit links are epoch-indexed.

An audit link says that an artifact corresponds to a framework record under a particular interpretation.

If record schema or proof statement schema changes, audit links may need migration or audit-only status.

Audit link existence does not prove target epoch validity.

## Epoch and replay semantics

Replay of epoch artifacts reconstructs epoch id, status, compatibility relations, migration relations, dependencies, certificates, invalidations, proof boundaries, trusted boundaries, scope policies, and audit links.

A stored epoch label is not replay evidence.

Epoch replay must reconstruct why the epoch is accepted, stale, migrated, superseded, or audit-only for the query scope.

## Epoch and stored artifacts

A stored artifact may include an epoch label.

The label is data.

It does not prove the artifact belongs to the epoch.

It does not prove freshness.

It does not prove migration.

It does not prove replay preservation.

Epoch membership and epoch freshness require certificates or derivation rules.

## Epoch equality versus migration

Epoch equality allows same-epoch reasoning.

Epoch migration relates different semantic coordinates.

A migration certificate is not an equality certificate unless it explicitly proves equality.

A compatibility certificate is not a migration certificate unless it supplies migration laws.

These distinctions must remain visible.

## Epoch migration versus refinement

Migration changes semantic epoch.

Refinement changes precision or detail.

The file must reject any theorem that treats epoch movement as refinement movement without both relations being declared.

A universe lift is neither migration nor refinement.

## Epoch status transition

Epoch status may transition:



    Proposed-> Accepted





    Accepted-> Deprecated





    Accepted-> Stale





    Accepted-> Superseded





    Accepted-> Migrated





    Unknown-> ResearchObligated





    Rejected-> Accepted



Transitions require records, certificates, or derivation rules.

They do not mutate prior records.

## Epoch equality of artifacts

Two epoch artifacts are equal only if their id, kind, status policy, parent relation, scope, mode, dependencies, certificates, invalidations, audit references, proof boundary, trusted boundaries, and replay behavior coincide.

Same id is insufficient.

Same timestamp is insufficient.

Same label is insufficient.

## Epoch equivalence

Epochs may be equivalent under declared scope.

For example, two epochs may be equivalent for display but not for proof.

They may be equivalent for quotient replay but not raw replay.

Epoch equivalence is not equality.

Consumers must state which epoch equivalence they accept.

## Epoch as dependency

Epoch parameters are dependencies of:

- object interfaces;
- relation schemas;
- equality artifacts;
- equivalence artifacts;
- proof modes;
- scopes;
- statuses;
- dependency records;
- replay parameters;
- trusted boundaries;
- certificate schemas;
- audit references.

Changing epoch infrastructure may stale downstream artifacts.

## Epoch certificates

Epoch certificates may prove:



    EpochEq(e,e')





    Compatible(e,e',scope,mode)





    EpochMigrates(e,e',mode)





    FreshEpoch(p,e,scope)





    HasEpochStatus(p,e,scope,status)



or ancestry, supersession, invalidation, identity, composition, invertibility, path-coherence, audit-only, and replay-preserving epoch claims.

Only accepted certificates discharge epoch obligations.

## Epoch rule

`EpochParam.lean` artifacts are epoch-indexed by:

- epoch-interface epoch;
- epoch-id schema epoch;
- epoch-status schema epoch;
- compatibility-relation epoch;
- migration-relation epoch;
- freshness-policy epoch;
- source-target-coordinate schema epoch;
- dependency-record epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream epoch claims.

The old epoch artifact remains audit content.

## History relation

A history record depending on `EpochParam.lean` must record:

1. source file identity;
2. declaration identity;
3. epoch id;
4. epoch relation kind;
5. source and target epochs where relevant;
6. status;
7. scope;
8. mode;
9. dependencies;
10. certificate references;
11. invalidation behavior;
12. proof boundary;
13. replay data;
14. audit reference.

The epoch label alone is insufficient.

## Replay rule

Replay of `EpochParam.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean`, `ObjectInterface.lean`, `RelationSchema.lean`, `Equality.lean`, `Equivalence.lean`, `ProofMode.lean`, `Scope.lean`, `Status.lean`, and `DependencyRecord.lean`;
3. checking epoch type and epoch-record declarations;
4. checking epoch equality, compatibility, migration, freshness, status, ancestry, supersession, and invalidation declarations;
5. checking source-target coordinate infrastructure;
6. checking that epoch movement is not treated as universe lifting or refinement;
7. checking that no concrete runtime or application constants are introduced;
8. checking proof objects or trusted boundaries where present;
9. checking dependency closure and certificate metadata.

If any step fails, downstream epoch claims are not replay-admissible.

## Runtime representation

`EpochParam.lean` may lower to:

- Lean epoch declarations;
- epoch-relation records;
- source-target coordinate schemas;
- epoch-status descriptors;
- freshness-checker specifications;
- migration-path metadata;
- verifier-facing epoch descriptors;
- audit references.

Runtime representation is not epoch identity.

Identity depends on semantic interpretation, relation kind, dependencies, certificates, proof boundaries, trusted boundaries, epochs, invalidations, and replay behavior.

## Non-collapse theorem

Let two epoch artifacts have the same displayed epoch id.

This does not imply the artifacts are equal.

They collapse only if their semantic assumptions, statuses, scopes, modes, dependency closures, certificates, invalidations, proof boundaries, trusted boundaries, audit references, and replay behavior coincide.

Thus epoch-label equality is insufficient for epoch identity.

## Proof obligation

`EpochParam.lean` is admissible only if the framework can certify:

1. epoch identifiers are abstract;
2. epoch equality is distinct from compatibility;
3. compatibility is distinct from migration;
4. source-target epoch coordinates are explicit;
5. freshness is prefix-relative and scope-relative;
6. epoch status is lifecycle state, not proof mode;
7. epoch movement is not universe lifting;
8. epoch movement is not refinement;
9. dependency and certificate interaction is explicit;
10. invalidation and supersession are append-only;
11. concrete runtime and application constants are excluded;
12. replay can reconstruct epoch declarations and dependencies.

## Exclusion rule

`EpochParam.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application epochs, runtime version constants, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract semantic epoch infrastructure.

## Commitment rule

`EpochParam.lean` may define epoch identifiers, equality, compatibility, migration relations, freshness, source-target coordinates, and epoch status infrastructure.

It cannot transport theorems across epochs by label.

It cannot treat epoch movement as universe lifting.

It cannot treat epoch movement as refinement.

It cannot make source certificates valid at target epochs.

It cannot infer defaults from `none` or `null`.

It cannot make stored outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
