/-
# MorphismFunctoriality.lean


## Role

`MorphismFunctoriality.lean` defines functoriality infrastructure for categorical morphisms.

It specifies how a functor maps morphisms, how source and target objects are mapped, how identity morphisms are preserved, how composition is preserved, how equality and equivalence are transported, how domains and codomains move, how partiality is preserved or transformed, how quotient morphisms descend through functorial mapping, and how certificates, epochs, dependencies, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are recorded.

A functorial morphism map is not an implementation-level mapping table.

It is not a dictionary from function names to function names.

It is not a runtime dispatcher.

It is not a callback registry.

It is a proof-relevant categorical construction preserving identity and composition under declared mode and scope.

## Core principle

For a functor `F`, morphism mapping has the form:



 f:A-> B
 =>
 F(f):F(A)-> F(B)



Functoriality requires:



 F(id_A)=id_{F(A)}



and:



 F(g o f)=F(g) o F(f)



under exact equality or a declared weaker equivalence.

The morphism map is valid only when object mapping, endpoint mapping, domain transport, codomain transport, partiality transport, equality or equivalence preservation, dependency closure, certificates, epochs, audit links, and replay behavior are accepted.

## Formal shape

A morphism-functoriality record has schematic form:



 MorphismFunctoriality=(functor,objectMap,morphismMap,sourceMap,targetMap,identityPreservation,compositionPreservation,equalityPreservation,equivalencePreservation,domainTransport,codomainTransport,partialityTransport,quotientCompatibility,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `functor` identifies the functorial construction;
- `objectMap` records object mapping `A|-> F(A)`;
- `morphismMap` records morphism mapping `f|-> F(f)`;
- `sourceMap` records source-endpoint transport;
- `targetMap` records target-endpoint transport;
- `identityPreservation` records `F(id_A)=id_{F(A)}`;
- `compositionPreservation` records `F(g o f)=F(g) o F(f)`;
- `equalityPreservation` records preservation of exact morphism equality;
- `equivalencePreservation` records preservation of declared morphism equivalences;
- `domainTransport` records source-side domain movement;
- `codomainTransport` records target-side codomain movement;
- `partialityTransport` records total, partial, selected, stochastic, fallback, rejected, unknown, and research-obligated behavior;
- `quotientCompatibility` records compatibility with quotient morphisms;
- `mode` records exact, quotient, observable, approximate, replay, audit, summary, checkpoint, trusted-boundary, rejected, unknown, or research-obligated mode;
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

The record is a functoriality claim.

It is not executable dispatch.

## Object mapping

Functoriality over morphisms depends on object mapping:



 A|-> F(A)



and:



 B|-> F(B)



For a morphism:



 f:A-> B



the mapped morphism must have endpoints:



 F(A)



and:



 F(B)



Object mapping must preserve or explicitly transform object identity, object admissibility, object equality, object equivalence, dependencies, epochs, certificates, proof boundaries, audit links, and replay behavior.

Object-label mapping is insufficient.

## Morphism mapping

The morphism map sends a morphism:



 f:A-> B



to:



 F(f):F(A)-> F(B)



The mapped morphism must be a valid `CategoryMorphism`.

It must have typed endpoints, witness, domain, codomain, partiality policy, mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A table entry `f |-> Ff` is not a morphism map unless certified.

## Source endpoint transport

Source endpoint transport states:



 src(F(f))=F(src(f))



or a declared equivalent endpoint relation.

Exact functoriality requires exact endpoint equality.

Quotient, observable, approximate, replay, or audit functoriality may use weaker endpoint relations.

Endpoint transport must be certified.

Runtime input type conversion is insufficient.

## Target endpoint transport

Target endpoint transport states:



 tgt(F(f))=F(tgt(f))



or a declared equivalent endpoint relation.

Exact functoriality requires exact target equality.

A runtime output type, serialized schema, or displayed target label does not prove target transport.

Target transport must preserve target admissibility, codomain interpretation, dependencies, certificates, epoch, and replay behavior.

## Identity preservation

Functoriality requires identity preservation:



 F(id_A)=id_{F(A)}



This is a theorem, certificate, or trusted-boundary statement.

It is not inferred from object mapping.

It is not inferred from implementation no-ops.

If identity is preserved only up to quotient, observable, approximate, replay, or audit equivalence, the functoriality mode is correspondingly weaker.

## Composition preservation

Functoriality requires composition preservation:



 F(g o f)=F(g) o F(f)



where both sides are valid morphisms.

This requires:

1. `f` and `g` are composable;
2. `F(f)` and `F(g)` are composable;
3. source and target endpoints are transported correctly;
4. composed domains are compatible;
5. composed codomains are compatible;
6. partiality behavior is compatible;
7. equality or equivalence relation is declared;
8. dependencies and certificates are fresh;
9. replay reconstructs both sides.

Runtime call sequencing does not prove composition preservation.

## Equality preservation

A functor preserves morphism equality if:



 f=g=> F(f)=F(g)



under the declared equality relation.

Equality preservation requires endpoint equality transport, witness equality transport, domain equality transport, codomain equality transport, partiality equality transport, dependency compatibility, certificate compatibility, epoch compatibility, and replay behavior.

Implementation-name equality is insufficient.

## Equivalence preservation

A functor preserves morphism equivalence if:



 f~ g=> F(f)~' F(g)



where `~` and `~'` are declared relations.

The target equivalence may be exact, quotient, observable, approximate, replay, audit, migrated, refined, or path-based.

Equivalence preservation is required for quotient functors and observable functors.

It cannot be inferred from mapping-table shape.

## Domain transport

For partial morphisms, functoriality must transport domains.

A source-side condition may have form:



 D_f(x)=> D_{F(f)}(F_X(x))



or a quotient, observable, approximate, replay, or audit variant.

If the functor changes representation, domain transport must record the representation map.

A functor that maps morphism names but ignores domains is not functorial for partial morphisms.

## Domain reflection

Some functoriality claims require domain reflection:



 D_{F(f)}(F_X(x))=> D_f(x)



Domain reflection is stronger than domain preservation.

It may be needed for faithful functors, equivalence reflection, representative recovery, or backward migration.

Reflection must be certified.

## Codomain transport

Functoriality must transport codomains.

A standard law is:



 C_f(y)=> C_{F(f)}(F_Y(y))



or a declared weaker relation.

Codomain transport must preserve output admissibility under the mapped target object.

Runtime output conversion is not codomain transport.

A mapped morphism is not functorial if its target admissibility predicate is unrelated to the original codomain.

## Codomain reflection

Some functoriality claims require codomain reflection:



 C_{F(f)}(F_Y(y))=> C_f(y)



Codomain reflection supports faithful or conservative functors.

It is not automatic.

It requires certificates, dependency closure, epoch compatibility, proof-boundary disclosure, and replay behavior.

## Partiality transport

Functoriality must transport partiality.

The mapped morphism must preserve or explicitly transform:

- totality;
- definedness;
- undefinedness;
- rejection;
- unknown status;
- selected behavior;
- stochastic behavior;
- fallback behavior;
- audit-only behavior;
- research-obligated behavior.

If `f` is total but `F(f)` is partial, exact functoriality fails unless the mode explicitly weakens the claim.

## Totality preservation

A total morphism may map to a total morphism only if totality preservation is certified:



 MorphismTotal(f)=> MorphismTotal(F(f))



Totality preservation may be scope-relative.

A functor may preserve totality on finite approximations but not on abstract carriers.

Such weakening must be explicit.

## Partiality preservation

For a partial morphism, the mapped morphism must have related definedness behavior.

A typical law is:



 Defined_f(x)=> Defined_{F(f)}(F_X(x))



with converse only if reflection is certified.

Definedness transport must account for quotient, observable, approximate, stochastic, selected, fallback, audit-only, rejected, unknown, and research-obligated cases.

## Witness transport

The morphism witness must be transported.

For functional witnesses:



 F(f)(F_X(x))=F_Y(f(x))



or a declared relation.

For relational witnesses:



 R_f(x,y)=> R_{F(f)}(F_X(x),F_Y(y))



or a bidirectional relation where needed.

For stochastic witnesses, kernel pushforward must be specified.

Witness transport is not runtime wrapping.

## Stochastic functoriality

For stochastic morphisms, functoriality may require pushforward of probability kernels:



 K_{F(f)}(F_X(x))=(F_Y)_star K_f(x)



or an equivalent distributional law.

Support, normalization, probability carrier, randomness boundary, sampling replay, dependencies, certificates, epoch, and proof boundary must be recorded.

Mapping sampled outputs is insufficient.

## Selected functoriality

For selected morphisms, functoriality must preserve selection behavior:



 F(select_f(x))~ select_{F(f)}(F_X(x))



or a declared weaker relation.

Selection policy, determinism, replayability, and codomain admissibility must be preserved.

Runtime order or branch order cannot define functorial selection.

## Quotient compatibility

Functoriality must respect quotient morphisms where quotient mode is used.

If:



 [f]



is a quotient morphism, then:



 F([f])



is meaningful only if `F` respects the quotient relation.

Usually one requires:



 f~ g=> F(f)~ F(g)



before defining:



 F([f])=[F(f)]



Quotient compatibility requires congruence.

## Observable compatibility

An observable functor preserves declared observable behavior.

It may satisfy:



 Obs(F(f))=T(Obs(f))



or a pointwise observable law.

Observable functoriality supports observable consumers only.

It does not prove hidden morphism preservation unless faithfulness or recovery is certified.

## Approximate compatibility

An approximate functor preserves morphism behavior up to error.

A law may have form:



 d(F(f),F(g))<= Phi(d(f,g))



or a pointwise transported error bound.

Metric, tolerance, error propagation, domain, codomain, dependencies, certificates, epoch, and replay behavior must be explicit.

Approximate functoriality cannot support exact functoriality by default.

## Replay compatibility

Replay-compatible functoriality requires replay to commute with functorial mapping:



 Replay(F(f))~ F(Replay(f))



under a declared comparison.

It must record replay procedures, manifests, targets, covered fields, omitted fields, proof boundaries, trusted boundaries, dependencies, certificates, epochs, audit links, invalidations, and comparison relation.

Cached mapped outputs are insufficient.

## Audit compatibility

Audit-compatible functoriality traces mapped morphisms back to source morphisms and object maps.

Audit compatibility supports audit consumers only.

It does not prove mathematical functoriality unless audit faithfulness or proof certificates are accepted.

Audit links cannot replace identity or composition preservation.

## Faithful functoriality

A functor may reflect equality or equivalence.

Faithfulness may state:



 F(f)=F(g)=> f=g



or:



 F(f)~ F(g)=> f~ g



under declared relations.

Faithfulness is stronger than preservation.

It must be certified and scoped.

It cannot be inferred from injective implementation names.

## Fullness

A functor may be full if every target morphism in a declared scope arises as the image of some source morphism.

Fullness is not required for ordinary functoriality.

If claimed, fullness requires preimage construction, endpoint compatibility, domain and codomain transport, partiality transport, dependencies, certificates, epoch, and replay behavior.

A mapping table with many entries is not fullness evidence.

## Essential surjectivity on objects

Object-level essential surjectivity may be used by categorical equivalence constructions.

It is not required by this file unless functoriality is used in an equivalence-of-categories context.

If present, it must remain separate from morphism mapping.

It cannot be inferred from target labels.

## Functoriality over identities

For every object `A` in the functor domain:



 F(id_A)=id_{F(A)}



must be checked.

The law depends on object mapping, identity formation, morphism equality or equivalence, domain and codomain transport, partiality transport, dependencies, certificates, epoch, proof boundary, and replay behavior.

A mapped no-op is insufficient.

## Functoriality over composition

For every composable pair:



 f:A-> B





 g:B-> C



the law:



 F(g o f)=F(g) o F(f)



must be checked.

If composition is partial, quotient, observable, approximate, replay, audit-only, rejected, unknown, or research-obligated, the functoriality law must reflect that mode.

The law is not inferred from preserving function-pipeline syntax.

## Functoriality over associativity

A functorial mapping should preserve associativity-compatible compositions.

When comparing:



 F(h o (g o f))



and:



 F((h o g) o f)



the functoriality proof may rely on source associativity, target associativity, and composition preservation.

Associativity certificates must be dependencies where used.

## Functoriality and naturality

Naturality uses functorial images of morphisms.

For a natural transformation:



 eta:F=> G



and morphism:



 f:A-> B



the naturality square uses:



 F(f)



and:



 G(f)



These images must be well-formed morphisms with transported endpoints, domains, codomains, partiality, dependencies, certificates, epoch, and replay behavior.

A naturality square cannot use unresolved functor images.

## Functoriality and congruence

Functoriality requires congruence over object and morphism relations.

For morphism equivalence:



 f~ g=> F(f)~ F(g)



For object equivalence:



 A~ B=> F(A)~ F(B)



Congruence must be certified.

It is required for quotient functors, observable functors, approximate functors, replay functors, migration functors, refinement functors, and path coherence.

## Functoriality and quotients

A functor on quotient categories must be well-defined on equivalence classes.

This requires:



 f~ g=> F(f)~ F(g)



and similarly for objects.

Without quotient compatibility, `F([f])` depends on representative choice.

A quotient functor cannot be defined by applying a mapping table to class labels.

## Functoriality and migration

Functoriality may migrate across epochs:



 F_e leads-to F_{e'}



and:



 F_e(f_e) leads-to F_{e'}(f_{e'})



Migration must preserve or explicitly weaken object mapping, morphism mapping, identity preservation, composition preservation, equality and equivalence preservation, domain and codomain transport, partiality transport, quotient compatibility, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Same mapping-table names are insufficient.

## Functoriality and refinement

Functoriality may refine by sharpening object mapping, strengthening morphism mapping, improving domain or codomain transport, reducing approximation error, proving stronger congruence, replacing trusted boundaries, or adding replay metadata.

Refinement is not migration.

If epoch changes, functoriality migration is also required.

A refined functoriality theorem is not automatically equal to the source theorem.

## Functoriality invalidation

Functoriality claims may become stale if object mapping, morphism mapping, endpoint transport, identity preservation, composition preservation, equality relation, equivalence relation, domain transport, codomain transport, partiality transport, quotient compatibility, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old functoriality claim remains audit content.

## Functoriality status

Functoriality status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted functoriality for audit does not imply accepted exact functoriality for proof.

## Rejected functoriality

Functoriality may be rejected.

Reasons include invalid object map, invalid morphism map, failed endpoint transport, failed identity preservation, failed composition preservation, failed domain transport, failed codomain transport, failed partiality transport, failed quotient compatibility, stale dependency, rejected certificate, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected functoriality is audit content.

It is not usable functorial evidence.

## Unknown functoriality

Unknown functoriality records that preservation laws cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block naturality, quotienting, category construction, replay, migration, refinement, or certificate reuse.

Unknown functoriality must not be treated as approximate or audit-only success.

## Research-obligated functoriality

Research-obligated functoriality records a required but unproven functoriality claim.

It must identify functor, object mapping, morphism mapping, missing preservation law, dependencies, mode, scope, epoch, blocked consumer, and replay context.

It does not define a valid functorial morphism map.

It prevents silent use of mapping tables as functors.

## Functoriality audit

Functoriality audit links connect functoriality claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, verifier exports, extraction artifacts, functor declarations, or history prefixes.

Audit links provide traceability.

They do not prove functoriality unless paired with accepted certificates.

## Functoriality replay

Functoriality replay reconstructs functor identity, object map, morphism map, endpoint transport, identity preservation, composition preservation, equality preservation, equivalence preservation, domain transport, codomain transport, partiality transport, quotient compatibility, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

A stored mapping table is not replay.

A runtime dispatcher log is not replay.

A cached mapped output is not functoriality evidence.

## Functoriality certificates

Functoriality certificates may prove:



 FunctorMapsMorphism(F,f,F(f))





 F(f):F(A)-> F(B)





 F(id_A)=id_{F(A)}





 F(g o f)=F(g) o F(f)





 f=g=> F(f)=F(g)





 f~ g=> F(f)~ F(g)



or endpoint transport, domain transport, codomain transport, partiality transport, quotient compatibility, observable compatibility, approximate compatibility, replay compatibility, audit compatibility, faithfulness, fullness, migration, refinement, invalidation, freshness, dependency closure, audit, replay, and path-coherence claims.

Only accepted certificates discharge functoriality obligations.

## Functoriality and trusted boundaries

A trusted boundary may certify functoriality only if its trusted statement includes the functorial preservation laws.

A trusted mapping table may certify table integrity.

It does not certify identity preservation or composition preservation unless those laws are inside the trusted statement.

Boundary overreach is rejected.

## Functoriality and proof boundaries

Functoriality proofs may depend on equality infrastructure, equivalence infrastructure, identity laws, composition laws, quotient laws, extensionality principles, finite enumeration, replay procedures, extraction procedures, or trusted boundaries.

Those dependencies must be recorded.

Changing proof boundary may stale functoriality certificates.

## Functoriality and applications

Application-specific functorial morphism maps belong outside this abstract file.

`MorphismFunctoriality.lean` may define generic hooks for application-instantiated functoriality.

It must not define concrete application mapping tables, bitmap transform maps, matrix operation maps, token maps, image operation maps, hash constants, Feistel maps, UI dispatch tables, runtime callback registries, or payload routing tables.

## Functoriality and `none`

No functoriality rule may treat `none`, `null`, missing mapped object, missing mapped morphism, absent runtime binding, or undefined result as a mathematical default.

A missing image is not an identity image.

Undefined mapped morphisms are rejected, unknown, audit-only, or research-obligated according to explicit status policy.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

## Epoch rule

`MorphismFunctoriality.lean` artifacts are epoch-indexed by:

- morphism-functoriality schema epoch;
- functor declaration epoch;
- object-map epoch;
- morphism-map epoch;
- source-transport epoch;
- target-transport epoch;
- identity-preservation epoch;
- composition-preservation epoch;
- equality-preservation epoch;
- equivalence-preservation epoch;
- domain-transport epoch;
- codomain-transport epoch;
- partiality-transport epoch;
- quotient-compatibility epoch;
- proof-mode epoch;
- scope epoch;
- dependency-record epoch;
- status epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream functoriality claims.

The old functoriality artifact remains audit content.

## History relation

A history record depending on `MorphismFunctoriality.lean` must record:

1. source file identity;
2. declaration identity;
3. functor identity;
4. object map;
5. morphism map;
6. source endpoint transport;
7. target endpoint transport;
8. identity-preservation claim;
9. composition-preservation claim;
10. equality-preservation claim;
11. equivalence-preservation claim;
12. domain-transport claim;
13. codomain-transport claim;
14. partiality-transport claim;
15. quotient-compatibility claim;
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

The implementation-level mapping table alone is insufficient.

## Replay rule

Replay of `MorphismFunctoriality.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, `MorphismPartiality.lean`, `MorphismIdentity.lean`, `MorphismComposition.lean`, `MorphismAssociativity.lean`, `MorphismEquality.lean`, `MorphismEquivalence.lean`, `MorphismCongruence.lean`, and `MorphismQuotient.lean`;
3. reconstructing functoriality declarations;
4. reconstructing object map, morphism map, source and target endpoint transport, identity preservation, composition preservation, equality preservation, equivalence preservation, domain transport, codomain transport, partiality transport, and quotient compatibility;
5. checking stochastic, selected, observable, approximate, replay, audit, faithful, full, rejected, unknown, and research-obligated functoriality variants;
6. checking interaction with identity, composition, associativity, congruence, quotienting, naturality use, migration, refinement, invalidation, certificates, epochs, audit, and replay;
7. checking proof objects or trusted boundaries where present;
8. checking that implementation-level mapping tables are not treated as functoriality evidence;
9. checking that no runtime code or application constants are introduced;
10. checking dependency closure and audit metadata.

If any step fails, downstream functoriality claims are not replay-admissible.

## Runtime representation

`MorphismFunctoriality.lean` may lower to:

- Lean functoriality theorem statements;
- object-map descriptors;
- morphism-map descriptors;
- endpoint-transport descriptors;
- identity-preservation theorem metadata;
- composition-preservation theorem metadata;
- equality-preservation descriptors;
- equivalence-preservation descriptors;
- domain-transport descriptors;
- codomain-transport descriptors;
- partiality-transport descriptors;
- quotient-compatibility descriptors;
- functoriality-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not functoriality identity.

Functoriality identity depends on functor, object map, morphism map, endpoint transport, identity preservation, composition preservation, equality and equivalence preservation, domain and codomain transport, partiality transport, quotient compatibility, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let an implementation-level mapping table, runtime dispatcher, callback registry, symbol-renaming table, function-name map, or sampled mapped-output table be present.

This does not imply functoriality.

Functoriality holds only when object mapping, morphism mapping, endpoint transport, identity preservation, composition preservation, equality and equivalence preservation, domain and codomain transport, partiality transport, quotient compatibility, dependencies, certificates, epochs, proof boundaries, trusted boundaries, audit links, invalidations, and replay behavior are accepted for the required mode and scope.

Thus implementation-level mapping tables are insufficient for functoriality evidence.

## Proof obligation

`MorphismFunctoriality.lean` is admissible only if the framework can certify:

1. morphism mapping has type `f:A-> B=> F(f):F(A)-> F(B)`;
2. object mapping is explicit;
3. source and target endpoint transport are explicit;
4. identity preservation is explicit;
5. composition preservation is explicit;
6. equality preservation is explicit where used;
7. equivalence preservation is explicit where used;
8. domain transport is explicit;
9. codomain transport is explicit;
10. partiality transport is explicit;
11. quotient compatibility is explicit;
12. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
13. implementation-level mapping tables are excluded as functoriality evidence;
14. application constants are excluded;
15. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismFunctoriality.lean` may not define concrete carrier functors, concrete spectrum functors, authority functors, tensor functors, sheaf functors, operator functors, history functors, migration functors, refinement functors, application mapping tables, runtime dispatchers, callback registries, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-functoriality infrastructure.

## Commitment rule

`MorphismFunctoriality.lean` may define functorial mapping of morphisms and preservation laws.

It cannot treat implementation-level mapping tables as functoriality evidence.

It cannot define a functor without identity preservation.

It cannot define a functor without composition preservation.

It cannot hide domain, codomain, or partiality transport.

It cannot ignore quotient compatibility.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached mapped outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
