# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.AuditRef.Variant47497ac1d68f0981b7d2c2c25de476b0c33842ab296d8da3e2c34a35b2362990

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2ecd9ec7f83f3f2e2f79d6b30f65eddd65b00ba` · SHA-256 `47497ac1d68f0981b7d2c2c25de476b0c33842ab296d8da3e2c34a35b2362990`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# AuditRef.lean

## Role

`AuditRef.lean` defines audit-reference infrastructure for the Lean proof core.

An audit reference is a typed link between a Lean artifact and a framework audit object such as a history record, history prefix, certificate record, replay manifest, trusted boundary, dependency record, migration node, refinement node, extraction artifact, verifier export, status record, invalidation record, or application-instantiation boundary.

An audit reference is not proof.

It is not mutation.

It is not replay.

It is not certificate acceptance.

It is traceability metadata with typed source, typed target, prefix, epoch, scope, status, dependencies, certificates, invalidations, and replay behavior.

## Core principle

Audit links explain where a proof-core artifact came from, where it is recorded, what it depends on, and how it can be reconstructed.

They do not establish mathematical truth by themselves.

A theorem with an audit link still requires proof.

A certificate with an audit link still requires acceptance.

A replay result with an audit link still requires replay evidence.

A trusted boundary with an audit link still certifies only its declared trusted statement.

## Formal shape

An audit reference has schematic form:



    AuditRef=(id,sourceArtifact,targetArtifact,linkKind,prefix,epoch,scope,status,mode,deps,certs,invalidations,proofBoundary,trustedBoundary,replay)



where:

- `id` identifies the audit reference;
- `sourceArtifact` identifies the Lean artifact or framework artifact being traced;
- `targetArtifact` identifies the framework record, prefix, certificate, replay manifest, trusted boundary, dependency, status, migration, refinement, extraction artifact, verifier export, or audit object linked to it;
- `linkKind` classifies the link;
- `prefix` records prefix-relative availability;
- `epoch` records semantic coordinates;
- `scope` records consumer context;
- `status` records lifecycle state;
- `mode` records proof mode or audit mode;
- `deps` records dependency closure;
- `certs` records certificates supporting the link where needed;
- `invalidations` records stale or invalidating effects;
- `proofBoundary` records proof assumptions where relevant;
- `trustedBoundary` records trusted assumptions where relevant;
- `replay` records reconstruction behavior.

The audit reference links artifacts.

It does not certify the linked statement unless paired with accepted evidence.

## Source artifact

The source artifact may be:

- Lean declaration;
- Lean theorem statement;
- Lean proof object;
- Lean certificate schema;
- Lean relation schema;
- Lean equality artifact;
- Lean equivalence artifact;
- proof-mode record;
- scope record;
- status record;
- dependency record;
- epoch record;
- replay parameter;
- trusted-boundary declaration;
- verifier-facing export;
- extraction artifact;
- application-instantiation boundary.

The source artifact must be typed.

A source name alone is insufficient.

## Target artifact

The target artifact may be:

- framework history record;
- framework history prefix;
- certificate record;
- replay manifest;
- dependency record;
- trusted-boundary record;
- status record;
- invalidation record;
- migration node;
- refinement node;
- authority mutation record;
- frame record;
- verifier export record;
- extraction record;
- application record.

The target artifact must be typed and prefix-relative where recorded in history.

A target id alone is insufficient.

## Link kind

The link kind classifies the audit relation.

Possible link kinds include:

- proves;
- states;
- exports;
- extracts;
- records;
- depends-on;
- replays;
- migrates;
- refines;
- invalidates;
- supersedes;
- verifies;
- trusts;
- witnesses;
- explains;
- archives;
- displays;
- instantiates.

The link kind determines expected fields and replay obligations.

A generic untyped link is inadmissible.

## Audit is not proof

An audit link from theorem `T` to statement `P` does not prove `P`.

Proof requires a proof object, verifier result, accepted certificate, or trusted-boundary statement.

The audit link only records that the artifact is associated with the statement or record.

Traceability is not truth.

## Audit is not mutation

An audit link to a history record does not mutate history.

It cannot append a record.

It cannot install authority state.

It cannot update a status.

It cannot commit a frame.

It cannot invalidate a claim.

It can only link the proof-core artifact to append-only history content.

## Audit is not replay

An audit link to a replay manifest does not prove replay.

Replay requires target, procedure, schemas, content references, dependencies, comparison relation, result carrier, certificates, epoch, and replay behavior.

Audit may help locate the manifest.

It does not make stored output replay evidence.

## Audit is not certificate acceptance

An audit link to a certificate record does not make the certificate accepted.

Certificate acceptance requires statement, subject, verifier, payload reference, result, mode, scope, dependency closure, proof boundary, epoch, and replay behavior.

Audit links may trace certificates.

They do not discharge certificate obligations.

## Typed link

Every audit link must be typed.

A typed link records source type, target type, link kind, epoch, scope, status, and dependency closure.

An untyped string reference is insufficient.

A file path is insufficient.

A theorem name is insufficient.

A content hash is insufficient without schema and target identity.

## Prefix-relative audit

When an audit target is in history, the audit reference is prefix-relative.

A link to a record appended at prefix `p'` cannot be available at an earlier prefix `p` unless a later audit query is explicitly evaluated at `p'`.

Audit availability must respect append-only history.

Audit links do not rewrite earlier prefixes.

## Epoch-relative audit

Audit links are epoch-relative.

A link from a source theorem at epoch `e` to a target framework record at epoch `e'` must record both epochs and the relation between them.

If the link crosses epochs, migration, compatibility, audit-only, or trusted-boundary evidence must be explicit.

Same artifact name across epochs is insufficient.

## Scope-relative audit

Audit links are scope-relative.

A link may be valid for audit explanation but not proof use.

It may support display provenance but not certificate reuse.

It may support verifier export traceability but not extraction correctness.

The scope determines which consumers may rely on the link.

## Status-relative audit

An audit link has lifecycle status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, audit-only, and research-obligated.

An accepted audit link means the traceability relation is accepted for the declared scope.

It does not mean the linked mathematical claim is accepted.

## Audit mode

Audit mode records the strength of the link.

Examples include exact link, approximate link, quotient link, observable link, summary link, checkpoint link, partial link, audit-only link, trusted-boundary link, rejected link, unknown link, and research-obligated link.

A summary audit link may retain only partial traceability.

An exact proof consumer cannot consume summary audit evidence unless its claim is weakened.

## Source identity

The source artifact identity includes:

- module path;
- declaration name;
- statement;
- proof object or trusted boundary;
- imports;
- universe parameters;
- dependencies;
- proof mode;
- scope;
- epoch;
- replay metadata;
- certificate schema where relevant.

Same declaration name is insufficient.

Same printed statement is insufficient.

Same compiled artifact is insufficient without dependencies and epoch.

## Target identity

The target artifact identity includes:

- target kind;
- target record id;
- target prefix;
- parent relation where relevant;
- payload reference;
- schema;
- dependencies;
- status;
- epoch;
- proof boundary where relevant;
- replay behavior;
- audit reference chain.

Same target id is insufficient.

Same payload hash is insufficient.

Same displayed record is insufficient.

## Forward trace

A forward trace maps a Lean artifact to framework audit content:



    ForwardAudit(source)=target



This supports questions such as:

- which history record records this theorem;
- which certificate schema exports this proof;
- which replay manifest reconstructs this object;
- which trusted boundary is used;
- which migration node this theorem certifies.

Forward trace does not prove the target's statement.

## Reverse trace

A reverse trace maps framework audit content back to Lean artifacts:



    ReverseAudit(target)=source



This supports questions such as:

- which Lean theorem supports this certificate;
- which proof object produced this verifier export;
- which Lean schema corresponds to this framework certificate;
- which trusted boundary was used.

Reverse trace is provenance, not proof.

## Bidirectional audit

A bidirectional audit link records both forward and reverse traceability.

It may require consistency:



    ReverseAudit(ForwardAudit(source))=source



or a weaker equivalence.

Bidirectional traceability is stronger than one-way audit.

It must be certified where required.

## Audit link composition

Audit links may compose.

If:



    A-> B



and:



    B-> C



then an audit path:



    A-> C



may be derived only if link kinds, scopes, modes, dependencies, epochs, and replay behavior compose.

Composition is not automatic.

Composed audit paths must not broaden claims beyond their weakest link.

## Audit path

An audit path is a sequence of audit references.

It records provenance across proof artifacts, certificates, histories, replay manifests, trusted boundaries, migrations, refinements, verifier exports, extraction artifacts, and application instantiations.

The chosen path is part of audit identity unless path coherence is certified.

## Audit path coherence

If two audit paths link the same source and target, path coherence may require equality or equivalence of traceability claims.

Without path coherence, audit conclusions may depend on which path is chosen.

Path-coherence certificates must record paths, link kinds, modes, scopes, dependencies, epochs, and replay behavior.

## Audit dependency closure

Audit references have dependencies.

Dependencies may include source artifact, target artifact, proof object, certificate schema, history prefix, replay manifest, trusted boundary, verifier export, extraction boundary, migration node, refinement node, status record, invalidation policy, epoch, scope, and proof mode.

Hidden audit dependencies invalidate audit replay.

## Audit freshness

An audit reference is fresh for a consumer if source, target, link kind, prefix, epoch, scope, status, dependencies, trusted boundaries, certificates, invalidations, and replay behavior remain valid for that consumer.

Freshness is scope-relative.

An audit link may remain fresh for historical explanation while stale for proof or certificate reuse.

## Audit availability

An audit reference is available when its source, target, and dependencies can be reconstructed at the relevant prefix and epoch.

Availability is not acceptance.

An audit reference may be available but rejected, stale, unknown, audit-only, or invalidated.

## Audit invalidation

Audit links may be invalidated by changes to:

- source artifact identity;
- target artifact identity;
- history prefix;
- schema;
- proof boundary;
- trusted boundary;
- verifier export;
- extraction boundary;
- dependency closure;
- epoch;
- status policy;
- replay schema;
- invalidation policy.

Invalidation is append-only.

The old audit link remains audit content.

## Audit supersession

An audit link may be superseded by a newer link.

Supersession records that the newer link should be used for a declared scope.

It does not delete the old link.

The successor link must itself be accepted and replayable.

## Audit migration

An audit link may migrate across epochs.

Migration must preserve source artifact meaning, target artifact meaning, link kind, scope, mode, dependencies, certificates, proof boundary, trusted boundary, invalidation behavior, and replay behavior, or declare a weaker mode.

Same source and target names at the new epoch are insufficient.

## Audit refinement

An audit link may refine by adding more precise target identity, narrowing scope, improving dependency closure, replacing a broad trusted boundary, or adding replay metadata.

Refinement is not migration.

A refined audit link must preserve or explicitly relate to the original link.

## Audit and theorem statements

An audit link may connect a theorem statement to a framework claim.

It must record statement identity, theorem identity, dependencies, proof mode, scope, epoch, and replay behavior.

The audit link does not prove the theorem.

It lets the framework locate the theorem associated with the claim.

## Audit and proof objects

An audit link may connect a proof object to a certificate or theorem statement.

It must record proof identity, theorem statement, imports, axioms, proof boundary, dependencies, epoch, and replay behavior.

Proof-object audit is not certificate acceptance unless the verifier or Lean kernel accepts the proof.

## Audit and certificate schemas

An audit link may connect a Lean certificate schema to a framework certificate record.

It must record statement fields, subject fields, verifier fields, payload fields, result fields, proof-mode fields, scope fields, dependency fields, proof-boundary fields, trusted-boundary fields, epoch fields, status fields, invalidation fields, and replay fields.

Schema audit does not certify a certificate instance.

## Audit and certificates

An audit link may connect a certificate instance to a history certificate record.

It must preserve statement, subject, verifier, payload reference, result, mode, scope, dependency closure, proof boundary, trusted boundary, epoch, status, invalidation behavior, and replay behavior.

The audit link itself is not the certificate.

## Audit and replay manifests

An audit link may connect a replay parameter or replay theorem to a framework replay manifest.

It must record target, procedure, schemas, content references, dependencies, verifier calls, comparison relation, result carrier, mode, scope, epoch, and invalidation policy.

The link is not replay evidence.

Replay acceptance requires replay certificates or derivation.

## Audit and trusted boundaries

An audit link may connect a trusted-boundary declaration to a framework trusted-boundary record.

It must preserve trusted component, trusted statement, assumptions, subject, mode, scope, dependencies, epoch, status, invalidations, proof boundary, and replay behavior.

The audit link does not expand the trusted statement.

## Audit and dependencies

An audit link may connect a dependency record to its source and target artifacts.

It must preserve dependency kind, subject, target, required mode, required scope, prefix, epoch, status, availability, nested dependencies, certificates, invalidations, proof boundary, and replay behavior.

Dependency audit does not prove dependency freshness.

## Audit and statuses

An audit link may connect a Lean status artifact to a framework status record.

It must record subject, prefix, epoch, scope, mode, status kind, reason, predecessors, successors, dependencies, certificates, invalidations, proof boundary, and replay behavior.

The audit link does not make the status accepted.

## Audit and invalidations

An audit link may connect an invalidation theorem or record to affected artifacts.

It must record target, reason, dependency change, affected scope, affected epoch, status effect, certificates, and replay behavior.

Invalidation audit does not itself perform invalidation unless recorded in append-only history.

## Audit and epochs

An audit link may connect epoch declarations, epoch compatibility theorems, or epoch migration certificates to framework epoch records.

It must record source epoch, target epoch where relevant, status, compatibility relation, migration relation, scope, mode, dependencies, certificates, invalidations, and replay behavior.

Epoch label equality is insufficient.

## Audit and scopes

An audit link may connect scope declarations to framework scope policies.

It must record scope kind, required modes, accepted modes, consumer policy, subjects, dependencies, certificates, epoch, proof boundary, and replay behavior.

Scope audit does not prove consumer compatibility unless a scope certificate does so.

## Audit and proof modes

An audit link may connect proof-mode declarations to framework loss-mode or proof-mode records.

It must record kind, retained information, lost information, comparison relation, scope, consumer policy, invalidations, dependencies, certificates, epoch, and replay behavior.

Mode tag equality is insufficient.

## Audit and equality

An audit link may connect equality infrastructure to framework equality claims.

It must record equality notion, source and target types, mode, scope, dependency closure, proof object or trusted boundary, epoch, and replay behavior.

An audit link to an equality theorem does not prove a different equality notion.

## Audit and equivalence

An audit link may connect equivalence infrastructure to framework equivalence claims.

It must record relation, reflexivity, symmetry, transitivity, congruence, quotient readiness, representative independence, mode, scope, dependencies, certificates, epoch, and replay behavior.

Relation name alone is insufficient.

## Audit and migrations

An audit link may connect migration theorems or certificates to framework migration nodes.

It must record source epoch, target epoch, source object, target object, migration map, compatibility law, loss mode, invalidations, dependencies, certificates, and replay behavior.

The audit link does not perform migration.

## Audit and refinements

An audit link may connect refinement theorems or certificates to framework refinement nodes.

It must record source level, target level, projection, reconstruction, error bound, convergence witness, dependencies, certificates, epoch, and replay behavior.

The audit link does not refine the object.

## Audit and verifier export

An audit link may connect a Lean theorem or certificate schema to a verifier-facing export.

It must record exported statement, input schema, output schema, payload relation, verifier identity, result mode, dependencies, proof boundary, epoch, and replay behavior.

Verifier-export audit does not prove extraction correctness.

## Audit and extraction

An audit link may connect a Lean artifact to an extraction artifact.

It must record source declaration, target language, extracted checker, proof-erasure policy, trusted assumptions, input schema, output schema, dependency closure, epoch, and replay behavior.

Extraction audit is not extraction proof.

Extraction correctness requires extraction certificates or trusted boundary.

## Audit and application instantiation

An audit link may connect abstract proof-core parameters to application instantiations.

Such links must remain outside the abstract core unless represented generically.

`AuditRef.lean` may define the generic link shape.

It must not define concrete application constants, image sizes, hash constants, Feistel parameters, UI values, or runtime payloads.

## Audit over authorities

Authority audit links must preserve uninstalled-versus-installed distinctions.

A link to an authority record cannot infer a mathematical default from `none`, `null`, missing fields, or absent records.

Authority audit must cite authority policy, mutation ledger, spectrum, certificates, epoch, prefix, and replay behavior where relevant.

## Audit over spectra

Spectrum audit links must preserve carrier, admissible sections, default measure, anchors, support constraints, pushforwards, quotient images, product spectra, section spectra, finite approximations, certificates, epoch, and replay behavior.

A link to a carrier does not audit spectrum admissibility unless the spectrum relation is included.

## Audit over tensors

Tensor audit links must preserve factors, carriers, spectra, product spectra, dependency graph, kernels, contraction plans, contraction results, local emissions, certificates, epoch, and replay behavior.

Same contraction output is insufficient for full tensor audit.

The link must state what tensor information is retained.

## Audit over sheaves

Sheaf audit links must preserve site, cover, restriction maps, local-section families, overlaps, compatibility, obstruction cochains, repair witnesses, gluing data, global candidates, certificates, epoch, and replay behavior.

A link to local sections is not a link to gluing unless gluing data and compatibility are included.

## Audit over operators

Operator audit links must preserve domain, codomain, partiality policy, action rule, kernel, image, adjoint, composition plan, fixed points, spectrum action, certificates, epoch, and replay behavior.

Runtime execution logs are not operator-action audit unless domain and action semantics are included.

## Audit over histories

History audit links must preserve records, prefixes, parent relations, append operations, commitments, frame records, authority mutations, certificate records, replay manifests, views, forks, merges, invalidations, migrations, statuses, certificates, epoch, and replay behavior.

Final-state links are not raw-history links.

## Audit equality

Two audit references are equal only if their ids, source artifacts, target artifacts, link kinds, prefixes, epochs, scopes, statuses, modes, dependencies, certificates, invalidations, proof boundaries, trusted boundaries, audit metadata, and replay behavior coincide.

Same source and target names are insufficient.

Same link label is insufficient.

Same history record id is insufficient without prefix and epoch.

## Audit equivalence

Audit references may be equivalent under declared audit policy.

Examples include proof-irrelevant audit equivalence, migrated audit equivalence, quotient audit equivalence, observable audit equivalence, summary audit equivalence, checkpoint audit equivalence, or replay audit equivalence.

Equivalence is not equality.

Consumers must state which audit equivalence they accept.

## Audit certificates

Audit-reference certificates may prove:



    AuditLinked(source,target)





    ForwardAudit(source)=target





    ReverseAudit(target)=source





    AuditFresh(ref,p,e,scope)





    AuditPathCoherent(path_1,path_2)



or link well-formedness, availability, status, invalidation, migration, refinement, composition, equality, equivalence, dependency closure, and replay-admissibility claims.

Only accepted certificates discharge audit-reference obligations.

## Epoch rule

`AuditRef.lean` artifacts are epoch-indexed by:

- audit-reference-interface epoch;
- source-artifact schema epoch;
- target-artifact schema epoch;
- link-kind epoch;
- prefix-parameter epoch;
- epoch-parameter epoch;
- scope epoch;
- status epoch;
- proof-mode epoch;
- dependency-record epoch;
- certificate-schema epoch;
- trusted-boundary epoch;
- proof-boundary epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream audit-reference claims.

The old audit-reference artifact remains audit content.

## History relation

A history record depending on `AuditRef.lean` must record:

1. source file identity;
2. declaration identity;
3. audit-reference id;
4. source artifact;
5. target artifact;
6. link kind;
7. prefix;
8. epoch;
9. scope;
10. status;
11. mode;
12. dependency closure;
13. certificate references;
14. invalidation behavior;
15. proof boundary;
16. trusted boundary where used;
17. replay data.

The link text alone is insufficient.

## Replay rule

Replay of `AuditRef.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean`, `ObjectInterface.lean`, `RelationSchema.lean`, `Equality.lean`, `Equivalence.lean`, `ProofMode.lean`, `Scope.lean`, `Status.lean`, `DependencyRecord.lean`, `EpochParam.lean`, `ReplayParam.lean`, `TrustedBoundary.lean`, and `CertificateSchema.lean`;
3. checking audit-reference declarations;
4. checking typed source and target artifact schemas;
5. checking link-kind declarations;
6. checking forward, reverse, bidirectional, composed, migrated, refined, invalidated, and stale audit behavior;
7. checking that audit links are not treated as proof, mutation, replay, or certificate acceptance;
8. checking that no concrete runtime or application constants are introduced;
9. checking proof objects or trusted boundaries where present;
10. checking dependency closure and certificate metadata.

If any step fails, downstream audit-reference claims are not replay-admissible.

## Runtime representation

`AuditRef.lean` may lower to:

- Lean audit-reference records;
- audit-link schemas;
- provenance metadata;
- forward-trace descriptors;
- reverse-trace descriptors;
- dependency manifests;
- certificate-link metadata;
- replay-link metadata;
- trusted-boundary-link metadata;
- history-link metadata.

Runtime representation is not audit-reference identity.

Identity depends on source, target, link kind, prefix, epoch, scope, status, dependencies, certificates, invalidations, proof boundary, trusted boundary, and replay behavior.

## Non-collapse theorem

Let two audit references link the same source name to the same target name.

This does not imply the audit references are equal.

They collapse only if their typed source artifacts, typed target artifacts, link kinds, prefixes, epochs, scopes, statuses, modes, dependencies, certificates, invalidations, proof boundaries, trusted boundaries, audit metadata, and replay behavior coincide.

Thus source-target-name equality is insufficient for audit-reference identity.

## Proof obligation

`AuditRef.lean` is admissible only if the framework can certify:

1. audit links are typed;
2. source artifacts are typed;
3. target artifacts are typed;
4. link kinds are explicit;
5. prefix, epoch, scope, status, and mode are explicit;
6. dependency closure is explicit;
7. audit links are distinguished from proofs;
8. audit links are distinguished from mutations;
9. audit links are distinguished from replay evidence;
10. audit links are distinguished from certificate acceptance;
11. invalidation, migration, refinement, and path coherence are explicit;
12. concrete runtime and application constants are excluded;
13. replay can reconstruct audit-reference declarations and dependencies.

## Exclusion rule

`AuditRef.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application values, runtime audit logs, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract audit-reference infrastructure.

## Commitment rule

`AuditRef.lean` may define typed audit links and traceability laws.

It cannot prove linked claims.

It cannot mutate history.

It cannot append records.

It cannot install authority values.

It cannot make audit-only evidence current-use evidence.

It cannot make raw payloads accepted certificates.

It cannot make stored outputs replay evidence.

It cannot infer defaults from `none` or `null`.

It cannot commit a frame.
-/
```
