# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjectAudit.Variantb862569c7e4c5676075bf7ab51909d80111995e544d4b4c3af665f360d223ef5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f5916913f82565b75642d7c4be162701ae0c4a6` · SHA-256 `b862569c7e4c5676075bf7ab51909d80111995e544d4b4c3af665f360d223ef5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# ObjectAudit.lean

## Role

`ObjectAudit.lean` defines audit infrastructure for categorical objects.

It records typed audit links between categorical objects and framework records, history prefixes, certificate records, replay manifests, trusted boundaries, dependency records, epoch records, scope records, status records, invalidation records, migration nodes, refinement nodes, verifier exports, extraction artifacts, and application-instantiation boundaries.

An object audit link is not object identity.

It is not proof.

It is not mutation.

It is not replay evidence.

It is traceability metadata that supports reconstruction, provenance, diagnostics, and audit queries.

## Core principle

An audit link explains how a categorical object is connected to framework history or proof artifacts.

It does not establish the object's mathematical validity.

It does not establish object equality.

It does not establish object admissibility.

It does not install authority state.

It does not append records.

It does not certify replay.

Every proof use of an audited object must still check identity, admissibility, dependencies, certificates, epochs, proof boundaries, trusted boundaries, statuses, invalidations, and replay behavior.

## Formal shape

An object-audit record has schematic form:



    ObjectAudit=(object,sourceArtifact,targetArtifact,linkKind,prefix,epoch,scope,status,mode,deps,certs,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `object` is the categorical object being audited;
- `sourceArtifact` identifies the Lean-side source artifact;
- `targetArtifact` identifies the framework-side audit target;
- `linkKind` classifies the audit relation;
- `prefix` records history-relative availability;
- `epoch` records semantic coordinates;
- `scope` records consumer context;
- `status` records lifecycle state of the link;
- `mode` records proof or audit mode;
- `deps` records dependency closure;
- `certs` records accepted evidence for the audit link where required;
- `invalidations` records stale or blocking audit effects;
- `proofBoundary` records proof assumptions where relevant;
- `trustedBoundary` records trusted components where used;
- `audit` records higher-order traceability;
- `replay` records reconstruction behavior.

The record links the object to audit structure.

It does not prove the linked object claim.

## Source artifact

The source artifact may be:

- categorical object declaration;
- object identity record;
- object kind record;
- object equality theorem;
- object equivalence theorem;
- object admissibility theorem;
- object dependency record;
- object epoch record;
- object replay parameter;
- object certificate;
- Lean theorem;
- proof object;
- verifier export;
- extraction artifact.

The source must be typed.

A source name alone is insufficient.

## Target artifact

The target artifact may be:

- framework history record;
- framework history prefix;
- certificate record;
- replay manifest;
- trusted-boundary record;
- dependency record;
- status record;
- invalidation record;
- migration node;
- refinement node;
- authority mutation record;
- frame record;
- verifier export record;
- extraction record;
- application-instantiation record.

The target must be typed and, when historical, prefix-relative.

A target id alone is insufficient.

## Link kind

The link kind classifies the audit relation.

Possible link kinds include:

- records;
- states;
- witnesses;
- depends-on;
- certifies-reference;
- replays-reference;
- migrates-reference;
- refines-reference;
- invalidates-reference;
- supersedes-reference;
- trusts-reference;
- exports-reference;
- extracts-reference;
- displays-reference;
- explains-reference;
- instantiates-reference.

The link kind determines required fields.

A generic untyped audit link is inadmissible.

## Audit is not identity

An audit link to object `A` does not establish object identity.

For example:



    AuditLinked(A,r)



does not imply:



    ObjectIdentity(A)



or:



    ObjectIdentityEq(A,B)



unless a separate accepted certificate states that the audit relation is faithful for the required identity claim.

Traceability is not identity.

## Audit is not equality

An audit link from two objects to the same target artifact does not prove object equality.

Two objects may share an audit record while differing by context, type witness, epoch, dependencies, certificates, proof boundary, trusted boundary, status, or replay behavior.

Audit equality is weaker than object equality.

Exact object equality requires explicit equality evidence.

## Audit is not equivalence

An audit link may support audit equivalence, but it does not establish mathematical equivalence.

Objects linked to the same history prefix may be audit-related while not quotient-equivalent, observable-equivalent, replay-equivalent, or exact-equal.

Any use of audit relation as object equivalence requires a certificate naming the relation, mode, scope, dependencies, epoch, and replay behavior.

## Audit is not admissibility

An audited object may still be inadmissible.

Audit links do not establish:



    ObjectAdmissible(A,mode,scope)



Admissibility requires well-formedness, identity evidence, dependency freshness, accepted status, certificate support, proof-boundary validity, trusted-boundary containment, epoch freshness, no blocking invalidations, and replay admissibility.

Audit may be one dependency of admissibility.

It is not the admissibility proof.

## Audit is not proof

An audit link to a Lean theorem or certificate schema does not prove the theorem's statement.

Proof requires a proof object, verifier result, accepted certificate, or trusted-boundary statement.

The audit link records where the proof-related artifact is located or how it relates to framework history.

It does not discharge the proof obligation.

## Audit is not mutation

An object audit link cannot mutate history.

It cannot append a record.

It cannot change object status.

It cannot install an authority.

It cannot update a certificate.

It cannot commit a frame.

It cannot invalidate an artifact by itself.

Mutation and invalidation require framework history records or accepted status transitions.

## Audit is not replay evidence

An audit link to a replay manifest does not prove replay.

Replay requires target, procedure, schemas, content references, dependencies, verifier calls, comparison relation, result carrier, certificates, epoch, mode, scope, and invalidation behavior.

Audit may locate the replay manifest.

It does not make stored output replay evidence.

## Typed audit link

Every object audit link must be typed.

It must record:

- source artifact type;
- target artifact type;
- categorical object identity;
- link kind;
- prefix;
- epoch;
- scope;
- mode;
- status;
- dependencies;
- certificates;
- proof boundary;
- trusted boundary;
- replay metadata.

Untyped names, strings, labels, file paths, hashes, or runtime pointers are insufficient.

## Prefix-relative audit

Object audit links to history artifacts are prefix-relative.

If an audit target is appended at prefix `p'`, the link cannot be available at prefix `p` unless `ppreceq p'` is handled by a later query or record.

Audit availability must respect append-only history.

Audit links do not rewrite earlier prefixes.

## Epoch-relative audit

Object audit links are epoch-relative.

A link between a source object at epoch `e` and a target artifact at epoch `e'` must record both epochs and their relation.

Cross-epoch audit may be exact, migrated, quotient, observable, approximate, audit-only, or rejected.

Same object label across epochs is insufficient.

## Scope-relative audit

Object audit links are scope-relative.

A link may be valid for audit explanation but not for proof.

It may be valid for display provenance but not for morphism endpoint use.

It may be valid for verifier export traceability but not for extraction correctness.

Scope must be explicit.

## Status-relative audit

Object audit links have lifecycle status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, audit-only, and research-obligated.

An accepted audit link means the traceability relation is accepted for the declared scope.

It does not mean the object claim is accepted.

## Mode-sensitive audit

Object audit links carry mode.

Modes may include exact audit, quotient audit, observable audit, approximate audit, summary audit, checkpoint audit, partial audit, audit-only, trusted-boundary audit, rejected audit, unknown audit, or research-obligated audit.

The mode determines retained and lost traceability information.

A summary audit link cannot support full provenance unless summary sufficiency is certified.

## Object-to-record audit

An object-to-record audit link connects a categorical object to a framework history record.

It must record record kind, payload reference, prefix, parent relation where relevant, dependencies, status, epoch, and replay behavior.

This link does not prove the object.

It only says that the record is the audit target for the object claim or declaration.

## Object-to-prefix audit

An object-to-prefix audit link connects a categorical object to a history prefix.

It may support prefix-relative availability or status derivation.

It does not prove that the object is accepted at the prefix unless status and certificate derivations are included.

A prefix link is not object freshness by itself.

## Object-to-certificate audit

An object-to-certificate audit link connects a categorical object to a certificate record.

It must preserve statement, subject, verifier, payload reference, result, mode, scope, dependencies, proof boundary, trusted boundary, epoch, status, invalidations, and replay behavior.

The audit link is not the certificate.

It does not make the certificate accepted.

## Object-to-replay audit

An object-to-replay audit link connects a categorical object to a replay manifest or replay theorem.

It must preserve replay target, procedure, schemas, content references, dependency closure, verifier calls, comparison relation, result carrier, mode, scope, epoch, and invalidation behavior.

The link is not replay.

It does not validate stored outputs.

## Object-to-trusted-boundary audit

An object-to-trusted-boundary audit link connects a categorical object claim to a trusted boundary.

It must record trusted component, trusted statement, assumptions, subject, mode, scope, dependencies, epoch, status, invalidations, proof boundary, and replay behavior.

The audit link does not expand the trusted statement.

Boundary containment still must be checked.

## Object-to-dependency audit

An object-to-dependency audit link connects a categorical object to its dependency record.

It must record dependency kind, target, required mode, required scope, prefix, epoch, status, availability, nested closure, certificates, invalidations, proof boundary, trusted boundary, and replay behavior.

The audit link does not prove dependency freshness.

## Object-to-status audit

An object-to-status audit link connects a categorical object to a status record.

It must record status kind, prefix, epoch, scope, mode, reason, predecessors, successors, dependencies, certificates, invalidations, proof boundary, and replay behavior.

The link does not make the status accepted.

Status derivation remains required.

## Object-to-invalidation audit

An object-to-invalidation audit link connects a categorical object to an invalidation record.

It must record invalidated target, reason, dependency change, affected scope, affected mode, affected epoch, status effect, certificates, and replay behavior.

The link does not invalidate by itself unless the invalidation record is part of append-only history and accepted for the scope.

## Object-to-migration audit

An object-to-migration audit link connects a categorical object to a migration node.

It must record source object, target object, source epoch, target epoch, migration mode, loss mode, retained information, lost information, invalidations, dependencies, certificates, and replay behavior.

The audit link does not perform migration.

It only traces the migration relation.

## Object-to-refinement audit

An object-to-refinement audit link connects a categorical object to a refinement node.

It must record source object, target object, source level, target level, projection, reconstruction, error bound, convergence witness, dependencies, certificates, epoch, and replay behavior.

The audit link does not perform refinement.

## Forward audit

Forward audit maps a categorical object or Lean artifact to a framework audit target:



    ForwardObjectAudit(A)=target



Forward audit supports locating records, certificates, replay manifests, trusted boundaries, migrations, refinements, verifier exports, and extraction artifacts related to `A`.

Forward audit is traceability.

It is not proof.

## Reverse audit

Reverse audit maps a framework audit target back to the categorical object or Lean artifact it traces:



    ReverseObjectAudit(target)=A



Reverse audit supports provenance queries.

It does not prove that the target artifact is correct.

It does not prove object identity unless faithfulness is certified.

## Bidirectional audit

Bidirectional audit records both forward and reverse traceability.

A bidirectional law may require:



    ReverseObjectAudit(ForwardObjectAudit(A))=A



or a declared audit equivalence.

Bidirectional audit is stronger than one-way audit.

It still does not prove mathematical object claims unless paired with accepted evidence.

## Audit path

An audit path is a sequence of audit links connecting an object to one or more framework artifacts.

The path records link kinds, intermediate artifacts, prefixes, epochs, scopes, modes, dependencies, certificates, proof boundaries, trusted boundaries, and replay behavior.

The chosen audit path is part of audit identity unless path coherence is certified.

## Audit path coherence

Audit path coherence states that two audit paths support the same traceability claim.

It may have form:



    AuditPathEq(P_1,P_2)



or audit equivalence.

Path coherence must name mode, scope, dependencies, epochs, certificates, proof boundaries, and replay behavior.

Without path coherence, audit conclusions depend on the chosen path.

## Audit composition

Audit links may compose.

If:



    A-> B



and:



    B-> C



then:



    A-> C



may be derived only when link kinds, modes, scopes, epochs, dependencies, certificates, proof boundaries, and replay behavior compose.

Composition cannot broaden traceability beyond the weakest link.

Composition cannot turn audit into proof.

## Audit dependency closure

Object audit links have dependencies.

Dependencies may include source object, target artifact, object identity, object kind, object epoch, object status, object certificates, trusted boundaries, replay manifests, migration nodes, refinement nodes, verifier exports, extraction artifacts, equality relations, equivalence relations, and audit paths.

Hidden audit dependencies invalidate audit replay.

## Audit freshness

An object audit link is fresh when source, target, link kind, prefix, epoch, scope, status, mode, dependencies, certificates, proof boundary, trusted boundary, invalidation policy, and replay behavior remain valid for the consumer.

Freshness is scope-relative.

An audit link may be fresh for historical explanation and stale for proof use.

## Audit availability

An audit link is available if its source, target, and dependencies can be reconstructed at the relevant prefix and epoch.

Availability is not acceptance.

An available audit link may still be stale, rejected, unknown, audit-only, or invalidated.

## Audit invalidation

An object audit link may be invalidated by changes to source identity, target identity, link kind, prefix relation, epoch relation, scope policy, status policy, dependency closure, certificate schema, proof boundary, trusted boundary, replay schema, migration path, or refinement path.

Invalidation is append-only.

The old audit link remains audit content.

## Audit supersession

An audit link may be superseded by a later audit link.

Supersession records that the later link should be used for a declared scope.

It does not delete the old link.

The successor link must itself be accepted and replayable.

## Audit migration

Object audit links may migrate across epochs.

Migration must preserve or explicitly transform source artifact, target artifact, link kind, prefix relation, epoch relation, scope, mode, status, dependencies, certificates, proof boundary, trusted boundary, invalidations, and replay behavior.

Same source and target names at the target epoch are insufficient.

## Audit refinement

Object audit links may refine by adding precise target identity, narrowing scope, improving dependency closure, adding replay data, replacing broad trusted boundaries, or strengthening status derivation.

Refinement is not migration.

A refined audit link must preserve or explicitly relate to the original audit link.

## Audit equality

Two object-audit records are equal only if object, source artifact, target artifact, link kind, prefix, epoch, scope, status, mode, dependencies, certificates, invalidations, proof boundary, trusted boundary, audit metadata, and replay behavior coincide.

Same source and target names are insufficient.

Same history record id is insufficient without prefix and epoch.

Same link label is insufficient.

## Audit equivalence

Object-audit records may be equivalent under declared audit policy.

Examples include proof-irrelevant audit equivalence, path-equivalent audit, migrated audit equivalence, quotient audit equivalence, observable audit equivalence, summary audit equivalence, checkpoint audit equivalence, or replay audit equivalence.

Equivalence is not equality.

Consumers must state which audit equivalence they accept.

## Audit and object identity

Object identity may cite audit references as dependencies.

Audit references do not determine identity unless an accepted certificate states that the audit relation is complete and faithful for identity.

An object identity proof cannot be replaced by an audit link to a label or record.

Traceability is not identity.

## Audit and object equality

Object equality may depend on audit links only through certified audit faithfulness.

If two objects link to the same audit target, equality still requires object-equality evidence.

Audit equality may support audit consumers.

It cannot support exact endpoint substitution unless strengthened.

## Audit and object equivalence

Object equivalence may be audit-based.

Audit equivalence must state retained provenance and lost mathematical information.

Audit equivalence cannot support quotient, observable, approximate, replay, or exact consumers unless compatibility is certified.

## Audit and object admissibility

Object admissibility may require audit links for traceability-sensitive scopes.

But audit links do not establish admissibility alone.

Admissibility must still check well-formedness, identity, dependency freshness, status, certificates, proof boundary, trusted boundary, epoch, invalidations, and replay.

## Audit and object dependencies

Object audit depends on object dependencies.

A stale dependency may make an audit link stale for proof use.

An audit link may remain valid for historical explanation even if proof dependencies become stale.

The scope must determine this behavior.

## Audit and object epoch

Object audit is epoch-sensitive.

A source-epoch audit link does not automatically audit a target-epoch object.

Cross-epoch audit requires audit migration, epoch compatibility, object migration, or audit-only policy.

Same object label across epochs is insufficient.

## Audit and morphism endpoints

A morphism endpoint may require audited object provenance.

However, endpoint usability cannot be established by audit alone.

The endpoint object must be admissible for morphism typing.

An audit link may be one dependency of endpoint admissibility.

## Audit and identity morphisms

Identity morphism formation cannot rely on object audit alone.

For:



    id_A



the object `A` must be admissible for identity-morphism scope.

Audit links may trace the object.

They do not prove identity morphism formation.

## Audit and composition

Composition may require audit links for traceability, especially when composing across quotient, migration, refinement, or replay paths.

Audit path coherence may be needed.

However, audit links do not prove composability.

Object equality, compatibility, or equivalence and morphism congruence remain required.

## Audit and functors

Functor object maps may preserve audit links.

A functor may prove:



    AuditLinked(A,r)=> AuditLinked(F(A),F_r(r))



or a weaker relation.

Audit preservation is not functoriality by itself.

Functoriality still requires identity and composition preservation.

## Audit and naturality

Naturality proofs may include audit links for components, indexed objects, and morphisms.

Audit links do not prove the naturality square.

The square must commute under declared equality or equivalence and accepted certificates.

Audit only supplies traceability.

## Audit and quotient categories

Quotient-category objects may have audit links to representatives and quotient classes.

The link must state whether it traces the raw representative, quotient class, or selected representative.

Representative-sensitive audit requires representative retention or recovery evidence.

A quotient-class audit link is not raw-object audit.

## Audit and applications

Application-specific audit links belong outside this abstract file.

`ObjectAudit.lean` may define generic hooks for application-instantiation audit.

It must not define concrete application audit records, bitmap dimensions, matrix dimensions, token references, image payloads, hash constants, Feistel constants, UI values, or runtime payloads.

## Audit and `none`

No object-audit rule may treat `none`, `null`, missing field, or absent runtime binding as a mathematical default.

An audit link to absence is only traceability of absence.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

Audit cannot install defaults.

## Object-audit certificates

Object-audit certificates may prove:



    ObjectAuditLinked(A,target)





    ForwardObjectAudit(A)=target





    ReverseObjectAudit(target)=A





    ObjectAuditFresh(AuditRef,p,e,scope)





    ObjectAuditPathCoherent(P_1,P_2)



or audit well-formedness, availability, status, invalidation, migration, refinement, composition, equality, equivalence, dependency closure, and replay-admissibility claims.

Only accepted certificates discharge audit obligations.

## Epoch rule

`ObjectAudit.lean` artifacts are epoch-indexed by:

- object-audit schema epoch;
- source-artifact schema epoch;
- target-artifact schema epoch;
- link-kind epoch;
- prefix-parameter epoch;
- object-epoch epoch;
- scope epoch;
- status epoch;
- proof-mode epoch;
- dependency-record epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream object-audit claims.

The old audit artifact remains audit content.

## History relation

A history record depending on `ObjectAudit.lean` must record:

1. source file identity;
2. declaration identity;
3. categorical object;
4. source artifact;
5. target artifact;
6. link kind;
7. prefix;
8. epoch;
9. scope;
10. status;
11. mode;
12. dependency closure;
13. certificates;
14. invalidation behavior;
15. proof boundary;
16. trusted boundary where used;
17. audit path where relevant;
18. replay data.

The audit link text alone is insufficient.

## Replay rule

Replay of `ObjectAudit.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, `ObjectKind.lean`, `ObjectIdentity.lean`, `ObjectEquality.lean`, `ObjectEquivalence.lean`, `ObjectAdmissibility.lean`, `ObjectDependency.lean`, and `ObjectEpoch.lean`;
3. reconstructing object-audit declarations;
4. reconstructing typed source and target artifact schemas;
5. reconstructing link-kind declarations;
6. reconstructing forward, reverse, bidirectional, composed, migrated, refined, invalidated, superseded, and stale audit behavior;
7. checking that audit links are not treated as object identity, equality, equivalence, admissibility, proof, mutation, or replay evidence;
8. checking proof objects or trusted boundaries where present;
9. checking that no runtime code or application constants are introduced;
10. checking dependency closure and audit metadata.

If any step fails, downstream object-audit claims are not replay-admissible.

## Runtime representation

`ObjectAudit.lean` may lower to:

- Lean audit-link predicates;
- object-audit records;
- audit-link-kind declarations;
- forward-trace metadata;
- reverse-trace metadata;
- audit-path metadata;
- dependency manifests;
- certificate descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not audit identity.

Audit identity depends on object, source artifact, target artifact, link kind, prefix, epoch, scope, status, mode, dependencies, certificates, proof boundary, trusted boundary, invalidations, and replay behavior.

## Non-collapse theorem

Let a categorical object be linked to a framework record, prefix, certificate, replay manifest, trusted boundary, dependency record, migration node, or refinement node.

This does not imply object identity, object equality, object equivalence, object admissibility, proof acceptance, mutation, or replay validity.

The link supports traceability only.

Any stronger use requires accepted certificates naming the stronger claim, mode, scope, dependencies, epoch, and replay behavior.

## Proof obligation

`ObjectAudit.lean` is admissible only if the framework can certify:

1. object audit links are typed;
2. source and target artifacts are typed;
3. link kinds are explicit;
4. prefix, epoch, scope, status, and mode are explicit;
5. dependency closure is explicit;
6. audit links are distinct from object identity;
7. audit links are distinct from proof;
8. audit links are distinct from mutation;
9. audit links are distinct from replay evidence;
10. invalidation, migration, refinement, composition, and path coherence are explicit;
11. runtime representations and application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`ObjectAudit.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime audit logs, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object-audit infrastructure.

## Commitment rule

`ObjectAudit.lean` may define typed audit links for categorical objects.

It cannot make audit links object identity.

It cannot make audit links proof.

It cannot make audit links mutation.

It cannot make audit links replay evidence.

It cannot make audit-only evidence current-use evidence.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
