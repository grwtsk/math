# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjectCertificate.Variant3443350929daabd1d5197a1644bb79cc80bcc3301e32466bcb2e041190177985

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79f0e01763c1c2cda5a65f56824e8434d38236ca` · SHA-256 `3443350929daabd1d5197a1644bb79cc80bcc3301e32466bcb2e041190177985`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# ObjectCertificate.lean

## Role

`ObjectCertificate.lean` defines certificate infrastructure for categorical objects.

It specifies certificates for categorical object well-formedness, identity, equality, equivalence, admissibility, dependency closure, epoch freshness, audit linkage, replay admissibility, migration, refinement, invalidation, proof boundaries, trusted boundaries, lifecycle statuses, and replay behavior.

An object certificate is accepted evidence for a typed object claim.

It is not a raw payload.

It is not a theorem name.

It is not a hash.

It is not a status label.

It is not an audit link.

It is a certificate record with statement, subject, verifier, payload reference, result, proof mode, scope, dependency closure, proof boundary, trusted boundary, epoch, status, invalidations, audit reference, and replay behavior.

## Core principle

A categorical object claim is usable only when supported by accepted evidence for the required mode and scope.

A raw proof payload may exist.

A theorem may be named.

A verifier may run.

A history record may reference the object.

None of these alone is an accepted object certificate.

The certificate must connect a typed statement about a typed categorical object to accepted verification or trusted-boundary evidence.

## Formal shape

An object certificate has schematic form:



    ObjectCertificate=(id,statement,subjectObject,certificateKind,verifier,payloadRef,result,mode,scope,prefix,epoch,deps,proofBoundary,trustedBoundary,status,invalidations,audit,replay)



where:

- `id` identifies the certificate;
- `statement` records the typed object claim;
- `subjectObject` records the categorical object under certification;
- `certificateKind` classifies the object-certificate role;
- `verifier` identifies the checking mechanism;
- `payloadRef` identifies the raw proof payload or proof reference;
- `result` records accepted, rejected, unknown, stale, migrated, invalidated, approximate, quotient-valid, observable-valid, audit-only, or research-obligated result;
- `mode` records proof strength;
- `scope` records admissible consumers;
- `prefix` records history-relative availability;
- `epoch` records semantic coordinates;
- `deps` records dependency closure;
- `proofBoundary` records trusted proof assumptions;
- `trustedBoundary` records external trusted components where used;
- `status` records lifecycle state;
- `invalidations` records stale or blocking effects;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The certificate is proof-core evidence.

It does not mutate the object or history.

## Certificate subject

The subject is a categorical object or object-related claim.

Valid subjects include:



    A:CategoryObject





    ObjectIdentity(A)





    ObjectEq(A,B)





    ObjectEquiv(A,B,R)





    ObjectAdmissible(A,mode,scope)





    ClosedObjectDeps(A,D,mode,scope)





    ObjectFresh(A,p,e,scope)





    ObjectReplay(A)



The subject must be typed.

A label, id, kind tag, or runtime reference alone cannot be the full subject.

## Certificate statement

The statement is the exact proposition or data-level statement certified.

Examples include:



    ObjectWellFormed(A)





    ObjectIdentityWellFormed(I_A)





    ObjectAdmissible(A,Exact,Proof)





    ObjectReplayExact(A)





    ObjectMigrates(A_e,A_{e'})



The statement must declare mode, scope, epoch, dependency requirements, and replay requirements when those affect use.

A printed formula without semantic fields is insufficient.

## Certificate kind

Object-certificate kinds include:

- well-formedness certificate;
- identity certificate;
- equality certificate;
- equivalence certificate;
- admissibility certificate;
- dependency-closure certificate;
- epoch-freshness certificate;
- audit-link certificate;
- replay-admissibility certificate;
- migration certificate;
- refinement certificate;
- invalidation certificate;
- path-coherence certificate;
- endpoint-usability certificate.

The kind classifies the certified claim.

It does not prove the claim without accepted result.

## Raw payload distinction

A raw payload is not accepted evidence.

A payload may be a proof term, theorem reference, verifier transcript, replay transcript, content hash, archive reference, or finite-enumeration trace.

It becomes certificate evidence only when linked to statement, subject, verifier, result, mode, scope, dependencies, proof boundary, epoch, and replay behavior.

Thus:



    payloadRef!= ObjectCertificate



## Verifier result distinction

A verifier result is not portable proof unless its context is recorded.

A result must include verifier identity, input schema, output schema, statement, subject, payload reference, proof boundary, trusted boundary, dependencies, epoch, mode, scope, status, and replay behavior.

Same verifier name is insufficient.

Same accepted result string is insufficient.

## Well-formedness certificate

A well-formedness certificate proves:



    ObjectWellFormed(A)



It may certify typed identity, valid kind, valid categorical context, valid type witness, epoch attachment, dependency schema, audit schema, and replay schema.

It does not prove admissibility.

It does not prove equality.

It does not prove specialized carrier, spectrum, authority, tensor, sheaf, operator, history, migration, refinement, certificate, replay, or application semantics.

## Identity certificate

An identity certificate proves a claim about object identity.

It may prove:



    ObjectIdentityWellFormed(I_A)





    ObjectIdentityEq(I_A,I_B)





    ObjectIdentityFresh(I_A,p,e,scope)



It must include id, kind, context, type witness, universe metadata, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit references, and replay behavior where required.

Object id alone is insufficient.

## Equality certificate

An equality certificate proves a declared object-equality claim.

It may prove:



    ObjectEq(A,B)



or a projected equality, such as value equality, context equality, epoch equality, dependency equality, replay equality, or certificate-aware equality.

The equality kind must be explicit.

A certificate for label equality cannot discharge full object equality.

A certificate for quotient equality cannot discharge raw equality.

## Equivalence certificate

An equivalence certificate proves:



    ObjectEquiv(A,B,R)



or laws of an object-equivalence relation.

It may certify reflexivity, symmetry, transitivity, congruence, representative independence, quotient readiness, replay equivalence, audit equivalence, migration equivalence, or path equivalence.

Equivalence certificates do not prove equality unless a strengthening theorem is also certified.

## Admissibility certificate

An admissibility certificate proves:



    ObjectAdmissible(A,mode,scope)



or:



    ObjectAdmissibleAt(p,e,A,mode,scope)



It must account for well-formedness, identity, kind, context, dependency freshness, status, proof boundary, trusted boundary, certificates, audit links, invalidations, and replay behavior.

Construction of a `CategoryObject` record is not admissibility evidence.

## Endpoint-usability certificate

Endpoint-usability certificates prove that an object may be used as a morphism endpoint.

They may prove:



    EndpointUsable(A,mode,scope)



Such certificates are required before exact morphism typing uses `A` as a source or target.

Audit-only, display-only, rejected, stale, or unknown object evidence cannot support endpoint use unless the morphism claim is weakened accordingly.

## Dependency-closure certificate

A dependency-closure certificate proves:



    ClosedObjectDeps(A,D,mode,scope)



It must distinguish direct dependencies, transitive dependencies, closed dependencies, minimal closure, overapproximate closure, availability, freshness, hidden-dependency freedom, and invalidation propagation.

A Lean import list is not dependency closure.

Hidden dependencies reject or stale object use.

## Epoch-freshness certificate

An epoch-freshness certificate proves:



    ObjectFresh(A,p,e,scope)



or an object-epoch claim such as:



    ObjectAt(A,e)





    ObjectEpochCompatible(A,e,e',scope,mode)





    ObjectEpochMigrates(A_e,A_{e'},mode)



It must account for source-target coordinates, dependency freshness, certificates, invalidations, proof boundary, trusted boundary, audit references, and replay behavior.

Epoch labels alone are insufficient.

## Audit-link certificate

An audit-link certificate proves a typed audit relation.

It may prove:



    ObjectAuditLinked(A,target)





    ForwardObjectAudit(A)=target





    ReverseObjectAudit(target)=A



or audit path coherence.

The audit certificate proves traceability only.

It does not prove object identity, equality, admissibility, replay, or specialized semantics unless those statements are explicitly certified.

## Replay-admissibility certificate

A replay certificate proves an object-replay claim.

It may prove:



    ObjectReplay(A)=A'





    ObjectReplayExact(A)





    ObjectReplayQuotient(A)





    ObjectReplayObservable(A)





    ObjectReplayApprox(A,epsilon)



Replay certificates must reconstruct identity, kind, context, type witness, well-formedness, admissibility, dependencies, epochs, statuses, certificates, audit links, invalidations, proof boundaries, trusted boundaries, and comparison relation.

Stored labels, cached records, displayed nodes, and runtime lookups are insufficient.

## Migration certificate

An object migration certificate proves:



    ObjectMigrates(A_e,A_{e'},mode)



It must record source object, target object, source epoch, target epoch, migration mode, loss information, dependencies, invalidations, certificates, proof boundary, trusted boundary, audit links, and replay preservation.

Same id or label at the target epoch is insufficient.

Categorical object migration does not imply specialized semantic migration.

## Refinement certificate

An object refinement certificate proves that one object refines another under declared precision or representation relation.

It may record projection, reconstruction, retained information, added information, strengthened dependencies, or improved replay.

Refinement is not migration.

If epoch changes, migration evidence is also required.

A refined object is not automatically equal to the source object.

## Invalidation certificate

An invalidation certificate proves that an object claim is stale or invalid for a declared scope and mode.

It may invalidate object identity, equality, equivalence, admissibility, dependency closure, epoch freshness, audit linkage, replay, migration, or refinement.

Invalidation is append-only.

It does not delete the old certificate.

It changes later usability.

## Path-coherence certificate

Path-coherence certificates prove that two construction, migration, refinement, replay, quotient, functor, or audit paths yield equal or equivalent object claims.

Without path coherence, the path is part of object identity or object admissibility.

A path-coherence certificate must record paths, comparison relation, mode, scope, dependencies, epochs, proof boundary, trusted boundary, audit links, and replay behavior.

## Proof-boundary certificate

A proof-boundary certificate records that the proof assumptions used by an object certificate are accepted.

It may involve Lean kernel, axioms, verifier behavior, decoder behavior, hash assumption, finite enumerator, replay engine, extraction boundary, or trusted archive.

Changing proof boundary may stale object certificates.

Proof-boundary evidence is part of certificate identity.

## Trusted-boundary certificate

A trusted-boundary certificate records trusted use for an object claim.

It must name the trusted component and exact trusted statement.

A trusted hash may certify bytes.

A trusted decoder may certify decoding.

A trusted replay engine may certify replay.

None of these certify object admissibility or identity unless the trusted statement explicitly includes that claim.

## Certificate status

Object certificates have prefix-relative, epoch-relative, and scope-relative status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

A status tag alone is insufficient.

Status must be derivable and replayable.

## Proposed certificate

A proposed object certificate is a candidate.

It may have statement, subject, verifier, payload, dependencies, and scope.

It does not discharge object obligations.

It may later become accepted, rejected, unknown, stale, or research-obligated through history records or verifier results.

## Accepted certificate

An accepted object certificate discharges only the statement, mode, scope, prefix, epoch, and dependency context it certifies.

Accepted does not mean globally reusable.

Accepted does not imply target-epoch validity.

Accepted does not imply stronger mode.

Accepted status may later become stale, superseded, migrated, or invalidated.

## Rejected certificate

A rejected object certificate records failed evidence.

It may fail because of invalid statement, invalid subject, verifier rejection, payload mismatch, stale dependency, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected certificates are audit content.

They provide no usable object evidence.

## Unknown certificate

An unknown certificate records that verification could not determine the object claim.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block object use or generate a research obligation.

Unknown must not be treated as approximate, quotient-valid, observable-valid, audit-only, or accepted.

## Stale certificate

A stale object certificate was previously usable but is no longer usable for a declared scope.

Staleness may arise from changed object identity, kind schema, context, equality relation, equivalence relation, admissibility policy, dependency status, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation.

Stale certificates remain audit content.

## Migrated certificate

A migrated certificate records transport of an object certificate across epochs or schemas.

It must include certificate migration evidence, statement migration, subject migration, verifier migration or re-verification, payload migration, dependency migration, proof-boundary migration, loss mode, invalidations, audit links, and replay behavior.

Migrated status does not imply exact target acceptance.

## Superseded certificate

A superseded object certificate has been replaced for a declared scope by a later accepted certificate.

Supersession does not delete the old certificate.

The successor certificate must be accepted for the relevant scope and mode.

Supersession is lifecycle metadata.

## Audit-only certificate

An audit-only object certificate preserves historical evidence.

It may support explanation of old object use, old object acceptance, old replay, old migration, or old rejection.

It does not support current proof, exact endpoint usability, frame construction, authority mutation, certificate reuse, or raw replay.

## Research-obligated certificate

A research-obligated certificate records that an object claim is required but unresolved.

It must identify object, statement, required mode, required scope, missing evidence, dependencies, blocked consumer, prefix, epoch, and replay context.

It does not prove the claim.

It prevents silent use of unresolved object evidence.

## Certificate dependencies

Object certificates depend on statement schema, subject object, verifier, payload reference, proof mode, scope, status policy, epoch, dependency closure, proof boundary, trusted boundary, audit link, invalidation policy, and replay parameter.

All dependencies must be explicit.

Hidden certificate dependencies reject or stale certificate use.

## Certificate availability

A certificate is available only at prefixes where its record or trusted boundary is available.

Availability is not acceptance.

An available certificate may be proposed, rejected, stale, unknown, audit-only, or invalidated.

Prefix-relative availability must be respected.

## Certificate freshness

A certificate is fresh for a consumer when it is available, accepted, uninvalidated, dependency-fresh, proof-boundary-valid, trusted-boundary-contained, epoch-compatible, mode-compatible, scope-compatible, and replay-admissible.

Freshness is not global.

A certificate may be fresh for audit and stale for proof.

## Certificate reuse

Object-certificate reuse requires statement match, subject match, mode compatibility, scope compatibility, dependency freshness, proof-boundary compatibility, trusted-boundary containment, epoch compatibility, no blocking invalidations, and replay admissibility.

A certificate accepted for audit cannot be reused for proof by default.

A source-epoch certificate cannot be reused at target epoch by default.

## Certificate migration

Certificate migration transports certificate statement, subject, verifier, payload, result, mode, scope, dependencies, proof boundary, trusted boundary, epoch, status, invalidations, audit links, and replay behavior.

A copied payload is not a migrated certificate.

A same theorem name is not a migrated certificate.

Certificate migration requires accepted migration evidence or re-verification.

## Certificate refinement

Certificate refinement may strengthen mode, narrow scope, improve dependencies, reduce trusted boundary, add replay data, or replace approximate evidence with exact evidence.

Refinement is not migration.

A refined certificate must preserve or explicitly relate to the prior certificate.

If epoch changes, migration evidence is required.

## Certificate invalidation propagation

If an object certificate becomes invalidated, dependent object claims must become stale, rejected, weakened, unknown, or research-obligated for affected modes and scopes unless alternative fresh evidence exists.

Propagation is dependency-based.

Invalidation does not rewrite prior history.

## Certificate cycles

Object certificates may depend on other certificates.

Cycles require staged, guarded, coinductive, fixed-point, or root-trust policy.

A certificate cannot normally certify its own availability or acceptance at the same prefix.

Uncontrolled cycles are inadmissible.

## Certificate and morphism endpoints

Morphism endpoint use may require object certificates.

If endpoint object certificates are stale, rejected, unknown, audit-only, or weaker than required, the morphism typing certificate must be weakened, rejected, or research-obligated.

Endpoint certificate requirements must be explicit.

## Certificate and identity morphisms

Identity morphism formation depends on object identity and admissibility certificates.

A certificate for object label or id equality is insufficient.

Identity morphism certificates must cite object certificates adequate for identity-formation scope.

## Certificate and composition

Composition certificates depend on endpoint object certificates and intermediate compatibility certificates.

If intermediate object equality is quotient-only, observable-only, approximate, stale, unknown, or rejected, composition must be weakened or rejected accordingly.

Object certificates must be mode-compatible.

## Certificate and functors

Functoriality certificates depend on object-map certificates.

They must prove that source objects and target objects are admissible and that object identity, equality, equivalence, dependencies, epochs, and replay behavior are preserved or transformed appropriately.

An object mapping table is not a certificate.

## Certificate and naturality

Naturality certificates depend on object certificates for indexed objects and their functor images.

If object certificates are stale or incompatible, naturality certificates become stale or invalid for the affected scope.

Naturality proof cannot rely on object labels alone.

## Certificate and quotient categories

Quotient-category object certificates must include quotient relation, representative independence, congruence, quotient readiness, retained and lost information, dependency closure, and replay behavior.

A quotient certificate does not provide representative-sensitive object evidence.

## Certificate and applications

Application-specific object certificates belong outside this abstract file.

`ObjectCertificate.lean` may define generic hooks for application-instantiated object certificates.

It must not define concrete application certificates, bitmap dimensions, matrix dimensions, token certificates, image certificates, hash constants, Feistel constants, UI certificates, or runtime payload certificates.

## Certificate and `none`

No object-certificate rule may treat `none`, `null`, missing fields, or absent runtime bindings as mathematical defaults.

A certificate about absence certifies only absence unless an authority-specific theorem says otherwise.

Authority-specific uninstalled-versus-installed certificate semantics belong in the authority layer.

Object certificates cannot install defaults.

## Object-certificate equality

Two object certificates are equal only if their id, statement, subject object, certificate kind, verifier, payload reference, result, mode, scope, prefix, epoch, dependencies, proof boundary, trusted boundary, status, invalidations, audit references, and replay behavior coincide.

Same payload is insufficient.

Same theorem name is insufficient.

Same accepted result is insufficient.

## Object-certificate equivalence

Object certificates may be equivalent under proof irrelevance, statement equivalence, subject equivalence, verifier equivalence, payload equivalence, quotient equivalence, observable equivalence, approximate equivalence, replay equivalence, audit equivalence, migration equivalence, or refinement equivalence.

Equivalence is not equality.

Consumers must state which certificate equivalence they accept.

## Object-certificate replay

Replay of an object certificate reconstructs statement, subject object, verifier, payload reference, result, mode, scope, prefix, epoch, dependencies, proof boundary, trusted boundary, status, invalidations, audit links, and replay behavior.

It must reconstruct verifier acceptance or trusted-boundary containment.

A stored certificate label is insufficient.

A raw payload is insufficient.

## Certificate relation

Object certificates may prove:



    ObjectWellFormed(A)





    ObjectIdentityWellFormed(I_A)





    ObjectEq(A,B)





    ObjectEquiv(A,B,R)





    ObjectAdmissible(A,mode,scope)





    ClosedObjectDeps(A,D,mode,scope)





    ObjectFresh(A,p,e,scope)





    ObjectAuditLinked(A,target)





    ObjectReplay(A)=A'





    ObjectMigrates(A_e,A_{e'},mode)





    ObjectRefines(A_h,A_{h'})



or invalidation, path-coherence, endpoint-usability, identity-morphism usability, composition, functoriality, naturality, quotient-readiness, audit, and replay-admissibility claims.

Only accepted certificates discharge these obligations.

## Epoch rule

`ObjectCertificate.lean` artifacts are epoch-indexed by:

- object-certificate schema epoch;
- statement-schema epoch;
- subject-object epoch;
- certificate-kind epoch;
- verifier epoch;
- payload-schema epoch;
- result-mode epoch;
- proof-mode epoch;
- scope epoch;
- prefix-parameter epoch;
- dependency-record epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- status-policy epoch;
- invalidation-policy epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream object-certificate claims.

The old certificate artifact remains audit content.

## History relation

A history record depending on `ObjectCertificate.lean` must record:

1. source file identity;
2. declaration identity;
3. certificate id;
4. statement;
5. subject object;
6. certificate kind;
7. verifier;
8. payload reference;
9. result;
10. mode and scope;
11. prefix and epoch;
12. dependency closure;
13. proof boundary;
14. trusted boundary where used;
15. status;
16. invalidation behavior;
17. audit reference;
18. replay data.

The payload or theorem name alone is insufficient.

## Replay rule

Replay of `ObjectCertificate.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, `ObjectKind.lean`, `ObjectIdentity.lean`, `ObjectEquality.lean`, `ObjectEquivalence.lean`, `ObjectAdmissibility.lean`, `ObjectDependency.lean`, `ObjectEpoch.lean`, `ObjectAudit.lean`, and `ObjectReplay.lean`;
3. reconstructing object-certificate declarations;
4. reconstructing statement, subject, kind, verifier, payload, result, mode, scope, prefix, epoch, dependencies, proof boundary, trusted boundary, status, invalidations, audit, and replay fields;
5. checking raw-payload versus accepted-certificate distinction;
6. checking certificate lifecycle, freshness, migration, refinement, invalidation, equality, equivalence, dependency closure, and replay behavior;
7. checking proof objects or trusted boundaries where present;
8. checking that no runtime code or application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream object-certificate claims are not replay-admissible.

## Runtime representation

`ObjectCertificate.lean` may lower to:

- Lean certificate records;
- object-certificate-kind declarations;
- certificate statement metadata;
- verifier-facing descriptors;
- payload-reference descriptors;
- result-mode metadata;
- dependency manifests;
- proof-boundary descriptors;
- trusted-boundary links;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not certificate identity.

Certificate identity depends on statement, subject, verifier, payload, result, mode, scope, prefix, epoch, dependencies, proof boundary, trusted boundary, status, invalidations, audit references, and replay behavior.

## Non-collapse theorem

Let a raw payload, theorem name, verifier name, audit link, stored status, or object label be present.

This does not imply accepted object evidence.

An accepted object certificate exists only when the typed statement, subject object, verifier, payload reference, result, mode, scope, prefix, epoch, dependencies, proof boundary, trusted boundary, status, invalidations, audit reference, and replay behavior are recorded and accepted for the required consumer.

Thus raw payloads, theorem names, verifier names, audit links, stored statuses, and labels are insufficient for object certificates.

## Proof obligation

`ObjectCertificate.lean` is admissible only if the framework can certify:

1. object-certificate statements are typed;
2. subject objects are typed;
3. certificate kinds are explicit;
4. verifier identities are explicit;
5. payload references are distinguished from accepted evidence;
6. result, mode, scope, prefix, epoch, status, and dependencies are explicit;
7. proof boundaries and trusted boundaries are explicit;
8. invalidation and lifecycle behavior are append-only and replayable;
9. audit links are traceability only;
10. replay reconstructs full certificate context;
11. runtime representations and application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`ObjectCertificate.lean` may not define concrete proof systems, concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime certificate formats, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object-certificate infrastructure.

## Commitment rule

`ObjectCertificate.lean` may define certificates for categorical object claims.

It cannot make raw payloads accepted evidence.

It cannot make theorem names proof.

It cannot make verifier names acceptance.

It cannot make audit links proof.

It cannot make stored statuses accepted certificates.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
