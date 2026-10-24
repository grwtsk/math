# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryObject.Variantb693f138d96594753100c41e123d7a28c18032620d454c8a607ac309dcf8acf4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59d72a7e0daab7c69512510aa1adf67b1ae310c5` · SHA-256 `e1c3f2880f32f64d21f6ecb15226deb41f6d060716ea4ac2ba7d88676c468b96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantd9acbb8dd12e0d952aaa95c7cc8ab3db3dc510581b8842ed4c53d9609ccd6248","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9acbb8dd12e0d952aaa95c7cc8ab3db3dc510581b8842ed4c53d9609ccd6248","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variantd9acbb8dd12e0d952aaa95c7cc8ab3db3dc510581b8842ed4c53d9609ccd6248","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d9acbb8dd12e0d952aaa95c7cc8ab3db3dc510581b8842ed4c53d9609ccd6248","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/object/CategoryObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# CategoryObject.lean

## Role

`CategoryObject.lean` defines the primary Lean record for categorical objects.

It supplies the proof-core representation of an abstract categorical node, including typed identity, object kind, categorical context, well-formedness, admissibility hooks, dependency closure, epoch attachment, status, audit references, certificates, and replay behavior.

It is not a carrier definition.

It is not a spectrum definition.

It is not an authority, tensor, sheaf, operator, history, refinement, migration, certificate, replay manifest, frame, or application object definition.

It is the abstract object record on which specialized semantic layers may later build.

## Core principle

A categorical object is a typed node in a categorical context.

It is not identified with its displayed label.

It is not identified with its Lean type alone.

It is not identified with its runtime representation.

A categorical object must carry enough proof-relevant metadata to support object typing, morphism typing, identity formation, composition, functorial mapping, naturality, quotienting, audit, and replay.

## Formal shape

The primary record has schematic form:



    CategoryObject=(id,kind,context,universe,typeRef,wellFormed,admissible,deps,epoch,status,audit,certs,replay)



where:

- `id` identifies the object as a categorical artifact;
- `kind` classifies its intended framework role;
- `context` identifies the categorical context in which it is an object;
- `universe` records universe-level information;
- `typeRef` records the typed Lean-side representation or object witness;
- `wellFormed` records structural well-formedness;
- `admissible` records mode- and scope-sensitive admissibility hooks;
- `deps` records dependency closure;
- `epoch` records semantic epoch attachment;
- `status` records lifecycle state;
- `audit` records traceability to framework history or proof artifacts;
- `certs` records accepted evidence relevant to object claims;
- `replay` records reconstruction behavior.

The record is abstract.

It does not define any specialized object semantics.

## Typed representation

The object may be represented by a type:



    X:Type\ u



or by an identifier with a typing witness.

The record must preserve type information.

A categorical object cannot be an untyped payload, untyped hash, untyped name, or untyped runtime pointer.

If heterogeneous objects are collected, each entry must retain its type witness.

## Object identity

The object identity includes more than `id`.

It includes:



    (id,kind,context,typeRef,epoch,deps,status,audit,replay)



and proof-relevant certificate metadata where used.

Two objects with the same `id` are not equal unless their categorical context, type witness, kind, epoch, dependencies, status, audit references, and replay behavior also coincide or are certified equivalent.

## Object kind

The `kind` field is classificatory.

It may indicate that the object is intended to be interpreted later as a carrier object, spectrum object, authority object, tensor object, sheaf object, operator object, history object, migration object, refinement object, certificate object, replay object, audit object, or application object.

The kind tag does not import the specialized semantics.

A `carrier` kind does not define carrier operations.

A `sheaf` kind does not define covers.

A `history` kind does not define append.

## Categorical context

The `context` field records the categorical environment in which the object is meaningful.

It may identify an abstract category, a quotient category, a path category, a functor source category, a functor target category, or a proof-local categorical context.

Object identity is context-sensitive.

The same object label in two contexts is not automatically the same categorical object.

## Well-formedness

The well-formedness field has form:



    ObjectWellFormed(A):Prop



It may require typed identity, valid kind, valid context, epoch attachment, dependency closure, and replay metadata.

Well-formedness is structural.

It is not semantic admissibility.

It is not proof of carrier membership, spectrum admissibility, authority installation, tensor contraction, sheaf gluing, operator action, history validity, certificate acceptance, or replay preservation.

## Admissibility hook

The admissibility hook has schematic form:



    ObjectAdmissible(A,mode,scope):Prop



Admissibility is mode-sensitive and scope-sensitive.

An object may be admissible for audit but not for proof.

It may be admissible for display but not for frame construction.

It may be admissible under quotient mode but not under representative-sensitive exact mode.

The hook is abstract and must be specialized by later modules.

## Dependencies

The dependency field records all proof-relevant dependencies required to use the object in a declared mode and scope.

Dependencies may include object-interface declarations, equality relations, equivalence relations, proof-mode policies, scope policies, status policies, epoch declarations, trusted boundaries, certificates, replay parameters, and audit references.

Hidden dependencies invalidate object replay and audit.

Lean imports alone are not dependency closure.

## Epoch attachment

The object is epoch-indexed.

A categorical object at epoch `e` is not automatically the same categorical object at epoch `e'`.

The record must support:



    ObjectAt(A,e)





    ObjectFresh(A,e,scope)





    ObjectMigrates(A_e,A_{e'},mode)



Epoch movement is not Lean universe lifting.

Epoch movement is not refinement.

Cross-epoch use requires equality, compatibility, migration, re-verification, or audit-only evidence.

## Status

The object status is prefix-relative, epoch-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Constructing a Lean record does not give accepted status.

Accepted status must be derived from certificates, history records, trusted boundaries, or replay-admissible derivation rules.

## Audit reference

The audit field links the categorical object to framework audit artifacts.

It may reference a history record, certificate record, replay manifest, migration node, refinement node, trusted-boundary record, verifier export, extraction artifact, or proof artifact.

The audit reference does not prove object well-formedness or admissibility.

It only records traceability.

## Certificates

The certificate field records accepted evidence relevant to object claims.

Certificates may prove object well-formedness, object admissibility, object equality, object equivalence, dependency closure, epoch freshness, audit linkage, replay admissibility, migration, refinement, or invalidation.

A certificate reference must include statement, subject, verifier, payload reference, result, mode, scope, dependencies, proof boundary, epoch, and replay behavior.

A raw payload is not a certificate.

## Replay

The replay field records how the categorical object record is reconstructed.

Replay must reconstruct object identity, kind, context, type witness, well-formedness statement, admissibility hook, dependency closure, epoch attachment, status, audit reference, certificates, and proof boundary.

A stored label is not replay.

A cached object record is not replay evidence.

A displayed node is not replay evidence.

## Object equality

`CategoryObject.lean` must distinguish Lean equality from categorical object identity.

Lean equality of record values may be useful internally.

Framework object equality must account for identity, kind, context, type witness, epoch, dependencies, certificates, status, audit references, and replay behavior.

Same label, same type, or same context is insufficient by itself.

## Object equivalence

The record must support object equivalence without collapsing it into equality.

Object equivalence may be exact, quotient, observable, approximate, replay, audit, migrated, refined, or path-based.

Every equivalence claim must name its relation, mode, scope, dependencies, certificates, epoch, and replay behavior.

Object equivalence does not imply substitutability unless congruence is certified for the relevant morphisms, functors, predicates, or replay procedures.

## Object as morphism endpoint

A categorical object can be the source or target of a morphism.

For a morphism:



    f:A-> B



both `A` and `B` must be admissible categorical objects under the morphism's required mode and scope.

If either endpoint is stale, rejected, unknown, audit-only, or only display-valid, the morphism typing claim must be weakened or rejected.

## Object as identity endpoint

Identity formation requires object admissibility:



    id_A:A-> A



The repeated occurrence of the same object label does not prove that the identity morphism is valid.

The object record must be well-formed and accepted for identity formation under the relevant categorical scope.

## Object as functor argument

A functor maps categorical objects to categorical objects.

The object image:



    F(A)



must be well-formed and admissible in the target categorical context.

A functor's object map is not just a name map.

It must preserve identity, kind where required, dependencies, epochs, certificates, and replay behavior under the declared functorial mode.

## Object as naturality index

A natural transformation component:



    eta_A:F(A)-> G(A)



depends on the object `A`, the functor images of `A`, and the component morphism.

`CategoryObject.lean` must make object identity stable enough that naturality statements can name the object and replay its dependencies.

## Object and quotienting

If categorical objects are quotiented, the object record must preserve the quotient relation, representative policy, dependency closure, certificates, and replay behavior.

A quotient object is not a raw object.

Representative-sensitive consumers require representative recovery or representative independence evidence.

## Object migration

Object migration must transport or relate:



    A_e~> A_{e'}



including identity, kind, context, type witness, equality, equivalence, admissibility, dependencies, certificates, status, audit references, and replay behavior.

Same object id at the target epoch is insufficient.

Object migration does not automatically migrate specialized semantic content.

## Object refinement

Object refinement may add structure, narrow admissibility, improve dependency closure, sharpen equivalence, or strengthen certificates.

Refinement is not migration.

If an object changes both precision and epoch, both object refinement and object migration evidence are required.

## Object invalidation

An object record may become stale if any of the following changes:

- object kind schema;
- categorical context;
- type witness;
- equality relation;
- equivalence relation;
- admissibility hook;
- dependency closure;
- certificate schema;
- proof boundary;
- trusted boundary;
- epoch;
- status policy;
- audit schema;
- replay schema.

Invalidation is append-only.

The old object record remains audit content.

## Abstractness requirement

The file must remain abstract.

It may quantify over:



    X:Type\ u



and object metadata.

It must not instantiate `X` with a concrete application carrier.

It must not define bitmap dimensions, token matrices, FNV constants, Feistel parameters, image payloads, UI values, runtime ids, or application defaults.

## Null discipline

The object record must not interpret `none`, `null`, missing fields, or absent runtime bindings as categorical default objects.

Optional fields are data-level absence only.

If authority semantics require uninstalled versus installed state, that belongs to the authority layer.

No object constructor may infer a mathematical default from absence.

## Runtime separation

The categorical object record is not a runtime object registry.

It must not define JavaScript object layouts, Rust structs, WASM memory layouts, browser objects, DOM nodes, canvas state, database rows, or filesystem paths.

Runtime schemas may later be verified against the Lean record, but they are not part of this file.

## Certificate relation

Object certificates may prove:



    CategoryObject(A)





    ObjectWellFormed(A)





    ObjectAdmissible(A,mode,scope)





    ObjectEq(A,B)





    ObjectEquiv(A,B,R)





    ClosedDeps(A,D)





    ObjectFresh(A,e,scope)





    ReplayAdmissible(A)



or migration, refinement, invalidation, audit, and path-coherence claims.

Only accepted certificates discharge object obligations.

## Epoch rule

`CategoryObject.lean` artifacts are epoch-indexed by:

- category-object-record epoch;
- object-id schema epoch;
- object-kind schema epoch;
- categorical-context epoch;
- type-witness epoch;
- well-formedness predicate epoch;
- admissibility-hook epoch;
- dependency-record epoch;
- status epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream object claims.

The old object artifact remains audit content.

## History relation

A history record depending on `CategoryObject.lean` must record:

1. source file identity;
2. declaration identity;
3. object id;
4. object kind;
5. categorical context;
6. typed representation;
7. well-formedness statement;
8. admissibility statement where used;
9. dependency closure;
10. certificates;
11. epoch;
12. status;
13. proof boundary;
14. trusted boundary where used;
15. audit reference;
16. replay data.

The object id alone is insufficient.

## Replay rule

Replay of `CategoryObject.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`;
3. reconstructing the `CategoryObject` record declaration;
4. reconstructing object id, kind, context, typed representation, well-formedness, admissibility, dependency, epoch, status, audit, certificate, and replay fields;
5. checking proof objects or trusted boundaries where present;
6. checking that no runtime code or application constants are introduced;
7. checking dependency closure and audit metadata.

If any step fails, downstream category-object claims are not replay-admissible.

## Runtime representation

`CategoryObject.lean` may lower to:

- Lean structure declarations;
- object-field metadata;
- object-well-formedness theorem metadata;
- object-admissibility theorem metadata;
- dependency manifests;
- certificate descriptors;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not object identity.

Object identity depends on the typed record, field semantics, dependencies, certificates, epoch, proof boundary, audit reference, and replay behavior.

## Non-collapse theorem

Let two categorical object records have the same `id`.

This does not imply the objects are equal.

They collapse only if their kinds, categorical contexts, typed representations, well-formedness predicates, admissibility hooks, dependency closures, certificates, epochs, statuses, proof boundaries, trusted boundaries, audit references, and replay behavior coincide.

Thus object-id equality is insufficient for categorical object identity.

## Proof obligation

`CategoryObject.lean` is admissible only if the framework can certify:

1. the primary object record is universe-polymorphic;
2. object identity is typed;
3. object kind is explicit;
4. categorical context is explicit;
5. well-formedness is distinct from admissibility;
6. dependency closure is explicit;
7. epoch attachment is explicit;
8. audit links are traceability only;
9. certificates are distinguished from raw payloads;
10. replay is distinguished from stored labels;
11. specialized semantic objects are not collapsed into categorical objects;
12. runtime code and application constants are excluded.

## Exclusion rule

`CategoryObject.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime object registries, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only the abstract Lean record for categorical objects.

## Commitment rule

`CategoryObject.lean` may define the primary categorical-object record.

It cannot turn object ids into object identity.

It cannot turn object kinds into specialized semantics.

It cannot turn well-formedness into admissibility.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make raw payloads accepted certificates.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantd9acbb8dd12e0d952aaa95c7cc8ab3db3dc510581b8842ed4c53d9609ccd6248

```
