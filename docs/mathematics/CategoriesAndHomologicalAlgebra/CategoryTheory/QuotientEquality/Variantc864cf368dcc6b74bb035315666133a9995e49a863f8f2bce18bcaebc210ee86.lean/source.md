# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuotientEquality.Variantc864cf368dcc6b74bb035315666133a9995e49a863f8f2bce18bcaebc210ee86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `807c6ab641079cf1c507eb6299fc2a5ba886f9b3` · SHA-256 `c864cf368dcc6b74bb035315666133a9995e49a863f8f2bce18bcaebc210ee86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# QuotientEquality.lean

## Role

`QuotientEquality.lean` defines equality infrastructure for quotient constructions.

It specifies class equality, quotient-object equality, quotient-morphism equality, equality introduction, equality reflection, raw-versus-quotient equality separation, representative recovery, equality congruence, certificates, epochs, dependencies, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior.

Quotient equality is not raw equality.

It is not equality of representative ids.

It is not equality of quotient labels.

It is not equality of runtime buckets.

It is equality inside a quotient context under a certified quotient relation.

## Core principle

For a quotient object:



A/{~_A}



class equality is governed by the quotient relation:



[x]=[y]<=> x~_A y



where the introduction and reflection directions must be stated separately and certified for the required mode and scope.

For quotient morphisms:



[f]=[g]



means equality in the quotient morphism space, not raw equality of `f` and `g`.

The layer must prevent quotient equality from being consumed as representative-sensitive equality unless representative recovery, faithfulness, or a strengthening certificate is accepted.

## Formal shape

A quotient-equality record has schematic form:



QuotientEquality=(id,left,right,equalityKind,quotientObject,relation,representatives,introduction,reflection,rawSeparation,recovery,objectEquality,morphismEquality,congruence,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `id` identifies the quotient-equality claim;
- `left` and `right` identify the compared quotient artifacts;
- `equalityKind` records class equality, quotient-object equality, quotient-morphism equality, projection equality, representative-induced equality, replay equality, audit equality, rejected, unknown, or research-obligated equality;
- `quotientObject` records the quotient object in which equality is interpreted;
- `relation` records the quotient relation;
- `representatives` records representative evidence where equality is induced by representatives;
- `introduction` records laws deriving quotient equality from relation evidence;
- `reflection` records laws deriving relation evidence from quotient equality where required;
- `rawSeparation` records separation from raw equality;
- `recovery` records representative-recovery or faithfulness evidence where quotient equality is strengthened;
- `objectEquality` records equality of quotient objects;
- `morphismEquality` records equality of quotient morphisms;
- `congruence` records constructions that preserve quotient equality;
- `mode` records exact, quotient, observable, approximate, replay, audit, summary, checkpoint, rejected, unknown, or research-obligated mode;
- `scope` records consumer context;
- `prefix` records history-relative availability;
- `epoch` records semantic epoch;
- `deps` records dependency closure;
- `certs` records accepted evidence;
- `status` records lifecycle state;
- `invalidations` records stale or blocking effects;
- `proofBoundary` records proof assumptions;
- `trustedBoundary` records trusted components where used;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The record defines quotient equality.

It does not imply raw equality.

## Class equality

Class equality compares quotient classes:



[x]=[y]



inside:



A/{~_A}



For exact quotient equality, the introduction law is:



x~_A y=> [x]=[y]



and the reflection law is:



[x]=[y]=> x~_A y



where reflection is required by the consumer.

The equality is scoped to the quotient relation.

A shared class label, bucket id, or representative id is insufficient.

## Equality introduction

Equality introduction turns relation evidence into quotient equality.

A standard rule is:



Rel_A(x,y)=> Eq_{A/{Rel_A}}([x],[y])



This rule depends on source object, quotient relation, relation laws, class formation, representative validity, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Introduction cannot be inferred from a displayed class notation.

## Equality reflection

Equality reflection turns quotient equality back into relation evidence:



[x]=[y]=> x~_A y



Reflection is required when a consumer wants representative-level conclusions from quotient equality.

Reflection may be exact, quotient-scoped, observable, approximate, replay-based, audit-only, rejected, unknown, or research-obligated.

Reflection is not automatic in every representation.

It must be certified where consumed.

## Raw equality separation

Raw equality:



x=y



is distinct from quotient equality:



[x]=[y]



and relation membership:



x~_A y



The quotient layer may support:



x=y=> [x]=[y]



but not generally:



[x]=[y]=> x=y



unless representative recovery, faithfulness, or canonical representative equality is certified.

No quotient-equality rule may collapse these notions by default.

## Quotient-object equality

Quotient-object equality compares quotient object records.

An exact equality claim between:



A/{~_A}



and:



B/{~_B}



requires equality or certified compatibility of source objects, quotient relations, relation laws, projections, class formation, representative policies, object identity, admissibility, dependencies, certificates, epochs, proof boundaries, trusted boundaries, audit links, invalidations, and replay behavior.

Same quotient-object label is insufficient.

Same source-object label is insufficient.

## Quotient-morphism equality

Quotient-morphism equality compares descended morphisms:



[f]=[g]



This means equality of quotient-level arrows.

It requires compatible source quotient object, target quotient object, raw morphisms, representative-independence evidence, quotient domains, quotient codomains, quotient partiality, quotient witnesses, congruence, dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior.

It does not imply:



f=g



unless strengthening evidence is accepted.

## Projection equality

Projection equality concerns quotient projection maps:



q_A(x)=q_A(y)



This equality is normally equivalent to:



x~_A y



under the quotient relation.

The introduction and reflection directions must be certified.

A runtime class-id function returning equal ids is not projection equality unless the class-id function is certified as the quotient projection and equality of ids is certified as quotient equality.

## Representative-induced equality

Representative-induced equality derives equality of quotient classes from representative relation evidence.

It requires valid representatives, class-membership evidence, quotient relation validity, relation law certificates, dependency freshness, epoch compatibility, audit links, invalidation checks, and replay behavior.

Representative-induced equality is not representative equality.

A representative id cannot prove quotient equality by itself.

## Representative recovery

Representative recovery allows certain quotient-equality claims to support representative-sensitive conclusions.

Recovery may be supplied by:

- canonical representative theorem;
- section of the quotient projection;
- faithful encoding;
- injective quotient representation;
- reconstruction map;
- finite exhaustive representative table;
- trusted recovery statement.

Recovery must be certified.

Without recovery, quotient equality remains quotient-level equality only.

## Faithfulness

Faithfulness states that quotient equality reflects a stronger raw relation or raw equality for a declared substructure.

A faithfulness theorem may have form:



[x]=[y]=> x=y



within a restricted domain.

Faithfulness is not implied by quotient construction.

It must record domain, relation, source object, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

## Equality of quotient classes across relations

Classes from different quotient relations cannot be compared without a relation-compatibility or transport theorem.

A claim such as:



[x]_{~_A}=[x]_{~=_A}



requires explicit comparison between `~_A` and `~=_A`, including retained information, lost information, dependencies, certificates, epoch, audit, and replay behavior.

Same representative syntax is insufficient.

## Equality of quotient classes across epochs

A class equality valid at epoch `e`:



[x]_e=[y]_e



does not imply:



[x]_{e'}=[y]_{e'}



unless quotient relation, representative records, class formation, projection, equality rules, certificates, dependencies, audit links, invalidations, proof boundary, trusted boundary, and replay behavior migrate or are reverified.

Same class label across epochs is insufficient.

## Exact quotient equality

Exact quotient equality requires exact relation laws, exact class formation, exact projection behavior, exact introduction and reflection laws where consumed, exact congruence, accepted certificates, dependency freshness, proof-boundary compatibility, trusted-boundary containment, audit traceability, invalidation checks, and exact replay.

Exact quotient equality supports proof consumers inside the quotient context.

It does not support raw equality without strengthening evidence.

## Observable quotient equality

Observable quotient equality compares quotient artifacts through declared observables.

It must record observable map, observable equality, retained observable information, lost hidden information, congruence, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Observable quotient equality cannot prove hidden representative equality unless faithfulness is certified.

## Approximate quotient equality

Approximate quotient equality compares quotient artifacts up to metric, residual, or tolerance:



d([x],[y])<=epsilon



or an equivalent quotient-level bound.

It must record metric, tolerance, relation domain, error propagation, retained information, lost precision, dependencies, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and replay behavior.

Approximate quotient equality cannot discharge exact quotient equality obligations unless strengthened.

## Replay quotient equality

Replay quotient equality compares reconstructed quotient artifacts under a replay comparison.

It must reconstruct quotient objects, quotient relations, representatives, classes, projection maps, equality rules, dependencies, certificates, epochs, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A stored label or replay id is not replay quotient equality.

A cached representative output is insufficient.

## Audit quotient equality

Audit quotient equality records provenance-level equality.

It may show that an equality claim was recorded, checked, rejected, migrated, refined, or replayed at a prefix.

Audit quotient equality supports audit consumers only.

It does not prove mathematical quotient equality unless audit soundness or faithfulness is certified.

## Rejected quotient equality

A quotient-equality claim may be rejected.

Reasons include invalid quotient object, invalid relation, missing class membership, failed equality introduction, failed equality reflection where required, representative mismatch, stale dependency, rejected certificate, invalid epoch, proof-boundary failure, trusted-boundary overreach, invalid audit chain, or replay failure.

Rejected equality is audit content.

It cannot support substitution.

## Unknown quotient equality

Unknown quotient-equality status records that equality cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block quotient morphism use, quotient composition, quotient functoriality, quotient naturality use, replay, migration, refinement, or certificate reuse.

Unknown must not be treated as approximate success.

## Research-obligated quotient equality

Research-obligated quotient equality records a required but unproven equality claim.

It must identify compared quotient artifacts, intended relation, missing evidence, dependencies, mode, scope, epoch, blocked consumer, audit context, and replay context.

It does not prove equality.

It prevents silent identification of quotient artifacts.

## Equality congruence

Quotient equality may be used for substitution only through congruence.

A construction `K` respects quotient equality when:



[x]=[y]=> K([x])=K([y])



or a declared output equivalence.

Composition, identity, associativity, functoriality, naturality use, replay, migration, and refinement require explicit quotient-equality congruence before substitution is allowed.

Equality alone does not prove every construction respects it.

## Equality and quotient morphism descent

A descended morphism must respect quotient equality:



[x]=[y]=> [f]([x])=[f]([y])



This follows from representative independence and quotient congruence, not from the notation `[f]`.

A representative-level function cannot be consumed as equality-preserving without proof.

## Equality and identity

The identity on a quotient object must respect quotient equality:



[x]=[y]=> id([x])=id([y])



This law is trivial only after the identity morphism and quotient equality are correctly typed and certified.

A no-op on class ids is insufficient.

## Equality and composition

Composition of quotient morphisms must respect quotient equality.

If:



[f]=[f']



and:



[g]=[g']



then:



[g] o [f]=[g'] o [f']



requires quotient composition congruence, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, dependencies, certificates, epoch, audit, and replay behavior.

## Equality and functoriality

A functor on quotient objects must preserve quotient equality where required:



[x]=[y]=> F([x])=F([y])



and for morphisms:



[f]=[g]=> F([f])=F([g])



This requires quotient functoriality and congruence.

Mapping class labels is insufficient.

## Equality and naturality use

Naturality squares over quotient categories may compare paths by quotient equality:



[G(f)] o [eta_A]=[eta_B] o [F(f)]



This equality requires well-formed quotient functor images, component morphisms, path compositions, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, congruence, certificates, dependencies, epoch, audit, and replay behavior.

A displayed quotient square is insufficient.

## Equality migration

Quotient-equality claims are epoch-indexed.

Migration relates:



Eq_e(Q_1,Q_2)leadsto Eq_{e'}(Q'_1,Q'_2)



It must preserve or explicitly transform quotient objects, quotient relations, representatives, class formation, introduction and reflection laws, recovery evidence, congruence, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Same class id across epochs is insufficient.

## Equality refinement

Quotient equality may refine by strengthening from observable to exact, reducing approximation error, adding recovery, replacing trusted boundaries, adding replay metadata, or improving dependency closure.

Refinement is not migration.

If epoch changes, equality migration is also required.

A refined equality proof does not erase the old equality record.

## Equality invalidation

A quotient-equality claim may become stale if quotient object, quotient relation, class formation, representative policy, representative record, projection map, equality introduction, equality reflection, recovery evidence, congruence law, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, dependency closure, or invalidation policy changes.

Invalidation is append-only.

The old equality record remains audit content.

It cannot silently remain accepted.

## Equality audit

Audit links trace quotient-equality claims.

They may point to quotient-object records, quotient-relation records, representative records, class-membership records, projection records, equality certificates, recovery certificates, congruence records, dependency closures, epoch records, invalidation records, proof-boundary records, trusted-boundary records, or replay manifests.

Audit links do not prove quotient equality.

They provide traceability only unless audit soundness or faithfulness is certified.

## Equality replay

Replay must reconstruct compared quotient artifacts, quotient object, quotient relation, representative records, class membership, projection, equality introduction, equality reflection, raw-versus-quotient separation, recovery evidence, object equality, morphism equality, congruence, dependency closure, certificates, epoch, audit links, invalidations, proof boundary, trusted boundary, and comparison relation.

A same quotient label is not replay.

A class id is not replay.

A bucket id is not replay.

A cached partition is not replay.

## Equality certificates

Quotient-equality certificates may prove:



[x]=[y]



x~_A y=> [x]=[y]



[x]=[y]=> x~_A y



QuotientObjectEq(Q,Q')



QuotientMorphismEq([f],[g])



ProjectionEq(q_A(x),q_A(y))



RepresentativeRecovery([x],x)



or equality congruence, equality migration, equality refinement, equality invalidation, dependency closure, epoch freshness, audit soundness, replay admissibility, and path coherence.

Only accepted certificates discharge quotient-equality obligations.

Raw payloads, theorem names, verifier names, labels, class ids, bucket ids, and audit links are insufficient.

## Proof boundary

Quotient-equality proofs may depend on quotient soundness, relation laws, class extensionality, projection laws, representative recovery, canonicality, finite enumeration, function extensionality, propositional extensionality, proof irrelevance, trusted decoders, trusted archives, external verifiers, or replay engines.

These proof-boundary assumptions must be explicit.

Changing proof boundary may stale quotient-equality certificates.

## Trusted boundary

A trusted boundary may support quotient equality only for its declared statement.

A trusted class-id encoder may certify encoding.

It does not certify quotient equality unless its trusted statement includes the quotient relation and equality interpretation.

A trusted bucket comparison may certify bucket equality.

It does not certify quotient equality without relation soundness.

Boundary overreach is rejected.

## Equality and finite quotients

For finite quotient objects, equality may be decided by exhaustive enumeration.

The enumeration must be certified complete for the quotient object and relation domain.

Class equality checks must be certified against the quotient relation.

Finite samples are insufficient unless exhaustive coverage is certified.

Enumeration order is not equality evidence.

## Equality and infinite quotients

For infinite or abstract quotient objects, quotient equality requires symbolic proof, trusted proof, certified theorem, or explicitly declared finite-approximation mode.

Sampled equality is not exact quotient equality.

Heuristic equality is audit-only or approximate unless strengthened.

The proof mode must be explicit.

## Equality and applications

Application-specific quotient equality belongs outside this abstract file.

`QuotientEquality.lean` may define generic hooks for application-instantiated quotient equality.

It must not define bitmap quotient equality, matrix quotient equality, token quotient equality, image quotient equality, hash constants, Feistel quotient equality, UI class equality, runtime bucket equality, JavaScript equality checks, Rust equality checks, WASM equality checks, or frame-payload equality.

## Equality and `none`

No quotient-equality rule may treat `none`, `null`, missing representative, missing class, missing equality proof, missing relation, missing projection, absent runtime binding, or missing replay data as a mathematical default.

A missing equality proof is missing.

A missing class is not equal to another missing class.

Missing evidence causes rejection, unknown status, audit-only status, or research obligation.

## Dependency closure

A quotient-equality record depends on quotient objects, quotient relations, representatives, class-membership evidence, projection maps, equality rules, reflection rules, recovery evidence, congruence laws, certificates, epoch records, audit links, invalidations, proof boundaries, trusted boundaries, and replay procedures.

Hidden dependencies invalidate replay.

Imports and filenames are not dependency closure.

## Epoch rule

`QuotientEquality.lean` artifacts are epoch-indexed by:

- quotient-equality schema epoch;
- compared-artifact epoch;
- quotient-object epoch;
- quotient-relation epoch;
- representative epoch;
- class-membership epoch;
- projection epoch;
- equality-introduction epoch;
- equality-reflection epoch;
- raw-separation epoch;
- recovery epoch;
- object-equality epoch;
- morphism-equality epoch;
- congruence epoch;
- certificate epoch;
- dependency epoch;
- audit-reference epoch;
- invalidation-policy epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- replay-schema epoch.

Changing any component may stale downstream quotient-equality claims.

The old equality artifact remains audit content.

## History relation

A history record depending on `QuotientEquality.lean` must record:

1. source file identity;
2. declaration identity;
3. equality id;
4. compared quotient artifacts;
5. equality kind;
6. quotient object;
7. quotient relation;
8. representative evidence where used;
9. equality introduction law;
10. equality reflection law where used;
11. raw-versus-quotient separation;
12. representative recovery where used;
13. quotient-object equality where used;
14. quotient-morphism equality where used;
15. congruence behavior;
16. proof mode and scope;
17. prefix and epoch;
18. dependency closure;
19. certificates;
20. status;
21. invalidation behavior;
22. proof boundary;
23. trusted boundary where used;
24. audit reference;
25. replay data.

Same quotient labels, class ids, or bucket ids alone are insufficient.

## Replay rule

Replay of `QuotientEquality.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `lean/category/morphism/`, and quotient files required by the equality record;
3. reconstructing quotient-equality declarations;
4. reconstructing compared quotient artifacts, quotient object, quotient relation, representatives, class-membership evidence, projection maps, and equality kind;
5. checking equality introduction and equality reflection laws;
6. checking raw-versus-quotient equality separation;
7. checking representative recovery or faithfulness where consumed;
8. checking quotient-object equality, quotient-morphism equality, and equality congruence where used;
9. checking exact, observable, approximate, replay, audit, rejected, unknown, and research-obligated variants;
10. checking dependency closure, epoch freshness, certificate status, audit links, invalidation state, proof boundary, trusted boundary, and comparison relation;
11. checking that same quotient labels, class ids, and bucket ids are not treated as equality evidence;
12. checking that no runtime code or application constants are introduced.

If any step fails, downstream quotient-equality claims are not replay-admissible.

## Runtime representation

`QuotientEquality.lean` may lower to:

- Lean quotient-equality predicates;
- class-equality descriptors;
- quotient-object-equality descriptors;
- quotient-morphism-equality descriptors;
- equality-introduction descriptors;
- equality-reflection descriptors;
- representative-recovery descriptors;
- equality-congruence descriptors;
- equality-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not quotient-equality validity.

Quotient-equality validity depends on quotient objects, quotient relations, representatives, class membership, projection, equality laws, recovery evidence, congruence, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, epoch, and replay behavior.

## Non-collapse theorem

Let two quotient artifacts have the same quotient label, class id, bucket id, representative id, UI group, hash bucket, database key, cached partition, or displayed class name.

This does not imply quotient equality.

Quotient equality holds only when the quotient object, quotient relation, class-membership evidence, equality introduction and reflection laws where required, raw-versus-quotient separation, recovery evidence where consumed, dependencies, certificates, epochs, proof boundaries, trusted boundaries, audit links, invalidations, and replay behavior are accepted for the required mode and scope.

Thus same quotient labels, class ids, and bucket ids are insufficient as equality evidence.

## Proof obligation

`QuotientEquality.lean` is admissible only if the framework can certify:

1. quotient equality claims are typed;
2. class equality is explicit;
3. quotient-object equality is explicit;
4. quotient-morphism equality is explicit;
5. equality introduction is explicit;
6. equality reflection is explicit where consumed;
7. raw equality and quotient equality remain distinct;
8. representative recovery is explicit where quotient equality supports representative-sensitive claims;
9. equality congruence is explicit where substitution is used;
10. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
11. same quotient labels, class ids, and bucket ids are excluded as equality evidence;
12. application constants are excluded;
13. `none` and `null` are not treated as defaults.

## Exclusion rule

`QuotientEquality.lean` may not define concrete carrier quotient equality, concrete spectrum quotient equality, authority quotient equality, tensor quotient equality, sheaf quotient equality, operator quotient equality, history quotient equality, migration application equality, refinement application equality, bitmap quotient equality, matrix quotient equality, token quotient equality, image quotient equality, hash constants, Feistel quotient equality, UI class equality, runtime bucket equality, JavaScript equality checks, Rust equality checks, WASM equality checks, or frame-payload equality.

It defines only abstract Lean quotient-equality infrastructure.

## Commitment rule

`QuotientEquality.lean` may define quotient equality for classes, quotient objects, and quotient morphisms.

It cannot treat quotient labels as equality evidence.

It cannot treat class ids as equality evidence.

It cannot treat bucket ids as equality evidence.

It cannot collapse quotient equality into raw equality.

It cannot infer representative recovery.

It cannot allow substitution without congruence.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot use cached partitions as replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
