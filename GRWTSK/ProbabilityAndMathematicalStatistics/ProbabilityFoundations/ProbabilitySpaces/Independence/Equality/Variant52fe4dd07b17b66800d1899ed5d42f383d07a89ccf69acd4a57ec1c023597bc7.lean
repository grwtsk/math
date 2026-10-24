/-
# Equality.lean

## Role

`Equality.lean` defines equality infrastructure for the Lean proof core.

It distinguishes Lean propositional equality, definitional equality, framework identity, object value equality, setoid equivalence, quotient equality, observable equality, approximate equality, replay equality, certificate identity, audit identity, and path-sensitive equality.

It must prevent accidental collapse between different equality notions.

A proof of:



    x=y



inside Lean is not automatically a proof of framework identity, audit identity, replay equality, certificate equality, migration equality, or current-use freshness.

## Core principle

Equality is always typed and scoped.

For values:



    x,y:X



Lean propositional equality has form:



    x=y



Framework equality may require more data:



    FrameworkEq(x,y,epoch,scope,deps,certs,replay)



The core must preserve the distinction between value equality and identity of framework objects carrying epochs, dependencies, certificates, audit references, and replay behavior.

## Definitional equality

Lean definitional equality is kernel-level convertibility.

It may justify type checking and simplification.

It is not a framework certificate by itself.

A definitional equality in Lean does not automatically produce an audit record, certificate record, replay manifest, or migration certificate.

If framework use requires export, the definitional equality must be connected to a certificate schema or trusted boundary.

## Propositional equality

Lean propositional equality has form:



    Eq_X(x,y)



or:



    x=y



It is a proposition.

It proves equality of values of the same type.

It does not include object id, epoch, dependency closure, audit reference, replay behavior, proof mode, or certificate status unless those fields are part of the value being compared.

## Heterogeneous equality caution

If heterogeneous equality is used for values in different types, it must be controlled.

Cross-type equality should normally be represented by a relation:



    R:X-> Y-> Prop



not by silently coercing or erasing types.

Migration, refinement, projection, reconstruction, observable comparison, and replay preservation are cross-type relations, not ordinary same-type equality.

## Framework identity

Framework identity includes proof-relevant metadata.

Two objects may have equal Lean values but different framework identities if they differ by:

- object id;
- object kind;
- epoch;
- dependency closure;
- certificate provenance;
- audit link;
- replay manifest;
- proof boundary;
- trusted boundary;
- scope;
- mode.

Therefore:



    x=y



does not imply:



    FrameworkId(x)=FrameworkId(y)



unless identity fields are included and certified.

## Object value equality

Object value equality compares the data component of an object interface.

If:



    obj_1.value=obj_2.value



then only the values are equal.

This does not imply equality of object interfaces.

It does not imply same dependencies, same epoch, same admissibility, same audit reference, same replay behavior, or same certificate status.

## Object-interface equality

Object-interface equality compares the full object-interface record.

It includes value, id, kind, well-formedness predicate, epoch attachment, dependency attachment, admissibility hook, audit reference, replay reference, and proof-relevant metadata.

Same wrapped Lean value is insufficient.

Same object id is insufficient.

Same theorem name is insufficient.

## Equality relation record

The file may define a universe-polymorphic equality relation record:



    EqualityRelation(X)=(eq,refl?,symm?,trans?,mode,scope,deps,certs,replay)



where:

- `eq` has type `X-> X-> Prop`;
- `refl?`, `symm?`, and `trans?` are optional or certified laws;
- `mode` records raw, quotient, observable, approximate, replay, audit, or proof mode;
- `scope` records admissible use;
- `deps` records dependency closure;
- `certs` records accepted evidence;
- `replay` records reconstruction data.

This record supports specialized equality infrastructure without assuming all equalities are Lean `Eq`.

## Raw equality

Raw equality is the strongest ordinary same-type equality.

It states that two values of the same type are equal under Lean's equality or a declared raw equality relation.

Raw equality may support exact proof consumers.

It does not automatically imply current-use freshness.

A stale raw equality theorem may be audit-valid but unusable at a later epoch.

## Setoid equality

Setoid equality is an explicitly supplied equivalence relation:



    x~ y



It is not Lean propositional equality.

Setoid equality may support quotient construction, representative independence, congruence, and replay equivalence.

A theorem using setoid equality must name the setoid.

No default setoid may be inferred silently.

## Quotient equality

Quotient equality compares equivalence classes:



    [x]=[y]



It is not raw representative equality.

A quotient-equality theorem supports quotient-level consumers.

It does not support representative-sensitive use unless representative recovery, representative independence, or selected-representative evidence is certified.

## Observable equality

Observable equality compares outputs of an observable map:



    Obs(x)=Obs(y)



It supports observable-level consumers.

It does not preserve hidden state.

It does not imply raw equality unless the observable is faithful and faithfulness is certified.

Observable equality must name the observable map and its codomain equality.

## Approximate equality

Approximate equality has form:



    d(x,y)<=epsilon



or:



    res(x,y)<=epsilon



It requires metric, topology, norm, residual, tolerance carrier, and scope.

Approximate equality is not exact equality.

A zero residual implies exact equality only if a soundness theorem proves it.

## Replay equality

Replay equality compares replay results under declared replay procedures:



    Replay_1(x)=Replay_2(y)



or:



    M(Replay_e(x))=Replay_{e'}(M(x))



Replay equality is not stored-output equality.

It requires replay target, procedure, schema, dependencies, certificates, comparison relation, epoch, and replay behavior.

A cached output does not prove replay equality.

## Audit identity

Audit identity compares audit provenance.

Two artifacts may be mathematically equal but audit-distinct if they arise from different records, prefixes, proof objects, trusted boundaries, migrations, or replay manifests.

Audit identity is useful for traceability.

It is not mathematical equality unless a theorem connects it to the relevant mathematical equality.

## Certificate identity

Certificate identity includes statement, subject, verifier, payload reference, result, mode, scope, dependencies, proof boundary, epoch, and replay behavior.

Two certificates with the same theorem statement may differ.

Two certificates with the same accepted result may differ.

Two certificates with the same proof payload may differ.

Certificate identity is not just proposition equality.

## Theorem identity

A theorem identity includes:

- theorem statement;
- theorem name;
- module path;
- proof object or trusted boundary;
- imports;
- dependency closure;
- proof mode;
- scope;
- epoch;
- replay metadata;
- audit link.

Same printed statement is insufficient.

Same theorem name is insufficient.

Same compiled artifact is insufficient without dependency and epoch agreement.

## Equality of statements

Statement equality may compare data-level statement objects.

If statements are serialized or audited, equality of their data representation depends on schema and encoding.

Textual equality is not semantic equality unless statement-schema equality and interpretation equality are certified.

A theorem may have the same printed formula while its terms have migrated meanings.

## Equality of subjects

Subject equality must respect subject type, object identity, epoch, dependencies, and audit context.

A certificate about one subject cannot be reused for another subject merely because the subjects have equal displayed names.

Subject equality must be typed and certified.

## Equality of dependencies

Dependency equality compares dependency records or dependency closures.

Two dependency sets are equal only if they contain the same proof-relevant dependencies under the same identity relation and epoch.

Set equality by display order is insufficient.

Dependency equivalence may be weaker than equality and must be declared separately.

## Equality of epochs

Epoch equality is distinct from epoch compatibility.



    e=e'



is stronger than:



    eleadsto e'



or:



    Compatible(e,e')



A theorem at epoch `e` cannot be transported to epoch `e'` by compatibility alone.

Migration evidence is required.

## Equality of modes

Mode equality compares proof-mode values.

Same mode label is insufficient if retained information, lost information, scope, invalidations, and certificates differ.

For loss modes, equality must include the full mode record, not just its kind.

## Equality of scopes

Scope equality compares consumer scopes.

A proof valid for display scope is not automatically valid for proof scope.

A theorem requiring exact frame-construction scope cannot consume equality proved only for audit scope.

Scope equality must be explicit where mode acceptance depends on it.

## Equality of replay manifests

Replay-manifest equality includes target, procedure, schemas, content references, dependencies, verifiers, comparison relation, result type, certificates, epoch, and invalidation behavior.

Same stored result is insufficient.

Same manifest label is insufficient.

Replay-manifest equality is proof-relevant.

## Equality of histories

History equality is not final-state equality.

Exact history equality may require equality of records, prefixes, parent relations, append operations, commitments, frame records, authority mutation records, certificate records, replay manifests, views, forks, merges, invalidations, statuses, certificates, and replay behavior.

Two histories with the same final replay result may differ.

## Equality of views

View equality compares derived view objects and view policies.

It does not imply raw history equality.

A view equality theorem must record retained information, omitted information, quotient or observable relation, summary function, and sufficiency scope.

## Equality of migrations

Migration equality includes source epoch, target epoch, source object, target object, migration maps, compatibility laws, loss mode, invalidations, dependencies, certificates, and replay behavior.

Same target object is insufficient.

Same output after migration is insufficient.

Same migration name is insufficient.

## Equality of refinements

Refinement equality includes source level, target level, projection, reconstruction, error bound, convergence witness, dependencies, certificates, epoch, and replay behavior.

Same refined value is insufficient.

Refinement equality is not migration equality.

## Equality of operators

Operator equality includes domain, codomain, partiality policy, action rule, kernel, image, adjoint, composition plans, fixed points, spectrum action, dependencies, certificates, epoch, and replay behavior.

Same function name is insufficient.

Same output on selected inputs is insufficient.

Runtime execution equality is insufficient.

## Equality of tensors

Tensor equality includes factors, carriers, spectra, product spectra, dependency graph, kernel, contraction plan, contraction result, local emissions, independence certificates, epoch, and replay behavior.

Same tensor shape is insufficient.

Same contraction output is insufficient.

## Equality of sheaves

Sheaf equality includes site, covers, restriction maps, local-section families, overlaps, compatibility conditions, obstruction cochains, repair witnesses, gluing data, global candidates, certificates, epoch, and replay behavior.

Same local sections are insufficient.

Same displayed global candidate is insufficient.

## Equality of authorities

Authority equality includes authority id, carrier, spectrum, nullable binding state, install policy, anchor policy, default section reference, realization reference, dependency edges, mutation ledger, certificates, epoch, and replay behavior.

`null` equality is only equality of uninstalled bootstrap state.

It is not equality of mathematical defaults.

## Equality of spectra

Spectrum equality includes carrier, admissible sections, default measure, anchors, support constraints, pushforwards, quotient images, product spectra, section spectra, finite approximations, certificates, epoch, and replay behavior.

Same carrier is insufficient.

Same support is insufficient.

Same default display is insufficient.

## Equality of carriers

Carrier equality includes type, equality relation, operations, topology, metric, measure, finite enumeration, encoding, content-address policy, epoch, dependencies, and certificates where used.

Same Lean type is insufficient when framework carrier identity includes semantics.

## Extensional equality

Extensional equality compares behavior over all admissible inputs.

For functions:



    (forall x,\ f(x)=g(x))=> f=g



only when function extensionality and the relevant domain are accepted.

For partial operators, extensional equality must quantify over domains and partiality policies.

Observed sample equality is not extensional equality.

## Functional extensionality boundary

Lean may use function extensionality.

Framework use must still respect domains, codomains, spectra, dependencies, epochs, and proof boundaries.

A Lean extensionality proof over total functions does not automatically prove equality of partial framework operators.

## Propositional extensionality boundary

If propositional extensionality is used, the trusted boundary must be explicit where exported.

The framework must know whether a theorem relies on proof principles beyond computational checking.

Proof boundary is part of certificate identity.

## Proof irrelevance boundary

Lean may treat proofs of propositions as irrelevant.

Framework audit may require proof-object identity or certificate provenance.

Therefore, equality of propositions is not equality of proof artifacts.

Proof irrelevance must not erase audit-relevant certificate identity.

## Equality transport

Lean equality permits transport across equal types or equal values.

Framework semantic transport across epochs, schemas, carriers, spectra, or histories is not Lean equality transport unless the equality theorem includes those semantic structures.

Migration is not equality transport by default.

## Coercion caution

Implicit coercions may make expressions type-check.

They must not be treated as semantic equality or migration.

A coercion from one structure to another is proof-relevant when exported.

Coercion use must be visible in theorem statements or certificate replay when it affects semantics.

## Cast caution

Casts across equalities may appear in Lean proofs.

A cast is not a framework migration.

If a cast changes data representation, statement interpretation, or proof boundary, the exported certificate must record the cast and its justification.

## Equality and membership

Equality may preserve membership only when substitution is valid for the predicate.

From:



    x=y



and:



    xin S



one may derive:



    yin S



only when `S` is the same predicate under the same epoch and type.

Across migrated spectra, equality is not enough.

Spectrum migration is required.

## Equality and admissibility

Admissibility may be equality-respecting only if a congruence theorem is provided:



    x=yand Admissible(x)=> Admissible(y)



For quotient, observable, and approximate equality, admissibility preservation requires separate soundness.

No equality mode automatically preserves admissibility in all scopes.

## Equality and replay

Replay procedures may respect equality only under a replay congruence theorem:



    x=y=> Replay(x)=Replay(y)



or a weaker mode-specific relation.

Replay congruence is not automatic when dependencies, schemas, proof boundaries, or epochs differ.

## Equality and certificates

A certificate about `x` may be transported to `y` by equality only if subject equality, statement substitution, dependency freshness, proof-boundary compatibility, and certificate schema support transport.

Certificate subject substitution must be explicit.

Raw value equality is insufficient.

## Equality and history

Append-only history may record equality certificates.

A later equality certificate does not rewrite older records.

If equality invalidates a prior representative-sensitive claim, invalidation must be appended.

Equality evidence is history content, not history mutation.

## Equality and migration

Migration may preserve equality:



    x=y=> M(x)=M(y)



This is equality preservation.

It is not full migration soundness unless domain, codomain, admissibility, dependencies, certificates, and replay behavior are also certified.

Equality preservation is one migration law among others.

## Equality and refinement

Refinement may preserve equality through projection or reconstruction:



    P(x')=x



or:



    R(P(x'))=x'



Equality claims must distinguish projection equality, reconstruction equality, approximate equality, and convergence.

Refinement equality is precision-relative, not epoch migration.

## Equality and quotienting

Quotient equality follows from representative equivalence.

Representative equality implies quotient equality.

Quotient equality does not imply representative equality unless recovery is certified.

This asymmetry must be explicit in theorem statements.

## Equality and observables

Raw equality may imply observable equality if the observable is a function.

Observable equality does not imply raw equality unless the observable is faithful.

Faithfulness requires a theorem:



    Obs(x)=Obs(y)=> x=y



for the declared domain and epoch.

## Equality and approximation

Raw equality may imply approximate equality with zero error where the metric supports it.

Approximate equality does not imply raw equality unless a separation theorem and zero-error certificate apply.

Nonzero approximate equality never implies raw equality.

## Equality and trusted boundaries

A trusted boundary may certify equality for a declared scope.

A trusted hash boundary certifies byte equality under an encoding.

It does not certify semantic equality unless encoding soundness is certified.

Trusted equality claims must identify their boundary.

## Equality freshness

An equality theorem is fresh only if its types, objects, dependencies, proof boundary, epoch, and replay schema remain valid for the consuming scope.

Freshness is not global.

An equality may be fresh for audit but stale for current proof or frame construction.

## Equality invalidation

Equality claims may be invalidated by changes to:

- type interpretation;
- carrier equality;
- spectrum predicate;
- object schema;
- epoch;
- dependencies;
- proof boundary;
- trusted boundary;
- replay schema;
- audit relation;
- mode or scope.

Invalidation is appended.

The old equality proof remains audit content.

## Equality certificates

Equality certificates may prove:



    x=y





    FrameworkId(x)=FrameworkId(y)





    [x]=[y]





    Obs(x)=Obs(y)





    d(x,y)<=epsilon





    Replay(x)=Replay(y)



or equality preservation, equality reflection, congruence, substitution, extensionality, path coherence, identity, migration, refinement, invalidation, freshness, and replay-preserving equality claims.

Only accepted certificates discharge equality obligations.

## Equality reflection

A relation may reflect equality:



    R(x,y)and R(x',y)=> x=x'



or:



    M(x)=M(y)=> x=y



under declared domain.

Reflection is stronger than preservation.

It is required for backward inference and invertibility.

It is not automatic.

## Equality preservation

A relation may preserve equality:



    x=x'=> R(x,y)and R(x',y')
    => y=y'



or for functions:



    x=x'=> f(x)=f(x')



Preservation must specify which equality is used at source and target.

Raw-to-quotient preservation is weaker than raw-to-raw preservation.

## Congruence

A function or relation is congruent with respect to an equality or equivalence relation when it preserves that relation.

Generic form:



    x~ x'=> f(x)~ f(x')



Congruence must name the source and target relations.

Congruence is required for quotienting and many replay-preservation theorems.

## Substitution

Substitution across equality is valid only for predicates in the same type and epoch.

For framework predicates depending on dependencies, scopes, or epochs, substitution requires those parameters to match or be migrated.

Substitution must not erase proof-relevant metadata.

## Equality composition

Equality proofs may compose by transitivity.

Mode-sensitive equality composition must compute the resulting mode.

Exact composed with approximate is approximate unless strengthened.

Quotient composed with raw does not recover raw representatives.

Observable composed with raw remains observable unless faithfulness is certified.

## Equality symmetry

Raw equality is symmetric.

Some comparison relations are symmetric only when certified.

Approximate metrics may be symmetric, but directed residuals need not be.

Migration relations are generally not symmetric.

The equality infrastructure must distinguish symmetric equality from directed compatibility.

## Equality transitivity

Raw equality is transitive.

Approximate equality may compose by adding or otherwise combining error bounds.

Observable equality is transitive when codomain equality is transitive.

Quotient equality is transitive when quotient equivalence is transitive.

Transitivity must be provided or certified for non-raw equality relations.

## Equality reflexivity

Raw equality is reflexive.

Audit identity, replay equality, approximate equality, quotient equality, and observable equality may require explicit reflexivity theorems depending on dependencies, scopes, and domains.

Reflexivity of a relation should not be assumed unless part of its structure.

## Non-collapse law

The file must assert the non-collapse discipline:



    LeanEq notequiv FrameworkId





    FrameworkId notequiv AuditId





    RawEq notequiv QuotientEq





    RawEq notequiv ObservableEq





    RawEq notequiv ApproxEq





    ReplayEq notequiv StoredOutputEq





    CertificateEq notequiv PayloadEq



These distinctions are proof-core invariants.

## Equality hierarchy caution

Equality notions do not form a universal total hierarchy.

Raw equality may imply observable equality for a given observable.

Raw equality may imply quotient equality for a given quotient.

But observable equality and quotient equality may be incomparable.

Approximate equality depends on metric and tolerance.

Every implication must be stated as a theorem.

## Equality as dependency

Equality artifacts may be dependencies of carriers, spectra, authorities, tensors, sheaves, operators, histories, refinements, migrations, certificates, replay, and audit links.

A downstream theorem must state which equality notion it depends on.

Changing equality infrastructure may stale downstream proofs.

## Epoch rule

`Equality.lean` artifacts are epoch-indexed by:

- equality-interface epoch;
- raw-equality epoch;
- framework-identity epoch;
- setoid-equality epoch;
- quotient-equality epoch;
- observable-equality epoch;
- approximate-equality epoch;
- replay-equality epoch;
- audit-identity epoch;
- certificate-identity epoch;
- dependency-record epoch;
- proof-boundary epoch;
- replay-schema epoch.

Changing any component may stale downstream equality proofs.

The old equality artifact remains audit content.

## History relation

A history record depending on `Equality.lean` must record:

1. source file identity;
2. declaration identity;
3. equality notion used;
4. source and target types;
5. mode and scope;
6. dependencies;
7. theorem statement or relation record;
8. proof object or trusted boundary where relevant;
9. epoch;
10. replay data;
11. audit reference.

The equality symbol alone is insufficient.

## Replay rule

Replay of `Equality.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean`, `ObjectInterface.lean`, and `RelationSchema.lean`;
3. checking equality declarations;
4. checking raw, framework, setoid, quotient, observable, approximate, replay, audit, and certificate equality distinctions;
5. checking congruence, substitution, preservation, reflection, and non-collapse declarations;
6. checking that no concrete runtime or application constants are introduced;
7. checking proof objects or trusted boundaries where present;
8. checking dependency closure and certificate metadata.

If any step fails, downstream equality proofs are not replay-admissible.

## Runtime representation

`Equality.lean` may lower to:

- Lean equality declarations;
- equality-relation records;
- congruence theorem metadata;
- substitution theorem metadata;
- mode-indexed comparison descriptors;
- verifier-facing equality descriptors;
- audit references.

Runtime representation is not equality identity.

Identity depends on equality notion, type, relation, mode, scope, dependencies, epochs, certificates, and replay behavior.

## Non-collapse theorem

Let two equality artifacts prove the same printed equation.

This does not imply the artifacts are equal.

They collapse only if their equality notion, source and target types, statement, proof object or trusted boundary, mode, scope, dependencies, epochs, certificate references, audit links, and replay behavior coincide.

Thus printed equation equality is insufficient for proof-core equality identity.

## Proof obligation

`Equality.lean` is admissible only if the framework can certify:

1. Lean propositional equality is distinguished from framework identity;
2. value equality is distinguished from object-interface equality;
3. setoid, quotient, observable, approximate, replay, audit, and certificate equalities are distinct;
4. equality notions are universe-safe;
5. equality mode and scope are explicit;
6. equality preservation, reflection, substitution, and congruence require stated theorems;
7. proof irrelevance does not erase audit-relevant identity;
8. stored outputs are not replay equality;
9. concrete runtime and application constants are excluded;
10. replay can reconstruct equality declarations and dependencies.

## Exclusion rule

`Equality.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application values, runtime equality functions, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only generic equality infrastructure for the proof core.

## Commitment rule

`Equality.lean` may define equality notions and equality laws.

It cannot collapse framework identity into Lean value equality.

It cannot make quotient, observable, approximate, replay, audit, or certificate equality exact by label.

It cannot use theorem-name equality as proof identity.

It cannot make stored outputs replay evidence.

It cannot infer defaults from `none` or `null`.

It cannot mutate history.

It cannot commit a frame.
-/
