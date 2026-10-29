-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant300ec7ad00147be682b75818b3342eb4ae43ffd48a97440e10e213d0d262036a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"300ec7ad00147be682b75818b3342eb4ae43ffd48a97440e10e213d0d262036a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variant300ec7ad00147be682b75818b3342eb4ae43ffd48a97440e10e213d0d262036a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"300ec7ad00147be682b75818b3342eb4ae43ffd48a97440e10e213d0d262036a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/object/ObjectDependency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# ObjectDependency.lean

## Role

`ObjectDependency.lean` defines dependency infrastructure for categorical objects.

It records direct dependencies, transitive dependencies, dependency closure, freshness, availability, hidden-dependency rejection, dependency equality, dependency equivalence, invalidation propagation, certificates, epochs, scopes, proof modes, audit references, and replay behavior for objects in the Lean category layer.

An object dependency is not a Lean import alone.

It is not a file path.

It is not a runtime module edge.

It is proof-relevant information required to use, replay, certify, migrate, refine, or invalidate a categorical object.

## Core principle

A categorical object is admissible only relative to its dependencies.

For object `A`, dependency structure may be expressed as:



    DependsOn(A,d)



and closure as:



    ClosedObjectDeps(A,D,mode,scope)



where `D` contains all proof-relevant dependencies needed to consume `A` under the declared mode and scope.

If a dependency is hidden, stale, rejected, unavailable, or invalidated, the object's use must be rejected, weakened, marked unknown, marked stale, or made research-obligated for affected consumers.

## Formal shape

An object-dependency record has schematic form:



    ObjectDependency=(object,target,kind,direction,mode,scope,prefix,epoch,status,availability,deps,certs,invalidations,audit,replay)



where:

- `object` is the categorical object carrying the dependency;
- `target` is the depended-on artifact;
- `kind` classifies the dependency;
- `direction` records direct, transitive, inherited, migrated, refined, audit, replay, or certificate dependency;
- `mode` records required proof mode;
- `scope` records consumer scope;
- `prefix` records history-relative availability;
- `epoch` records semantic coordinate;
- `status` records lifecycle state of the dependency;
- `availability` records whether the dependency is available at the prefix and epoch;
- `deps` records nested dependency closure;
- `certs` records accepted evidence;
- `invalidations` records invalidation propagation;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record is an obligation.

It does not prove that the dependency is fresh or sufficient unless certified.

## Direct dependency

A direct dependency is an immediate dependency of an object.

Examples include object kind, categorical context, type witness, equality relation, equivalence relation, admissibility predicate, proof-mode policy, scope policy, status rule, epoch parameter, certificate schema, trusted boundary, audit reference, or replay parameter.

A direct dependency has form:



    DirectDependsOn(A,d)



Direct dependency is not dependency closure.

It is the first layer of the dependency graph.

## Transitive dependency

A transitive dependency is reached through dependency expansion.

If:



    DirectDependsOn(A,d_1)



and:



    DependsOn(d_1,d_2)



then:



    TransDependsOn(A,d_2)



Transitive dependencies are proof-relevant.

If a transitive dependency becomes stale, invalidation may propagate to the categorical object.

## Dependency closure

Dependency closure states that a set `D` contains all dependencies required for a declared use:



    ClosedObjectDeps(A,D,mode,scope)



Closure is mode-sensitive and scope-sensitive.

A closure sufficient for audit may be insufficient for proof.

A closure sufficient for display may be insufficient for morphism endpoint use.

A closure sufficient for quotient mode may be insufficient for exact mode.

## Closure completeness

Closure completeness means no proof-relevant dependency is missing.

Completeness is stronger than listing known dependencies.

It may require proof-term analysis, certificate schema analysis, replay manifest analysis, trusted-boundary declarations, and object-admissibility requirements.

Completeness is not inferred from Lean imports alone.

## Closure soundness

Closure soundness means every dependency in the closure is well-typed, available, fresh, and accepted for the required mode and scope.

A dependency set can be complete but unsound if it includes stale or rejected dependencies.

Soundness and completeness are distinct obligations.

## Minimal closure

A minimal dependency closure contains only required dependencies.

Minimality is useful for audit precision and invalidation precision.

Minimality is not always required.

An overapproximate closure may be admissible if the consumer accepts excess invalidation risk.

Minimality must not be assumed without certificate.

## Overapproximate closure

An overapproximate closure includes all required dependencies plus extra dependencies.

It may remain sound if every listed dependency is fresh and accepted.

It may cause unnecessary staleness when an irrelevant extra dependency is invalidated.

The record must distinguish overapproximate closure from minimal closure.

## Hidden dependency rejection

A hidden dependency is a proof-relevant dependency omitted from closure.

Hidden dependencies are inadmissible for proof, replay, migration, refinement, and certificate reuse.

If an object's admissibility, equality, equivalence, or replay depends on an unrecorded artifact, then the object claim must be rejected, stale, unknown, or research-obligated.

No object may rely on hidden state.

## Dependency kind

Object dependencies may include:

- kind dependency;
- context dependency;
- type-witness dependency;
- universe dependency;
- equality dependency;
- equivalence dependency;
- admissibility dependency;
- proof-mode dependency;
- scope dependency;
- status dependency;
- epoch dependency;
- certificate dependency;
- trusted-boundary dependency;
- proof-boundary dependency;
- audit dependency;
- replay dependency;
- migration dependency;
- refinement dependency;
- application-instantiation dependency.

Each kind has its own replay and invalidation behavior.

## Kind dependency

Object kind is a dependency.

If the kind taxonomy changes, an object classified under the old taxonomy may become stale.

A carrier-kind tag, sheaf-kind tag, history-kind tag, or application-kind tag must be interpreted under the correct object-kind epoch.

Kind dependency does not supply specialized semantics.

## Context dependency

Categorical context is a dependency.

If the category, quotient category, path category, functor source, functor target, or local categorical context changes, object identity and admissibility may stale.

Context equality must be certified where object identity or morphism typing depends on it.

## Type-witness dependency

The Lean-side type witness is a dependency.

If the type witness changes, object equality, morphism typing, functoriality, naturality, and replay may stale.

A runtime payload or hash cannot replace the type witness unless decoding and typing are certified.

## Equality dependency

Object equality infrastructure is a dependency.

If equality relation, equality mode, substitution law, congruence law, or proof boundary changes, downstream object claims may stale.

Id equality, value equality, identity equality, and certificate-aware equality must remain distinct.

## Equivalence dependency

Object equivalence infrastructure is a dependency.

If the relation, laws, domain, quotient policy, observable map, approximate comparison, representative-independence theorem, or congruence theorem changes, quotient or equivalence-based object use may stale.

A relation name alone is insufficient as dependency evidence.

## Admissibility dependency

Object admissibility policy is a dependency.

If endpoint usability, identity-morphism usability, functor-object usability, proof usability, audit usability, or replay usability rules change, dependent object claims may stale.

Admissibility is not construction and must remain dependency-aware.

## Proof-mode dependency

Object use may depend on proof-mode definitions.

Exact, quotient, observable, approximate, summary, checkpoint, partial, rejected, unknown, audit-only, trusted-boundary, and research-obligated modes have distinct admissibility consequences.

Changing mode interpretation may stale object dependencies.

## Scope dependency

Object use is scope-relative.

If a scope's required modes, accepted modes, consumer policy, proof boundary, or replay requirements change, object admissibility and equality claims may stale.

Scope dependency must be explicit where a theorem consumes object evidence.

## Status dependency

Object status is a dependency.

A categorical object may be accepted at one prefix and stale at another.

A status derivation rule or precedence policy may affect whether an object is usable.

Status dependencies must include prefix, epoch, scope, mode, invalidations, and certificates.

## Epoch dependency

Epoch is a dependency of object identity and admissibility.

An object at epoch `e` is not automatically the same or admissible at epoch `e'`.

Epoch equality, compatibility, migration, freshness, or audit-only policy must be cited where cross-epoch use occurs.

Epoch movement is not universe lifting.

## Certificate dependency

Object claims may depend on certificates.

Certificates may prove object well-formedness, identity, equality, equivalence, admissibility, freshness, migration, refinement, invalidation, audit linkage, or replay admissibility.

A raw payload is not a certificate dependency unless accepted by a verifier or trusted boundary for a typed statement.

## Trusted-boundary dependency

An object claim may depend on a trusted boundary.

The boundary must declare the exact trusted statement.

A trusted decoder may certify typed decoding.

A trusted hash may certify byte integrity.

A trusted archive may certify retrieval.

None of these automatically certifies object admissibility unless the trusted statement includes it.

## Proof-boundary dependency

Proof boundary is a dependency.

Changing Lean kernel assumptions, axioms, verifiers, decoders, hash assumptions, finite enumerators, replay engines, extraction boundaries, or trusted archives may stale object claims.

Proof-boundary dependencies must be explicit in object certificates and replay.

## Audit dependency

Audit references are dependencies for traceability-sensitive claims.

An object may be mathematically valid while its audit link is stale.

An audit link may support provenance but not proof.

Audit dependency must be distinguished from proof dependency.

## Replay dependency

Replay parameters are dependencies of object reconstruction.

Replay dependency includes target, procedure, result carrier, comparison relation, manifest, dependency closure, certificates, epoch, invalidation policy, and proof boundary.

Stored object labels are not replay dependencies.

Cached records are not replay evidence.

## Migration dependency

An object may depend on migration evidence when used across epochs.

The dependency must record source object, target object, source epoch, target epoch, migration mode, loss mode, invalidations, certificates, and replay preservation.

A target object with the same id is not migration evidence.

## Refinement dependency

An object may depend on refinement evidence when used across precision or representation levels.

The dependency must record refinement index, projection, reconstruction, error bound, convergence witness, certificates, and replay behavior.

Refinement dependency is distinct from migration dependency.

## Application-instantiation dependency

Application instantiation may supply concrete objects at the application boundary.

Such dependencies must remain outside the abstract core.

If an abstract object proof depends on a concrete application constant, then the proof-core boundary is violated unless the dependency is explicitly scoped as application instantiation outside the core.

## Dependency availability

A dependency is available when it exists and can be reconstructed at the required prefix, epoch, and scope.

Availability is not freshness.

An available dependency may be stale, rejected, unknown, audit-only, superseded, or invalidated.

Availability must not be consumed as acceptance.

## Dependency freshness

A dependency is fresh when it is available, accepted, uninvalidated, and compatible with required mode, scope, prefix, epoch, proof boundary, trusted boundary, and replay schema.

Freshness may be expressed as:



    FreshObjectDep(A,d,p,e,mode,scope)



Freshness is not global.

A dependency may be fresh for audit and stale for proof.

## Prefix-relative dependency

Object dependencies recorded in history are prefix-relative.

A dependency certificate appended after prefix `p` cannot justify an object claim at prefix `p`.

Object-dependency replay must respect append-only prefix order.

Later acceptance, invalidation, or supersession does not rewrite earlier dependency status.

## Epoch-relative dependency

A dependency valid at epoch `e` is not automatically valid at epoch `e'`.

Cross-epoch dependency use requires dependency migration, re-verification, compatibility, or audit-only policy.

Same dependency name across epochs is insufficient.

## Scope-relative dependency

A dependency may be fresh for one scope and stale for another.

For example, a display dependency may be insufficient for proof.

An audit dependency may be insufficient for frame construction.

A quotient dependency may be insufficient for representative-sensitive endpoint use.

The required scope must be part of the dependency record.

## Mode-relative dependency

A dependency may provide exact, quotient, observable, approximate, summary, checkpoint, partial, rejected, unknown, audit-only, or trusted-boundary evidence.

The object consumer must accept that mode.

A mode mismatch rejects, weakens, or research-obligates the object use.

## Dependency invalidation propagation

If a dependency is invalidated for a mode and scope, every object relying on it must become stale, invalidated, weakened, unknown, rejected, or research-obligated for affected consumers unless alternative fresh evidence exists.

Propagation is graph-based.

Propagation must respect prefix, epoch, scope, and mode.

## Selective invalidation

Invalidation may be selective.

A dependency invalidated for proof may remain audit-valid.

A quotient dependency invalidated for representative-sensitive use may remain quotient-valid.

An observable dependency invalidated for hidden-state claims may remain display-valid.

Selective invalidation must record affected scope and mode.

## Dependency replacement

A dependency may be replaced by a successor.

Replacement is not mutation.

The old dependency remains audit content.

The object must record whether it depends on the old dependency, the successor, or a migration or supersession relation between them.

## Dependency supersession

Supersession records that a newer dependency should be used for a declared scope.

Supersession does not erase the old dependency.

The successor must itself be accepted and fresh for the scope.

Dependent object claims must check whether supersession changes their status.

## Dependency migration

Object dependencies may migrate across epochs.

Migration must preserve or explicitly transform dependency target, kind, mode, scope, prefix relation, epoch relation, status, availability, nested closure, certificates, invalidations, audit references, and replay behavior.

Same target name at the new epoch is insufficient.

## Dependency refinement

Object dependencies may refine by adding detail, improving closure, reducing trust, sharpening scope, or strengthening certificates.

Refinement is not migration.

If a dependency changes epoch and precision, both migration and refinement evidence are required.

## Dependency equality

Two object-dependency records are equal only if object, target, kind, direction, mode, scope, prefix, epoch, status, availability, nested dependencies, certificates, invalidations, audit references, proof boundaries, trusted boundaries, and replay behavior coincide.

Same target artifact is insufficient.

Same dependency name is insufficient.

Same imported module is insufficient.

## Dependency equivalence

Object dependencies may be equivalent under declared relation.

Examples include proof-irrelevant dependency equivalence, migrated dependency equivalence, replay equivalence, audit equivalence, quotient equivalence, observable equivalence, summary equivalence, or checkpoint equivalence.

Equivalence is not equality.

Consumers must state which dependency equivalence they accept.

## Dependency path coherence

If multiple dependency paths justify the same object claim, path coherence may be required.

Without path coherence, dependency path becomes part of object identity, admissibility, and replay.

Path-coherence certificates must record paths, modes, scopes, epochs, dependencies, certificates, and replay behavior.

## Dependency cycles

A dependency cycle occurs when an object depends on itself directly or indirectly.

Cycles are normally inadmissible unless a guarded, staged, fixed-point, coinductive, or trusted-boundary policy permits them.

A certificate cannot generally certify its own availability at the same prefix.

Cycle policy must be explicit.

## Dependency and morphisms

Morphism typing depends on endpoint object dependencies.

If an endpoint dependency is stale, rejected, unknown, or weaker than required, the morphism claim must be stale, rejected, unknown, weakened, or research-obligated.

Morphism composition must include dependencies of all endpoint objects and intermediate compatibility evidence.

## Dependency and identity morphisms

Identity morphism formation depends on object dependency freshness.



    id_A



is admissible only when `A`'s dependencies satisfy identity-morphism scope.

A repeated object id does not bypass dependency checks.

A no-op runtime operation does not satisfy dependency closure.

## Dependency and functors

Functor object maps depend on source object dependencies and target object dependencies.

Functoriality also depends on preservation of dependency closure or declared weakening.

A functor cannot ignore dependencies of objects it maps.

Dependency preservation is part of functorial proof obligations where used.

## Dependency and naturality

Naturality squares depend on object dependencies, functor dependencies, component morphism dependencies, and morphism dependencies.

A stale dependency of the indexed object may stale the naturality square.

Naturality cannot be replayed if object dependencies are hidden.

## Dependency and quotienting

Quotient object use depends on quotient relation, representative independence, congruence, quotient readiness, object dependencies, and replay behavior.

A quotient class is not dependency-free.

Representative-sensitive consumers require representative dependencies or recovery certificates.

## Dependency and applications

Application-specific dependency records belong outside this abstract file.

`ObjectDependency.lean` may define generic hooks for application-instantiation dependencies.

It must not define concrete application dependency values, bitmap dimensions, matrix dimensions, token values, hash constants, Feistel constants, UI values, or runtime payloads.

## Dependency and `none`

No object-dependency rule may treat `none`, `null`, missing fields, or absent runtime bindings as a mathematical default.

Absence may itself be a data-level dependency state.

Authority-specific uninstalled-versus-installed dependency semantics belong in the authority layer.

Dependency absence cannot install defaults.

## Dependency certificates

Object-dependency certificates may prove:



    DirectDependsOn(A,d)





    TransDependsOn(A,d)





    ClosedObjectDeps(A,D,mode,scope)





    FreshObjectDep(A,d,p,e,mode,scope)





    ObjectDepAvailable(A,d,p,e,scope)





    HiddenObjectDepFree(A,D)





    ObjectDepInvalidates(d,A,scope)



or dependency soundness, completeness, minimality, equality, equivalence, migration, refinement, supersession, replacement, path coherence, audit, and replay-admissibility claims.

Only accepted certificates discharge dependency obligations.

## Epoch rule

`ObjectDependency.lean` artifacts are epoch-indexed by:

- object-dependency schema epoch;
- dependency-kind epoch;
- dependency-closure epoch;
- freshness-policy epoch;
- availability-policy epoch;
- hidden-dependency policy epoch;
- invalidation-propagation epoch;
- proof-mode epoch;
- scope epoch;
- status epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream object-dependency claims.

The old dependency artifact remains audit content.

## History relation

A history record depending on `ObjectDependency.lean` must record:

1. source file identity;
2. declaration identity;
3. categorical object;
4. dependency target;
5. dependency kind;
6. dependency direction;
7. mode and scope;
8. prefix and epoch;
9. status and availability;
10. dependency closure;
11. certificates;
12. invalidation behavior;
13. proof boundary;
14. trusted boundary where used;
15. audit reference;
16. replay data.

The dependency target name alone is insufficient.

## Replay rule

Replay of `ObjectDependency.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, `ObjectKind.lean`, `ObjectIdentity.lean`, `ObjectEquality.lean`, `ObjectEquivalence.lean`, and `ObjectAdmissibility.lean`;
3. reconstructing object-dependency record declarations;
4. reconstructing direct, transitive, closed, minimal, overapproximate, migrated, refined, audit, replay, and certificate dependencies;
5. checking closure, soundness, completeness, freshness, availability, hidden-dependency rejection, invalidation propagation, replacement, supersession, and cycle policy;
6. checking proof objects or trusted boundaries where present;
7. checking that no runtime code or application constants are introduced;
8. checking dependency closure and audit metadata.

If any step fails, downstream object-dependency claims are not replay-admissible.

## Runtime representation

`ObjectDependency.lean` may lower to:

- Lean dependency predicates;
- dependency-record declarations;
- dependency-closure theorem metadata;
- freshness-checker metadata;
- invalidation-propagation metadata;
- dependency certificate descriptors;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not dependency identity.

Dependency identity depends on object, target, kind, mode, scope, prefix, epoch, status, nested closure, certificates, invalidations, proof boundary, trusted boundary, audit reference, and replay behavior.

## Non-collapse theorem

Let two categorical objects depend on artifacts with the same name.

This does not imply the dependencies are equal.

They collapse only if target identity, dependency kind, mode, scope, prefix, epoch, status, availability, nested closure, certificates, invalidations, proof boundary, trusted boundary, audit reference, and replay behavior coincide.

Thus dependency-name equality is insufficient for object-dependency identity.

## Proof obligation

`ObjectDependency.lean` is admissible only if the framework can certify:

1. object dependencies are typed;
2. direct and transitive dependencies are distinct;
3. closure is explicit;
4. soundness and completeness are distinct;
5. freshness and availability are distinct;
6. hidden dependencies are rejected or research-obligated;
7. invalidation propagation is explicit;
8. dependencies are prefix-, epoch-, mode-, and scope-relative;
9. dependency certificates are distinguished from raw payloads;
10. dependency cycles require declared policy;
11. runtime imports and application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`ObjectDependency.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime dependency graphs, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object-dependency infrastructure.

## Commitment rule

`ObjectDependency.lean` may define dependency records, closure, freshness, availability, and invalidation propagation for categorical objects.

It cannot make imports complete dependency closure.

It cannot allow hidden dependencies.

It cannot make stale dependencies fresh by label change.

It cannot make raw payloads dependency certificates.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant300ec7ad00147be682b75818b3342eb4ae43ffd48a97440e10e213d0d262036a

