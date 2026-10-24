# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismCertificate.Variant024dca4d20e97ece790a361447dddf72ed5f6039476c506a06595e0a9189f87a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1878ca3c3fd90c5de4b29380749fb1d22ba553b` · SHA-256 `024dca4d20e97ece790a361447dddf72ed5f6039476c506a06595e0a9189f87a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# MorphismCertificate.lean


## Role

`MorphismCertificate.lean` defines certificate infrastructure for categorical morphism claims.

It specifies accepted certificates for morphism records, endpoints, witnesses, domains, codomains, partiality policies, identity morphisms, composition, associativity, equality, equivalence, congruence, quotient descent, functoriality, naturality use, dependency closure, epoch validity, audit soundness, replay admissibility, invalidations, proof boundaries, and trusted boundaries.

A certificate is not a raw payload.

It is not a theorem name.

It is not a verifier name.

It is not an audit link.

It is not a runtime trace.

It is not a cached output.

It is a typed accepted evidence record whose subject, statement, proof or verification result, dependencies, epoch, scope, mode, proof boundary, trusted boundary, audit links, invalidations, and replay behavior are explicit.

## Core principle

A morphism claim may be consumed only when its required certificate obligations are discharged by accepted certificates.

For a claim:



 Claim(f)



a certificate may prove:



 Certifies(cert,Claim(f),mode,scope)



only if the certificate is typed, accepted, dependency-closed, epoch-fresh, boundary-compatible, audit-traceable, invalidation-compatible, and replay-admissible.

The presence of a certificate payload does not imply certification.

The presence of a theorem name does not imply certification.

The presence of a verifier name does not imply certification.

The presence of an audit link does not imply certification.

## Formal shape

A morphism-certificate record has schematic form:



 MorphismCertificate=(certId,subject,statement,certificateKind,payload,proofObject,verifier,result,mode,scope,prefix,epoch,deps,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `certId` identifies the certificate;
- `subject` records the certified morphism claim or morphism-derived claim;
- `statement` records the exact proposition certified;
- `certificateKind` records the kind of morphism evidence;
- `payload` records proof, verifier output, witness, hash, finite enumeration, or external evidence payload where used;
- `proofObject` records Lean proof object or proof reference where applicable;
- `verifier` records verifier identity where external verification is used;
- `result` records accepted, rejected, unknown, stale, migrated, refined, audit-only, or research-obligated result;
- `mode` records exact, quotient, observable, approximate, replay, audit, summary, checkpoint, trusted-boundary, rejected, unknown, or research-obligated mode;
- `scope` records consumer context;
- `prefix` records history-relative position;
- `epoch` records semantic epoch;
- `deps` records dependency closure;
- `status` records lifecycle status;
- `invalidations` records stale or blocking effects;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record is accepted evidence only when `status` and `result` permit the requested consumer.

## Certificate subject

The certificate subject must be typed.

Subjects may include:

- a primary morphism record;
- a source endpoint;
- a target endpoint;
- a witness;
- a domain predicate;
- a codomain predicate;
- a partiality policy;
- a totality claim;
- a definedness claim;
- an identity morphism;
- a composition claim;
- an associativity claim;
- a morphism equality claim;
- a morphism equivalence claim;
- a congruence claim;
- a quotient descent claim;
- a functoriality claim;
- a naturality-use claim;
- a dependency closure;
- an epoch validity claim;
- an audit-soundness claim;
- a replay-admissibility claim;
- an invalidation claim;
- a proof-boundary claim;
- a trusted-boundary claim.

A label alone is not a certificate subject.

## Certificate statement

The statement is the exact proposition certified.

Examples include:



 CategoryMorphism(f)





 f:A-> B





 EndpointAdmissible(f,A,Source,mode,scope)





 D_f(x)





 C_f(y)





 MorphismTotal(f)





 g o f=h





 h o (g o f)=(h o g) o f





 f=g





 f~ g



The certificate statement must be explicit.

A theorem name is not the statement unless resolved to a typed proposition under an epoch and proof boundary.

## Certificate kind

Certificate kinds classify evidence.

Possible kinds include:

- morphism-record certificate;
- endpoint certificate;
- witness certificate;
- domain certificate;
- codomain certificate;
- partiality certificate;
- identity certificate;
- composition certificate;
- associativity certificate;
- equality certificate;
- equivalence certificate;
- congruence certificate;
- quotient certificate;
- functoriality certificate;
- naturality-use certificate;
- dependency certificate;
- epoch certificate;
- audit certificate;
- replay certificate;
- invalidation certificate;
- proof-boundary certificate;
- trusted-boundary certificate;
- migration certificate;
- refinement certificate;
- rejection certificate;
- unknown certificate;
- research-obligation certificate.

Certificate kind does not determine acceptance.

Acceptance requires status, dependencies, epoch, boundary, invalidation, and replay checks.

## Accepted certificate

An accepted certificate is one whose result is accepted for the requested mode and scope.

Acceptance requires:

1. typed subject;
2. explicit statement;
3. valid proof object or verifier result;
4. dependency closure;
5. epoch freshness;
6. proof-boundary compatibility;
7. trusted-boundary containment;
8. audit traceability where required;
9. invalidation compatibility;
10. replay admissibility.

A certificate accepted for audit may not be accepted for proof.

A certificate accepted for approximate mode may not be accepted for exact mode.

## Rejected certificate

A rejected certificate records failed evidence.

Reasons include malformed subject, malformed statement, invalid proof object, failed verifier result, stale dependency, invalid epoch, proof-boundary mismatch, trusted-boundary overreach, missing audit link, replay failure, invalidation conflict, abstraction violation, or unsupported mode.

Rejected certificates are audit content.

They cannot discharge morphism obligations.

## Unknown certificate

An unknown certificate records that acceptance cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block morphism validity, equality, composition, associativity, quotienting, functoriality, naturality, replay, migration, refinement, or certificate reuse.

Unknown certificate status may generate a research obligation.

## Research-obligated certificate

A research-obligated certificate records a missing certificate required by a downstream consumer.

It must identify subject, statement, certificate kind, missing evidence, blocked consumer, mode, scope, epoch, dependencies, proof boundary, trusted boundary, audit context, and replay context.

It does not prove the statement.

It prevents silent use of uncertified morphism claims.

## Payload is not certificate

A raw payload is evidence material.

It is not an accepted certificate by itself.

Payloads may include proof terms, serialized verifier results, hashes, finite enumerations, external logs, runtime traces, witness tables, counterexample records, or archives.

A payload becomes certificate evidence only after being typed, checked, scoped, dependency-closed, epoch-indexed, boundary-recorded, audit-linked, invalidation-checked, and replay-admissible.

## Theorem name is not certificate

A theorem name is a locator.

It is not an accepted certificate.

The theorem must be resolved to a proposition, proof object, proof boundary, dependency closure, epoch, status, audit reference, invalidation state, and replay procedure.

Renaming, shadowing, migration, or stale theorem references must not silently preserve certificate acceptance.

## Verifier name is not certificate

A verifier name identifies a process or trusted component.

It does not certify a statement by itself.

The verifier result, verifier input, verifier version, verifier boundary, trusted statement, dependency closure, epoch, audit record, invalidation state, and replay behavior must be recorded.

A named verifier without an accepted result proves nothing.

## Audit link is not certificate

An audit link records provenance.

It does not prove the certified statement.

A certificate may cite an audit link, and an audit record may refer to a certificate.

Neither implication is automatic.

Audit soundness or audit faithfulness requires a separate accepted certificate.

## Morphism-record certificate

A morphism-record certificate may prove:



 CategoryMorphism(f)



or:



 f:A-> B



It must certify source endpoint, target endpoint, witness, domain, codomain, partiality, mode, scope, dependencies, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A record constructor alone is not enough if admissibility is required.

## Endpoint certificate

Endpoint certificates may prove:



 MorphismSource(f,A)





 MorphismTarget(f,B)





 EndpointAdmissible(f,A,role,mode,scope)



or endpoint equality, endpoint equivalence, endpoint migration, endpoint freshness, endpoint replay, and endpoint invalidation claims.

Endpoint labels, runtime types, or implementation signatures are not endpoint certificates.

## Witness certificate

Witness certificates prove that the morphism witness is valid for the declared source, target, domain, codomain, partiality, mode, and scope.

They may certify functional action, graph relation, selected target, stochastic kernel, quotient witness, observable witness, approximate witness, trusted-boundary witness, replay witness, or audit witness.

Runtime function presence is not a witness certificate.

A sampled graph is not a witness certificate unless finite-exhaustive or otherwise sufficient under the stated scope.

## Domain certificate

Domain certificates may prove:



 D_f(x)





 forall x, D_f(x)





 D_f(x)<=> D_g(x)



or domain preservation, reflection, restriction, extension, congruence, migration, freshness, invalidation, and replay claims.

Runtime input acceptance is not a domain certificate.

Source-object membership is not domain membership unless an accepted certificate proves the inclusion.

## Codomain certificate

Codomain certificates may prove:



 C_f(y)





 D_f(x)=> C_f(f(x))





 D_f(x) and R_f(x,y)=> C_f(y)



or codomain preservation, reflection, inclusion, equality, equivalence, congruence, migration, freshness, invalidation, and replay claims.

Runtime output production is not a codomain certificate.

Target-object membership is not codomain admissibility unless certified.

## Partiality certificate

Partiality certificates may prove totality, partiality, definedness, undefinedness, rejection, unknown status, selection validity, stochastic definedness, fallback validity, audit-only status, or research obligation.

A totality certificate may prove:



 MorphismTotal(f)



A definedness certificate may prove:



 Defined_f(x)



A fallback certificate must prove fallback is part of the morphism semantics.

Runtime exception behavior, `none`, `null`, or fallback output is not a partiality certificate by default.

## Identity certificate

Identity certificates may prove:



 id_A:A-> A





 id_B o f=f





 f o id_A=f



or identity-domain, identity-codomain, identity-partiality, identity congruence, identity migration, and identity replay claims.

Runtime no-ops are not identity certificates.

Repeated object labels are not identity certificates.

## Composition certificate

Composition certificates may prove:



 Composable(f,g)





 g o f=h



or composed-domain, composed-codomain, endpoint-compatibility, partiality-propagation, relational-composition, selected-composition, stochastic-composition, quotient-composition, observable-composition, approximate-composition, migration, invalidation, and replay claims.

Runtime function piping is not a composition certificate.

Call sequencing is not a composition certificate.

## Associativity certificate

Associativity certificates may prove:



 h o (g o f)=(h o g) o f



or a declared weaker equivalence.

They must certify both bracketings, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, comparison relation, dependencies, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Syntactic reassociation of runtime call chains is not an associativity certificate.

## Equality certificate

Equality certificates may prove exact morphism equality, endpoint equality, witness equality, domain equality, codomain equality, partiality equality, extensional equality, equality of identities, equality of composites, certificate-aware equality, replay equality, or audit equality.

Exact equality certificates must not collapse quotient, observable, approximate, replay, or audit equivalence into equality.

Implementation names, runtime functions, and sampled outputs are not equality certificates.

## Equivalence certificate

Equivalence certificates may prove extensional, quotient, observable, approximate, replay, audit, migrated, refined, or path-based morphism equivalence.

They must record relation, relation laws, endpoint relation, domain relation, codomain relation, partiality relation, witness relation, retained information, lost information, congruence, dependencies, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Equivalence certificates do not prove equality unless strengthening is certified.

## Congruence certificate

Congruence certificates may prove that a construction preserves a relation.

They may certify identity congruence, composition congruence, associativity congruence, functorial congruence, naturality-use congruence, quotient descent, replay congruence, migration congruence, refinement congruence, domain congruence, codomain congruence, partiality congruence, or witness congruence.

A relation name is not a congruence certificate.

A construction preserving sampled outputs is not congruence evidence.

## Quotient certificate

Quotient certificates may prove quotient-morphism descent:



 MorphismDescends(f,~_A,~_B)



or representative independence, quotient-domain compatibility, quotient-codomain compatibility, quotient-partiality compatibility, quotient-witness compatibility, quotient identity, quotient composition, quotient associativity, quotient functoriality, quotient naturality use, quotient migration, and quotient replay.

A quotient-class label is not a quotient certificate.

A representative id is not quotient evidence.

## Functoriality certificate

Functoriality certificates may prove:



 F(f):F(A)-> F(B)





 F(id_A)=id_{F(A)}





 F(g o f)=F(g) o F(f)



or object-map validity, morphism-map validity, endpoint transport, equality preservation, equivalence preservation, domain transport, codomain transport, partiality transport, quotient compatibility, faithfulness, fullness, migration, invalidation, and replay claims.

Implementation-level mapping tables are not functoriality certificates.

## Naturality-use certificate

Naturality-use certificates may prove:



 G(f) o eta_A=eta_B o F(f)



or a declared weaker equivalence.

They must certify functor images, component morphisms, both path compositions, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, path comparison, dependencies, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Displayed commutative diagrams are not naturality certificates.

## Dependency certificate

Dependency certificates may prove direct dependencies, transitive dependencies, dependency closure, dependency freshness, dependency availability, absence of hidden dependencies, dependency migration, dependency refinement, dependency invalidation, dependency audit, and dependency replay.

Imports are not dependency certificates.

Filenames are not dependency certificates.

Labels are not dependency certificates.

## Epoch certificate

Epoch certificates may prove validity at an epoch, freshness at an epoch, staleness at an epoch, migration across epochs, epoch compatibility, epoch equality, epoch equivalence, epoch congruence, invalidation propagation, and replay preservation.

Same labels or implementation names across epochs are not epoch certificates.

Chronological order is not migration evidence.

## Audit certificate

Audit certificates may prove typed audit reference, audit completeness, audit soundness, audit faithfulness, audit migration, audit refinement, audit invalidation, audit replay admissibility, and audit path coherence.

An audit certificate does not automatically prove the audited morphism claim.

Only a certificate whose statement explicitly includes audit soundness or faithfulness may bridge audit to proof.

## Replay certificate

Replay certificates may prove replay admissibility, replay exactness, replay equivalence, replay-manifest completeness, absence of hidden replay dependencies, replay invalidation detection, replay migration, replay refinement, replay congruence, and replay path coherence.

A replay reference id is not a replay certificate.

A cached output is not a replay certificate.

A runtime trace is not a replay certificate.

## Invalidation certificate

Invalidation certificates may prove that a morphism claim, dependency, certificate, epoch claim, audit record, or replay record is stale, superseded, rejected, migrated, refined, invalidated, or blocked.

Invalidation certificates are append-only.

They do not erase old records.

They determine whether a consumer may still use a prior certificate.

## Proof-boundary certificate

Proof-boundary certificates record and justify assumptions used by morphism certificates.

They may certify Lean-kernel assumptions, axioms, extensionality principles, quotient soundness, finite enumeration, extraction assumptions, replay assumptions, archive assumptions, or external-verifier assumptions.

A hidden proof boundary invalidates certificate replay.

Changing a proof boundary may stale certificates.

## Trusted-boundary certificate

Trusted-boundary certificates record trusted components and their exact trusted statements.

A trusted component supports only the statement it is trusted to provide.

A trusted runtime may certify execution.

A trusted decoder may certify decoding.

A trusted verifier may certify a result.

None of these certifies morphism validity unless the trusted statement includes that validity claim.

## Certificate status

Certificate status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, replay-linked, trusted-boundary, and research-obligated.

A certificate accepted in one scope may be invalid in another.

Status must be replayable.

## Certificate dependencies

Every certificate has dependencies.

These may include subject records, statement schemas, proof objects, verifiers, verifier inputs, verifier outputs, endpoint records, witness records, domain and codomain records, partiality records, equality and equivalence relations, law records, dependency closures, epoch records, audit links, invalidation records, proof boundaries, trusted boundaries, and replay procedures.

Certificate dependency closure must be explicit.

A certificate cannot hide its own dependencies.

## Certificate epoch

Certificates are epoch-indexed.

A certificate accepted at epoch `e` is not automatically accepted at epoch `e'`.

Cross-epoch use requires certificate migration, re-verification, or explicit preservation.

Same certificate id or theorem name across epochs is insufficient.

## Certificate migration

Certificate migration relates certificates across epochs:



 cert_e leads-to cert_{e'}



It must preserve or explicitly transform subject, statement, proof object, verifier result, dependencies, proof boundary, trusted boundary, audit links, invalidations, mode, scope, and replay behavior.

Migration of a subject does not automatically migrate its certificate.

## Certificate refinement

Certificate refinement may strengthen a statement, narrow a scope, remove assumptions, reduce trusted-boundary reliance, add replay metadata, improve dependency closure, or replace an approximate result with an exact result.

Refinement is not migration.

If epoch changes, certificate migration is also required.

A refined certificate does not erase the old certificate.

## Certificate invalidation

A certificate may become stale if subject, statement, payload, proof object, verifier, verifier result, dependencies, proof boundary, trusted boundary, epoch, audit schema, replay schema, invalidation policy, or consumer scope changes.

Invalidation is append-only.

The old certificate remains audit content.

A stale certificate cannot discharge current obligations unless audit-only scope permits it.

## Certificate audit

Certificate audit links trace certificate origin, storage, verification, acceptance, rejection, migration, refinement, invalidation, and replay.

Audit links do not make a certificate accepted.

Certificate acceptance requires status, result, dependencies, epoch, boundary, invalidation, and replay checks.

A certificate audit link is provenance, not proof.

## Certificate replay

Certificate replay reconstructs certificate subject, statement, kind, payload, proof object, verifier, verifier result, mode, scope, epoch, dependencies, status, invalidations, proof boundary, trusted boundary, audit links, and comparison relation.

A theorem name is not certificate replay.

A verifier name is not certificate replay.

A raw payload is not certificate replay.

## Certificate equality

Two certificates are equal only if cert id, subject, statement, kind, payload, proof object, verifier, result, mode, scope, prefix, epoch, dependencies, status, invalidations, proof boundary, trusted boundary, audit links, and replay behavior coincide.

Same theorem name is insufficient.

Same payload hash is insufficient.

Same verifier name is insufficient.

## Certificate equivalence

Certificates may be equivalent under a declared relation.

Examples include migrated certificate equivalence, refined certificate equivalence, replay certificate equivalence, audit certificate equivalence, quotient certificate equivalence, observable certificate equivalence, approximate certificate equivalence, or path certificate equivalence.

Certificate equivalence is not certificate equality.

Consumers must state which certificate equivalence they accept.

## Certificate congruence

Certificates may be transported across equality or equivalence only if certificate congruence is certified.

If:



 f~ g



then a certificate for `f` cannot be reused for `g` unless the certified statement is congruent under that relation.

Certificate congruence must transform subject, statement, dependencies, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

## Certificate path coherence

Multiple certificates may prove the same statement.

Path coherence states that their conclusions are compatible under the declared relation.

Without path coherence, the certificate path may remain proof-relevant or audit-relevant.

Path-coherence certificates must record certificate identities, statements, proof boundaries, trusted boundaries, dependencies, epochs, audit links, invalidations, and replay behavior.

## Certificate mode

Certificate mode determines what the certificate may discharge.

Exact certificates may discharge exact obligations.

Quotient certificates discharge quotient obligations.

Observable certificates discharge observable obligations.

Approximate certificates discharge approximate obligations.

Audit-only certificates discharge audit obligations only.

Rejected and unknown certificates discharge no positive obligation.

Mode cannot be silently strengthened.

## Certificate scope

Certificate scope determines where the certificate may be consumed.

A certificate may be valid for display, audit, replay, proof, composition, quotienting, functoriality, naturality, migration, refinement, or application-instantiation.

A certificate valid for one scope is not automatically valid for another.

Scope must be explicit.

## Certificate and trusted boundaries

External or non-Lean verification enters through trusted-boundary certificates.

The certificate must state what the trusted component is trusted to prove.

Trusted-boundary certificates must avoid overreach.

If a trusted verifier certifies only syntax, it cannot be used as a semantic morphism certificate.

If a trusted runtime certifies only execution, it cannot prove categorical equality.

## Certificate and proof boundaries

Lean proof objects and external verifier results may depend on proof boundaries.

Proof boundaries must record axioms, extensionality principles, quotient soundness, finite enumeration, extraction, reflection, archive lookup, trusted arithmetic, replay procedures, and external-verifier assumptions where used.

Hidden proof-boundary assumptions invalidate certificate replay.

## Certificate and applications

Application-specific certificates belong outside this abstract file.

`MorphismCertificate.lean` may define generic hooks for application-instantiated morphism certificates.

It must not define concrete bitmap certificates, matrix certificates, token certificates, image certificates, hash constants, Feistel certificates, UI certificates, browser logs, runtime payload certificates, or application frame certificates.

Application certificates may instantiate the abstract schema outside this file.

## Certificate and `none`

No certificate rule may treat `none`, `null`, missing payload, missing proof object, missing verifier result, missing audit link, missing replay data, or absent runtime binding as a mathematical default.

A missing certificate field is missing.

It may cause rejection, unknown status, audit-only status, or research obligation.

It cannot be silently treated as an empty proof.

## Certificate certificates

Meta-certificates may prove certificate validity.

They may prove:



 CertificateAccepted(cert,statement,mode,scope)





 CertificateRejected(cert,reason)





 CertificateReplayAdmissible(cert)





 CertificateMigrates(cert_e,cert_{e'})





 CertificateInvalidated(cert,reason)



or certificate equality, equivalence, congruence, dependency closure, audit, replay, path coherence, proof-boundary compatibility, and trusted-boundary containment.

Meta-certificates must obey the same dependency, epoch, boundary, audit, invalidation, and replay discipline.

## Epoch rule

`MorphismCertificate.lean` artifacts are epoch-indexed by:

- morphism-certificate schema epoch;
- certificate-id epoch;
- subject epoch;
- statement epoch;
- certificate-kind epoch;
- payload epoch;
- proof-object epoch;
- verifier epoch;
- verifier-result epoch;
- mode epoch;
- scope epoch;
- dependency epoch;
- status epoch;
- invalidation epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch;
- certificate-migration epoch;
- certificate-refinement epoch;
- certificate-replay epoch.

Changing any component may stale downstream certificate claims.

The old certificate artifact remains audit content.

## History relation

A history record depending on `MorphismCertificate.lean` must record:

1. source file identity;
2. declaration identity;
3. certificate id;
4. certificate subject;
5. certified statement;
6. certificate kind;
7. payload reference;
8. proof object reference where used;
9. verifier identity where used;
10. verifier result where used;
11. proof mode and scope;
12. prefix and epoch;
13. dependency closure;
14. certificate status;
15. invalidation behavior;
16. proof boundary;
17. trusted boundary where used;
18. audit reference;
19. replay data.

Raw payloads, theorem names, verifier names, and audit links alone are insufficient.

## Replay rule

Replay of `MorphismCertificate.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, and all morphism files that define certified subjects;
3. reconstructing certificate-record declarations;
4. reconstructing certificate subject;
5. reconstructing certificate statement;
6. reconstructing certificate kind;
7. reconstructing payload, proof object, verifier result, or trusted-boundary statement where used;
8. reconstructing dependency closure;
9. checking epoch freshness;
10. checking certificate status and result;
11. checking invalidation state;
12. checking proof-boundary compatibility;
13. checking trusted-boundary containment;
14. checking audit references;
15. checking replay metadata;
16. checking that raw payloads, theorem names, verifier names, and audit links are not treated as accepted certificates;
17. checking that no runtime code or application constants are introduced.

If any step fails, downstream morphism-certificate claims are not replay-admissible.

## Runtime representation

`MorphismCertificate.lean` may lower to:

- Lean certificate predicates;
- certificate-record declarations;
- certificate-kind descriptors;
- payload descriptors;
- verifier-result descriptors;
- certificate-status descriptors;
- certificate-invalidation descriptors;
- certificate-audit descriptors;
- certificate-replay descriptors;
- dependency manifests.

Runtime representation is not certificate acceptance.

Certificate identity depends on subject, statement, kind, payload, proof object, verifier result, mode, scope, prefix, epoch, dependencies, status, invalidations, proof boundary, trusted boundary, audit links, and replay behavior.

## Non-collapse theorem

Let a raw payload, theorem name, verifier name, audit link, runtime trace, cached output, filename, or displayed proof label be present.

This does not imply an accepted certificate.

An accepted certificate exists only when the typed certificate record, statement, result, dependencies, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and replay behavior are accepted for the required mode and scope.

Thus raw payloads, theorem names, verifier names, and audit links are insufficient as accepted certificates.

## Proof obligation

`MorphismCertificate.lean` is admissible only if the framework can certify:

1. certificate subjects are typed;
2. certificate statements are explicit;
3. certificate kinds are explicit;
4. acceptance status is explicit;
5. rejected, unknown, stale, audit-only, approximate, quotient-valid, observable-valid, and research-obligated certificates are distinct;
6. dependencies are explicit;
7. epochs are explicit;
8. invalidations are explicit;
9. proof boundaries are explicit;
10. trusted boundaries are explicit;
11. audit links are traceability, not proof;
12. replay behavior is explicit;
13. raw payloads, theorem names, verifier names, and audit links are excluded as accepted certificates;
14. application constants are excluded;
15. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismCertificate.lean` may not define concrete carrier certificates, concrete spectrum certificates, authority certificates, tensor certificates, sheaf certificates, operator certificates, history implementation certificates, migration application certificates, refinement application certificates, browser certificates, runtime telemetry certificates, Rust certificates, WASM certificates, JavaScript certificates, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-certificate infrastructure.

## Commitment rule

`MorphismCertificate.lean` may define accepted evidence records for morphism claims.

It cannot treat raw payloads as accepted certificates.

It cannot treat theorem names as accepted certificates.

It cannot treat verifier names as accepted certificates.

It cannot treat audit links as accepted certificates.

It cannot treat runtime traces or cached outputs as certificates.

It cannot hide certificate dependencies.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot mutate history.

It cannot commit a frame.
-/
```
