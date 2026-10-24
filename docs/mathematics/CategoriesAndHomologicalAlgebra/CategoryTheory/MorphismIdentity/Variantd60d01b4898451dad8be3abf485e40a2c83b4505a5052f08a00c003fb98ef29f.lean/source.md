# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismIdentity.Variantd60d01b4898451dad8be3abf485e40a2c83b4505a5052f08a00c003fb98ef29f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff6e22dc3a3ff89a5032e482caf004d0c5e85ebb` · SHA-256 `d60d01b4898451dad8be3abf485e40a2c83b4505a5052f08a00c003fb98ef29f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# MorphismIdentity.lean


## Role

`MorphismIdentity.lean` defines identity-morphism infrastructure for categorical morphisms.

It specifies identity arrows:



    id_A:A-> A



for admissible categorical objects `A`, together with endpoint admissibility, total domain, codomain admissibility, partiality discipline, left and right identity laws, equality and equivalence variants, certificates, epochs, dependencies, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior.

An identity morphism is not a runtime no-op.

It is not a repeated object label.

It is not an implementation function returning its argument.

It is not an empty operation.

It is a typed categorical arrow whose identity laws must be certified in the proof layer.

## Core principle

For every admissible categorical object `A`, the identity morphism has type:



    id_A:A-> A



Formation of `id_A` requires `A` to be a valid endpoint object under the identity-morphism scope and mode.

The judgment:



    id_A:A-> A



requires object identity, endpoint admissibility, total domain, codomain admissibility, dependency freshness, certificates, epoch attachment, proof-boundary validity, audit traceability, and replay behavior.

A repeated label `A` does not establish this judgment.

## Formal shape

An identity-morphism record has schematic form:



    MorphismIdentity=(object,identityMorphism,sourceEndpoint,targetEndpoint,domain,codomain,partiality,leftLaw,rightLaw,equalityMode,equivalenceMode,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `object` is the categorical object `A`;
- `identityMorphism` is the arrow `id_A`;
- `sourceEndpoint` records `A` as source;
- `targetEndpoint` records `A` as target;
- `domain` records the identity domain;
- `codomain` records the identity codomain;
- `partiality` records totality or any declared restriction;
- `leftLaw` records `id_Bo f=f`;
- `rightLaw` records `fo id_A=f`;
- `equalityMode` records exact equality where used;
- `equivalenceMode` records quotient, observable, approximate, replay, or audit variants;
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

The record defines identity-morphism semantics.

It does not define runtime identity behavior.

## Identity arrow

The identity arrow at object `A` is:



    id_A:A-> A



It is an element of:



    Hom(A,A)



or the corresponding morphism record over source endpoint `A` and target endpoint `A`.

The arrow must be typed.

The source and target endpoint occurrences must refer to the same categorical object under the equality required by the identity scope.

A repeated printed label is insufficient.

## Endpoint admissibility

Identity formation requires endpoint admissibility:



    EndpointAdmissible(id_A,A,Source,mode,scope)



and:



    EndpointAdmissible(id_A,A,Target,mode,scope)



where both endpoint occurrences are the same object under accepted object identity.

If `A` is stale, rejected, unknown, audit-only, display-only, or weaker than required, exact identity formation is blocked or weakened.

Endpoint admissibility is not inferred from object construction.

## Same object requirement

The source and target of `id_A` must be the same categorical object:



    src(id_A)=A





    tgt(id_A)=A



and:



    ObjectIdentityEq(srcObj,tgtObj)



under the identity scope.

Object-label equality is insufficient.

Object-id equality is insufficient.

Kind equality is insufficient.

Runtime type equality is insufficient.

## Total domain

The ordinary identity morphism is total on the admissible source region of `A`.

A typical exact law is:



    ObjectValueAdmissible_A(x)=> Defined_{id_A}(x)



or, when the source representation is already restricted to admissible values:



    forall x:X_A,\ Defined_{id_A}(x)



The total domain must be stated and certified.

A no-op implementation does not prove identity totality.

## Restricted identity

A restricted identity morphism may be defined on a subdomain:



    id_{A|D}:D-> D



or:



    id_A:D_A subseteq  A-> A



Such an arrow is not the full categorical identity unless the category's identity law is explicitly scoped to `D`.

Restricted identity must be marked partial, restricted, quotient, observable, approximate, or scoped.

It cannot discharge full identity laws by default.

## Codomain admissibility

The identity morphism must land in the target admissible region.

The standard exact law is:



    ObjectValueAdmissible_A(x)=> Codomain_{id_A}(x)



because:



    id_A(x)=x



Codomain admissibility is not automatic from target-object membership unless target admissibility is already the codomain predicate and this inclusion is certified.

## Action law

The identity action law is:



    id_A(x)=x



for all `x` in the certified domain.

For relational identity, the graph may be:



    Id_A(x,y):=x=y



or another declared equality relation.

The equality relation must be explicit.

Raw equality, quotient equality, observable equality, approximate equality, replay equality, and audit identity are distinct.

## Relational identity

The identity morphism may be represented relationally:



    R_{id_A}(x,y)\iff x=y



or:



    R_{id_A}(x,y)\iff x~_A y



for a quotient or equivalence identity.

Relational identity must declare its relation.

A relation that relates every pair is not identity unless the category is explicitly indiscrete under that relation and certified as such.

## Partiality policy

The standard categorical identity is total.

If the identity record has any partiality, undefined cases, rejection cases, fallback behavior, unknown cases, selected behavior, or stochastic behavior, then it is not the ordinary exact identity unless the category's identity law is correspondingly weakened.

Identity partiality must be explicit.

Undefinedness cannot be replaced by a default output.

## Left identity law

For a morphism:



    f:A-> B



the left identity law is:



    id_Bo f=f



This law requires:

1. `f` is a well-formed morphism;
2. `B` is endpoint-admissible;
3. `id_B` is well-formed;
4. composition is defined;
5. domain and codomain conditions align;
6. equality or equivalence relation is declared;
7. dependencies are fresh;
8. certificates and replay behavior are accepted.

Left identity is not inferred from runtime no-op behavior.

## Right identity law

For a morphism:



    f:A-> B



the right identity law is:



    fo id_A=f



This law requires:

1. `f` is a well-formed morphism;
2. `A` is endpoint-admissible;
3. `id_A` is well-formed;
4. composition is defined;
5. domain and codomain conditions align;
6. equality or equivalence relation is declared;
7. dependencies are fresh;
8. certificates and replay behavior are accepted.

Right identity is not inferred from repeated object labels.

## Identity law equality

Identity laws may hold under exact morphism equality:



    id_Bo f=f



and:



    fo id_A=f



Exact equality requires equality of morphism identity, endpoints, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, epoch, proof boundary, audit links, and replay behavior.

Same action on sampled values is insufficient.

## Identity law equivalence

Identity laws may hold only under a weaker equivalence:



    id_Bo f~ f





    fo id_A~ f



The equivalence may be quotient, observable, approximate, replay, audit, summary, checkpoint, migrated, refined, or path-based.

Such laws support only consumers that accept the declared equivalence.

They do not prove exact identity laws unless strengthened.

## Quotient identity

In a quotient category, identity may be defined on quotient classes:



    id_{[A]}:[A]->[A]



This requires quotient readiness, representative independence, endpoint congruence, morphism congruence, and replay behavior.

A raw identity morphism does not automatically descend to quotient identity.

A quotient identity cannot support representative-sensitive use unless representative recovery is certified.

## Observable identity

An observable identity preserves declared observables:



    Obs(id_A(x))=Obs(x)



It supports observable consumers only.

It does not prove hidden-state identity unless the observable is faithful and faithfulness is certified.

Observable identity is not exact categorical identity by default.

## Approximate identity

An approximate identity may satisfy:



    d(id_A(x),x)<=\varepsilon



or:



    res(id_A(x),x)<=\varepsilon



It requires metric, residual, tolerance, domain, codomain, dependencies, certificates, epoch, and replay behavior.

Approximate identity cannot discharge exact identity laws unless zero-error soundness or strengthening evidence is accepted.

## Replay identity

Replay identity states that replay reconstructs the identity morphism and its laws:



    Replay(id_A)=id_A



or a preservation square for identity replay.

Replay must reconstruct object `A`, endpoints, identity action or relation, domain, codomain, partiality, identity laws, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, epoch, and comparison relation.

A stored no-op name is not replay.

## Audit identity

Audit identity records historical traceability of an identity claim.

It may show that an identity theorem, identity certificate, or identity morphism record existed at a source prefix.

Audit identity does not prove current exact identity.

It supports audit consumers unless strengthened by accepted proof, migration, or re-verification.

## Identity and composition

Identity morphisms are consumed by composition.

For `f:A-> B`, both composites:



    id_Bo f



and:



    fo id_A



must be well-formed under composition rules.

If composition is partial, quotient, observable, approximate, audit-only, rejected, or unknown, identity laws must reflect that mode.

Composition cannot hide endpoint or domain mismatch.

## Identity and associativity

Associativity interacts with identity laws.

Expressions such as:



    ho(id_Bo f)



and:



    (ho id_B)o f



require both associativity and identity-law evidence.

If identity laws are quotient-only or approximate, the associativity conclusions must remain in that mode unless strengthened.

## Identity and functors

A functor preserves identity when:



    F(id_A)=id_{F(A)}



This law requires that `F(A)` is a well-formed object, `F(id_A)` is a well-formed morphism, and the target identity morphism is certified.

A functor object map and morphism map do not prove identity preservation by naming convention.

Functor identity preservation is a theorem.

## Identity and naturality

Naturality uses identity morphisms when the morphism `f` is `id_A`.

A naturality square for identity should reduce to component compatibility only when identity laws and functor identity preservation are certified.

Repeated object labels in the square are insufficient.

Identity-based naturality simplification must be proof-backed.

## Identity and endpoints

Identity endpoints are both `A`.

This requires endpoint identity, not label repetition.

The endpoint record must show that the source endpoint and target endpoint are the same object in the same categorical context, epoch, dependency closure, proof boundary, and replay regime.

If endpoint equality is quotient or observable, the identity morphism is correspondingly weakened.

## Identity and domain

The identity domain is ordinarily the full admissible source region.

A theorem may state:



    Domain_{id_A}(x)<=ftrightarrow ObjectValueAdmissible_A(x)



or another explicit domain relation.

Identity-domain totality must be certified.

A runtime identity function accepting arbitrary inputs does not prove categorical identity domain.

## Identity and codomain

The identity codomain is ordinarily the full admissible target region.

A theorem may state:



    Codomain_{id_A}(x)<=ftrightarrow ObjectValueAdmissible_A(x)



or another explicit codomain relation.

Identity-codomain admissibility must be certified.

Target-object membership alone is insufficient.

## Identity and partiality

The ordinary identity morphism is total and defined on admissible source values.

If partiality exists, it must be explicit:



    PartialIdentity(A,D)



or equivalent.

A partial identity is not the ordinary categorical identity unless the category is restricted to the domain `D`.

Undefinedness cannot become identity output.

## Identity and equality

Identity laws are equality-sensitive.

If morphism equality changes, identity-law statements may change.

A theorem proving identity under one equality notion cannot be reused under another equality notion without equality migration or compatibility evidence.

Raw equality, quotient equality, observable equality, approximate equality, replay equality, and audit identity must remain distinct.

## Identity and equivalence

Identity may be characterized up to equivalence.

This is weaker than exact identity.

If:



    id_Bo f~ f



then consumers must accept `~`.

Equivalence-based identity laws require congruence and equivalence laws.

They cannot be consumed as exact equalities by default.

## Identity and congruence

Identity morphisms must respect object and morphism equality or equivalence when used in quotienting, composition, functoriality, or path coherence.

A congruence theorem may state:



    A~ A'=> id_A~ id_{A'}



The relation and mode must be explicit.

Congruence is not automatic.

## Identity and quotienting

A quotient category requires identity compatibility with object and morphism quotient relations.

The identity morphism must descend to quotient representatives independently of representative choice.

This requires representative independence and morphism congruence.

Without it, quotient identity is not well-defined.

## Identity and migration

Identity morphisms may migrate across epochs:



    id_{A_e}<=adsto id_{A_{e'}}



Migration must preserve or explicitly weaken object identity, endpoints, domain, codomain, action law, partiality, equality relation, equivalence relation, identity laws, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Same object label at target epoch is insufficient.

## Identity and refinement

Identity morphisms may refine when objects refine.

A refined identity may act on a refined object, projected object, reconstructed object, or approximation.

Refinement is not migration.

If epoch changes, identity migration is also required.

A refined identity is not necessarily equal to the source identity.

## Identity invalidation

Identity claims may become stale if object identity, endpoint admissibility, domain predicate, codomain predicate, partiality policy, equality relation, equivalence relation, composition law, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old identity claim remains audit content.

## Identity status

Identity status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted identity for audit does not imply accepted exact identity for proof.

## Identity audit

Identity audit links connect identity morphism claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, or history prefixes.

Audit links are traceability only.

They do not prove identity laws unless paired with accepted identity certificates.

## Identity certificates

Identity certificates may prove:



    IdentityMorphism(id_A,A)





    id_A:A-> A





    Domain_{id_A}=Admissible_A





    Codomain_{id_A}=Admissible_A





    id_Bo f=f





    fo id_A=f





    F(id_A)=id_{F(A)}



or identity equality, equivalence, congruence, migration, refinement, invalidation, freshness, dependency closure, audit, replay, and path-coherence claims.

Only accepted certificates discharge identity obligations.

## Identity and trusted boundaries

A trusted boundary may certify an identity claim only if its trusted statement includes that claim.

A trusted runtime no-op may certify a runtime behavior.

It does not certify categorical identity unless source, target, domain, codomain, partiality, equality, dependencies, epoch, and replay are included in the trusted statement.

Boundary overreach is rejected.

## Identity and proof boundaries

Identity proofs may depend on Lean kernel assumptions, axioms, equality infrastructure, object identity infrastructure, morphism composition infrastructure, quotient laws, replay procedures, or trusted boundaries.

Those dependencies must be recorded.

Changing proof boundary may stale identity certificates.

## Identity and epochs

Identity morphisms are epoch-indexed.

An identity morphism at epoch `e`:



    id_{A,e}



is not automatically the identity morphism at epoch `e'`:



    id_{A,e'}



Cross-epoch identity use requires object epoch migration, identity migration, equality migration, dependency migration, certificate migration, proof-boundary migration, and replay preservation.

## Identity and applications

Application-specific identity morphisms belong outside this abstract file.

`MorphismIdentity.lean` may define generic hooks for application-instantiated identities.

It must not define concrete application identity functions, bitmap identity transforms, matrix identity maps, token identity maps, image identity maps, hash constants, Feistel identity maps, UI no-ops, or runtime payload identity.

## Identity and `none`

No identity rule may treat `none`, `null`, missing input, missing output, or absent runtime binding as a mathematical default.

Identity on absence is only meaningful if absence is explicitly part of the object and equality relation.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

Identity cannot install defaults.

## Identity equality

Two identity-morphism records are equal only if object, identity morphism, source endpoint, target endpoint, domain, codomain, partiality, left law, right law, equality mode, equivalence mode, proof mode, scope, prefix, epoch, dependencies, certificates, status, invalidations, proof boundary, trusted boundary, audit links, and replay behavior coincide.

Same object label is insufficient.

Same no-op implementation is insufficient.

## Identity equivalence

Identity-morphism records may be equivalent under declared relation.

Examples include quotient identity equivalence, observable identity equivalence, approximate identity equivalence, replay identity equivalence, audit identity equivalence, migrated identity equivalence, refined identity equivalence, or path identity equivalence.

Equivalence is not equality.

Consumers must state which identity equivalence they accept.

## Identity path coherence

If multiple construction paths produce an identity morphism, path coherence may be required.

Without path coherence, the identity path is part of identity evidence.

Path-coherence certificates must record paths, objects, endpoints, modes, scopes, epochs, dependencies, certificates, invalidations, audit references, and replay behavior.

## Epoch rule

`MorphismIdentity.lean` artifacts are epoch-indexed by:

- morphism-identity schema epoch;
- object-identity epoch;
- endpoint-admissibility epoch;
- identity-morphism record epoch;
- domain-policy epoch;
- codomain-policy epoch;
- partiality-policy epoch;
- left-identity-law epoch;
- right-identity-law epoch;
- morphism-equality epoch;
- morphism-equivalence epoch;
- composition-law epoch;
- functoriality-policy epoch;
- dependency-record epoch;
- status epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- trusted-boundary epoch;
- audit-reference epoch;
- invalidation-policy epoch;
- replay-schema epoch.

Changing any component may stale downstream identity claims.

The old identity artifact remains audit content.

## History relation

A history record depending on `MorphismIdentity.lean` must record:

1. source file identity;
2. declaration identity;
3. identity object;
4. identity morphism;
5. source and target endpoints;
6. domain and codomain predicates;
7. partiality policy;
8. left and right identity laws where used;
9. equality or equivalence mode;
10. proof mode and scope;
11. prefix and epoch;
12. dependency closure;
13. certificates;
14. status;
15. invalidation behavior;
16. proof boundary;
17. trusted boundary where used;
18. audit reference;
19. replay data.

The repeated object label or no-op runtime function alone is insufficient.

## Replay rule

Replay of `MorphismIdentity.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, and `MorphismPartiality.lean`;
3. reconstructing identity-morphism declarations;
4. reconstructing endpoint admissibility, total domain, codomain admissibility, partiality, identity action or relation, left and right identity laws, equality variants, and equivalence variants;
5. checking identity interaction with composition, associativity, functors, naturality, quotienting, migration, refinement, invalidation, certificates, epochs, audit, and replay;
6. checking proof objects or trusted boundaries where present;
7. checking that runtime no-ops and repeated labels are not treated as identity morphisms;
8. checking that no runtime code or application constants are introduced;
9. checking dependency closure and audit metadata.

If any step fails, downstream identity claims are not replay-admissible.

## Runtime representation

`MorphismIdentity.lean` may lower to:

- Lean identity-morphism declarations;
- endpoint-admissibility theorem metadata;
- identity-domain theorem metadata;
- identity-codomain theorem metadata;
- left-identity theorem metadata;
- right-identity theorem metadata;
- identity-equivalence descriptors;
- identity-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not identity-morphism identity.

Identity depends on object, endpoints, domain, codomain, partiality, laws, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let a runtime no-op exist, or let the same object label appear twice.

This does not imply an identity morphism exists.

An identity morphism exists only when object identity, endpoint admissibility, total domain, codomain admissibility, identity action or relation, left and right identity laws, dependencies, certificates, epoch, proof boundary, trusted boundary, audit references, invalidations, and replay behavior are accepted for the required scope and mode.

Thus runtime no-ops and repeated labels are insufficient for identity morphisms.

## Proof obligation

`MorphismIdentity.lean` is admissible only if the framework can certify:

1. identity arrows are typed as `id_A:A-> A`;
2. object and endpoint admissibility are explicit;
3. total domain is certified;
4. codomain admissibility is certified;
5. partiality is explicit if identity is restricted;
6. left and right identity laws are explicit;
7. equality and equivalence variants are distinguished;
8. quotient, observable, approximate, replay, and audit identities are weaker than exact identity;
9. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
10. runtime no-ops and repeated labels are excluded as identity evidence;
11. application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismIdentity.lean` may not define concrete carrier identities, concrete spectrum identities, authority identities, tensor identity kernels, sheaf identity restrictions, operator identity actions, history identity appends, migration identities, refinement identities, application identity functions, runtime no-ops, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-identity infrastructure.

## Commitment rule

`MorphismIdentity.lean` may define identity arrows and identity laws.

It cannot make runtime no-ops identity morphisms.

It cannot make repeated labels identity evidence.

It cannot infer endpoint admissibility from object names.

It cannot infer total domain from function syntax.

It cannot infer codomain admissibility from returned values.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
