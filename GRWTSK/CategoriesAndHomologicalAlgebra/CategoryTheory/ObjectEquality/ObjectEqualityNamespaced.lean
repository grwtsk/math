-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantb7b93f72780e7104da34f8dc90372dfa108ef14656127fbb920ea4779db9640f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7b93f72780e7104da34f8dc90372dfa108ef14656127fbb920ea4779db9640f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variantb7b93f72780e7104da34f8dc90372dfa108ef14656127fbb920ea4779db9640f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b7b93f72780e7104da34f8dc90372dfa108ef14656127fbb920ea4779db9640f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/object/ObjectEquality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# ObjectEquality.lean

## Role

`ObjectEquality.lean` defines categorical object-equality infrastructure.

It distinguishes Lean propositional equality, categorical object equality, object-identity equality, value equality, kind equality, context equality, epoch equality, dependency equality, certificate-aware equality, replay equality, audit identity, and runtime representation equality.

It prevents object labels, kind tags, Lean values, content hashes, runtime references, displayed nodes, or cached records from being treated as categorical object equality.

It provides equality records, substitution laws, congruence laws, certificate schemas, invalidation behavior, audit references, epoch attachment, dependency closure, and replay behavior for categorical object equality claims.

## Core principle

Categorical object equality is proof-relevant.

For categorical objects `A` and `B`, a claim:



    A = B



must state which equality notion is being used.

Lean equality of record values is not automatically framework object equality.

Object id equality is not object equality.

Kind equality is not object equality.

Runtime representation equality is not object equality.

A valid object-equality claim must identify the relevant fields, mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit reference, and replay behavior.

## Formal shape

An object-equality record has schematic form:



    ObjectEquality=(left,right,equalityKind,comparison,mode,scope,fields,deps,certs,epoch,status,proofBoundary,trustedBoundary,audit,replay)



where:

- `left` is the first categorical object;
- `right` is the second categorical object;
- `equalityKind` identifies Lean, value, identity, context, epoch, dependency, certificate-aware, replay, audit, quotient, observable, approximate, or projected equality;
- `comparison` records the equality or comparison relation;
- `mode` records proof mode;
- `scope` records admissible consumers;
- `fields` records which object fields are compared;
- `deps` records dependency closure;
- `certs` records accepted equality evidence;
- `epoch` records semantic coordinates;
- `status` records lifecycle state;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record is an equality claim.

It is not object identity by construction.

## Lean equality

Lean equality has form:



    A = B



inside Lean.

It compares Lean values at the same type.

Lean equality is useful for internal rewriting and proof construction.

It does not automatically provide categorical object equality unless the compared Lean values contain all proof-relevant identity fields and the theorem is accepted for the required scope.

Lean equality is not audit identity.

Lean equality is not replay equality.

Lean equality is not certificate equality.

## Definitional equality

Definitional equality is Lean kernel convertibility.

It may simplify terms or allow type checking.

It is not an exported framework certificate by itself.

If a framework artifact depends on definitional equality, the trusted boundary, theorem statement, dependency closure, epoch, and replay behavior must be recorded where exported.

Definitional equality cannot replace object-equality certificates for audit or replay use.

## Propositional equality

Propositional equality is a proposition:



    Eq(A,B):Prop



It may be proven inside Lean.

It does not include status, scope, proof mode, dependency closure, certificate provenance, audit reference, or replay behavior unless those are included in the proposition or certificate schema.

A propositionally equal record and a replay-admissible framework object-equality certificate are distinct.

## Value equality

Value equality compares the underlying typed value or type witness of two categorical objects.

It may have form:



    value(A)=value(B)



Value equality is weaker than categorical object equality.

Two objects with equal values may differ by id, kind, context, epoch, dependencies, status, certificates, proof boundary, audit references, or replay manifests.

Value equality cannot support morphism endpoint substitution unless congruence and field sufficiency are certified.

## Identity equality

Identity equality compares full object-identity records.

It includes object id, kind, context, type witness, universe metadata, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit reference, and replay behavior.

A full identity-equality claim has form:



    ObjectIdentityEq(I_A,I_B)



This is stronger than value equality, id equality, label equality, or kind equality.

Full identity equality may support exact categorical substitution when fresh.

## Id equality

Id equality compares object identifiers:



    id(A)=id(B)



Id equality is not object equality.

The same id may occur in different categorical contexts, epochs, proof modules, histories, applications, quotient views, or audit records.

Id equality may be a component of full object equality.

It cannot replace full object equality.

## Label equality

Label equality compares displayed names.

It has no proof strength beyond display or audit scope unless a certificate connects labels to object identity.

A diagram node labeled `A` in two diagrams may denote different objects.

Label equality is insufficient for morphism typing, identity morphism formation, composition, functoriality, naturality, quotienting, replay, or certificate reuse.

## Kind equality

Kind equality compares object-kind records.

It may show that two objects are both classified under the same kind.

It does not show that the objects are equal.

It does not supply specialized semantics.

It does not prove that two carrier-kind objects have the same carrier structure, or that two sheaf-kind objects have the same sheaf data.

Kind equality is one field equality, not categorical object equality.

## Context equality

Context equality compares categorical contexts.

It may prove:



    context(A)=context(B)



This is necessary for some same-category reasoning, but not sufficient for object equality.

Two distinct objects can live in the same context.

Context equality must be combined with identity, type witness, epoch, dependency, status, and certificate evidence where exact object equality is required.

## Type-witness equality

Type-witness equality compares the Lean-side typed representation of objects.

A type witness may be equal while categorical objects differ by id, context, epoch, dependencies, proof boundary, or audit provenance.

Type-witness equality is not carrier equality, spectrum equality, authority equality, tensor equality, sheaf equality, operator equality, history equality, migration equality, certificate equality, replay equality, or application equality.

Specialized equality belongs in specialized layers.

## Universe equality

Universe equality records that type witnesses inhabit compatible universe levels.

Universe equality is type-theoretic infrastructure.

It is not epoch equality.

It is not refinement.

It is not migration.

Universe equality may be necessary for Lean typing but never sufficient for categorical object equality.

## Epoch equality

Epoch equality compares semantic epochs:



    epoch(A)=epoch(B)



It is one component of object equality.

Same epoch does not imply same object.

Different epochs generally block exact object equality unless cross-epoch identity, migration, compatibility, audit-only status, or a special equality theorem is certified.

Epoch compatibility is weaker than epoch equality.

## Dependency equality

Dependency equality compares dependency closures.

Two objects may have equal values and ids but different dependencies.

Dependency equality must account for dependency identity, kind, mode, scope, prefix, epoch, status, certificates, invalidations, proof boundary, audit references, and replay behavior.

Dependency equality is necessary for replay-complete exact object equality where dependencies are proof-relevant.

## Status equality

Status equality compares lifecycle state relative to prefix, epoch, scope, and mode.

Same object with accepted status in one prefix may be proposed, stale, rejected, migrated, or audit-only in another.

Status equality is not object equality.

Status compatibility is required when equality is consumed in status-sensitive scopes.

## Certificate-aware equality

Certificate-aware equality includes the certificates supporting the equality claim.

Two equality claims with the same equation but different certificates may be audit-distinct.

A certificate-aware equality record must include statement, subject, verifier, payload reference, result, mode, scope, dependencies, proof boundary, trusted boundary, epoch, and replay behavior.

Same equation is insufficient.

## Proof-boundary equality

Proof-boundary equality compares the proof assumptions under which equality is accepted.

Changing Lean kernel assumptions, axioms, trusted verifiers, decoders, hash assumptions, finite enumerators, replay engines, or extraction boundaries may stale equality claims.

Proof-boundary equality is part of certificate-aware equality.

## Trusted-boundary equality

Trusted-boundary equality compares trusted components and trusted statements.

Two equalities certified by different trusted boundaries may be audit-distinct.

A trusted hash boundary can certify byte equality but not object equality unless semantic decoding and object identity are inside the trusted statement.

Trusted-boundary equality cannot be elided.

## Audit equality

Audit equality compares traceability.

Two objects may be audit-equal if they link to the same audit record, prefix, certificate, replay manifest, or provenance path.

Audit equality does not imply categorical object equality unless a certificate states that the audit link is faithful for object identity.

Audit equality supports audit consumers, not exact substitution by default.

## Replay equality

Replay equality compares reconstructed object identity or replay results under declared replay procedures.

A replay-equality claim may state:



    Replay(A)=Replay(B)



or:



    ReplayIdentity(A)=ReplayIdentity(B)



Replay equality must name replay target, replay procedure, result carrier, comparison relation, dependencies, certificates, epoch, and scope.

Stored object labels or cached records are not replay equality.

## Projected equality

Projected equality compares selected fields.

Examples include:

- id-only equality;
- value-only equality;
- kind-only equality;
- context-only equality;
- epoch-only equality;
- audit-only equality;
- display equality;
- replay-result equality.

Projected equality is weaker than full object equality.

It must record retained fields, omitted fields, mode, scope, dependencies, certificates, and replay behavior.

## Full object equality

Full object equality compares all proof-relevant fields.

It requires equality or accepted equivalence of:

- id;
- kind;
- context;
- type witness;
- universe metadata;
- epoch;
- dependencies;
- status;
- certificates;
- proof boundary;
- trusted boundary;
- audit references;
- replay behavior.

Full object equality is required for exact substitution when no weaker equivalence is accepted.

## Equality mode

Object equality is mode-sensitive.

Possible modes include exact, quotient, observable, approximate, replay, audit-only, summary, checkpoint, partial, rejected, unknown, trusted-boundary, and research-obligated.

Exact equality supports exact consumers when fresh.

Quotient equality supports quotient consumers.

Observable equality supports observable consumers.

Approximate equality supports tolerance-bounded consumers.

Audit-only equality supports audit consumers only.

## Equality scope

Object equality is scope-sensitive.

An equality may be accepted for display and rejected for proof.

It may be accepted for audit and stale for frame construction.

It may be quotient-valid for quotient consumers and invalid for representative-sensitive consumers.

The scope must be part of the equality record.

## Equality status

Object equality has lifecycle status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

An equality theorem with accepted status at one prefix may be stale at another.

Status must be replayable.

## Equality admissibility

Object equality is admissible for a consumer only if its mode, scope, status, dependencies, certificates, epoch, proof boundary, trusted boundary, audit reference, and replay behavior satisfy the consumer's requirements.

A proof-scope consumer may reject display equality.

A morphism endpoint consumer may reject id-only equality.

A quotient consumer may accept quotient equality only if morphism congruence is certified.

## Equality and equivalence separation

Object equality is distinct from object equivalence.

Equality supports substitutability under exact conditions.

Equivalence may support quotient, observable, approximate, replay, or audit-level reasoning.

The file must preserve:



    ObjectEquality notequiv ObjectEquivalence



Any use of equivalence as equality requires a strengthening theorem or consumer-specific congruence.

## Equality reflection

A relation may reflect object equality:



    R(A,C)and R(B,C)=> A=B



or:



    F(A)=F(B)=> A=B



under declared domain and scope.

Reflection is stronger than preservation.

It is required for backward inference, uniqueness, and some invertibility claims.

It must be certified.

## Equality preservation

A relation may preserve object equality:



    A=B=> F(A)=F(B)



or, for morphism endpoints:



    A=A'and B=B'=> Hom(A,B)=Hom(A',B')



Preservation must name the equality notion used at source and target.

Preservation of id equality is weaker than preservation of full identity equality.

## Substitution

Substitution replaces an object in a theorem or construction.

A substitution law may have form:



    A=B=> P(A)=> P(B)



where `P` is a predicate or construction.

Substitution is valid only for the declared equality, scope, and dependencies.

Substitution into morphism typing, functoriality, naturality, replay, or certificates requires congruence theorems.

## Endpoint substitution

For a morphism:



    f:A-> B



endpoint substitution may require:



    A=A'



and:



    B=B'



under the equality accepted by the morphism type.

Then one may derive:



    f:A'-> B'



only if the morphism typing relation is congruent under that object equality.

Endpoint substitution is not automatic.

## Identity-morphism substitution

For:



    id_A:A-> A



substitution from `A` to `B` requires object equality and identity-morphism congruence.

A theorem:



    A=B



does not by itself provide:



    id_A=id_B



unless identity formation and equality transport are certified for the relevant mode and scope.

## Composition substitution

For composition:



    go f



substitution of intermediate objects requires equality or compatibility of codomain and domain objects.

If:



    f:A-> B



and:



    g:C-> D



then composition requires certified equality or compatibility between `B` and `C`.

Same label is insufficient.

## Functorial substitution

A functor must respect object equality:



    A=B=> F(A)=F(B)



or a declared target equivalence.

Functorial substitution requires a theorem.

A functor object map cannot silently collapse objects with equal labels, ids, kinds, or runtime representations.

## Natural transformation substitution

Naturality components depend on object equality.

If:



    A=B



then relating:



    eta_A



and:



    eta_B



requires component congruence.

Object equality alone is insufficient unless component assignment is proven congruent.

## Equality congruence

Congruence states that constructions respect object equality.

Examples include:



    ObjectEq(A,B)=> Hom(A,C)cong Hom(B,C)





    ObjectEq(A,B)=> F(A)=F(B)





    ObjectEq(A,B)=> Replay(A)=Replay(B)



Each congruence theorem must name relation, mode, scope, dependencies, certificates, and epoch.

## Equality and quotient categories

Quotient categories use equivalence, not necessarily equality.

If quotienting identifies objects, the resulting quotient equality is not full object equality.

Representative-sensitive constructions require representative recovery or independence.

`ObjectEquality.lean` must prevent quotient equality from being consumed as raw object equality by default.

## Equality and object migration

Object equality may migrate across epochs.

A source equality:



    A_e=B_e



does not imply target equality:



    A_{e'}=B_{e'}



unless equality migration, object migration, dependency migration, proof-boundary migration, and replay preservation are accepted.

Same target labels are insufficient.

## Equality and object refinement

Object equality may be preserved or reflected by refinement.

Projection equality, reconstruction equality, approximate identity, and refined identity are distinct.

Refinement equality is not migration equality.

If epoch changes, migration evidence is also required.

## Equality and object invalidation

Object-equality claims may be invalidated by changes to identity fields, kind schema, context, type witness, equality relation, equivalence relation, dependency closure, certificates, proof boundary, trusted boundary, epoch, status policy, audit schema, or replay schema.

Invalidation is append-only.

The old equality claim remains audit content.

## Equality and audit links

Audit links may support equality traceability.

They do not prove equality.

An audit link can be used in an equality proof only if a certificate states that the audit relation is faithful for the equality claim and scope.

Audit-path coherence may be required when multiple audit paths justify equality.

## Equality and replay

Replay of equality reconstructs both objects, the equality relation, compared fields, dependencies, certificates, proof boundary, trusted boundary, epoch, status, audit references, and replay behavior.

If replay reconstructs only labels or ids, the equality claim is not replay-admissible for full object equality.

Stored equality results are insufficient.

## Equality and applications

Application-instantiated object equality belongs outside the abstract proof core.

`ObjectEquality.lean` may define generic hooks for application object equality.

It must not define concrete application equality, bitmap dimensions, matrix dimensions, token equality, image equality, hash constants, Feistel constants, UI equality, or runtime payload equality.

## Equality and `none`

No object-equality rule may treat `none`, `null`, missing fields, or absent runtime bindings as mathematical defaults.

Equality of optional absence is equality of absence only.

Authority-specific semantics for uninstalled versus installed state belong in the authority layer.

Absence equality cannot imply default-value equality.

## Equality certificates

Object-equality certificates may prove:



    ObjectEq(A,B)





    ObjectValueEq(A,B)





    ObjectIdentityEq(I_A,I_B)





    ObjectContextEq(A,B)





    ObjectEpochEq(A,B)





    ObjectDependencyEq(A,B)





    ObjectReplayEq(A,B)



or substitution, congruence, migration, refinement, invalidation, audit, freshness, and replay-admissibility claims.

Only accepted certificates discharge object-equality obligations.

## Epoch rule

`ObjectEquality.lean` artifacts are epoch-indexed by:

- object-equality schema epoch;
- Lean-equality interface epoch;
- value-equality epoch;
- identity-equality epoch;
- context-equality epoch;
- epoch-equality epoch;
- dependency-equality epoch;
- certificate-aware equality epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream object-equality claims.

The old equality artifact remains audit content.

## History relation

A history record depending on `ObjectEquality.lean` must record:

1. source file identity;
2. declaration identity;
3. left object;
4. right object;
5. equality kind;
6. compared fields;
7. comparison relation;
8. mode and scope;
9. dependency closure;
10. certificates;
11. epoch;
12. status;
13. proof boundary;
14. trusted boundary where used;
15. audit reference;
16. replay data.

The equality symbol alone is insufficient.

## Replay rule

Replay of `ObjectEquality.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, `ObjectKind.lean`, and `ObjectIdentity.lean`;
3. reconstructing equality-kind declarations;
4. reconstructing object equality, value equality, identity equality, context equality, epoch equality, dependency equality, certificate-aware equality, replay equality, and audit equality declarations;
5. checking equivalence separation, substitution, congruence, migration, refinement, invalidation, and freshness declarations;
6. checking proof objects or trusted boundaries where present;
7. checking that no runtime code or application constants are introduced;
8. checking dependency closure and audit metadata.

If any step fails, downstream object-equality claims are not replay-admissible.

## Runtime representation

`ObjectEquality.lean` may lower to:

- Lean equality declarations;
- object-equality records;
- equality-kind metadata;
- substitution theorem metadata;
- congruence theorem metadata;
- certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not equality identity.

Equality identity depends on compared objects, equality kind, compared fields, comparison relation, dependencies, certificates, epochs, proof boundary, trusted boundary, audit reference, and replay behavior.

## Non-collapse theorem

Let two categorical objects have the same label, id, kind, Lean value, runtime reference, displayed node, or content hash.

This does not imply categorical object equality.

They collapse only if the equality claim compares and certifies all fields required by the consumer, including context, type witness, epoch, dependencies, status, certificates, proof boundary, trusted boundary, audit references, and replay behavior.

Thus labels, kind tags, Lean values, runtime references, and hashes are insufficient for object equality.

## Proof obligation

`ObjectEquality.lean` is admissible only if the framework can certify:

1. Lean equality is distinguished from categorical object equality;
2. value equality is distinguished from identity equality;
3. label equality, id equality, and kind equality are insufficient;
4. context, epoch, dependency, certificate, proof-boundary, audit, and replay components are explicit where required;
5. equality and equivalence are separated;
6. substitution requires declared equality and congruence;
7. equality invalidation is append-only;
8. equality replay reconstructs the full equality claim;
9. runtime representations and application constants are excluded;
10. `none` and `null` are not treated as defaults.

## Exclusion rule

`ObjectEquality.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime equality functions, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object-equality infrastructure.

## Commitment rule

`ObjectEquality.lean` may define object-equality notions, substitution laws, and congruence obligations.

It cannot equate objects by label.

It cannot equate objects by kind tag.

It cannot equate objects by runtime representation.

It cannot turn value equality into full identity equality.

It cannot collapse equivalence into equality.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantb7b93f72780e7104da34f8dc90372dfa108ef14656127fbb920ea4779db9640f

