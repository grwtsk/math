# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismEquality.Variant5e6995545e679fe712b2327c68ceaa66b621a66e7228997fb7b5ccb83992e887

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d3305b01e1a9110c9f8428aef8781b26076ed39` · SHA-256 `0aa1df92a23e61ff9f1585100388c958ca91e2ef6e6259a0f98e6cf9b70c89f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantd025b074eaea0bcb09f68ca9c0512eb6a310ca7fa807e15e1a901e6f47d8b6a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d025b074eaea0bcb09f68ca9c0512eb6a310ca7fa807e15e1a901e6f47d8b6a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variantd025b074eaea0bcb09f68ca9c0512eb6a310ca7fa807e15e1a901e6f47d8b6a6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d025b074eaea0bcb09f68ca9c0512eb6a310ca7fa807e15e1a901e6f47d8b6a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/morphism/MorphismEquality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# MorphismEquality.lean


## Role

`MorphismEquality.lean` defines equality infrastructure for categorical morphisms.

It specifies exact morphism equality, witness equality, endpoint equality, domain equality, codomain equality, partiality equality, extensional equality, equality of identity morphisms, equality of composite morphisms, certificate-aware equality, epoch-sensitive equality, dependency-sensitive equality, audit-sensitive equality, invalidation-sensitive equality, and replay-sensitive equality.

Morphism equality is not implementation-name equality.

It is not runtime-function equality.

It is not sampled-output equality.

It is not callback identity.

It is not equality of exported symbols.

It is a typed proof-core equality claim over categorical arrows.

## Core principle

For morphisms:



 f:A-> B



and:



 g:C-> D



an equality claim:



 f=g



is admissible only after specifying what equality means.

Exact morphism equality requires equality of source endpoint, target endpoint, witness or relation, domain predicate, codomain predicate, partiality policy, proof mode, scope, dependency closure, certificates, epochs, proof boundary, trusted boundary, audit references, invalidations, and replay behavior.

A same-named implementation is insufficient.

Same results on selected inputs are insufficient.

## Formal shape

A morphism-equality record has schematic form:



 MorphismEquality=(left,right,equalityKind,endpointEq,witnessEq,domainEq,codomainEq,partialityEq,extensionality,compositeEq,identityEq,comparison,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `left` and `right` identify the compared morphisms;
- `equalityKind` records exact, endpoint, witness, extensional, composite, identity, certificate-aware, replay, audit, quotient, observable, approximate, rejected, unknown, or research-obligated equality;
- `endpointEq` records source and target endpoint equality;
- `witnessEq` records equality of action, graph, relation, selected witness, stochastic kernel, or trusted statement;
- `domainEq` records domain equality;
- `codomainEq` records codomain equality;
- `partialityEq` records equality of total, partial, undefined, rejected, unknown, selected, stochastic, fallback, or research-obligated behavior;
- `extensionality` records pointwise or graph-level equality where used;
- `compositeEq` records equality of composite morphisms where relevant;
- `identityEq` records equality involving identity morphisms where relevant;
- `comparison` records the equality relation;
- `mode` records proof mode;
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

The record is an equality claim.

It is not an implementation comparison.

## Exact morphism equality

Exact morphism equality compares all proof-relevant morphism fields.

A strong exact equality claim requires:



 src(f)=src(g)





 tgt(f)=tgt(g)





 witness(f)=witness(g)





 Domain_f=Domain_g





 Codomain_f=Codomain_g





 Partiality_f=Partiality_g



plus equality of mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit references, invalidations, and replay behavior where those fields are proof-relevant.

Exact morphism equality supports exact substitution only when fresh.

## Endpoint equality

Morphism equality requires endpoint equality.

For exact equality:



 src(f)=src(g)



and:



 tgt(f)=tgt(g)



must hold under full categorical object identity or an accepted equality adequate for the consumer.

Endpoint label equality is insufficient.

Endpoint id equality is insufficient.

Runtime input-output signature equality is insufficient.

If endpoints are only equivalent, the morphisms are at most equivalent unless equality is strengthened.

## Witness equality

Witness equality compares the morphism witnesses.

Witnesses may be functions, partial functions, graph relations, selected relations, stochastic kernels, approximate relations, quotient relations, observable relations, replay relations, audit relations, trusted-boundary statements, rejected placeholders, unknown placeholders, or research obligations.

Witness equality must specify the witness kind.

A function pointer equality does not prove witness equality unless the function pointer is part of a trusted statement covering the categorical witness.

## Graph equality

For relational morphisms, witness equality may be graph equality:



 forall x,y,\ R_f(x,y)<=> R_g(x,y)



under declared domains, codomains, endpoint equality, and proof mode.

Graph equality is stronger than agreement on sampled pairs.

Graph equality may be exact, quotient, observable, approximate, replay, or audit-level depending on the comparison relation.

## Action equality

For functional morphisms, action equality may be pointwise:



 forall x,\ D_f(x)=> f(x)=g(x)



provided the domains, codomains, endpoints, and partiality policies are compatible.

Action equality without domain equality may prove equality only on a restricted domain.

Action equality on sampled inputs is not extensional equality unless the sample is certified exhaustive or sufficient for the declared scope.

## Domain equality

Exact morphism equality requires equality of domain predicates:



 forall x,\ D_f(x)<=> D_g(x)



plus equality of domain metadata, dependencies, certificates, epoch, proof boundary, trusted boundary, audit references, invalidations, and replay behavior where required.

Same source object does not imply same domain.

Runtime acceptance of the same inputs does not prove domain equality.

## Codomain equality

Exact morphism equality requires equality of codomain predicates:



 forall y,\ C_f(y)<=> C_g(y)



plus equality of codomain metadata, output-admissibility policy, preservation laws, reflection laws, dependencies, certificates, epoch, and replay behavior.

Same target object does not imply same codomain.

Runtime production of the same output shape does not prove codomain equality.

## Partiality equality

Exact morphism equality requires equality of partiality policies.

The following must agree or be certified equal:

- totality;
- definedness;
- undefinedness;
- rejection behavior;
- unknown behavior;
- selected behavior;
- stochastic behavior;
- fallback behavior;
- audit-only behavior;
- research-obligated behavior.

A runtime exception pattern is not partiality equality.

Same fallback output is not partiality equality.

## Extensional equality

Extensional equality compares morphisms by behavior on all admissible inputs.

For total functions:



 (forall x,\ f(x)=g(x))=> f=g



may be used under function extensionality and compatible endpoints.

For partial morphisms, extensional equality must include domains:



 forall x,\ D_f(x)<=> D_g(x)



and:



 forall x,\ D_f(x)=> f(x)=g(x)



For relational morphisms, extensional equality is graph equality.

Extensionality requires proof-boundary disclosure.

## Sample equality

Sample equality records agreement on selected inputs.

It may have form:



 forall x in S,\ f(x)=g(x)



where `S` is a sample set.

Sample equality is not morphism equality unless `S` is certified exhaustive or sufficient for the declared scope.

Sample equality may support diagnostics, audit, approximate claims, probabilistic claims, or finite-exhaustive claims when appropriately certified.

It cannot support exact equality by default.

## Equality of identity morphisms

Equality of identity morphisms may state:



 id_A=id_B



only when objects `A` and `B` are equal or identity-compatible under the required mode and scope.

If:



 A=B



then:



 id_A=id_B



requires identity-morphism congruence.

Repeated object labels do not prove equality of identity morphisms.

Runtime no-ops do not prove identity-morphism equality.

## Equality involving identities

Identity laws yield equality claims:



 id_B o f=f





 f o id_A=f



These are morphism equalities requiring equality of endpoints, domains, codomains, partiality, composition, certificates, dependencies, epochs, proof boundary, and replay behavior.

They are not simplification rules unless accepted in the proof context.

## Equality of composites

Equality of composite morphisms may state:



 g o f=g' o f'



or:



 h o (g o f)=(h o g) o f



Such equality requires equality or equivalence of component morphisms, endpoint compatibility, composed domains, composed codomains, partiality propagation, composition laws, dependencies, certificates, epochs, and replay behavior.

Runtime pipeline equality is insufficient.

## Composite extensionality

Composite equality may be shown extensionally:



 forall x,\ (g o f)(x)=(g' o f')(x)



under the composed domain.

For partial composites, composed-domain equality is required.

For relational composites, graph equality is required.

For approximate composites, error bounds must be explicit.

## Certificate-aware equality

Certificate-aware morphism equality includes the certificate evidence used to establish equality.

Two equality claims with the same mathematical statement but different certificates may be audit-distinct.

A certificate-aware equality record must include statement, subject, verifier, payload reference, result, mode, scope, dependencies, proof boundary, trusted boundary, epoch, invalidations, audit references, and replay behavior.

Same equation is insufficient.

## Proof-boundary-sensitive equality

Morphism equality may depend on proof principles or trusted components.

If equality proof uses function extensionality, propositional extensionality, choice, quotient soundness, trusted arithmetic, a verifier, a decoder, a replay engine, or an extraction boundary, the proof boundary must be recorded.

Changing proof boundary may stale equality claims.

## Trusted-boundary-sensitive equality

A trusted boundary may certify morphism equality only if its trusted statement includes that equality.

A trusted runtime comparison may certify implementation equality.

It does not certify categorical morphism equality unless source, target, domain, codomain, partiality, witness semantics, dependencies, epoch, and replay behavior are inside the trusted statement.

Boundary overreach is rejected.

## Epoch-sensitive equality

Morphism equality is epoch-indexed.

An equality:



 f_e=g_e



does not imply:



 f_{e'}=g_{e'}



unless equality migration, morphism migration, endpoint migration, domain migration, codomain migration, partiality migration, dependency migration, certificate migration, proof-boundary migration, and replay preservation are accepted.

Same implementation name across epochs is insufficient.

## Dependency-sensitive equality

Morphism equality depends on all proof-relevant dependencies.

Changing a dependency may stale equality.

Dependencies include source object, target object, witness, domain, codomain, partiality, equality infrastructure, equivalence infrastructure, proof modes, scopes, statuses, epochs, certificates, proof boundary, trusted boundary, audit references, invalidation policy, and replay parameters.

Hidden dependencies invalidate equality replay.

## Audit-sensitive equality

Audit links may trace morphism equality claims to framework records, certificates, replay manifests, trusted boundaries, dependency records, migrations, refinements, verifier exports, or extraction artifacts.

Audit links do not prove equality.

Audit equality is weaker than exact morphism equality.

Audit path coherence may be required when multiple audit paths support an equality claim.

## Replay-sensitive equality

Morphism equality may be replay equality when replay reconstructs the same morphism behavior under a declared comparison.

Replay equality requires replay target, procedure, manifest, comparison relation, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Stored outputs are not replay equality.

Runtime call traces are not replay equality.

## Quotient equality

Quotient morphism equality compares equivalence classes of morphisms:



 [f]=[g]



It supports quotient consumers.

It does not support representative-sensitive consumers unless representative recovery or representative independence is certified.

Quotient equality requires quotient relation, congruence, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, certificates, and replay behavior.

## Observable equality

Observable morphism equality compares declared observables:



 Obs(f)=Obs(g)



or pointwise observable outputs.

It supports observable consumers.

It does not prove hidden morphism equality unless observables are faithful and faithfulness is certified.

The observable map and codomain equality are dependencies.

## Approximate equality

Approximate morphism equality states:



 d(f,g)<=\varepsilon



or pointwise:



 d(f(x),g(x))<=\varepsilon(x)



under the declared domain.

It must record metric, tolerance, error propagation, domain, codomain, dependencies, certificates, epoch, and replay behavior.

Approximate equality cannot discharge exact equality obligations unless strengthened.

## Summary equality

Summary morphism equality compares summaries of morphism behavior.

It must record summary function, retained information, omitted information, sufficiency scope, dependencies, certificates, epoch, and replay behavior.

Summary equality cannot support exact morphism substitution unless summary sufficiency or reconstruction is certified.

## Checkpoint equality

Checkpoint equality compares materialized replay states of morphisms.

It must record checkpoint payloads, covered morphism fields, covered endpoints, dependency closure, invalidation policy, certificates, epoch, and replay scope.

A cached output table is not checkpoint equality unless checkpoint validity is certified.

## Rejected equality

Rejected equality records that a morphism-equality claim failed.

Reasons include endpoint mismatch, witness mismatch, domain mismatch, codomain mismatch, partiality mismatch, stale dependency, rejected certificate, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected equality is audit content.

It cannot support substitution.

## Unknown equality

Unknown equality records that equality cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block composition, associativity, congruence, quotienting, functoriality, naturality, replay, migration, refinement, or certificate reuse.

Unknown must not be treated as approximate success.

## Research-obligated equality

Research-obligated equality records an unresolved equality required by a downstream consumer.

It must identify compared morphisms, required equality kind, missing evidence, dependencies, mode, scope, epoch, blocked consumer, and replay context.

It does not prove equality.

It prevents silent identification of arrows.

## Equality and substitution

Substitution through morphism equality requires an accepted substitution theorem.

A typical law is:



 f=g=> P(f)=> P(g)



for a predicate or construction `P`.

Substitution into composition, associativity, functoriality, naturality, replay, migration, or certificates requires congruence of those constructions under the equality relation.

Equality labels alone do not authorize substitution.

## Equality and congruence

Congruence states that composition and other constructions preserve morphism equality.

For composition:



 f=f' and g=g'=> g o f=g' o f'



under endpoint compatibility.

Congruence must include domain, codomain, partiality, mode, scope, dependencies, certificates, epoch, and replay behavior.

It is not automatic.

## Equality and functoriality

A functor preserves morphism equality when:



 f=g=> F(f)=F(g)



or a declared target equivalence.

Functoriality also requires identity and composition preservation.

A functor mapping same implementation names does not preserve morphism equality by default.

## Equality and naturality

Naturality squares may be transported across morphism equality only when component maps, functor images, composition, and equality relations are congruent.

If:



 f=g



then naturality for `f` may imply naturality for `g` only under a certified naturality-use congruence theorem.

## Equality and quotienting

Quotient categories identify morphisms under equivalence.

A quotient equality claim is not exact morphism equality.

To use quotient equality in representative-sensitive settings, representative recovery or representative independence is required.

Morphism equality infrastructure must prevent quotient equality from being consumed as raw equality by default.

## Equality and migration

Morphism equality may migrate across epochs:



 f_e=g_e leads-to f_{e'}=g_{e'}



Migration must preserve or explicitly weaken endpoints, witnesses, domains, codomains, partiality, equality relation, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Same target morphism names are insufficient.

## Equality and refinement

Morphism equality may refine by strengthening comparison, reducing approximation error, sharpening domain or codomain equality, improving dependency closure, or replacing trusted boundaries.

Refinement is not migration.

If epoch changes, equality migration is also required.

A refined equality claim is not automatically equal to the source equality claim.

## Equality invalidation

Morphism-equality claims may become stale if any of the following changes:

- endpoint identity;
- witness semantics;
- domain predicate;
- codomain predicate;
- partiality policy;
- extensionality principle;
- equality relation;
- equivalence relation;
- composition law;
- identity law;
- proof mode;
- scope;
- dependency closure;
- certificate schema;
- proof boundary;
- trusted boundary;
- epoch;
- audit schema;
- replay schema;
- invalidation policy.

Invalidation is append-only.

The old equality claim remains audit content.

## Equality status

Morphism-equality status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted equality for audit does not imply accepted exact equality for proof.

## Equality certificates

Morphism-equality certificates may prove:



 MorphismEq(f,g)





 WitnessEq(f,g)





 EndpointEq(f,g)





 DomainEq(f,g)





 CodomainEq(f,g)





 PartialityEq(f,g)





 ExtensionalEq(f,g)





 CompositeEq(g o f,g' o f')





 IdentityMorphismEq(id_A,id_B)



or equality migration, refinement, invalidation, freshness, dependency closure, audit, replay, quotient equality, observable equality, approximate equality, and path-coherence claims.

Only accepted certificates discharge equality obligations.

## Equality replay

Replay of morphism equality reconstructs both morphisms, endpoints, witnesses, domains, codomains, partiality policies, extensionality assumptions, equality kind, comparison relation, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

If replay reconstructs only implementation names, labels, or sampled outputs, the equality claim is not replay-admissible.

## Equality and applications

Application-specific morphism equality belongs outside this abstract file.

`MorphismEquality.lean` may define generic hooks for application-instantiated equality.

It must not define concrete application equality, bitmap transform equality, matrix operation equality, token operation equality, image operation equality, hash constants, Feistel equality, UI callback equality, or runtime payload equality.

## Equality and `none`

No morphism-equality rule may treat `none`, `null`, missing output, missing input, absent runtime binding, or undefined result as a mathematical default.

Equality of absence is equality of absence only under an explicit partiality encoding.

Undefinedness is not output equality.

Fallback equality must be certified as semantic fallback equality.

## Epoch rule

`MorphismEquality.lean` artifacts are epoch-indexed by:

- morphism-equality schema epoch;
- morphism-record epoch;
- endpoint-equality epoch;
- witness-equality epoch;
- domain-equality epoch;
- codomain-equality epoch;
- partiality-equality epoch;
- extensionality-policy epoch;
- composite-equality epoch;
- identity-equality epoch;
- equality-relation epoch;
- equivalence-relation epoch;
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

Changing any component may stale downstream morphism-equality claims.

The old equality artifact remains audit content.

## History relation

A history record depending on `MorphismEquality.lean` must record:

1. source file identity;
2. declaration identity;
3. left morphism;
4. right morphism;
5. equality kind;
6. endpoint equality;
7. witness equality;
8. domain equality;
9. codomain equality;
10. partiality equality;
11. extensionality principle where used;
12. composite or identity equality where used;
13. proof mode and scope;
14. prefix and epoch;
15. dependency closure;
16. certificates;
17. status;
18. invalidation behavior;
19. proof boundary;
20. trusted boundary where used;
21. audit reference;
22. replay data.

The implementation name, runtime function, or sampled-output table alone is insufficient.

## Replay rule

Replay of `MorphismEquality.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, `MorphismPartiality.lean`, `MorphismIdentity.lean`, `MorphismComposition.lean`, and `MorphismAssociativity.lean`;
3. reconstructing morphism-equality declarations;
4. reconstructing endpoint, witness, domain, codomain, partiality, extensional, composite, identity, certificate-aware, replay, audit, quotient, observable, approximate, rejected, unknown, and research-obligated equality records;
5. checking substitution, congruence, functoriality, naturality, quotienting, migration, refinement, invalidation, certificates, epochs, audit, and replay interactions;
6. checking proof objects or trusted boundaries where present;
7. checking that implementation names, runtime functions, and sampled outputs are not treated as morphism equality;
8. checking that no runtime code or application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream morphism-equality claims are not replay-admissible.

## Runtime representation

`MorphismEquality.lean` may lower to:

- Lean equality predicates;
- morphism-equality records;
- endpoint-equality metadata;
- witness-equality metadata;
- domain-equality metadata;
- codomain-equality metadata;
- partiality-equality metadata;
- extensionality theorem metadata;
- equality-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not morphism-equality identity.

Equality identity depends on compared morphisms, equality kind, endpoints, witnesses, domains, codomains, partiality, comparison relation, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let two morphisms have the same implementation name, same runtime function, same exported symbol, same callback identity, same sampled outputs, or same displayed arrow label.

This does not imply morphism equality.

Morphism equality holds only when endpoint equality, witness equality, domain equality, codomain equality, partiality equality, comparison relation, dependencies, certificates, epochs, proof boundary, trusted boundary, audit references, invalidations, and replay behavior are accepted for the required mode and scope.

Thus implementation names, runtime functions, and sampled outputs are insufficient for morphism equality.

## Proof obligation

`MorphismEquality.lean` is admissible only if the framework can certify:

1. exact morphism equality is explicit;
2. endpoint equality is required;
3. witness equality is required;
4. domain equality is required where domain affects use;
5. codomain equality is required where codomain affects use;
6. partiality equality is required where partiality affects use;
7. extensional equality is certified and scoped;
8. equality of composites and identities is explicit;
9. certificate-aware equality is supported;
10. equality and equivalence remain distinct;
11. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
12. implementation names, runtime functions, and sampled outputs are excluded as equality evidence;
13. application constants are excluded;
14. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismEquality.lean` may not define concrete carrier morphism equality, concrete spectrum morphism equality, authority-setter equality, tensor-kernel equality, sheaf-restriction equality, operator-action equality, history-append equality, migration-map equality, refinement-map equality, application function equality, runtime function equality, implementation-name equality, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-equality infrastructure.

## Commitment rule

`MorphismEquality.lean` may define morphism-equality notions and equality laws.

It cannot equate morphisms by implementation name.

It cannot equate morphisms by runtime function.

It cannot equate morphisms by sampled outputs.

It cannot turn extensional claims into exact equality without full domain and proof-boundary evidence.

It cannot collapse equivalence into equality.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantd025b074eaea0bcb09f68ca9c0512eb6a310ca7fa807e15e1a901e6f47d8b6a6

```
