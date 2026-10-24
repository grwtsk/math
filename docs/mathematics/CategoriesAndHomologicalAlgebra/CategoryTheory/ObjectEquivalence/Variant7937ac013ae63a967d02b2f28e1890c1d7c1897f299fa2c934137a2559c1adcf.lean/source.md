# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjectEquivalence.Variant7937ac013ae63a967d02b2f28e1890c1d7c1897f299fa2c934137a2559c1adcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c35602c293f3071a5117390b9948ee4ac4d29f9` · SHA-256 `7937ac013ae63a967d02b2f28e1890c1d7c1897f299fa2c934137a2559c1adcf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# ObjectEquivalence.lean

## Role

`ObjectEquivalence.lean` defines categorical object-equivalence infrastructure.

Object equivalence is a declared relation between categorical objects.

It may support quotient reasoning, observable reasoning, approximate reasoning, replay reasoning, audit reasoning, migration reasoning, refinement reasoning, or path-coherence reasoning.

Object equivalence is not object equality.

Object equivalence is not Lean propositional equality.

Object equivalence is not label equality.

Object equivalence is not kind equality.

Object equivalence is not runtime representation equality.

It is a proof-relevant relation with laws, mode, scope, dependencies, certificates, epochs, audit references, invalidations, and replay behavior.

## Core principle

Object equivalence may allow selected consumers to treat objects as interchangeable under a declared relation.

It does not automatically allow all substitution.

For objects `A` and `B`, an equivalence claim has schematic form:



    A ~ B



but the relation `~` must be named.

The mode and scope of the relation determine what may consume it.

Raw equality, quotient equivalence, observable equivalence, approximate equivalence, replay equivalence, audit equivalence, migration equivalence, and refinement equivalence are distinct.

## Formal shape

An object-equivalence record has schematic form:



    ObjectEquivalence=(left,right,relation,laws,mode,scope,domain,retained,lost,deps,certs,epoch,status,proofBoundary,trustedBoundary,audit,replay)



where:

- `left` is the first categorical object;
- `right` is the second categorical object;
- `relation` records the equivalence relation;
- `laws` records reflexivity, symmetry, transitivity, and congruence evidence where required;
- `mode` records exact, quotient, observable, approximate, replay, audit, summary, checkpoint, partial, trusted-boundary, rejected, unknown, or research-obligated mode;
- `scope` records admissible consumers;
- `domain` records where the equivalence applies;
- `retained` records preserved information;
- `lost` records omitted or hidden information;
- `deps` records dependency closure;
- `certs` records accepted evidence;
- `epoch` records semantic coordinates;
- `status` records lifecycle state;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record declares and supports equivalence.

It does not collapse equivalence into equality.

## Relation field

The relation field has form:



    R:CategoryObject-> CategoryObject-> Prop



or a typed universe-polymorphic variant over object records.

The relation must state what is compared.

It may compare full identity, selected fields, quotient classes, observables, replay results, audit provenance, migrated identity, refined identity, or approximate distance.

A relation name alone is insufficient.

## Equivalence laws

An equivalence relation requires laws:



    Reflexive(R)





    Symmetric(R)





    Transitive(R)



or a partial-equivalence variant with an explicit domain.

The laws must be present as proofs, certificates, or trusted-boundary statements.

A binary relation without these laws is not an equivalence relation.

A directed migration relation is not an equivalence unless symmetry and transitivity are certified or explicitly symmetrized.

## Partial equivalence

Object equivalence may be partial.

A partial equivalence applies only to objects satisfying a domain predicate:



    D(A)



and:



    D(B)



The domain may restrict context, kind, epoch, status, scope, mode, or dependency freshness.

Partial equivalence cannot support global substitution unless coverage is certified.

## Setoid-style object equivalence

The file may define setoid-style records for categorical objects:



    ObjectSetoid=(Obj,R,refl,symm,trans)



This supports quotient constructions and equivalence-indexed reasoning.

The setoid record must also expose dependencies, certificates, epoch, proof boundary, audit reference, and replay behavior when used as framework evidence.

A Lean setoid alone is not a framework-ready quotient policy.

## Quotient equivalence

Quotient equivalence identifies objects by equivalence class.

A quotient object claim may have form:



    [A]=[B]



or:



    q(A)=q(B)



It supports quotient-level consumers.

It does not preserve representative identity.

Representative-sensitive morphism typing, functoriality, naturality, replay, or certificate reuse requires representative recovery or representative independence.

## Observable equivalence

Observable equivalence identifies objects by an observable map:



    Obs(A)=Obs(B)



It supports observable and display consumers.

It does not preserve hidden object identity, dependencies, proof boundaries, certificates, or replay behavior unless the observable is faithful for the declared scope.

Observable equivalence cannot support exact substitution by default.

## Approximate equivalence

Approximate equivalence identifies objects up to a tolerance:



    d(A,B)<=epsilon



or:



    res(A,B)<=epsilon



It requires metric, residual, tolerance carrier, error-composition law, mode, scope, dependencies, certificates, epoch, and replay behavior.

Approximate equivalence is not exact equality.

A zero residual implies exact equality only if a soundness theorem proves that implication.

## Replay equivalence

Replay equivalence identifies objects whose replay behavior agrees under a declared procedure and comparison relation.

It may have form:



    Replay(A)~ Replay(B)



Replay equivalence requires replay target, procedure, result carrier, comparison relation, dependencies, certificates, epoch, proof boundary, and invalidation behavior.

Stored object labels or cached replay outputs are insufficient.

## Audit equivalence

Audit equivalence identifies objects for provenance or historical explanation.

Objects may be audit-equivalent because they link to the same history record, certificate record, replay manifest, migration node, or audit path.

Audit equivalence does not imply mathematical equality.

It supports audit consumers only unless a certificate proves that audit equivalence is faithful for the required object identity.

## Summary equivalence

Summary equivalence compares summaries of categorical objects.

It must record summary function, retained fields, omitted fields, sufficiency scope, dependencies, certificates, epoch, and replay behavior.

Summary equivalence cannot support exact object substitution unless summary sufficiency or reconstruction is certified.

## Checkpoint equivalence

Checkpoint equivalence compares materialized replay or reconstruction state.

It must record checkpoint payload, covered object fields, dependency closure, invalidation policy, certificates, epoch, and replay scope.

Checkpoint equivalence is not raw object equality.

It supports only checkpoint-admitting consumers.

## Migration equivalence

Migration equivalence relates objects transported across epochs or migration paths.

It must record source epoch, target epoch, migration path, loss mode, retained information, lost information, dependencies, certificates, invalidations, and replay behavior.

A target object with the same id is insufficient.

Migration equivalence is not same-epoch equality.

## Refinement equivalence

Refinement equivalence relates objects across precision or representation levels.

It must record refinement index, projection, reconstruction, error bound, retained information, dependencies, certificates, epoch, and replay behavior.

Refinement equivalence is not migration equivalence.

If epoch changes, migration evidence is also required.

## Path equivalence

Path equivalence relates objects produced by different construction, migration, refinement, functorial, quotient, replay, or audit paths.

A path-equivalence claim must identify both paths.

Without path coherence, the path is part of object identity.

Path equivalence requires certificates when used by morphism typing, composition, functoriality, naturality, replay, or proof obligations.

## Representative independence

Representative independence states that a construction does not depend on the selected representative of an equivalence class.

For a construction `F`:



    A~ B=> F(A)=F(B)



or:



    A~ B=> F(A)~'F(B)



depending on target mode.

Representative independence is required before quotient object equivalence can support functors, morphisms, identity morphisms, composition, certificates, or replay.

## Representative recovery

Representative recovery gives a certified way to recover or select representatives from quotient classes.

It is stronger than quotient equivalence.

Quotient equivalence alone does not provide representative recovery.

Representative-sensitive consumers must require recovery, representative independence, or exact identity.

## Substitution limit

Object equivalence does not automatically permit substitution.

A substitution theorem must state:



    A~ B=> P(A)=> P(B)



for the specific predicate or construction `P`.

Substitution limits are part of the equivalence relation's consumer policy.

Using equivalence as equality without a congruence theorem is inadmissible.

## Congruence

Congruence states that constructions respect object equivalence.

Examples include:



    A~ B=> Hom(A,C)~ Hom(B,C)





    A~ B=> F(A)~ F(B)





    A~ B=> Replay(A)~ Replay(B)



Every congruence theorem must name source relation, target relation, mode, scope, dependencies, certificates, epoch, and replay behavior.

Congruence is not automatic.

## Endpoint congruence

Morphism endpoint equivalence requires endpoint congruence.

For:



    f:A-> C



and:



    A~ B



one may treat `f` as a morphism from `B` only if the morphism typing relation is congruent under the object equivalence.

Endpoint congruence must be certified.

Object equivalence alone is insufficient.

## Identity-morphism congruence

If:



    A~ B



then relating:



    id_A



and:



    id_B



requires identity-morphism congruence.

A quotient category may supply this by construction only if quotient readiness is certified.

Without congruence, object equivalence cannot rewrite identity morphisms.

## Composition congruence

Composition must respect object equivalence at intermediate objects.

If codomain and domain are equivalent rather than equal, composition may be quotient, observable, approximate, or partial depending on the relation.

The composition law must state which object equivalence it accepts.

Composition cannot infer equality from equivalence.

## Functor congruence

A functor respects object equivalence if:



    A~ B=> F(A)~ F(B)



or if it maps equivalent objects to equal target objects under a stronger theorem.

Functor congruence is required for quotient functors and path-independent application interfaces.

A functor object map table is insufficient.

## Naturality congruence

Naturality statements may depend on object equivalence.

If a naturality square is indexed by `A`, and `A~ B`, transferring the square to `B` requires component congruence and morphism congruence.

Equivalence of object labels does not transfer naturality.

## Equivalence and equality separation

The file must assert:



    ObjectEquivalence notequiv ObjectEquality



Equivalence may support selected consumers.

Equality supports stronger substitution.

A theorem may turn equivalence into equality only under a strengthening condition, such as faithfulness, representative recovery, exact replay completeness, or identity-reflection.

No such strengthening is implicit.

## Equivalence reflection

An object relation may reflect equivalence or equality.

For example:



    F(A)~ F(B)=> A~ B



or:



    F(A)=F(B)=> A=B



under a declared domain.

Reflection is stronger than preservation.

It must be certified when used for backward inference or invertibility.

## Equivalence preservation

A map or relation may preserve equivalence:



    A~ B=> F(A)~ F(B)



Preservation does not imply reflection.

Preservation is required for quotienting and functorial transport.

The preserved relation may be weaker than the source relation and must be declared.

## Equivalence composition

Equivalence proofs compose by transitivity when they use the same relation.

When relations differ, composition requires a relation-composition theorem.

Approximate equivalences may compose with accumulated error.

Observable equivalence composition requires compatible observables.

Quotient equivalence composition requires compatible quotient relations.

Composition must not silently strengthen mode.

## Equivalence weakening

Object equality may weaken to object equivalence.

Examples include:



    ObjectEquality(A,B)=> ObjectEquivalence_{quotient}(A,B)





    ObjectEquality(A,B)=> ObjectEquivalence_{observable}(A,B)



Weakening must record lost information.

The weaker equivalence cannot support stronger consumers unless strengthened later.

## Equivalence strengthening

Object equivalence may strengthen to object equality only with additional evidence.

Examples include faithful observables, representative recovery, zero-error soundness, replay completeness, or path-coherence identity.

Strengthening requires accepted certificates.

It is not obtained from the equivalence relation's name.

## Equivalence domain

Every equivalence relation must declare its domain.

The domain may restrict object kind, context, epoch, status, proof mode, scope, or dependency freshness.

Objects outside the domain cannot be considered equivalent under that relation.

Domain membership must be proven where consumed.

## Equivalence mode

Object equivalence is mode-sensitive.

Modes include exact-equivalence, quotient, observable, approximate, replay, audit-only, summary, checkpoint, partial, rejected, unknown, trusted-boundary, and research-obligated.

The mode determines what information is retained or lost.

Consumers must check mode compatibility.

## Equivalence scope

Object equivalence is scope-sensitive.

A relation may be valid for display but not proof.

It may be valid for audit but not frame construction.

It may be valid for quotient categories but not representative-sensitive morphism typing.

The scope must be part of the equivalence record.

## Equivalence status

Object equivalence has lifecycle status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

An accepted equivalence at one prefix may be stale at a later prefix.

Status is part of replayable evidence.

## Equivalence dependencies

Equivalence depends on relation definition, laws, domain, equality infrastructure, proof modes, scopes, statuses, epochs, certificates, proof boundary, trusted boundary, audit links, and replay parameters.

If any dependency changes, the equivalence may become stale.

Dependency closure must be explicit.

## Equivalence certificates

Equivalence certificates may prove:



    ObjectEquiv(A,B,R)





    Reflexive(R)





    Symmetric(R)





    Transitive(R)





    Congruent(F,R,R')





    RepresentativeIndependent(F,R)





    QuotientReady(R)





    ReplayEquiv(A,B)



or equivalence freshness, invalidation, migration, refinement, path coherence, audit, and replay-admissibility claims.

Only accepted certificates discharge equivalence obligations.

## Equivalence invalidation

Object-equivalence claims may become stale if relation definition, equivalence laws, domain, object kind, context, epoch, dependencies, certificates, proof boundary, trusted boundary, audit schema, replay schema, or consumer policy changes.

Invalidation is append-only.

The old equivalence claim remains audit content.

## Equivalence migration

Object equivalence may migrate across epochs.

A source equivalence:



    A_e~_e B_e



does not imply target equivalence:



    A_{e'}~_{e'} B_{e'}



unless object migration, relation migration, law migration, dependency migration, proof-boundary migration, and replay preservation are accepted.

Same target labels are insufficient.

## Equivalence refinement

Object equivalence may refine by sharpening relation, narrowing domain, adding congruence, reducing error, or strengthening certificates.

Refinement is not migration.

A refined equivalence must retain or explicitly relate to the source equivalence.

If epoch also changes, migration evidence is required.

## Equivalence audit

Audit links may trace equivalence claims to certificates, theorem statements, quotient policies, replay manifests, migration nodes, or history records.

Audit links do not prove equivalence.

Audit path coherence may be required where multiple audit paths support the same equivalence.

## Equivalence replay

Replay of object equivalence reconstructs both objects, relation, laws, domain, mode, scope, retained information, lost information, dependencies, certificates, proof boundary, trusted boundary, epoch, status, audit references, and replay behavior.

If replay reconstructs only a pair of labels or ids, the equivalence is not replay-admissible.

Stored equivalence results are insufficient.

## Equivalence and applications

Application-instantiated object equivalence belongs outside this abstract file.

`ObjectEquivalence.lean` may define generic hooks for application object equivalence.

It must not define concrete application equivalence, bitmap dimensions, matrix dimensions, token equivalence, image equivalence, hash constants, Feistel constants, UI equivalence, or runtime payload equivalence.

## Equivalence and `none`

No object-equivalence rule may treat `none`, `null`, missing fields, or absent runtime bindings as mathematical defaults.

Equivalence of absence is only equivalence of absence unless specialized authority semantics define more.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

Equivalence cannot install defaults.

## Equivalence equality

Two object-equivalence records are equal only if their left object, right object, relation, laws, mode, scope, domain, retained information, lost information, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit references, and replay behavior coincide.

Same relation name is insufficient.

Same object labels are insufficient.

Same quotient class display is insufficient.

## Equivalence of equivalence records

Two equivalence records may be equivalent under a higher-level relation.

For example, two quotient relations may be equivalent for a specific quotient consumer.

Equivalence of equivalence records is not equality.

Consumers must state whether they accept the higher-level equivalence.

## Epoch rule

`ObjectEquivalence.lean` artifacts are epoch-indexed by:

- object-equivalence schema epoch;
- relation-definition epoch;
- equivalence-law epoch;
- domain-policy epoch;
- quotient-policy epoch;
- observable-policy epoch;
- approximate-comparison epoch;
- replay-equivalence epoch;
- audit-equivalence epoch;
- dependency-record epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- replay-schema epoch.

Changing any component may stale downstream object-equivalence claims.

The old equivalence artifact remains audit content.

## History relation

A history record depending on `ObjectEquivalence.lean` must record:

1. source file identity;
2. declaration identity;
3. left object;
4. right object;
5. equivalence relation;
6. equivalence laws;
7. domain;
8. mode and scope;
9. retained and lost information;
10. dependency closure;
11. certificates;
12. epoch;
13. status;
14. proof boundary;
15. trusted boundary where used;
16. audit reference;
17. replay data.

The equivalence symbol alone is insufficient.

## Replay rule

Replay of `ObjectEquivalence.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `CategoryObject.lean`, `ObjectKind.lean`, `ObjectIdentity.lean`, and `ObjectEquality.lean`;
3. reconstructing object-equivalence relation declarations;
4. reconstructing reflexivity, symmetry, transitivity, partial-domain, congruence, representative-independence, and quotient-readiness declarations;
5. reconstructing quotient, observable, approximate, replay, audit, migration, refinement, and path-equivalence records;
6. checking equivalence/equality separation and substitution limits;
7. checking proof objects or trusted boundaries where present;
8. checking that no runtime code or application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream object-equivalence claims are not replay-admissible.

## Runtime representation

`ObjectEquivalence.lean` may lower to:

- Lean equivalence relation declarations;
- setoid records;
- quotient-readiness metadata;
- representative-independence theorem metadata;
- congruence theorem metadata;
- equivalence certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- replay descriptors.

Runtime representation is not equivalence identity.

Equivalence identity depends on compared objects, relation, laws, mode, scope, domain, dependencies, certificates, epoch, proof boundary, trusted boundary, audit reference, and replay behavior.

## Non-collapse theorem

Let two categorical objects be equivalent under a declared relation.

This does not imply they are equal.

They may be substituted only in consumers whose predicates, morphism typings, functors, naturality statements, replay procedures, or certificate schemas are congruent under that relation.

Thus object equivalence is insufficient for object equality and insufficient for unrestricted substitution.

## Proof obligation

`ObjectEquivalence.lean` is admissible only if the framework can certify:

1. object equivalence is distinct from object equality;
2. equivalence relations are typed;
3. reflexivity, symmetry, and transitivity are explicit;
4. partial-equivalence domains are explicit;
5. quotient, observable, approximate, replay, audit, migration, and refinement equivalences are distinct;
6. representative independence is explicit where quotienting is used;
7. substitution requires congruence;
8. dependency closure, epochs, certificates, audit links, and replay behavior are explicit;
9. invalidation is append-only;
10. runtime representations and application constants are excluded;
11. `none` and `null` are not treated as defaults.

## Exclusion rule

`ObjectEquivalence.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator domains, operator actions, history append operations, migration maps, refinement maps, application values, runtime equivalence functions, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only categorical object-equivalence infrastructure.

## Commitment rule

`ObjectEquivalence.lean` may define object-equivalence relations, laws, substitution limits, and congruence obligations.

It cannot collapse equivalence into equality.

It cannot allow quotient equivalence to replace representative identity without evidence.

It cannot allow observable equivalence to prove hidden-state equality without faithfulness.

It cannot allow approximate equivalence to prove exact equality without strengthening.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make stored labels replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
