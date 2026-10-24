# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjectIdentity.Varianta84ffa6c7f74285e21524e9f9a84d92ab9ceb8832c8e614af835578b78e1453a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76f6f907e97ef9b863a8b633cb757fc9a902a14e` · SHA-256 `a84ffa6c7f74285e21524e9f9a84d92ab9ceb8832c8e614af835578b78e1453a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# ObjectIdentity.lean

## Role

`ObjectIdentity.lean` defines categorical object identity infrastructure.

A categorical object identity is a typed combination of object id, object kind, categorical context, type witness, universe metadata, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit references, and replay behavior.

It is not an object label.

It is not a Lean value alone.

It is not a kind tag alone.

It is not a runtime pointer.

It is not a display name.

It is proof-relevant identity for categorical objects.

## Core principle

A categorical object is identified by the structure needed to use it in categorical reasoning.

The identity of object `A` must determine the categorical context in which `A` is an object, the kind by which it is classified, the type witness by which it is represented, the epoch under which it is interpreted, the dependency closure required to use it, and the certificates and replay behavior supporting its status.

Thus:



    label(A)=label(B)



does not imply:



    A=B



and:



    value(A)=value(B)



does not imply categorical object identity.

## Formal shape

An object identity record has schematic form:



    ObjectIdentity=(id,kind,context,typeWitness,universe,epoch,deps,status,certs,proofBoundary,trustedBoundary,audit,replay)



where:

- `id` records the object identifier;
- `kind` records the object-kind tag;
- `context` records the categorical context;
- `typeWitness` records the Lean-side typed representation;
- `universe` records universe-level metadata;
- `epoch` records semantic epoch;
- `deps` records dependency closure;
- `status` records lifecycle state;
- `certs` records certificates supporting identity claims;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The identity record is part of categorical object semantics.

It does not define specialized carrier, spectrum, authority, tensor, sheaf, operator, history, migration, refinement, certificate, replay, or application semantics.

## Identifier

The `id` field is an abstract identifier.

It may be a symbolic name, content reference, theorem reference, history reference, or generated object id.

The identifier is not sufficient by itself.

Two object identity records with the same `id` may differ by kind, context, type witness, epoch, dependencies, certificates, proof boundary, audit reference, or replay behavior.

## Kind component

The kind component records the object's classification.

It is part of identity.

Changing kind changes identity unless a kind migration, kind equality, or kind equivalence certificate says otherwise.

Kind equality alone is not object identity.

A carrier-kind object and another carrier-kind object are not identical merely because their kind tags match.

## Context component

The context component records the category or categorical environment in which the object is valid.

The same object id may occur in different contexts.

For example:



    Ain Obj(mathcal C)



and:



    Ain Obj(mathcal D)



are not the same identity claim unless `mathcal C` and `mathcal D` are equal or equivalent in a certified way.

Context is proof-relevant for morphism typing, composition, functoriality, and naturality.

## Type witness

The type witness records the Lean-side representation of the object.

It may include:



    X:Type\ u



or a dependent object witness.

The witness must preserve typing.

A raw payload, hash, string, runtime handle, or untyped serialized object cannot serve as object identity without a typing witness and decoding evidence.

## Universe component

Universe metadata records the universe level of the type witness.

Universe metadata supports type safety.

It is not epoch data.

A universe lift does not produce object migration.

A universe lift does not produce object refinement.

Universe equality is not categorical object identity unless the remaining identity fields also match.

## Epoch component

Object identity is epoch-indexed.

An object identity at epoch `e` is not automatically valid at epoch `e'`.

Cross-epoch identity requires epoch equality, compatibility, migration, re-verification, or audit-only evidence.

Same object id across epochs is insufficient.

Epoch movement is not Lean equality transport by default.

## Dependency component

The dependency component records all proof-relevant dependencies required to use the object identity.

Dependencies may include:

- object-kind declarations;
- categorical-context declarations;
- type witnesses;
- equality relations;
- equivalence relations;
- admissibility policies;
- proof-mode policies;
- scope policies;
- status policies;
- epoch declarations;
- trusted boundaries;
- certificates;
- audit references;
- replay parameters.

Hidden dependencies invalidate identity replay.

## Status component

The status component records lifecycle state relative to prefix, epoch, and scope.

An identity may be proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, audit-only, or research-obligated.

A constructed identity record is not automatically accepted.

Accepted identity requires derivation, certificate, trusted boundary, or replay-admissible status evidence.

## Certificate component

The certificate component records accepted evidence supporting identity claims.

Certificates may prove:



    ObjectIdentity(A)





    ObjectIdentityEq(A,B)





    ObjectIdentityFresh(A,e,scope)





    ObjectIdentityMigrates(A_e,A_{e'})



or dependency closure, context compatibility, type-witness validity, kind validity, audit linkage, and replay admissibility.

A raw proof payload is not a certificate.

A certificate reference must be typed and replayable.

## Proof-boundary component

The proof-boundary component records the trusted proof assumptions used to establish object identity.

It may include the Lean kernel, axioms, verifier assumptions, canonical decoders, hash assumptions, finite enumerators, replay engines, or extraction boundaries.

Changing proof boundary may stale identity claims.

Proof-boundary identity is part of object identity where proof evidence is used.

## Trusted-boundary component

The trusted-boundary component records any trusted statement used to accept the identity.

A trusted boundary may certify typed decoding, byte integrity, verifier acceptance, archive retrieval, or replay engine behavior.

The trusted boundary certifies only its declared statement.

A trusted hash boundary cannot certify object identity unless semantic decoding and interpretation are also certified.

## Audit component

The audit component links object identity to framework history, proof artifacts, certificates, replay manifests, trusted boundaries, migrations, refinements, or extraction artifacts.

Audit identity is not proof identity.

Audit links support traceability.

They do not establish object identity unless paired with accepted evidence.

## Replay component

The replay component records how the identity record is reconstructed.

Replay must reconstruct id, kind, context, type witness, universe, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit reference, and replay metadata.

A stored object id is not replay.

A cached identity record is not replay evidence.

A displayed node is not replay evidence.

## Label non-identity

Object label equality is insufficient:



    label(A)=label(B)not=> ObjectIdentity(A)=ObjectIdentity(B)



Labels may be reused across contexts, epochs, applications, proof modules, histories, and quotient views.

Any theorem depending on object identity must not use label equality alone.

## Lean value non-identity

Lean value equality is insufficient:



    A.value=B.valuenot=> ObjectIdentity(A)=ObjectIdentity(B)



The same value may have different categorical identities because of different epochs, dependencies, audit references, proof boundaries, statuses, or replay manifests.

Value equality and object identity must remain distinct.

## Kind non-identity

Kind equality is insufficient:



    kind(A)=kind(B)not=> ObjectIdentity(A)=ObjectIdentity(B)



Kind tags classify objects.

They do not identify objects.

They do not provide specialized semantics.

They do not determine categorical context, type witness, epoch, dependencies, or certificates.

## Context non-identity

Context equality is necessary for many identity claims but not sufficient.

Even if:



    context(A)=context(B)



the objects may differ by id, kind, type witness, epoch, dependencies, status, or certificates.

Context participates in identity but does not determine it alone.

## Runtime non-identity

Runtime representation is not categorical object identity.

The same runtime pointer, JavaScript object, Rust struct, WASM reference, database row, file path, or content hash may correspond to different proof-core identities under different schemas, epochs, or proof boundaries.

Runtime identity requires verification before it can support categorical identity.

## Display non-identity

A displayed diagram node is not object identity.

Display may omit epoch, dependencies, certificates, proof boundary, trusted boundary, and replay data.

Display identity may support display scope only if a display-scope audit or observable certificate exists.

It cannot support proof scope by default.

## Content-address non-identity

A content hash may identify bytes.

It does not identify a categorical object unless decoding, typing, schema, epoch, dependency closure, proof boundary, and object identity are certified.

Hash equality is byte-level evidence.

It is not object identity by itself.

## Identity equality

Object-identity equality compares the full identity record.

A strong equality claim has form:



    ObjectIdentityEq(I_A,I_B)



and must account for id, kind, context, type witness, universe, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit references, and replay behavior.

Any projected equality must state which fields are ignored.

## Projected identity

Some consumers may use projected identities.

Examples include:

- id-only identity;
- kind-only identity;
- context-local identity;
- audit identity;
- replay identity;
- quotient identity;
- observable identity;
- display identity.

Projected identity is weaker than full identity.

It must record retained fields, ignored fields, mode, scope, dependencies, certificates, and replay behavior.

## Full identity

Full identity retains all proof-relevant identity fields.

Full identity may support exact categorical reasoning if fresh.

It is required when morphism typing, identity morphism formation, composition, functorial mapping, naturality, or proof certificates require exact object identity.

Full identity cannot be inferred from a projection.

## Audit identity

Audit identity compares provenance.

Two objects may be audit-equivalent if they point to the same history record or audit chain.

Audit identity does not imply mathematical object identity unless a certificate connects the audit relation to object identity.

Audit identity is useful for traceability, not substitution by default.

## Replay identity

Replay identity compares replay reconstruction behavior.

Two objects may have the same replay outcome under a declared replay procedure.

Replay identity does not imply full object identity unless the replay procedure is complete for all identity fields and certified as such.

Stored replay outputs are insufficient.

## Quotient identity

Quotient identity identifies objects after quotienting.

It supports quotient-level consumers.

It loses representative identity unless recovery or representative independence is certified.

A quotient identity cannot support representative-sensitive morphism typing unless the consumer accepts quotient mode or a strengthening certificate exists.

## Observable identity

Observable identity identifies objects by observed projections.

It supports observable or display consumers.

It does not preserve hidden identity fields.

It cannot support proof, replay, or frame construction requiring hidden state unless faithfulness or recovery is certified.

## Approximate identity

Approximate identity relates objects within a metric, residual, or tolerance.

It is not exact object identity.

It must record metric, tolerance, comparison relation, retained information, lost information, mode, scope, dependencies, certificates, and replay behavior.

Approximate identity cannot discharge exact identity obligations.

## Identity and substitution

Substitution of one categorical object for another requires an identity or equivalence theorem accepted for the relevant scope.

Full substitution requires full identity or a congruence theorem.

A projected identity does not justify substitution in all contexts.

For morphism typing, functoriality, naturality, or quotienting, the required substitution law must be explicit.

## Identity and congruence

Morphism formation, identity morphism formation, composition, functor object maps, functor morphism maps, natural transformation components, and replay procedures may depend on object identity.

Each construction must prove congruence with the identity or equivalence relation it consumes.

Congruence is not automatic.

## Identity and morphism endpoints

For:



    f:A-> B



the identities of `A` and `B` are part of the morphism typing judgment.

If `A` is replaced by `A'`, endpoint substitution requires:



    ObjectIdentityEq(A,A')



or an accepted endpoint equivalence and a morphism congruence theorem.

Endpoint labels alone are insufficient.

## Identity and identity morphism

The identity morphism:



    id_A:A-> A



depends on object identity.

If `A` is stale or identity-ambiguous, identity morphism formation is stale or ambiguous.

A no-op function is not identity morphism evidence.

Repeated label `A` is not identity evidence.

## Identity and composition

Composition requires intermediate object identity or accepted compatibility.

Given:



    f:A-> B





    g:C-> D



composition requires evidence that `B` and `C` are identical or compatible under the relevant mode and scope.

Same printed label for `B` and `C` is insufficient.

## Identity and functors

A functor's object map must preserve or transform object identities:



    A|-> F(A)



The target identity must be well-formed and admissible.

Functoriality requires identity preservation:



    F(id_A)=id_{F(A)}



which depends on both source and target object identities.

## Identity and natural transformations

Naturality components depend on object identity:



    eta_A:F(A)-> G(A)



The identity of `A`, `F(A)`, and `G(A)` must be replayable.

If object identity changes across epochs, naturality must be migrated or re-proven.

## Identity and quotient categories

A quotient category may identify objects under object equivalence.

This does not erase the full object identities.

It creates quotient identities.

Representative-sensitive consumers must retain or recover representative identity.

Quotient-category identity must cite quotient relation, congruence, representative independence, certificates, and replay behavior.

## Identity and path coherence

If multiple construction paths produce objects intended to be the same, path coherence must prove identity or equivalence of the resulting identity records.

Without path coherence, the construction path is part of object identity.

Path coherence is required for migration paths, refinement paths, functor paths, quotient paths, and replay paths where downstream use depends on identity.

## Identity and migration

Object identity may migrate across epochs:



    I_{A,e}~> I_{A,e'}



Migration must preserve or explicitly transform id, kind, context, type witness, universe, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit reference, and replay behavior.

Same target id is insufficient.

Migration of identity is not migration of specialized semantic structure.

## Identity and refinement

Object identity may refine by adding structure, narrowing scope, improving dependencies, or strengthening certificates.

Refinement is not migration.

A refined identity must retain a projection or relation to the source identity.

If epoch also changes, migration evidence is required separately.

## Identity and invalidation

Object identity claims may become stale when any identity component changes.

Examples include changed kind taxonomy, changed context, changed type witness, changed epoch, changed dependency closure, changed proof boundary, changed trusted boundary, changed status policy, changed audit schema, or changed replay schema.

Invalidation is append-only.

The old identity remains audit content.

## Identity and status

Identity status is prefix-relative, epoch-relative, and scope-relative.

An identity may be accepted for audit and stale for proof.

It may be proposed in one prefix and accepted in a later prefix.

It may be migrated under quotient mode and rejected for exact mode.

Status must be part of identity use.

## Identity and certificates

Object-identity certificates may prove well-formedness, equality, equivalence, freshness, migration, refinement, invalidation, dependency closure, audit linkage, or replay admissibility.

A certificate over an object id alone is insufficient.

The certified statement must include the identity fields required by the consumer.

## Identity and audit

Audit links may locate an object identity in framework history.

They do not establish identity.

An audit link can support identity only if the link is accepted for the scope and a certificate connects the audit target to the identity statement.

Audit traceability is not object equality.

## Identity and replay

Replay of identity reconstructs the identity record and verifies that all identity fields and dependencies are available and fresh for the declared scope.

A replay result showing the same id is insufficient.

Replay must reconstruct kind, context, type witness, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit references, and replay metadata.

## Identity and applications

Application-instantiated identities belong outside this abstract file.

`ObjectIdentity.lean` may define generic hooks for application identity.

It must not define concrete application ids, bitmap values, matrix dimensions, hash constants, Feistel parameters, UI coordinates, token values, or runtime payloads.

## Identity and `none`

No identity field may treat `none`, `null`, missing value, or absent runtime binding as a mathematical default.

Optional absence is data-level absence.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

Identity cannot install defaults.

## Identity certificates

Object-identity certificates may prove:



    ObjectIdentityWellFormed(I_A)





    ObjectIdentityEq(I_A,I_B)





    ObjectIdentityEquiv(I_A,I_B,R)





    ObjectIdentityFresh(I_A,p,e,scope)





    ObjectIdentityMigrates(I_{A,e},I_{A,e'})





    ObjectIdentityReplayAdmissible(I_A)



or identity projection, substitution, congruence, invalidation, audit, path-coherence, and dependency-closure claims.

Only accepted certificates discharge identity obligations.

## Epoch rule

`ObjectIdentity.lean` artifacts are epoch-indexed by:

- object-identity schema epoch;
- object-id schema epoch;
- object-kind schema epoch;
- categorical-context epoch;
- type-witness epoch;
- universe-metadata epoch;
- dependency-record epoch;
- status epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream identity claims.

The old identity artifact remains audit content.

## History relation

A history record depending on `ObjectIdentity.lean` must record:

1. source file identity;
2. declaration identity;
3. object identity record;
4. id component;
5. kind component;
6. context component;
7. type witness;
8. universe metadata;
9. epoch;
10. dependency closure;
11. status;
12. certificates;
13. proof boundary;
14. trusted boundary where used;
15. audit reference;
16. replay data.

The object label alone is insufficient.

## Replay rule

Replay of `ObjectIdentity.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, and `ObjectKind.lean`;
3. reconstructing the object-identity record declaration;
4. reconstructing id, kind, context, type witness, universe, epoch, dependency, status, certificate, proof-boundary, trusted-boundary, audit, and replay fields;
5. checking identity equality, projected identity, equivalence, migration, refinement, invalidation, substitution, and congruence declarations;
6. checking proof objects or trusted boundaries where present;
7. checking that no runtime code or application constants are introduced;
8. checking dependency closure and audit metadata.

If any step fails, downstream object-identity claims are not replay-admissible.

## Runtime representation

`ObjectIdentity.lean` may lower to:

- Lean identity records;
- object-id metadata;
- context metadata;
- type-witness metadata;
- identity-equality theorem metadata;
- identity-equivalence descriptors;
- dependency manifests;
- certificate descriptors;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not object identity.

Identity depends on typed fields, dependencies, certificates, epoch, proof boundary, trusted boundary, audit reference, and replay behavior.

## Non-collapse theorem

Let two categorical object identities have the same object label, same id, same kind, or same Lean value.

This does not imply identity equality.

They collapse only if their kind, context, type witness, universe metadata, epoch, dependency closure, status, certificates, proof boundary, trusted boundary, audit reference, and replay behavior coincide.

Thus label, id, kind, or value equality is insufficient for categorical object identity.

## Proof obligation

`ObjectIdentity.lean` is admissible only if the framework can certify:

1. object identity is typed;
2. id is only one component of identity;
3. kind is only one component of identity;
4. context is proof-relevant;
5. type witness is explicit;
6. epoch is explicit;
7. dependencies are explicit;
8. status is prefix-, epoch-, and scope-relative;
9. certificates and proof boundaries are explicit;
10. audit references are traceability only;
11. replay reconstructs the full identity record;
12. runtime labels and application constants are excluded.

## Exclusion rule

`ObjectIdentity.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime object identifiers, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object identity infrastructure.

## Commitment rule

`ObjectIdentity.lean` may define full categorical object identity records and identity laws.

It cannot make labels into identity.

It cannot make Lean value equality into framework identity.

It cannot make kind tags into specialized semantics.

It cannot make runtime references into proof-core identities.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
