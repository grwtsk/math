-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantecc9d08a1158307f9a2c4f4776969dcb37a92f38a0b6e2fa636d5301a34acd36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecc9d08a1158307f9a2c4f4776969dcb37a92f38a0b6e2fa636d5301a34acd36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variantecc9d08a1158307f9a2c4f4776969dcb37a92f38a0b6e2fa636d5301a34acd36","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ecc9d08a1158307f9a2c4f4776969dcb37a92f38a0b6e2fa636d5301a34acd36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/morphism/MorphismReplay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# MorphismReplay.lean


## Role

`MorphismReplay.lean` defines replay infrastructure for categorical morphism claims.

It specifies reconstruction of morphism records, endpoints, witnesses, domains, codomains, partiality policies, equality claims, equivalence claims, identity laws, composition laws, associativity laws, congruence claims, quotient morphisms, functoriality claims, naturality-use claims, dependency closures, epoch claims, audit references, certificates, invalidations, proof boundaries, and trusted boundaries.

Replay is not cached output.

Replay is not a runtime trace.

Replay is not a stored label.

Replay is not a file path.

Replay is not a screenshot of a diagram.

Replay is proof-relevant reconstruction of the morphism claim and all required semantic dependencies under a declared comparison relation.

## Core principle

A morphism claim is replay-admissible only when the framework can reconstruct the claim, its dependencies, its certificates, its epoch context, its audit references, its invalidation state, its proof boundary, its trusted boundary, and its comparison relation.

For a morphism:



 f:A-> B



replay must reconstruct the full record:



 (id,source,target,witness,domain,codomain,partiality,mode,scope,deps,epoch,status,certs,proofBoundary,trustedBoundary,audit,replay)



A cached value of `f(x)` does not reconstruct `f`.

A runtime trace of a call does not reconstruct `f`.

A stored name `f` does not reconstruct `f`.

## Formal shape

A morphism-replay record has schematic form:



 MorphismReplay=(subject,replayId,replayTarget,replayProcedure,replayManifest,reconstructedClaim,reconstructedDeps,reconstructedCerts,reconstructedEpochs,reconstructedAudit,reconstructedInvalidations,comparison,mode,scope,prefix,epoch,status,proofBoundary,trustedBoundary,audit,result)



where:

- `subject` records the morphism claim to replay;
- `replayId` identifies the replay record;
- `replayTarget` records what is being reconstructed;
- `replayProcedure` records how reconstruction proceeds;
- `replayManifest` records required artifacts;
- `reconstructedClaim` records the reconstructed statement;
- `reconstructedDeps` records reconstructed dependency closure;
- `reconstructedCerts` records reconstructed certificates;
- `reconstructedEpochs` records reconstructed epoch context;
- `reconstructedAudit` records reconstructed audit links;
- `reconstructedInvalidations` records invalidation state;
- `comparison` records how reconstructed and expected artifacts are compared;
- `mode` records exact, quotient, observable, approximate, replay, audit, summary, checkpoint, trusted-boundary, rejected, unknown, or research-obligated mode;
- `scope` records consumer context;
- `prefix` records history-relative position;
- `epoch` records semantic epoch;
- `status` records replay status;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records replay audit links;
- `result` records accepted, rejected, unknown, stale, audit-only, or research-obligated replay result.

The record is a reconstruction claim.

It is not the reconstructed morphism claim by itself.

## Replay target

The replay target may be:

- a primary morphism record;
- a source endpoint;
- a target endpoint;
- a witness;
- a domain predicate;
- a codomain predicate;
- a partiality policy;
- a morphism equality claim;
- a morphism equivalence claim;
- an identity morphism;
- a composition claim;
- an associativity claim;
- a congruence claim;
- a quotient morphism;
- a functoriality claim;
- a naturality-use claim;
- a dependency closure;
- an epoch claim;
- an audit record;
- a certificate;
- an invalidation record;
- a proof-boundary record;
- a trusted-boundary record.

The replay target must be typed.

A label alone is not a replay target.

## Replay manifest

The replay manifest lists all artifacts required for reconstruction.

It may include source declarations, imported declarations, object records, morphism records, endpoint records, witness definitions, domain predicates, codomain predicates, partiality policies, equality relations, equivalence relations, certificates, dependency closures, audit links, epoch records, invalidation records, proof-boundary declarations, trusted-boundary declarations, and comparison procedures.

A manifest is incomplete if replay uses any artifact not listed.

A manifest is not valid merely because it names files.

## Replay procedure

The replay procedure states how artifacts are reconstructed.

It must define:

1. artifact lookup;
2. declaration reconstruction;
3. dependency reconstruction;
4. certificate reconstruction;
5. epoch reconstruction;
6. audit reconstruction;
7. invalidation reconstruction;
8. proof-boundary reconstruction;
9. trusted-boundary reconstruction;
10. comparison against the expected claim.

The procedure must be deterministic or explicitly stochastic with certified replay semantics.

Unspecified runtime order is not a replay procedure.

## Replay comparison

Replay comparison determines whether the reconstructed artifact matches the expected artifact.

Comparison may be exact equality, quotient equivalence, observable equivalence, approximate equivalence, replay equivalence, audit equivalence, summary equivalence, checkpoint equivalence, migrated equivalence, refined equivalence, rejected comparison, unknown comparison, or research-obligated comparison.

The comparison relation must be explicit.

A byte-for-byte match is not sufficient unless byte identity is the declared comparison and decoding is trusted or certified.

## Exact replay

Exact replay reconstructs the same proof-relevant artifact.

For a morphism record, exact replay requires equality of source endpoint, target endpoint, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit references, invalidations, and replay metadata.

Exact replay cannot ignore proof-relevant fields.

Exact replay cannot be reduced to equal runtime outputs.

## Quotient replay

Quotient replay reconstructs artifacts only up to a quotient relation.

It must record quotient relation, representative policy, representative independence, congruence, retained information, lost representative information, certificates, dependencies, epoch, and replay comparison.

Quotient replay cannot support representative-sensitive consumers without recovery evidence.

A quotient-class id is not quotient replay.

## Observable replay

Observable replay reconstructs declared observables of the morphism claim.

It must record observable map, retained observable information, lost hidden information, observable comparison relation, dependencies, certificates, epoch, and replay behavior.

Observable replay supports observable consumers only.

It cannot prove hidden morphism equality unless faithfulness is certified.

## Approximate replay

Approximate replay reconstructs an artifact within an error bound:



 d(replay(subject),expected(subject))<=epsilon



It must record metric, tolerance, residual, comparison domain, codomain, error propagation, dependencies, certificates, epoch, proof boundary, and replay behavior.

Approximate replay cannot discharge exact replay obligations.

Zero-error strengthening requires a separate certificate.

## Summary replay

Summary replay reconstructs a summary of a morphism claim.

It must record summary function, retained information, omitted information, sufficiency scope, dependencies, certificates, epoch, and replay behavior.

Summary replay cannot support raw morphism equality or full reconstruction unless summary sufficiency or reconstruction is certified.

## Checkpoint replay

Checkpoint replay reconstructs from a materialized checkpoint.

It must record checkpoint payload, covered fields, omitted fields, dependency closure, invalidation policy, epoch, certificate links, proof boundary, trusted boundary, audit link, and comparison relation.

A cached output table is not checkpoint replay unless the checkpoint certificate states that it covers the claim.

A checkpoint is not proof by default.

## Audit replay

Audit replay reconstructs audit records and their links.

It may reconstruct where a claim was recorded, which certificates were attached, which invalidations occurred, and which replay manifest was declared.

Audit replay does not prove the audited claim.

It proves only audit reconstruction unless audit soundness or audit faithfulness is separately certified.

## Certificate replay

Certificate replay reconstructs certificate records.

It must reconstruct certificate subject, statement, payload reference, verifier result, certificate status, verifier boundary, proof boundary, trusted boundary, dependencies, epoch, audit links, invalidations, and replay behavior.

A certificate payload is not certificate replay.

A theorem name is not certificate replay.

A verifier name is not certificate replay.

## Dependency replay

Dependency replay reconstructs the direct and transitive dependency closure.

It must check availability, freshness, hidden dependencies, epoch compatibility, certificate compatibility, proof-boundary compatibility, trusted-boundary compatibility, audit requirements, invalidations, and scope compatibility.

Import success is not dependency replay.

Filename availability is not dependency replay.

## Epoch replay

Epoch replay reconstructs epoch validity, freshness, staleness, migration, compatibility, and invalidation judgments.

It must detect same-label reuse across epochs.

It must detect same-implementation-name reuse across epochs.

It must reject implicit migration.

Cross-epoch replay requires explicit migration or compatibility evidence.

## Invalidation replay

Invalidation replay reconstructs whether the subject was stale, superseded, rejected, migrated, refined, invalidated, or blocked for the requested consumer.

Invalidation replay must be append-only.

It must not delete old records.

It must report whether old claims remain audit content and whether current consumers may use them.

## Proof-boundary replay

Proof-boundary replay reconstructs assumptions used by the replayed claim.

These may include Lean kernel assumptions, axioms, extensionality principles, quotient soundness, finite enumeration, trusted arithmetic, trusted decoders, replay engines, extraction procedures, archives, or external verifiers.

Changing proof boundary may stale replay.

Replay must not hide proof-boundary dependencies.

## Trusted-boundary replay

Trusted-boundary replay reconstructs trusted components and their exact trusted statements.

A trusted boundary may certify only the statement it declares.

A trusted runtime trace may certify execution.

A trusted archive may certify retrieval.

A trusted decoder may certify decoding.

None of these certifies morphism validity unless the trusted statement includes morphism validity.

Boundary overreach must be rejected during replay.

## Morphism-record replay

Replay of a primary morphism record reconstructs:



 CategoryMorphism(f)



including id, source endpoint, target endpoint, witness, domain, codomain, partiality, mode, scope, dependencies, epoch, status, certificates, proof boundary, trusted boundary, audit references, invalidations, and replay metadata.

If any proof-relevant field is missing, replay is rejected, unknown, audit-only, or research-obligated.

A stored morphism name is insufficient.

## Endpoint replay

Endpoint replay reconstructs source and target endpoint claims.

It must reconstruct endpoint role, endpoint object, identity, admissibility, equality or equivalence where used, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

Runtime type annotations are not endpoint replay.

Displayed endpoint labels are not endpoint replay.

## Witness replay

Witness replay reconstructs functional, partial, relational, selected, stochastic, quotient, observable, approximate, replay, audit, trusted, rejected, unknown, or research-obligated witnesses.

For functional witnesses, replay must reconstruct action semantics or accepted evidence for them.

For relational witnesses, replay must reconstruct relation schema and graph semantics.

For stochastic witnesses, replay must reconstruct kernel, support, normalization, probability carrier, and randomness boundary.

For selected witnesses, replay must reconstruct selection policy.

Runtime calls are not witness replay.

## Domain replay

Domain replay reconstructs source-side domain predicates and domain claims.

It must reconstruct source endpoint, source type witness, predicate definition, definedness policy, totality or partiality claims, domain equality, domain equivalence, domain congruence, migration, certificates, dependencies, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A runtime input-acceptance log is not domain replay.

## Codomain replay

Codomain replay reconstructs target-side codomain predicates and output-admissibility claims.

It must reconstruct target endpoint, target type witness, codomain predicate, output-admissibility policy, preservation, reflection, equality, equivalence, congruence, migration, certificates, dependencies, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A runtime output log is not codomain replay.

## Partiality replay

Partiality replay reconstructs totality, partiality, definedness, undefinedness, rejection, unknown status, selected behavior, stochastic behavior, fallback behavior, audit-only behavior, and research obligations.

It must reconstruct interaction with domain, codomain, composition, equality, equivalence, certificates, dependencies, epoch, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

A stored `defined=true` flag is not partiality replay.

A `none` or `null` return is not categorical replay evidence.

## Equality replay

Equality replay reconstructs morphism-equality claims.

It must reconstruct compared morphisms, equality kind, endpoint equality, witness equality, domain equality, codomain equality, partiality equality, extensionality assumptions, composite equality, identity equality, comparison relation, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Same implementation name is not equality replay.

Sampled output agreement is not equality replay.

## Equivalence replay

Equivalence replay reconstructs morphism-equivalence claims.

It must reconstruct compared morphisms, relation, relation laws, endpoint relation, domain relation, codomain relation, partiality relation, witness relation, retained information, lost information, congruence, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

Equivalence replay must not collapse equivalence into equality.

## Identity replay

Identity replay reconstructs identity morphism claims:



 id_A:A-> A



It must reconstruct object `A`, source and target endpoints, endpoint identity, total domain, codomain admissibility, identity action or relation, partiality policy, left identity law, right identity law, equality or equivalence mode, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A runtime no-op is not identity replay.

## Composition replay

Composition replay reconstructs:



 g o f



It must reconstruct component morphisms, endpoint compatibility, composed domain, composed codomain, partiality propagation, composition law, equality or equivalence mode, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A call sequence is not composition replay.

A pipeline trace is not composition replay.

## Associativity replay

Associativity replay reconstructs:



 h o (g o f)=(h o g) o f



or a declared equivalence.

It must reconstruct component morphisms, both bracketings, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, comparison relation, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and replay behavior.

Runtime reassociation is not associativity replay.

## Congruence replay

Congruence replay reconstructs relation-preservation claims.

It must reconstruct construction, input relations, output relation, object congruence, morphism congruence, domain congruence, codomain congruence, partiality congruence, witness congruence, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A relation name is not congruence replay.

## Quotient replay

Quotient replay reconstructs quotient-morphism claims.

It must reconstruct raw morphism, quotient morphism, quotient endpoints, quotient relations, representative policy, representative-independence proof, quotient domain, quotient codomain, quotient partiality, quotient witness, quotient identity, quotient composition, congruence laws, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A quotient-class label is not quotient replay.

A representative id is not quotient replay.

## Functoriality replay

Functoriality replay reconstructs functorial morphism mapping.

It must reconstruct functor identity, object map, morphism map, source and target endpoint transport, identity preservation, composition preservation, equality preservation, equivalence preservation, domain transport, codomain transport, partiality transport, quotient compatibility, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

An implementation mapping table is not functoriality replay.

## Naturality-use replay

Naturality-use replay reconstructs naturality-square morphism use.

It must reconstruct transformation context, functors, source morphism, source and target objects, functor images, component morphisms, left path, right path, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, path comparison, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A displayed commutative diagram is not naturality replay.

A stored square image is not naturality replay.

## Replay status

Replay status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, checkpoint-valid, replay-linked, trusted-boundary, and research-obligated.

Accepted replay for audit does not imply accepted replay for exact proof.

## Rejected replay

Replay may be rejected.

Reasons include missing artifact, malformed manifest, hidden dependency, stale dependency, invalid epoch, rejected certificate, proof-boundary mismatch, trusted-boundary overreach, audit-chain failure, invalidation conflict, comparison failure, runtime-only evidence, cached-output-only evidence, or application-constant leakage.

Rejected replay cannot support morphism admissibility.

## Unknown replay

Unknown replay records that reconstruction cannot be determined.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block morphism use, equality, composition, associativity, quotienting, functoriality, naturality, migration, refinement, audit soundness, or certificate reuse.

Unknown replay must not be treated as audit success.

## Research-obligated replay

Research-obligated replay records that replay is required but unavailable.

It must identify subject, missing artifact, missing dependency, missing comparison, missing certificate, blocked consumer, mode, scope, epoch, proof boundary, trusted boundary, and audit context.

It does not prove replay.

It prevents silent use of unreconstructable morphism claims.

## Replay migration

Replay procedures may migrate across epochs.

Replay migration relates:



 Replay_e(subject_e) leads-to Replay_{e'}(subject_{e'})



It must preserve or explicitly transform target, procedure, manifest, comparison relation, dependency closure, certificates, proof boundary, trusted boundary, audit links, invalidations, and result interpretation.

Same replay procedure name across epochs is insufficient.

## Replay refinement

Replay refinement may add missing fields, strengthen comparison, replace cached evidence with reconstructed evidence, reduce trusted-boundary reliance, add dependency closure, or improve audit traceability.

Refinement is not migration.

If epoch changes, replay migration is also required.

A refined replay record does not automatically prove the subject.

## Replay invalidation

Replay claims may become stale if replay procedure, manifest, comparison relation, dependency closure, certificate status, proof boundary, trusted boundary, audit schema, replay schema, epoch, invalidation policy, or subject changes.

Replay invalidation is append-only.

The old replay result remains audit content.

It cannot be silently overwritten.

## Replay equality

Two replay records are equal only if subject, replay id, replay target, replay procedure, replay manifest, reconstructed claim, reconstructed dependencies, reconstructed certificates, reconstructed epochs, reconstructed audit links, reconstructed invalidations, comparison relation, mode, scope, prefix, epoch, status, proof boundary, trusted boundary, audit links, and result coincide.

Same replay name is insufficient.

Same cached output is insufficient.

## Replay equivalence

Replay records may be equivalent under a declared replay relation.

Examples include quotient replay equivalence, observable replay equivalence, approximate replay equivalence, audit replay equivalence, migrated replay equivalence, refined replay equivalence, summary replay equivalence, checkpoint replay equivalence, or path replay equivalence.

Replay equivalence is not exact replay equality.

Consumers must state which replay equivalence they accept.

## Replay congruence

Replay must be congruent with constructions before replayed equivalences can be used compositionally.

For composition, one may require:



 Replay(g o f)~ Replay(g) o Replay(f)



under a declared relation.

For functoriality:



 Replay(F(f))~ F(Replay(f))



Congruence must be certified.

Replay of components does not automatically replay the construction.

## Replay path coherence

Multiple replay procedures may reconstruct the same subject.

Path coherence states that those reconstructions agree under a declared comparison.

Without path coherence, the replay path is part of the evidence.

Path-coherence certificates must record paths, manifests, dependencies, certificates, epochs, proof boundaries, trusted boundaries, audit links, invalidations, and comparison relation.

## Replay dependency closure

Replay records have their own dependencies.

They may depend on source files, declaration schemas, reconstruction procedures, dependency manifests, certificate records, audit records, invalidation records, proof boundaries, trusted boundaries, archive records, verifier records, extraction records, and comparison procedures.

Replay dependency closure must be explicit.

Replay cannot hide its own dependencies.

## Cached outputs are not replay

A cached output may record one observed result.

It does not reconstruct the morphism claim.

It does not reconstruct domain, codomain, partiality, witness semantics, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, or epoch context.

A cached output may be checkpoint evidence only if a checkpoint certificate states its coverage.

Otherwise it is audit data at most.

## Runtime traces are not replay

A runtime trace may record executed calls.

It does not reconstruct categorical morphisms unless the trace is connected by certificates to typed morphism claims and semantic witnesses.

A trace does not prove endpoint admissibility, domain membership, codomain admissibility, partiality policy, equality, equivalence, composition, or functoriality.

Runtime traces are implementation artifacts.

## Stored labels are not replay

A stored object label, morphism label, theorem label, certificate label, quotient-class label, diagram label, or file label does not reconstruct the artifact.

Labels may support lookup.

They do not establish semantic identity.

Replay must resolve labels to typed records with epochs, dependencies, certificates, audit links, invalidations, proof boundaries, trusted boundaries, and comparison relation.

## Replay and trusted boundaries

A trusted boundary may participate in replay only through its declared statement.

If replay relies on a trusted archive, the archive certifies retrieval.

If replay relies on a trusted decoder, the decoder certifies decoding.

If replay relies on a trusted runtime, the runtime certifies execution.

None of these certifies morphism validity unless the statement includes it.

## Replay and proof boundaries

Replay may depend on proof boundaries.

If reconstruction relies on reflection, extraction, external verification, finite enumeration, hash commitments, archive lookup, trusted logs, replay engines, or proof erasure, those proof-boundary dependencies must be explicit.

Changing proof boundary may stale replay.

## Replay and applications

Application-specific replay belongs outside this abstract file.

`MorphismReplay.lean` may define generic hooks for application-instantiated morphism replay records.

It must not define concrete bitmap replay, matrix replay, token replay, image replay, hash constants, Feistel replay, UI replay, browser logs, runtime payload replay, or application frame replay.

Application replay may instantiate the abstract schema outside this file.

## Replay and `none`

No replay rule may treat `none`, `null`, missing artifact, missing output, missing dependency, missing certificate, absent runtime binding, or missing audit link as a mathematical default.

A missing replay artifact is missing.

It may cause rejection, unknown status, audit-only status, or research obligation.

It cannot be silently replaced by an empty reconstruction.

## Replay certificates

Replay certificates may prove:



 ReplayAdmissible(subject)





 ReplayReconstructs(subject,reconstructed)





 ReplayExact(subject)





 ReplayEquivalent(subject,R)





 ReplayManifestComplete(subject,manifest)





 ReplayNoHiddenDeps(subject)





 ReplayDetectsInvalidations(subject)





 ReplayMigrates(subject_e,subject_{e'})



or replay equality, replay equivalence, replay congruence, replay refinement, replay invalidation, replay audit, dependency closure, freshness, path coherence, proof-boundary compatibility, and trusted-boundary containment.

Only accepted replay certificates discharge replay obligations.

They do not automatically prove the replayed subject unless the certificate states that claim.

## Epoch rule

`MorphismReplay.lean` artifacts are epoch-indexed by:

- morphism-replay schema epoch;
- replay-subject epoch;
- replay-target epoch;
- replay-procedure epoch;
- replay-manifest epoch;
- comparison-relation epoch;
- reconstructed-claim epoch;
- reconstructed-dependency epoch;
- reconstructed-certificate epoch;
- reconstructed-audit epoch;
- reconstructed-invalidation epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-status epoch;
- replay-migration epoch;
- replay-refinement epoch;
- replay-invalidation epoch.

Changing any component may stale downstream replay claims.

The old replay artifact remains audit content.

## History relation

A history record depending on `MorphismReplay.lean` must record:

1. source file identity;
2. declaration identity;
3. replay subject;
4. replay id;
5. replay target;
6. replay procedure;
7. replay manifest;
8. reconstructed claim;
9. reconstructed dependency closure;
10. reconstructed certificates;
11. reconstructed epoch context;
12. reconstructed audit links;
13. reconstructed invalidations;
14. comparison relation;
15. proof mode and scope;
16. prefix and epoch;
17. replay status;
18. proof boundary;
19. trusted boundary where used;
20. audit reference;
21. replay result.

Cached outputs, runtime traces, and stored labels alone are insufficient.

## Replay rule

Replay of `MorphismReplay.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, and all morphism files that define replay subjects;
3. reconstructing replay-record declarations;
4. reconstructing replay targets and manifests;
5. reconstructing replay procedures;
6. reconstructing subject claims;
7. reconstructing direct and transitive dependencies;
8. reconstructing certificates and certificate statuses;
9. reconstructing epoch context;
10. reconstructing audit links and audit status;
11. reconstructing invalidation state;
12. checking proof-boundary and trusted-boundary compatibility;
13. applying the declared comparison relation;
14. checking exact, quotient, observable, approximate, summary, checkpoint, audit, rejected, unknown, and research-obligated replay variants;
15. checking that cached outputs, runtime traces, and stored labels are not treated as replay evidence;
16. checking that no runtime code or application constants are introduced;
17. recording accepted, rejected, unknown, stale, audit-only, or research-obligated replay status.

If any step fails, downstream morphism-replay claims are not replay-admissible.

## Runtime representation

`MorphismReplay.lean` may lower to:

- Lean replay predicates;
- replay-record declarations;
- replay-manifest descriptors;
- reconstruction-procedure descriptors;
- comparison descriptors;
- replay-status descriptors;
- replay-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors.

Runtime representation is not replay truth.

Replay identity depends on subject, target, procedure, manifest, reconstruction, comparison, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit references, invalidations, and result.

## Non-collapse theorem

Let a cached output, runtime trace, stored label, displayed diagram, function name, file path, theorem name, certificate name, or replay-reference id be present.

This does not imply replay.

Replay holds only when the typed subject and all required records are reconstructed under the declared procedure, manifest, dependency closure, certificate state, epoch state, audit state, invalidation state, proof boundary, trusted boundary, and comparison relation.

Thus cached outputs, runtime traces, and stored labels are insufficient for replay evidence.

## Proof obligation

`MorphismReplay.lean` is admissible only if the framework can certify:

1. replay targets are typed;
2. replay procedures are explicit;
3. replay manifests are explicit;
4. reconstructed claims are compared under declared relations;
5. dependency closure is reconstructed;
6. certificates are reconstructed with status;
7. epochs are reconstructed;
8. audit links are reconstructed but not treated as proof;
9. invalidations are reconstructed;
10. proof boundaries and trusted boundaries are explicit;
11. exact, quotient, observable, approximate, summary, checkpoint, audit, rejected, unknown, and research-obligated replay modes are distinct;
12. cached outputs, runtime traces, and stored labels are excluded as replay evidence;
13. application constants are excluded;
14. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismReplay.lean` may not define concrete carrier replay, concrete spectrum replay, authority replay, tensor replay, sheaf replay, operator replay, history implementation replay, migration application replay, refinement application replay, browser replay, runtime telemetry replay, Rust replay, WASM replay, JavaScript replay, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-replay infrastructure.

## Commitment rule

`MorphismReplay.lean` may define reconstruction and replay admissibility for morphism claims.

It cannot treat cached outputs as replay.

It cannot treat runtime traces as replay.

It cannot treat stored labels as replay.

It cannot treat audit links as replay success.

It cannot treat certificate names as certificate replay.

It cannot hide replay dependencies.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantecc9d08a1158307f9a2c4f4776969dcb37a92f38a0b6e2fa636d5301a34acd36

