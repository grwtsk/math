# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CertificateSchema.Variantaeb67cb95f8d7246ba03046f1aff9acb1d11febdb5f27477e8799290c463f71e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e88b0bbb88a7225fc26857e1bcf45feb057cf947` · SHA-256 `d41b1951844caaa912884894f6462aec3a27c032c3352b3462df6676f0d842ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SourceUnit.Variantb8273752023732599d943c76caa0e2f37e1749ed088fd6febd79a390a511f9f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8273752023732599d943c76caa0e2f37e1749ed088fd6febd79a390a511f9f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.SourceUnit.Variantb8273752023732599d943c76caa0e2f37e1749ed088fd6febd79a390a511f9f6","mathematical_subject":"Probability.Independence","original_sha256":"b8273752023732599d943c76caa0e2f37e1749ed088fd6febd79a390a511f9f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/core/CertificateSchema.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# CertificateSchema.lean

## Role

`CertificateSchema.lean` defines certificate-schema infrastructure for the Lean proof core.

A certificate schema records the typed structure of certified evidence: statement, subject, verifier identity, payload reference, result mode, proof mode, scope, dependency closure, proof boundary, trusted boundary, epoch coordinates, lifecycle status, invalidations, audit links, and replay behavior.

A certificate schema is not a proof.

A raw payload is not an accepted certificate.

A verifier result is not portable evidence without statement, subject, dependency, proof-boundary, epoch, status, and replay context.

## Core principle

The proof core must distinguish:



    RawPayload != Certificate





    CertificateSchema != AcceptedCertificate





    VerifierResult != Proof





    PayloadHash != StatementTruth



A certificate becomes usable only when the schema, statement, subject, verifier, payload, result, mode, scope, dependencies, proof boundary, epoch, and replay behavior are accepted for the consuming context.

## Formal shape

A certificate schema has schematic form:



    CertificateSchema=(id,statement,subject,verifier,payloadRef,result,mode,scope,deps,proofBoundary,trustedBoundary,epoch,status,invalidations,audit,replay)



where:

- `id` identifies the certificate schema or certificate instance;
- `statement` identifies the typed claim being certified;
- `subject` identifies the object, relation, theorem, migration, replay claim, or artifact the statement concerns;
- `verifier` identifies the checker, theorem, kernel, trusted boundary, or proof authority;
- `payloadRef` identifies proof payload, proof object, transcript, theorem reference, hash, or archive reference;
- `result` records verifier or certificate result;
- `mode` records proof mode;
- `scope` records admissible consumers;
- `deps` records dependency closure;
- `proofBoundary` records trusted assumptions and proof kernel;
- `trustedBoundary` records external or declared trust where used;
- `epoch` records semantic coordinates;
- `status` records lifecycle state;
- `invalidations` records stale or invalidating effects;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The schema defines certificate shape.

It does not certify the statement by construction.

## Statement

The statement is the proposition or data-level statement object being certified.

It may be:



    P:Prop



or:



    stmt:Statement



with interpretation:



    interp(stmt):Prop



Data-level statements are required when statements must be serialized, hashed, audited, migrated, replayed, or passed to a verifier.

The statement must be typed.

Textual similarity is insufficient.

## Subject

The subject is the object the statement concerns.

Subjects may include:

- carriers;
- spectra;
- authorities;
- tensors;
- sheaves;
- async processors;
- operators;
- histories;
- refinements;
- migrations;
- replay manifests;
- proof modes;
- scopes;
- statuses;
- dependency records;
- trusted boundaries;
- audit references;
- extraction artifacts;
- application instantiations.

The subject must be typed and epoch-indexed where relevant.

Same displayed name is insufficient.

## Verifier identity

The verifier identifies the mechanism that checks or accepts the statement.

Examples include:

- Lean kernel;
- Lean theorem reference;
- trusted verifier;
- extracted checker;
- finite enumerator;
- replay engine;
- canonical decoder;
- hash checker;
- arithmetic checker;
- archive boundary;
- human approval boundary under policy.

Verifier identity includes input schema, output schema, trusted boundary, proof boundary, dependency closure, epoch, and replay behavior.

Same verifier name is insufficient.

## Payload reference

A payload reference identifies raw evidence material.

Examples include:

- proof term;
- theorem reference;
- certificate payload;
- verifier transcript;
- replay transcript;
- content hash;
- archive reference;
- external proof object;
- finite enumeration trace;
- extracted checker output.

The payload reference is data.

It does not prove the statement until the verifier or trusted boundary accepts it under the schema.

## Raw payload distinction

A raw payload may be well-formed, decodable, content-addressed, archived, or replayable.

None of these imply acceptance.

Acceptance requires:



    verify(verifier,statement,payloadRef)=result



or a trusted-boundary statement covering that result.

Thus:



    PayloadExists(payloadRef)



does not imply:



    CertificateAccepted(statement)



## Payload hash distinction

A payload hash certifies bytes only under a declared hash and encoding boundary.

It does not certify:

- statement truth;
- subject identity;
- verifier acceptance;
- proof-boundary validity;
- certificate freshness;
- replay preservation;
- migration validity.

Hash equality may be a dependency of a certificate.

It is not the certificate.

## Result

The result records verifier or certificate outcome.

Possible results include:

- accepted;
- rejected;
- unknown;
- stale;
- migrated;
- superseded;
- invalidated;
- approximate;
- quotient-valid;
- observable-valid;
- summary-valid;
- checkpoint-valid;
- audit-only;
- research-obligated.

The result is lifecycle-sensitive.

An accepted result at one epoch, prefix, or scope does not imply accepted result elsewhere.

## Accepted result

An accepted result means the verifier or trusted boundary accepts the statement for the subject under declared mode, scope, dependencies, proof boundary, epoch, and replay behavior.

Accepted result is not global truth.

It is a scoped certificate status.

It may become stale, superseded, invalidated, migrated, or audit-only later.

## Rejected result

A rejected result records failed certification.

It may arise from false statement, invalid subject, verifier rejection, malformed payload, stale dependency, invalid proof boundary, epoch mismatch, replay failure, or scope mismatch.

Rejected certificates remain audit content.

They do not discharge proof obligations.

## Unknown result

An unknown result records that the verifier or proof core cannot determine the statement.

Unknown is not accepted.

Unknown is not rejected as false.

Unknown may block downstream use or create a research obligation.

Unknown must not be treated as approximate success.

## Stale result

A stale result records that previously accepted evidence is no longer usable for a declared scope.

Staleness may arise from changed dependencies, changed verifier, changed proof boundary, changed statement schema, changed subject schema, changed trusted boundary, changed epoch, changed scope policy, or changed replay schema.

Stale status is append-only.

The old accepted certificate remains audit content.

## Migrated result

A migrated result records that a certificate has been transported across epochs or schemas.

Migrated result must cite certificate migration, statement migration, subject migration, verifier migration or re-verification, payload migration, dependency migration, proof-boundary migration, loss mode, and replay behavior.

Migrated does not imply exact target acceptance.

The migration mode determines admissible consumers.

## Proof mode

The certificate carries a proof mode.

Modes include exact, approximate, quotient, observable, summary, checkpoint, probabilistic, partial, rejected, unknown, audit-only, trusted-boundary, and research-obligated.

The mode classifies what the certificate proves.

An exact certificate cannot be replaced by approximate evidence.

A quotient certificate cannot discharge representative-sensitive obligations.

A trusted-boundary certificate cannot exceed its trusted statement.

## Scope

The certificate carries consumer scope.

A certificate may be valid for audit but not proof.

It may be valid for display but not frame construction.

It may be valid for verifier export but not extraction.

Scope is part of certificate identity.

Consumers must check scope compatibility before using certificate evidence.

## Dependency closure

A certificate must record dependency closure.

Dependencies may include statement schema, subject object, verifier, payload, proof boundary, trusted boundary, equality relation, equivalence relation, proof mode, scope policy, status policy, epoch, replay manifest, migration node, refinement node, and prior certificates.

Hidden dependencies make the certificate replay-incomplete.

A certificate without dependency closure is not audit-complete.

## Proof boundary

The proof boundary records the assumptions under which the certificate result is accepted.

Examples include:

- Lean kernel;
- axiom set;
- verifier correctness;
- canonical decoder;
- hash assumption;
- finite enumerator;
- arithmetic kernel;
- extraction boundary;
- replay engine;
- trusted archive.

The proof boundary is part of certificate identity.

Changing it may stale the certificate.

## Trusted boundary

A certificate may cite a trusted boundary.

The trusted boundary must identify the exact statement trusted.

A trusted hash boundary may support payload integrity.

It does not prove statement truth.

A trusted replay engine may support replay result.

It does not prove migration unless the migration-preservation statement is inside the trusted boundary.

## Epoch coordinates

A certificate is epoch-indexed.

It must record:

- statement epoch;
- subject epoch;
- verifier epoch;
- payload schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- dependency epoch;
- replay schema epoch;
- certificate-record epoch.

A source-epoch certificate is not automatically valid at a target epoch.

Certificate migration or re-verification is required.

## Prefix relativity

When recorded in history, a certificate becomes available only at prefixes extending its certificate record.

A certificate appended at prefix `p'` cannot justify a claim at earlier prefix `p`.

Prefix-relative availability must be explicit.

A later invalidation does not rewrite earlier certificate availability.

## Status

Certificate status is lifecycle state relative to prefix, epoch, scope, and mode.

Statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Status is not proof mode.

Status is not verifier identity.

Status must be derivable and replayable.

## Invalidation

Certificate invalidation records that a certificate is no longer usable for a declared scope.

Invalidation causes include changed statement, changed subject, verifier change, proof-boundary change, trusted-boundary change, payload schema change, stale dependency, epoch incompatibility, replay failure, or changed consumer policy.

Invalidation is append-only.

It does not delete the certificate.

## Supersession

A certificate may be superseded by another certificate.

Supersession identifies successor, scope, mode, and reason.

It does not erase the old certificate.

The successor must itself be accepted for the relevant scope.

Supersession is lifecycle metadata, not proof transport.

## Re-verification

Re-verification means checking the statement and payload again under a target verifier, target dependencies, target proof boundary, and target epoch:



    verify_{v'}(statement',payload')=result'



Re-verification is distinct from trusting the source verifier result.

If re-verification is required and absent, the target certificate status is unknown, stale, rejected, or audit-only.

## Certificate migration

Certificate migration transports statement, subject, verifier, payload reference, result mode, proof mode, scope, dependencies, proof boundary, trusted boundary, epoch, status, invalidations, audit links, and replay behavior.

A source certificate cannot migrate by payload copy.

A migrated payload is not a migrated certificate.

Certificate migration must cite accepted migration evidence.

## Certificate refinement

Certificate refinement may strengthen a proof, reduce assumptions, narrow scope, sharpen mode, improve dependency closure, or replace broad trusted-boundary evidence with verified evidence.

Refinement is not migration.

A refined certificate must preserve or explicitly relate to the original certificate.

## Certificate schema versus certificate instance

A schema defines fields and interpretation rules.

A certificate instance fills those fields for a particular statement and subject.

A schema may be well-formed while an instance is rejected.

Schema well-formedness does not prove the certified statement.

## Certificate schema well-formedness

A certificate schema is well-formed when:

1. statement is typed;
2. subject is typed;
3. verifier is identified;
4. payload reference is typed;
5. result type is declared;
6. proof mode is declared;
7. scope is declared;
8. dependencies are typed;
9. proof boundary is explicit;
10. epoch coordinates are explicit;
11. replay behavior is declared.

Well-formedness is not acceptance.

## Certificate instance well-formedness

A certificate instance is well-formed when it satisfies the schema and all fields are present and typed.

A well-formed instance may still be rejected, unknown, stale, audit-only, or research-obligated.

Acceptance requires verifier result or trusted-boundary evidence.

## Certificate acceptance

Certificate acceptance requires:



    Accepts(verifier,statement,subject,payloadRef,mode,scope,deps,proofBoundary,epoch)



or an equivalent trusted-boundary statement.

Acceptance must be prefix-relative, epoch-relative, and scope-relative when recorded in history.

A certificate record with status label `accepted` is insufficient unless status derivation is replayable.

## Certificate replay

Certificate replay reconstructs statement, subject, verifier, payload reference, result, mode, scope, dependency closure, proof boundary, trusted boundary, epoch, status, invalidations, audit link, and replay behavior.

It then reconstructs the verifier result or trusted-boundary derivation.

If any component fails, the certificate is not replay-admissible.

## Certificate audit

Certificate audit records traceability.

An audit link may connect a certificate to a history record, theorem, proof object, replay manifest, trusted boundary, migration node, refinement node, or verifier export.

Audit link existence does not prove the certificate.

Audit supports explanation and provenance.

Proof requires acceptance.

## Certificate equality

Two certificates are equal only if their statement, subject, verifier, payload reference, result, mode, scope, dependency closure, proof boundary, trusted boundary, epoch coordinates, status, invalidations, audit links, and replay behavior coincide.

Same payload is insufficient.

Same theorem name is insufficient.

Same accepted result is insufficient.

Same subject label is insufficient.

## Certificate equivalence

Certificates may be equivalent under proof irrelevance, statement equivalence, subject equivalence, verifier equivalence, payload equivalence, quotient equivalence, observable equivalence, approximate equivalence, replay equivalence, or audit equivalence.

Equivalence is not equality.

Consumers must state which equivalence they accept.

## Certificate freshness

A certificate is fresh for a consumer when statement, subject, verifier, payload, dependencies, proof boundary, trusted boundary, epoch, status, invalidations, mode, scope, and replay behavior remain valid for that consumer.

Freshness is not global.

A certificate may be fresh for audit and stale for proof.

A certificate may be fresh for display and stale for frame construction.

## Certificate dependency

Certificates may depend on other certificates.

Certificate-dependency graphs must be explicit.

A certificate cannot normally depend on its own accepted status at the same prefix.

Cycles require staged, guarded, coinductive, fixed-point, or root-trust policy.

Uncontrolled certificate cycles are inadmissible.

## Statement-schema dependency

The statement schema is a dependency.

A statement object interpreted under one schema may mean something different under another schema.

A certificate must record statement-schema epoch and migration where reused across epochs.

Same printed statement is insufficient.

## Subject-schema dependency

The subject schema is a dependency.

A subject decoded under one schema may not denote the same object under another.

A certificate about a subject requires subject identity, subject typing, subject epoch, and subject dependency closure.

Same subject id is insufficient.

## Payload-schema dependency

The payload schema is a dependency.

A payload may decode under one schema and fail under another.

Payload migration does not imply certificate migration.

Payload schema must be recorded for replay and migration.

## Verifier-schema dependency

Verifier input and output schemas are dependencies.

A verifier accepting a payload under one schema does not imply acceptance under another.

Verifier schema changes may stale certificates.

Verifier-export certificates must record these schemas explicitly.

## Result-mode dependency

The result mode is a dependency.

A certificate accepted in quotient mode cannot be consumed in exact mode unless strengthened.

A certificate accepted in audit-only mode cannot be consumed for current proof.

Result mode must be checked against consumer scope.

## Certificate and equality

Certificates may prove equality claims.

The equality notion must be explicit: raw equality, framework identity, quotient equality, observable equality, approximate equality, replay equality, audit identity, or certificate identity.

A certificate proving one equality notion cannot discharge another equality obligation.

## Certificate and equivalence

Certificates may prove equivalence relations, setoid laws, congruence, quotient readiness, representative independence, path coherence, or replay equivalence.

The relation and mode must be explicit.

Equivalence certificates do not prove raw equality unless a strengthening theorem is included.

## Certificate and relation schemas

Certificates may prove relation membership, totality, functionality, soundness, completeness, domain preservation, codomain preservation, composition, identity, invertibility, migration, refinement, and replay preservation.

The relation schema, mode, scope, dependencies, and epoch are part of the certificate subject.

## Certificate and proof modes

Certificates may certify proof-mode facts, such as retained information, lost information, consumer compatibility, mode composition, weakening, strengthening, invalidation, or freshness.

A mode tag alone is insufficient.

Mode certificates must record full mode record semantics.

## Certificate and scopes

Certificates may certify scope admissibility, scope compatibility, required mode, accepted modes, freshness for scope, mode mismatch, weakening, strengthening, or extraction applicability.

A certificate valid for one scope cannot be used in another unless scope compatibility is certified.

## Certificate and statuses

Certificates may certify lifecycle status.

Examples:



    HasStatus(p,e,s,x,Accepted)





    HasStatus(p,e,s,x,Stale)





    HasStatus(p,e,s,x,Rejected)



Status certificates must record prefix, epoch, scope, mode, dependencies, invalidations, and replay behavior.

Status tags alone are insufficient.

## Certificate and dependencies

Certificates may certify dependency closure, freshness, availability, hidden-dependency freedom, invalidation propagation, migration of dependencies, and path coherence.

A certificate without dependency closure is not replay-complete.

Dependency certificates must distinguish direct, transitive, closed, minimal, and overapproximate dependencies.

## Certificate and epochs

Certificates may certify epoch equality, compatibility, migration, freshness, status, ancestry, supersession, invalidation, identity, composition, invertibility, and path coherence.

Epoch labels alone are insufficient.

Certificate reuse across epochs requires epoch evidence.

## Certificate and replay

Certificates may certify replay claims:



    Replay(p,x)=y



or replay preservation:



    M_Y(Replay_e(x))=Replay_{e'}(M_X(x))



The replay procedure, manifest, schemas, content references, dependencies, verifier calls, comparison relation, result carrier, epoch, and mode must be recorded.

Stored output is insufficient.

## Certificate and trusted boundaries

Certificates may rely on trusted boundaries.

They must record the trusted statement and prove containment of the certificate claim within that boundary.

Trusted-boundary use is part of certificate identity.

Boundary overreach invalidates the certificate.

## Certificate and extraction

Certificates may certify extraction correctness, verifier export, checker schema, proof erasure policy, runtime assumptions, and extracted artifact relation.

A Lean theorem is not automatically an extraction certificate.

Extraction certificates require explicit extraction scope and trusted-boundary records.

## Certificate and applications

Application-specific certificates may instantiate abstract schemas.

They must remain outside `lean/core/` unless represented abstractly.

`CertificateSchema.lean` may define generic application-instantiation certificate hooks.

It must not define concrete application constants.

## Certificate over authorities

Authority certificates must preserve uninstalled versus installed states.

A certificate may prove authority state, binding transition, default installation, anchor correctness, mutation ledger replay, or migration.

No certificate may infer a mathematical default from `none` or `null` unless an authority-specific theorem and policy explicitly establish it.

## Certificate over spectra

Spectrum certificates may prove carrier admissibility, support, normalization, default measure, anchor, stochastic anchor, pushforward, quotient image, product spectrum, section spectrum, finite approximation, or migration.

Carrier membership is not spectrum admissibility.

The certificate statement must name the spectrum predicate.

## Certificate over tensors

Tensor certificates may prove factor admissibility, product spectrum, dependency graph, kernel compatibility, contraction plan validity, contraction result, local emission, independence, migration, refinement, or replay.

Same contraction output is insufficient unless the certificate statement is only contraction-output equality.

## Certificate over sheaves

Sheaf certificates may prove cover validity, restriction compatibility, local-section compatibility, obstruction computation, repair witness, gluing datum, global candidate, migration, refinement, or replay.

Local sections do not certify gluing by themselves.

Obstruction and repair claims require explicit statements.

## Certificate over operators

Operator certificates may prove domain membership, codomain membership, partiality behavior, action result, kernel, image, adjoint, composition, fixed point, spectrum action, migration, refinement, or replay.

Runtime execution is not an operator certificate.

Domain evidence must be explicit for action claims.

## Certificate over histories

History certificates may prove record validity, prefix validity, parent relation, append operation, commitment, frame record, authority mutation, certificate record, replay manifest, view, fork, merge, invalidation, migration, status, or replay.

Final state equality is not raw history proof.

Append-only semantics must be explicit.

## Certificate over migrations

Migration certificates may prove epoch, schema, carrier, spectrum, authority, tensor, sheaf, operator, history, certificate, replay, loss-mode, invalidation, identity, composition, invertibility, path-coherence, or replay-preservation claims.

Migration mode and loss information must be part of the certificate statement.

## Certificate over refinements

Refinement certificates may prove projection, reconstruction, error bounds, convergence witnesses, carrier refinement, spectrum refinement, section refinement, tensor refinement, sheaf refinement, operator refinement, history refinement, or replay.

Refinement is not migration.

If epoch changes, migration certificates are also required.

## Certificate lifecycle

Certificate lifecycle may transition:



    Proposed-> Accepted





    Proposed-> Rejected





    Accepted-> Stale





    Accepted-> Migrated





    Accepted-> Superseded





    Accepted-> Invalidated





    Unknown-> ResearchObligated



Transitions require history records, derivation rules, or certificates.

They do not mutate prior records.

## Certificate availability

Certificate availability is prefix-relative.

A certificate is available at a prefix only if its record or trusted boundary is available there.

Availability is not acceptance.

A certificate may be available but stale, rejected, unknown, audit-only, or invalidated.

## Certificate use

To use a certificate, a consumer must check:

1. statement matches required claim;
2. subject matches required subject;
3. mode satisfies required mode;
4. scope admits the consumer;
5. result is accepted or acceptable under policy;
6. dependencies are fresh;
7. proof boundary is accepted;
8. trusted boundary is contained;
9. epoch is compatible;
10. replay is admissible;
11. no invalidation applies.

Failure of any required check rejects the use or weakens the claim.

## Certificate export

A certificate schema may be exported to verifier-facing artifacts.

Export must preserve statement schema, subject schema, verifier identity, payload reference, result type, mode, scope, dependency closure, proof boundary, epoch, and replay behavior.

An exported schema is not an accepted certificate.

Export correctness requires verifier-export or extraction evidence.

## Certificate schema migration

A certificate schema may migrate across epochs.

Migration must preserve field meanings, statement interpretation, subject interpretation, verifier meaning, payload reference semantics, result modes, proof modes, scopes, dependencies, proof boundaries, trusted boundaries, statuses, invalidations, audit links, and replay behavior.

Same field names at the target epoch are insufficient.

## Certificate schema refinement

A certificate schema may refine by adding fields, sharpening dependencies, narrowing scopes, distinguishing modes, adding replay metadata, or reducing trusted boundaries.

Refinement is not migration.

A refined schema must preserve or explicitly relate to the original schema.

## Certificate schema equality

Two certificate schemas are equal only if their statement fields, subject fields, verifier fields, payload fields, result fields, proof-mode fields, scope fields, dependency fields, proof-boundary fields, trusted-boundary fields, epoch fields, status fields, invalidation fields, audit fields, and replay fields coincide.

Same schema name is insufficient.

Same field list is insufficient if interpretations differ.

## Certificate schema equivalence

Certificate schemas may be equivalent under field renaming, proof irrelevance, schema migration, quotient interpretation, observable projection, summary projection, checkpoint preservation, or audit equivalence.

Equivalence is not equality.

Consumers must state which schema equivalence they accept.

## Certificate schema as dependency

Certificate schemas are dependencies of certificates, verifier exports, extraction artifacts, histories, migrations, replay manifests, status derivations, and audit links.

Changing a certificate schema may stale all dependent artifacts.

Schema dependency must be explicit.

## Certificate certificates

Certificate-schema certificates may prove:



    WellFormedSchema(S)





    WellFormedCertificate(c,S)





    AcceptedCertificate(c)





    CertificateFresh(c,p,e,scope)





    CertificateMigrates(c_e,c_{e'})





    CertificateReplayAdmissible(c)



or statement, subject, verifier, payload, result, mode, scope, dependency, proof-boundary, trusted-boundary, status, invalidation, audit, replay, migration, refinement, equality, equivalence, and export claims.

Only accepted certificates discharge certificate-schema obligations.

## Epoch rule

`CertificateSchema.lean` artifacts are epoch-indexed by:

- certificate-schema epoch;
- statement-schema epoch;
- subject-schema epoch;
- verifier-schema epoch;
- payload-schema epoch;
- result-mode epoch;
- proof-mode epoch;
- scope epoch;
- dependency-record epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- status epoch;
- invalidation-policy epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream certificate claims.

The old certificate-schema artifact remains audit content.

## History relation

A history record depending on `CertificateSchema.lean` must record:

1. source file identity;
2. declaration identity;
3. certificate schema identity;
4. statement;
5. subject;
6. verifier;
7. payload reference;
8. result;
9. proof mode;
10. scope;
11. dependency closure;
12. proof boundary;
13. trusted boundary;
14. epoch coordinates;
15. lifecycle status;
16. invalidation behavior;
17. audit reference;
18. replay data.

The payload reference alone is insufficient.

## Replay rule

Replay of `CertificateSchema.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean`, `ObjectInterface.lean`, `RelationSchema.lean`, `Equality.lean`, `Equivalence.lean`, `ProofMode.lean`, `Scope.lean`, `Status.lean`, `DependencyRecord.lean`, `EpochParam.lean`, `ReplayParam.lean`, and `TrustedBoundary.lean`;
3. checking certificate-schema declarations;
4. checking statement, subject, verifier, payload, result, mode, scope, dependency, proof-boundary, trusted-boundary, epoch, status, invalidation, audit, and replay fields;
5. checking raw-payload versus accepted-certificate distinction;
6. checking certificate acceptance, freshness, migration, refinement, equality, and equivalence rules;
7. checking that no concrete runtime or application constants are introduced;
8. checking proof objects or trusted boundaries where present;
9. checking dependency closure and audit metadata.

If any step fails, downstream certificate claims are not replay-admissible.

## Runtime representation

`CertificateSchema.lean` may lower to:

- Lean certificate-schema records;
- statement-schema metadata;
- subject-schema metadata;
- verifier-facing certificate descriptors;
- payload-reference descriptors;
- result-mode metadata;
- dependency manifests;
- proof-boundary descriptors;
- trusted-boundary links;
- replay descriptors;
- audit references.

Runtime representation is not certificate identity.

Identity depends on statement, subject, verifier, payload, result, mode, scope, dependencies, proof boundary, trusted boundary, epochs, statuses, invalidations, audit links, and replay behavior.

## Non-collapse theorem

Let two certificate artifacts use the same raw payload.

This does not imply the certificates are equal.

They collapse only if their statements, subjects, verifiers, payload references, results, proof modes, scopes, dependencies, proof boundaries, trusted boundaries, epochs, statuses, invalidations, audit links, and replay behavior coincide.

Thus raw-payload equality is insufficient for certificate identity.

## Proof obligation

`CertificateSchema.lean` is admissible only if the framework can certify:

1. certificate statements are typed;
2. certificate subjects are typed;
3. verifier identities are explicit;
4. payload references are distinguished from accepted evidence;
5. result modes are explicit;
6. proof modes and scopes are explicit;
7. dependency closure is explicit;
8. proof boundaries and trusted boundaries are explicit;
9. epochs and statuses are explicit;
10. invalidation and audit links are replayable;
11. raw payloads are not accepted certificates;
12. concrete runtime and application constants are excluded;
13. replay can reconstruct certificate-schema declarations and dependencies.

## Exclusion rule

`CertificateSchema.lean` may not define concrete proof systems, concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application values, runtime certificate formats, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract certificate-schema infrastructure.

## Commitment rule

`CertificateSchema.lean` may define certificate schemas, fields, acceptance hooks, and replay obligations.

It cannot make raw payloads accepted certificates.

It cannot make verifier names proof.

It cannot make payload hashes statement truth.

It cannot make source certificates target-valid without migration or re-verification.

It cannot allow trusted boundaries to exceed declared statements.

It cannot infer defaults from `none` or `null`.

It cannot make stored outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SourceUnit.Variantb8273752023732599d943c76caa0e2f37e1749ed088fd6febd79a390a511f9f6

```
