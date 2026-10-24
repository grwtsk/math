-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant2e5bc87af7c12d19311e77c449deccf245564c6a047fcce9876b7a57a2e646bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e5bc87af7c12d19311e77c449deccf245564c6a047fcce9876b7a57a2e646bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variant2e5bc87af7c12d19311e77c449deccf245564c6a047fcce9876b7a57a2e646bd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2e5bc87af7c12d19311e77c449deccf245564c6a047fcce9876b7a57a2e646bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/object/ObjectAdmissibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# ObjectAdmissibility.lean

## Role

`ObjectAdmissibility.lean` defines admissibility predicates for categorical objects.

Object admissibility records whether a categorical object may be used by a declared consumer under a declared mode, scope, epoch, dependency closure, status, proof boundary, trusted boundary, certificate set, audit link, and replay policy.

Admissibility is not construction.

Admissibility is not well-formedness.

Admissibility is not label equality.

Admissibility is not kind membership.

Admissibility is not runtime availability.

A categorical object may be well-formed but inadmissible for proof, admissible for audit but not frame construction, admissible under quotient mode but not exact mode, or admissible at one epoch but stale at another.

## Core principle

The primary admissibility predicate has schematic form:



    ObjectAdmissible(A,mode,scope)



or, with explicit context:



    ObjectAdmissible(p,e,A,mode,scope)



where:

- `p` is a history prefix;
- `e` is a semantic epoch;
- `A` is a categorical object;
- `mode` records proof strength;
- `scope` records consumer context.

No categorical object may be consumed without an admissibility judgment appropriate to the consumer.

## Formal shape

An object-admissibility record has schematic form:



    ObjectAdmissibility=(object,mode,scope,prefix,epoch,wellFormedReq,identityReq,kindReq,contextReq,dependencyReq,statusReq,certificateReq,proofBoundaryReq,trustedBoundaryReq,auditReq,replayReq,invalidations)



where:

- `object` is the categorical object under judgment;
- `mode` records exact, quotient, observable, approximate, summary, checkpoint, partial, audit-only, trusted-boundary, rejected, unknown, or research-obligated mode;
- `scope` records the consumer context;
- `prefix` records history-relative availability;
- `epoch` records semantic interpretation;
- `wellFormedReq` records required structural well-formedness;
- `identityReq` records required object-identity evidence;
- `kindReq` records kind admissibility;
- `contextReq` records categorical-context admissibility;
- `dependencyReq` records dependency freshness;
- `statusReq` records lifecycle status requirements;
- `certificateReq` records certificate obligations;
- `proofBoundaryReq` records proof-boundary requirements;
- `trustedBoundaryReq` records trusted-boundary containment;
- `auditReq` records traceability requirements;
- `replayReq` records replay obligations;
- `invalidations` records stale or blocking invalidation records.

The record is a judgment schema.

It is not object acceptance by construction.

## Well-formedness separation

Well-formedness has form:



    ObjectWellFormed(A)



Admissibility has form:



    ObjectAdmissible(A,mode,scope)



These are distinct.

A well-formed categorical object may still be rejected, stale, audit-only, unknown, or inadmissible for the required scope.

Well-formedness proves structural validity.

Admissibility proves usable validity for a consumer.

## Construction is not admissibility

Constructing a Lean record:



    A:CategoryObject



does not prove:



    ObjectAdmissible(A,mode,scope)



The constructor may supply fields.

It does not establish freshness, dependency closure, certificate acceptance, trusted-boundary containment, proof-boundary validity, status acceptance, or replay admissibility unless those are explicitly fields with accepted proofs and replay metadata.

## Label is not admissibility

A displayed object label does not prove admissibility.



    label(A)=``A''



does not imply:



    ObjectAdmissible(A,mode,scope)



Labels may be reused across contexts, epochs, proofs, applications, views, and histories.

A label may support display only when a display-scope certificate says so.

## Kind is not admissibility

A kind tag does not prove admissibility.



    kind(A)=CarrierKind



does not imply carrier admissibility.



    kind(A)=SheafKind



does not imply gluing admissibility.



    kind(A)=HistoryKind



does not imply append-only validity.

Kind may be one premise in an admissibility theorem.

It is never the whole theorem.

## Identity is not admissibility

Object identity may be well-formed while the object is inadmissible for a scope.

An identity record:



    ObjectIdentity(A)



does not imply:



    ObjectAdmissible(A,mode,scope)



unless admissibility requirements are included in the identity theorem or separately certified.

Identity determines what object is under discussion.

Admissibility determines whether that object may be consumed.

## Exact admissibility

Exact admissibility permits exact consumers to use the object under exact mode.

It requires fresh well-formedness, full identity, accepted status, exact dependency closure, proof-boundary validity, certificate acceptance, and replay admissibility.

Exact admissibility is required for exact morphism endpoint use, exact identity morphism formation, exact composition, exact functoriality, exact naturality, and exact proof obligations.

It cannot be derived from quotient, observable, approximate, summary, checkpoint, audit-only, unknown, or rejected evidence.

## Quotient admissibility

Quotient admissibility permits quotient-level consumers to use the object through a quotient relation.

It requires quotient relation, quotient map, representative policy, congruence, representative independence where needed, dependency closure, certificates, epoch, and replay behavior.

Quotient admissibility does not permit representative-sensitive use.

A quotient-admissible object is not exact-admissible unless strengthened.

## Observable admissibility

Observable admissibility permits consumers that depend only on declared observables.

It requires observable map, observable codomain equality, retained information, lost hidden information, dependency closure, certificates, epoch, and replay behavior.

Observable admissibility is valid only for observable or display consumers that accept the observable.

It does not support hidden-state, proof, or representative-sensitive consumers unless faithfulness or recovery is certified.

## Approximate admissibility

Approximate admissibility permits tolerance-bounded consumers.

It requires metric, residual, tolerance carrier, error bound, comparison relation, dependency closure, certificates, epoch, and replay behavior.

Approximate admissibility cannot discharge exact object obligations.

Zero error does not imply exact admissibility unless a zero-error soundness theorem is accepted.

## Summary admissibility

Summary admissibility permits summary-level consumers.

It requires summary function, retained fields, omitted fields, sufficiency scope, dependency closure, certificates, epoch, and replay behavior.

Summary admissibility cannot support raw object substitution, exact morphism endpoint use, or raw replay unless summary sufficiency or reconstruction is certified.

## Checkpoint admissibility

Checkpoint admissibility permits checkpoint-level replay or current-state consumers.

It requires checkpoint payload, covered object fields, covered prefix where relevant, dependency closure, invalidation policy, certificates, epoch, and replay scope.

Checkpoint admissibility is not raw replay admissibility.

A cached object record is not a checkpoint unless checkpoint validity is certified.

## Partial admissibility

Partial admissibility applies only on a declared domain:



    D(A)



or under a declared predicate on object kind, context, epoch, mode, scope, or dependency status.

A partial admissibility claim cannot support global categorical use.

Consumers must prove that their object use lies inside the partial domain.

Outside the domain, the object remains unsupported, rejected, unknown, audit-only, or research-obligated according to the record.

## Audit-only admissibility

Audit-only admissibility permits historical explanation and provenance inspection.

It may show that an object existed, was proposed, was accepted in a source context, was rejected, was superseded, or was migrated.

Audit-only admissibility does not permit current proof, exact morphism typing, frame construction, authority mutation, certificate reuse, or raw replay.

Audit-only objects remain historical content.

## Rejected admissibility

Rejected admissibility records that an object failed admissibility for the requested scope or mode.

Reasons may include missing identity evidence, stale dependency, rejected certificate, invalid epoch, invalid kind, invalid context, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected admissibility is audit content.

It provides no usable object claim.

## Unknown admissibility

Unknown admissibility records that the proof core cannot establish whether the object is admissible.

Unknown is not accepted.

Unknown is not rejected.

Unknown may block morphism typing, functoriality, naturality, quotienting, replay, migration, or frame construction.

Unknown must not be treated as approximate or audit-only success.

## Research-obligated admissibility

Research-obligated admissibility records that a downstream consumer requires an admissibility proof and none is available.

It must record object, required mode, required scope, missing evidence, dependencies, blocked consumer, epoch, and replay context.

It does not prove admissibility.

It prevents silent forced use of unresolved objects.

## Endpoint usability

Categorical objects are consumed as morphism endpoints.

For a morphism judgment:



    f:A-> B



endpoint usability requires:



    ObjectAdmissible(A,mode,endpointScope)



and:



    ObjectAdmissible(B,mode,endpointScope)



under the morphism's required scope and mode.

If an endpoint is only display-admissible or audit-admissible, exact morphism typing must reject or weaken.

## Identity-morphism usability

Identity morphism formation requires object admissibility:



    ObjectAdmissible(A,mode,identityScope)
    => id_A:A-> A



where `identityScope` is the relevant categorical scope.

A repeated object label does not establish identity-morphism usability.

A no-op runtime operation does not establish identity-morphism usability.

## Composition usability

Composition requires admissible intermediate objects.

For:



    f:A-> B



and:



    g:C-> D



composition requires admissibility of all endpoints and equality or accepted compatibility between `B` and `C`.

If `B` and `C` are only quotient-equivalent, composition may be quotient-mode only unless strengthened.

## Functor object usability

A functor object map requires source-object admissibility and target-object admissibility.

If:



    F(A)



is formed, then `A` must be admissible in the source context and `F(A)` must be admissible in the target context under the functor's mode and scope.

A mapping table does not prove admissibility.

Functoriality requires admissibility preservation.

## Naturality object usability

Naturality components require admissible object indices.

For:



    eta_A:F(A)-> G(A)



the object `A`, its functor images, and the component morphism endpoints must be admissible under the naturality scope.

A naturality square indexed by a stale or unknown object is stale or unknown.

## Quotient-category object usability

In a quotient category, objects may be admissible as equivalence classes.

Such admissibility requires quotient readiness, congruence of morphism formation, identity compatibility, composition compatibility, representative independence, certificates, and replay behavior.

A raw object may be inadmissible while its quotient class is admissible.

These must be distinguished.

## Display usability

Display usability permits rendering or reporting of an object.

It may depend on labels, observables, summaries, audit links, or checkpoint data.

Display usability is weaker than proof usability.

A displayed object node cannot be used as exact categorical object evidence without stronger admissibility.

## Proof usability

Proof usability requires evidence strong enough to discharge formal obligations.

It usually requires exact admissibility unless the theorem statement explicitly accepts a weaker mode.

Proof usability requires dependency freshness, accepted status, proof-boundary validity, certificate acceptance, and replay admissibility.

Proof usability cannot consume audit-only or display-only admissibility.

## Replay usability

Replay usability requires that the object can be reconstructed under declared replay parameters.

It must reconstruct identity, kind, context, type witness, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit references, and replay metadata.

Stored labels, cached records, or displayed nodes are not replay usability.

## Certificate usability

A certificate may use an object as subject only if the object is admissible for certificate-subject scope.

If the certificate proves an exact claim, the subject must be exact-admissible or the claim must be weakened.

A certificate about an inadmissible object is itself rejected, unknown, stale, or audit-only unless the inadmissibility is the statement being certified.

## Dependency freshness

Object admissibility requires fresh dependencies for the requested scope and mode.

Dependencies may include object identity, kind schema, context, equality relation, equivalence relation, admissibility policy, proof mode, scope policy, status policy, epoch, certificates, proof boundary, trusted boundary, audit references, and replay parameters.

Hidden or stale dependencies block admissibility.

## Status requirement

Object admissibility depends on lifecycle status.

Accepted status may support use.

Proposed status does not.

Rejected status blocks use.

Unknown status blocks use unless the consumer accepts unknown, usually only for diagnostics.

Stale status blocks current-use scopes.

Audit-only status supports audit only.

## Epoch requirement

Object admissibility is epoch-relative.

An object admissible at epoch `e` is not automatically admissible at epoch `e'`.

Target-epoch admissibility requires epoch equality, compatibility, migration, re-verification, freshness certificate, or audit-only policy.

Same object id across epochs is insufficient.

## Prefix requirement

When object status or certificates are stored in history, object admissibility is prefix-relative.

A certificate appended after prefix `p` cannot justify admissibility at `p`.

Admissibility queries must respect append-only history.

Later re-verification or invalidation does not rewrite earlier prefix status.

## Certificate requirement

Admissibility may require certificates proving well-formedness, identity, kind admissibility, context admissibility, dependency closure, freshness, status, epoch compatibility, replay admissibility, or trusted-boundary containment.

A raw payload is not a certificate.

A certificate label is not certificate acceptance.

Accepted certificate evidence must be replayable.

## Proof-boundary requirement

Object admissibility may depend on proof boundary.

If the Lean kernel, axiom set, verifier, decoder, hash assumption, finite enumerator, replay engine, extraction boundary, or trusted archive changes, admissibility may become stale.

The proof boundary must be recorded.

A proof under one boundary cannot be consumed under another without compatibility evidence.

## Trusted-boundary requirement

Object admissibility may depend on trusted boundaries.

The trusted boundary must certify a statement relevant to the admissibility claim.

Boundary overreach is rejected.

A trusted hash may certify bytes, not object admissibility.

A trusted decoder may certify decoding, not semantic admissibility, unless the statement includes it.

## Audit requirement

Audit links may be required for traceability-sensitive scopes.

An audit link can support provenance.

It does not prove admissibility.

An audit link may be one dependency in an admissibility theorem, but accepted object admissibility requires the relevant mathematical or lifecycle evidence.

## Replay requirement

Admissibility must be replay-admissible when used by proof, history, certificate, migration, refinement, or replay consumers.

Replay reconstructs object identity, well-formedness, admissibility predicate, dependency closure, certificates, status, epoch, proof boundary, trusted boundary, audit reference, and invalidation behavior.

A stored admissibility tag is insufficient.

## Admissibility and equality

Object equality can preserve admissibility only under a congruence theorem:



    ObjectEq(A,B)and ObjectAdmissible(A,m,s)=> ObjectAdmissible(B,m,s)



The equality notion must be strong enough for the scope.

Id equality, label equality, kind equality, or display equality cannot preserve admissibility unless a specialized theorem says so.

## Admissibility and equivalence

Object equivalence may preserve admissibility only under a declared congruence theorem.

For quotient equivalence, admissibility may descend to quotient classes if predicates are representative-independent.

For observable equivalence, admissibility descends only for observable consumers.

For approximate equivalence, admissibility may transfer only with certified tolerance policy.

## Admissibility and substitution

Substitution into theorems requires object admissibility for the substituted object.

If:



    A=B



and:



    ObjectAdmissible(A,m,s)



then admissibility of `B` follows only if admissibility respects the equality relation.

This must be proven.

Substitution cannot bypass admissibility.

## Admissibility and path coherence

If multiple construction paths produce the object, admissibility may depend on path coherence.

Without path coherence, the chosen path is part of admissibility identity.

Path coherence is required for migration paths, refinement paths, quotient representatives, replay reconstruction, functor images, and application instantiations where endpoint use depends on admissibility.

## Admissibility and migration

Object admissibility may migrate:



    ObjectAdmissible(A_e,m,s)~> ObjectAdmissible(A_{e'},m',s')



Migration must preserve or explicitly transform object identity, kind, context, dependencies, status, certificates, proof boundary, trusted boundary, audit references, and replay behavior.

Same target label does not preserve admissibility.

Object admissibility migration does not imply specialized semantic migration.

## Admissibility and refinement

Object admissibility may refine by strengthening evidence, narrowing scope, reducing loss, improving dependency closure, or replacing trusted boundaries.

Refinement is not migration.

If the epoch changes, migration evidence is also required.

A refined object may have stronger or narrower admissibility depending on the refinement theorem.

## Admissibility and invalidation

Object admissibility may be invalidated by changes to object identity, kind, context, equality relation, equivalence relation, admissibility policy, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, status policy, audit reference, or replay schema.

Invalidation is append-only.

The old admissibility claim remains audit content.

## Admissibility and applications

Application-specific admissibility belongs outside this abstract file.

`ObjectAdmissibility.lean` may define generic hooks for application-instantiated object admissibility.

It must not define concrete application admissibility, bitmap dimensions, matrix dimensions, token admissibility, image admissibility, hash constants, Feistel constants, UI admissibility, or runtime payload admissibility.

## Admissibility and `none`

No admissibility rule may treat `none`, `null`, missing field, or absent runtime binding as a mathematical default.

Optional absence is data-level absence.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

Object admissibility cannot install defaults.

## Admissibility equality

Two admissibility records are equal only if their object, mode, scope, prefix, epoch, well-formedness requirement, identity requirement, kind requirement, context requirement, dependency requirement, status requirement, certificate requirement, proof boundary, trusted boundary, audit requirement, replay requirement, and invalidations coincide.

Same object and same mode are insufficient.

Same status label is insufficient.

## Admissibility equivalence

Two admissibility records may be equivalent under a declared relation.

Examples include audit equivalence, replay equivalence, quotient equivalence, observable equivalence, approximate equivalence, migrated admissibility equivalence, or refined admissibility equivalence.

Equivalence is not equality.

Consumers must state which admissibility equivalence they accept.

## Admissibility certificates

Object-admissibility certificates may prove:



    ObjectAdmissible(A,mode,scope)





    ObjectAdmissibleAt(p,e,A,mode,scope)





    EndpointUsable(A,mode,scope)





    IdentityObjectUsable(A,mode,scope)





    FunctorObjectUsable(F,A,mode,scope)





    AdmissibilityFresh(A,p,e,scope)



or admissibility preservation, reflection, migration, refinement, invalidation, dependency closure, path coherence, audit, and replay-admissibility claims.

Only accepted certificates discharge admissibility obligations.

## Epoch rule

`ObjectAdmissibility.lean` artifacts are epoch-indexed by:

- object-admissibility schema epoch;
- well-formedness predicate epoch;
- identity requirement epoch;
- kind requirement epoch;
- context requirement epoch;
- admissibility-policy epoch;
- proof-mode epoch;
- scope epoch;
- status epoch;
- dependency-record epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream object-admissibility claims.

The old admissibility artifact remains audit content.

## History relation

A history record depending on `ObjectAdmissibility.lean` must record:

1. source file identity;
2. declaration identity;
3. categorical object;
4. mode;
5. scope;
6. prefix and epoch;
7. well-formedness requirement;
8. identity, kind, and context requirements;
9. dependency closure;
10. status requirement;
11. certificate references;
12. proof boundary;
13. trusted boundary where used;
14. invalidation behavior;
15. audit reference;
16. replay data.

The object constructor or label alone is insufficient.

## Replay rule

Replay of `ObjectAdmissibility.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, `ObjectKind.lean`, `ObjectIdentity.lean`, `ObjectEquality.lean`, and `ObjectEquivalence.lean`;
3. reconstructing admissibility predicates and records;
4. reconstructing exact, quotient, observable, approximate, summary, checkpoint, partial, audit-only, rejected, unknown, and research-obligated admissibility modes;
5. checking endpoint, identity-morphism, composition, functor, naturality, quotient, display, proof, replay, and certificate usability declarations;
6. checking preservation, substitution, congruence, migration, refinement, invalidation, and path-coherence declarations;
7. checking proof objects or trusted boundaries where present;
8. checking that no runtime code or application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream object-admissibility claims are not replay-admissible.

## Runtime representation

`ObjectAdmissibility.lean` may lower to:

- Lean admissibility predicates;
- admissibility records;
- endpoint-usability theorem metadata;
- mode- and scope-policy metadata;
- dependency manifests;
- certificate descriptors;
- invalidation descriptors;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not admissibility identity.

Admissibility identity depends on object, mode, scope, prefix, epoch, requirements, dependencies, certificates, proof boundary, trusted boundary, invalidations, audit reference, and replay behavior.

## Non-collapse theorem

Let a categorical object be constructed, labeled, kind-tagged, displayed, cached, or runtime-available.

This does not imply that the object is admissible.

It is admissible only if the required well-formedness, identity, kind, context, dependency, status, certificate, proof-boundary, trusted-boundary, audit, replay, epoch, mode, and scope requirements are satisfied.

Thus construction, label, kind, display, cache, and runtime availability are insufficient for object admissibility.

## Proof obligation

`ObjectAdmissibility.lean` is admissible only if the framework can certify:

1. admissibility is separated from construction;
2. admissibility is separated from well-formedness;
3. admissibility is mode-sensitive;
4. admissibility is scope-sensitive;
5. endpoint usability is explicit;
6. quotient, observable, approximate, summary, checkpoint, audit-only, rejected, unknown, and research-obligated admissibility are distinct;
7. dependency freshness is required;
8. certificates, proof boundaries, trusted boundaries, epochs, statuses, audit links, invalidations, and replay behavior are explicit;
9. runtime labels and application constants are excluded;
10. `none` and `null` are not treated as defaults.

## Exclusion rule

`ObjectAdmissibility.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime admissibility checks, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object-admissibility infrastructure.

## Commitment rule

`ObjectAdmissibility.lean` may define mode- and scope-sensitive admissibility predicates.

It cannot make construction acceptance.

It cannot make labels acceptance.

It cannot make kind tags acceptance.

It cannot make well-formedness admissibility.

It cannot make runtime availability proof-core admissibility.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variant2e5bc87af7c12d19311e77c449deccf245564c6a047fcce9876b7a57a2e646bd

