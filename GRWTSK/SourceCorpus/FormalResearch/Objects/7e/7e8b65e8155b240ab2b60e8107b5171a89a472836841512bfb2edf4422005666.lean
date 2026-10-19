/-
# DependencyRecord.lean

## Role

`DependencyRecord.lean` defines dependency-record infrastructure for the Lean proof core.

A dependency record identifies what a theorem, relation, certificate, migration, refinement, replay claim, status, scope policy, proof-mode record, extraction artifact, or audit link depends on.

It provides typed dependency identities, dependency kinds, dependency edges, dependency sets, dependency closure, freshness predicates, hidden-dependency rejection, prefix-relative availability, certificate dependencies, invalidation propagation, epoch sensitivity, scope sensitivity, mode sensitivity, and replay behavior.

A dependency record is not an import list.

It is not a runtime module graph.

It is not a file-system path.

It is proof-relevant structure.

## Core principle

Every proof-relevant artifact must expose its dependencies.

A theorem with hidden dependencies is not replay-complete.

A certificate with hidden dependencies is not audit-complete.

A migration with hidden dependencies is not semantically admissible.

The generic form is:



    DependsOn(x,d)



or:



    ClosedDeps(x,D)



where `D` contains all dependencies required to replay, verify, migrate, invalidate, or consume `x` in a declared scope and mode.

## Formal shape

A dependency record has schematic form:



    DependencyRecord=(id,kind,subject,target,mode,scope,prefix,epoch,status,availability,deps,certs,invalidations,audit,replay)



where:

- `id` identifies the dependency record;
- `kind` classifies the dependency;
- `subject` is the artifact that has the dependency;
- `target` is the artifact depended on;
- `mode` records the proof mode or loss mode required from the dependency;
- `scope` records the consumer scope;
- `prefix` records prefix-relative availability;
- `epoch` records semantic coordinates;
- `status` records lifecycle state of the dependency;
- `availability` records whether the dependency is available at a prefix and epoch;
- `deps` records nested dependency closure;
- `certs` records certificates proving dependency claims;
- `invalidations` records invalidation propagation;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The dependency record describes an obligation.

It does not by itself prove the dependency is fresh, accepted, or sufficient.

## Dependency identity

Dependency identity is typed.

A dependency is not merely a name.

It includes:

- dependency kind;
- depended-on subject;
- required mode;
- required scope;
- prefix;
- epoch;
- lifecycle status;
- proof boundary;
- replay behavior;
- audit reference;
- certificate relation.

Two dependencies with the same displayed name may differ by epoch, mode, scope, prefix, status, or proof boundary.

## Dependency kind

The file may define dependency kinds such as:

- theorem dependency;
- definition dependency;
- object dependency;
- relation dependency;
- equality dependency;
- equivalence dependency;
- proof-mode dependency;
- scope dependency;
- status dependency;
- certificate dependency;
- verifier dependency;
- trusted-boundary dependency;
- replay dependency;
- history dependency;
- migration dependency;
- refinement dependency;
- application-instantiation dependency;
- extraction dependency;
- audit dependency.

The dependency kind constrains replay and invalidation behavior.

## Direct dependency

A direct dependency records immediate reliance:



    DependsOn(x,d)



For example, a theorem may directly depend on an equality relation, a spectrum predicate, a proof-mode policy, a trusted boundary, or a certificate schema.

Direct dependency is not transitive closure.

It is the first layer of dependency structure.

## Transitive dependency

A transitive dependency is reached through dependency expansion:



    DependsOn(x,d_1)and DependsOn(d_1,d_2)=> TransDependsOn(x,d_2)



Transitive dependencies are proof-relevant for replay and invalidation.

If a transitive dependency becomes stale, the subject may also become stale for affected scopes.

## Dependency set

A dependency set is a typed collection of dependency records.

It must preserve type, kind, epoch, prefix, mode, scope, status, and replay information for each member.

A dependency set is not an untyped list of names.

A dependency set is not an import list.

A dependency set is not a file-system tree.

## Dependency closure

Dependency closure states that a set `D` contains all proof-relevant dependencies of an artifact `x` for a declared mode and scope:



    ClosedDeps(x,D,mode,scope)



Closure is mode-relative and scope-relative.

A closure sufficient for display may be insufficient for proof.

A closure sufficient for audit may be insufficient for current replay.

## Minimal closure

A minimal closure contains exactly the dependencies required for a given claim.

Minimality is optional and proof-relevant.

A dependency set may be closed without being minimal.

Minimal closure is useful for audit, invalidation precision, and proof compression.

It must not be assumed unless certified.

## Overapproximate closure

An overapproximate closure may include unnecessary dependencies.

It can be safe but may cause excess invalidation.

A theorem may accept overapproximate closure if consumer policy permits.

The record must distinguish:



    ClosedDeps



from:



    MinimalClosedDeps



Overapproximation must not hide missing dependencies.

## Hidden dependency rejection

A hidden dependency is a proof-relevant dependency not recorded in the dependency closure.

Hidden dependencies invalidate replay-completeness.

If a verifier, extraction boundary, replay procedure, proof theorem, or migration relies on a hidden dependency, the artifact must be rejected, stale, unknown, or research-obligated for affected scopes.

No artifact may silently rely on hidden state.

## Dependency availability

A dependency is available only if it exists and is accessible at the required prefix, epoch, scope, and proof boundary.

Availability may be expressed as:



    Available(p,e,scope,d)



Availability is not freshness.

A stale dependency may be available for audit.

An unavailable dependency blocks proof, replay, or migration use.

## Prefix-relative availability

Dependencies recorded in append-only history are prefix-relative.

If a dependency certificate is appended at prefix `p'`, it is not available at earlier prefix `p`.

A proof at prefix `p` cannot depend on a record appended after `p` unless a later validation record reconstructs the proof at a later prefix.

Prefix ordering is proof-relevant.

## Epoch-relative dependency

A dependency valid at epoch `e` is not automatically valid at epoch `e'`.

Epoch equality, compatibility, migration, re-verification, trusted-boundary evidence, or audit-only policy is required.

Same dependency name across epochs is insufficient.

Dependency records must carry epoch coordinates.

## Scope-relative dependency

Dependencies are scope-relative.

A dependency sufficient for audit may be insufficient for proof.

A dependency sufficient for display may be insufficient for operator action.

A dependency sufficient for quotient replay may be insufficient for raw replay.

The dependency record must include required scope.

## Mode-relative dependency

Dependencies are mode-relative.

A theorem requiring exact mode cannot consume approximate dependency evidence unless its statement is weakened or strengthening evidence exists.

A representative-sensitive theorem cannot consume quotient-only dependencies by default.

A current-use theorem cannot consume audit-only dependencies by default.

Mode requirements must be explicit.

## Dependency status

A dependency has lifecycle status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, or research-obligated.

A dependency with accepted status in one scope may have stale status in another.

Status must be prefix-relative, epoch-relative, and scope-relative.

## Fresh dependency

A dependency is fresh when it is available and accepted for the required epoch, prefix, scope, mode, proof boundary, and replay schema.

Freshness may be expressed as:



    FreshDep(p,e,scope,mode,d)



Freshness is not global.

A dependency can be fresh for audit and stale for proof.

## Stale dependency

A dependency is stale when it remains historically available but no longer satisfies current-use requirements.

Staleness may arise from changed schema, changed theorem statement, changed proof boundary, changed verifier, changed equality relation, changed spectrum predicate, changed replay procedure, changed scope policy, or invalidated subdependency.

Stale dependencies must propagate to dependent artifacts unless a freshness restoration certificate exists.

## Rejected dependency

A rejected dependency cannot discharge obligations.

A dependency may be rejected because its certificate failed, its replay failed, its type is invalid, its epoch is incompatible, its proof boundary is unacceptable, or its required mode is unavailable.

Rejected dependency records remain audit content.

They cannot be consumed as accepted evidence.

## Unknown dependency

An unknown dependency records missing or unresolved evidence.

Unknown is not accepted.

Unknown is not rejected.

Unknown may create research obligations or block downstream proof.

Unknown dependency status must not be treated as approximate success.

## Audit-only dependency

An audit-only dependency supports historical explanation only.

It cannot discharge current proof, replay, frame-construction, authority-mutation, certificate-reuse, or migration obligations unless strengthened.

Audit-only dependencies may remain valuable for provenance and diagnostics.

## Certificate dependency

A certificate may depend on other certificates.

The dependency record must identify statement, subject, verifier, payload reference, result mode, proof boundary, epoch, dependency closure, and replay behavior of each certificate dependency.

A raw proof payload is not a certificate dependency unless accepted as certificate evidence.

## Verifier dependency

A theorem or certificate may depend on a verifier.

Verifier dependency must include verifier identity, version or epoch, trusted boundary, input schema, output schema, proof mode, scope, and replay behavior.

Same verifier name is insufficient.

A changed verifier may stale all certificates depending on it.

## Trusted-boundary dependency

A dependency may be a trusted boundary.

It must identify exactly what the trusted boundary certifies.

A trusted hash boundary supports byte-integrity dependency.

It does not support semantic migration, proof validity, or replay preservation unless those statements are inside the trusted boundary.

Trusted-boundary scope is part of dependency identity.

## Replay dependency

A replay dependency records reliance on a replay target, procedure, schema, content references, dependency closure, verifier calls, comparison relation, and replay result type.

Stored output is not a replay dependency.

A cached value can be a checkpoint dependency only if checkpoint mode is accepted.

## History dependency

A history dependency records reliance on records, prefixes, parent relations, append operations, commitments, views, forks, merges, invalidations, migrations, certificates, or replay manifests.

History dependencies are prefix-sensitive.

A record appended later cannot justify an earlier claim.

Append-only structure must be preserved.

## Migration dependency

A migration dependency records reliance on an epoch, schema, carrier, spectrum, authority, tensor, sheaf, operator, history, certificate, replay, or loss-mode migration.

It must record source epoch, target epoch, migration mode, loss mode, invalidations, certificates, and replay behavior.

A target object alone is not a migration dependency.

## Refinement dependency

A refinement dependency records reliance on refinement index, refinement map, projection, reconstruction, error bound, convergence witness, and certificates.

Refinement dependencies are precision-relative.

They are not migration dependencies unless epoch movement is also involved and certified.

## Equality dependency

An equality dependency records which equality notion is used.

It may be raw equality, framework identity, setoid equality, quotient equality, observable equality, approximate equality, replay equality, audit identity, or certificate identity.

The equality relation itself is dependency data.

Changing equality semantics stales dependent proofs.

## Equivalence dependency

An equivalence dependency records a setoid, quotient relation, observable relation, approximate relation, replay equivalence, audit equivalence, or path equivalence.

It must include laws, congruence where needed, quotient-readiness, representative independence, certificates, epoch, and replay behavior.

A relation name alone is insufficient.

## Scope dependency

A theorem may depend on a scope policy.

If the scope's accepted modes, required modes, consumer policy, proof boundary, or replay requirements change, dependent artifacts may become stale.

Scope dependency must be explicit.

## Proof-mode dependency

A theorem may depend on proof-mode infrastructure.

If the meaning of exact, approximate, quotient, observable, summary, checkpoint, audit-only, unknown, rejected, or research-obligated mode changes, dependent artifacts may stale.

Mode dependency includes retained information, lost information, consumer policy, and replay behavior.

## Status dependency

A theorem or replay claim may depend on lifecycle status.

Status dependency is prefix-relative, epoch-relative, and scope-relative.

A dependency accepted at one prefix may be stale at another.

Status query itself must be replayable.

## Extraction dependency

An extracted verifier or checker depends on extraction boundary, source Lean declarations, target runtime language, proof-erasure policy, input schema, output schema, trusted assumptions, and replay behavior.

Extraction dependency is not proof dependency unless certified.

A Lean proof does not automatically satisfy extraction dependency.

## Application-instantiation dependency

Application instantiation depends on concrete application bindings.

Such dependencies must remain outside the abstract core unless represented abstractly.

If a proof in the core depends on a concrete application constant, the proof-core boundary is violated.

Application-instantiation dependency must be explicit and scoped outside `lean/core/`.

## Dependency graph

Dependency records form a directed graph:



    x-> d



The graph supports transitive closure, invalidation propagation, freshness queries, replay reconstruction, and audit traceability.

Cycles require explicit policy.

A hidden or uncontrolled cycle is inadmissible.

## Acyclic dependency graph

Most proof dependencies should be acyclic.

Acyclicity supports replay and verifier checking.

If cycles are allowed, they must be justified by fixed-point, coinductive, guarded-recursion, staged-proof, or trusted-boundary policy.

Uncertified cycles invalidate dependency closure.

## Dependency cycle

A dependency cycle occurs when an artifact depends on itself directly or indirectly.

This may be invalid unless a declared guarded policy permits it.

A certificate cannot normally certify itself by depending on its own accepted status at the same prefix.

Staged availability must be explicit.

## Dependency closure theorem

The file may define theorem shape:



    ClosedDeps(x,D)



or:



    ClosedDepsFor(x,D,mode,scope)



This theorem states that `D` contains all dependencies required for the declared use.

It must be certified or derivable.

A manually listed dependency set is not closed by assertion.

## Dependency soundness

Dependency soundness states that every dependency in `D` is well-typed, available, and accepted under the required mode and scope.

A closure may be complete but unsound if it contains rejected or stale dependencies.

Soundness must be checked separately where required.

## Dependency completeness

Dependency completeness states that no proof-relevant dependency is missing.

Completeness is stronger than listing known dependencies.

It may require proof-term analysis, verifier analysis, trusted-boundary statements, extraction metadata, replay manifests, or audit records.

Completeness is not inferred from imports alone.

## Dependency minimality

Dependency minimality states that no dependency in `D` is unnecessary for the declared scope.

Minimality is useful but not always required.

A non-minimal closure may remain sound and complete.

Minimality must not be assumed unless certified.

## Dependency invalidation propagation

If dependency `d` is invalidated for scope `s`, then any artifact depending on `d` must be marked stale, invalidated, weakened, unknown, or research-obligated for affected scopes unless an alternative dependency path or freshness certificate exists.

Propagation is graph-based and scope-relative.

It must not be hidden.

## Selective invalidation

Invalidation may affect only certain scopes, modes, epochs, prefixes, or claims.

A dependency invalidated for proof may remain audit-valid.

A quotient dependency invalidated for representative-sensitive use may remain quotient-valid.

Selective invalidation must record scope and mode.

## Dependency replacement

A dependency may be replaced by a successor dependency.

Replacement is not mutation.

It is a status transition or supersession record.

The old dependency remains audit content.

Dependent artifacts must record whether they consume the old dependency, the successor, or a migrated relation between them.

## Dependency supersession

Supersession records that a later dependency should be used for a declared scope.

Supersession does not delete the earlier dependency.

It does not prove the successor satisfies all obligations unless the successor is accepted for the required scope and mode.

## Dependency migration

A dependency may migrate across epochs.

Migration must preserve dependency identity, target, mode, scope, status, proof boundary, certificates, invalidation behavior, and replay behavior, or declare a weaker loss mode.

Same dependency id at target epoch is insufficient.

## Dependency refinement

A dependency may refine by becoming more precise, adding proof strength, narrowing scope, sharpening modes, reducing error bounds, or improving replay detail.

Refinement is not migration.

A refined dependency must preserve or explicitly relate to the original dependency.

## Dependency freshness restoration

A stale dependency may become fresh again through re-verification, migration, supersession, repair, proof-boundary restoration, replay restoration, or accepted freshness certificate.

Restoration must be recorded.

Freshness cannot be restored by changing a status label alone.

## Hidden dependency example discipline

If a theorem uses a metric, that metric is a dependency.

If a replay claim uses a decoder, that decoder is a dependency.

If a certificate uses a verifier, that verifier is a dependency.

If a migration uses a carrier migration, that carrier migration is a dependency.

If a proof uses a trusted boundary, that boundary is a dependency.

Unlisted use is hidden dependency.

## Dependency and imports

Lean imports are dependencies, but not all dependencies are imports.

A theorem may depend on an imported definition, a trusted boundary, a framework history prefix, a certificate record, an external verifier, or an extraction policy.

Import graphs are insufficient for framework dependency closure.

## Dependency and proof terms

A proof term may reveal theorem dependencies.

But erased proofs, trusted boundaries, axioms, automation, and extracted checkers may hide dependencies unless recorded.

The dependency record must capture proof-relevant facts needed by framework replay.

## Dependency and axioms

If a proof depends on an axiom, the axiom is a dependency.

The axiom's statement, scope, proof boundary, epoch, and trusted status must be recorded.

An axiom dependency may be acceptable only under a declared trusted boundary.

Unrecorded axioms are hidden dependencies.

## Dependency and theorem names

A theorem name is not a complete dependency.

The dependency must include theorem statement, module, imports, proof object or trusted boundary, mode, scope, epoch, and replay behavior.

The same theorem name after file changes may denote a different dependency.

## Dependency and raw payloads

A raw proof payload may be a dependency of a certificate record.

It is not accepted evidence unless verifier result or trusted boundary connects it to a statement.

Payload dependency must include encoding, content reference, schema, proof boundary, epoch, and replay behavior.

## Dependency and content addresses

A content address may be a dependency.

It certifies byte identity only under hash and encoding assumptions.

Semantic dependency requires decoded object, schema, certificates, and replay behavior.

Hash equality is not dependency semantic equality.

## Dependency and proof boundaries

Proof boundary is a dependency.

Changing the Lean kernel assumption, trusted verifier, finite enumerator, canonical decoder, extraction boundary, replay engine, or archive policy may stale dependent artifacts.

Proof-boundary dependency must be explicit.

## Dependency and epochs

Epoch parameters are dependencies when theorem meaning depends on them.

A theorem over epoch `e` cannot be used over epoch `e'` unless epoch equality, compatibility, migration, or audit-only policy is certified.

Epoch dependency is distinct from universe dependency.

## Dependency and scopes

Scope policies are dependencies when admissibility depends on consumer context.

Changing accepted modes or required modes for a scope may stale prior claims.

Scope dependency is proof-relevant.

## Dependency and modes

Proof-mode infrastructure is a dependency when a theorem relies on mode acceptance, weakening, strengthening, composition, or retained/lost information.

Changing mode interpretation may stale dependent records.

Mode dependency must be explicit.

## Dependency and statuses

Status derivation rules are dependencies for claims about acceptance, rejection, staleness, migration, supersession, invalidation, audit-only status, or research obligation.

Changing status precedence or transition rules may stale dependent status claims.

## Dependency and audit

Audit references are dependencies for traceability claims.

A theorem may remain mathematically valid while its audit link becomes stale or broken.

Audit dependency is distinct from proof dependency, but both may be required by a consumer.

## Dependency equality

Two dependency records are equal only if their id, kind, subject, target, mode, scope, prefix, epoch, status, availability, nested dependencies, certificates, invalidations, audit references, and replay behavior coincide.

Same target name is insufficient.

Same imported module is insufficient.

Same content hash is insufficient.

## Dependency equivalence

Dependency records may be equivalent under declared relation.

Examples include proof-irrelevant dependency equivalence, replay equivalence, audit equivalence, quotient equivalence, observable equivalence, summary equivalence, checkpoint equivalence, or migrated-dependency equivalence.

Equivalence is not equality.

Consumers must state which dependency equivalence they accept.

## Dependency path coherence

If two dependency paths justify the same artifact, path coherence may be required.

For example, two migration paths may give two target dependencies.

Without path coherence, the dependency path is part of artifact identity.

Path-coherence certificates must record paths, modes, scopes, epochs, and replay behavior.

## Dependency certificates

Dependency certificates may prove:



    DependsOn(x,d)





    ClosedDeps(x,D)





    FreshDep(p,e,s,m,d)





    Available(p,e,s,d)





    HiddenDependencyFree(x,D)





    Invalidates(d,x,s)



or closure, soundness, completeness, minimality, freshness, availability, invalidation propagation, migration, refinement, supersession, replay, and path-coherence dependency claims.

Only accepted certificates discharge dependency obligations.

## Epoch rule

`DependencyRecord.lean` artifacts are epoch-indexed by:

- dependency-record-interface epoch;
- dependency-kind epoch;
- dependency-identity epoch;
- dependency-closure epoch;
- freshness-policy epoch;
- availability-policy epoch;
- prefix-parameter epoch;
- scope epoch;
- proof-mode epoch;
- status epoch;
- certificate-schema epoch;
- invalidation-policy epoch;
- proof-boundary epoch;
- replay-schema epoch.

Changing any component may stale downstream dependency claims.

The old dependency artifact remains audit content.

## History relation

A history record depending on `DependencyRecord.lean` must record:

1. source file identity;
2. declaration identity;
3. dependency id;
4. dependency kind;
5. subject;
6. target;
7. required mode;
8. required scope;
9. prefix and epoch;
10. status and availability;
11. dependency closure;
12. certificate references;
13. invalidation behavior;
14. proof boundary;
15. replay data;
16. audit reference.

The dependency name alone is insufficient.

## Replay rule

Replay of `DependencyRecord.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean`, `ObjectInterface.lean`, `RelationSchema.lean`, `Equality.lean`, `Equivalence.lean`, `ProofMode.lean`, `Scope.lean`, and `Status.lean`;
3. checking dependency-kind declarations;
4. checking dependency identity schemas;
5. checking direct and transitive dependency definitions;
6. checking closure, freshness, availability, hidden-dependency, and invalidation-propagation rules;
7. checking prefix-relative and epoch-relative dependency behavior;
8. checking that no concrete runtime or application constants are introduced;
9. checking proof objects or trusted boundaries where present;
10. checking certificate and audit metadata.

If any step fails, downstream dependency claims are not replay-admissible.

## Runtime representation

`DependencyRecord.lean` may lower to:

- Lean dependency-record declarations;
- dependency graph schemas;
- closure-checker specifications;
- freshness metadata;
- invalidation-propagation descriptors;
- verifier-facing dependency manifests;
- audit references;
- replay dependency descriptors.

Runtime representation is not dependency identity.

Identity depends on subject, target, kind, mode, scope, prefix, epoch, status, dependencies, certificates, invalidations, proof boundary, and replay behavior.

## Non-collapse theorem

Let two dependency records point to the same target artifact.

This does not imply the dependency records are equal.

They collapse only if their subjects, dependency kinds, modes, scopes, prefixes, epochs, statuses, availability conditions, nested closures, certificates, invalidations, proof boundaries, audit references, and replay behavior coincide.

Thus target equality is insufficient for dependency-record identity.

## Proof obligation

`DependencyRecord.lean` is admissible only if the framework can certify:

1. dependency identities are typed;
2. dependency kinds are explicit;
3. direct and transitive dependencies are distinct;
4. dependency closure is explicit;
5. closure is scope-relative and mode-relative;
6. freshness is prefix-relative, epoch-relative, and scope-relative;
7. hidden dependencies are rejected or research-obligated;
8. certificate dependencies are distinguished from raw payloads;
9. invalidation propagation is explicit;
10. dependency cycles require declared policy;
11. concrete runtime and application constants are excluded;
12. replay can reconstruct dependency declarations and dependency graphs.

## Exclusion rule

`DependencyRecord.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application values, runtime module graphs, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract dependency-record infrastructure.

## Commitment rule

`DependencyRecord.lean` may define dependency identities, closures, freshness, and invalidation propagation.

It cannot make hidden dependencies acceptable.

It cannot make stale dependencies fresh by label change.

It cannot make raw payloads accepted certificate dependencies.

It cannot treat imports as complete dependency closure by default.

It cannot infer defaults from `none` or `null`.

It cannot make stored outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
