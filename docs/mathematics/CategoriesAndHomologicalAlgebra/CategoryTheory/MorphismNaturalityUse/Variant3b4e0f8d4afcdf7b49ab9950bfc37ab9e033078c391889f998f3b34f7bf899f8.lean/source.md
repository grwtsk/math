# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismNaturalityUse.Variant3b4e0f8d4afcdf7b49ab9950bfc37ab9e033078c391889f998f3b34f7bf899f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `063a87074a536639aabf8fa5e0d1dffcde02890c` · SHA-256 `3b4e0f8d4afcdf7b49ab9950bfc37ab9e033078c391889f998f3b34f7bf899f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# MorphismNaturalityUse.lean


## Role

`MorphismNaturalityUse.lean` defines how morphisms are used inside naturality squares.

It specifies the morphism-side infrastructure required to form, type, compare, certify, audit, migrate, invalidate, and replay naturality-square path claims.

For functors:



 F,G:C-> D



a natural transformation:



 eta:F=> G



and a morphism:



 f:A-> B



the naturality square compares:



 G(f) o eta_A



with:



 eta_B o F(f)



The file does not define natural transformations as primary objects.

It defines the morphism-use obligations required when a naturality square consumes morphisms, functor images, component maps, and compositions.

A displayed commutative diagram is not proof.

A square drawn with matching labels is not proof.

A runtime pipeline comparison is not proof.

## Core principle

A naturality-use claim is admissible only when all morphisms appearing in the square are well-formed, endpoint-compatible, domain-compatible, codomain-compatible, partiality-compatible, dependency-fresh, epoch-compatible, certificate-supported, audit-linked, and replay-admissible for the required mode and scope.

The schematic square is:



 F(A) --F(f)--> F(B)
 eta_A down        down eta_B
 G(A) --G(f)--> G(B)



The equality condition is:



 G(f) o eta_A=eta_B o F(f)



or a declared weaker equivalence.

The square itself is not evidence.

## Formal shape

A morphism-naturality-use record has schematic form:



 MorphismNaturalityUse=(transformation,F,G,f,A,B,Ff,Gf,eta_A,eta_B,leftPath,rightPath,endpointCompatibility,domainCompatibility,codomainCompatibility,partialityCompatibility,pathComparison,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `transformation` identifies the natural-transformation context;
- `F` and `G` identify the functors;
- `f` records the source morphism `f:A-> B`;
- `A` and `B` record the source and target objects of `f`;
- `Ff` records `F(f):F(A)-> F(B)`;
- `Gf` records `G(f):G(A)-> G(B)`;
- `eta_A` records the component morphism `eta_A:F(A)-> G(A)`;
- `eta_B` records the component morphism `eta_B:F(B)-> G(B)`;
- `leftPath` records `G(f) o eta_A`;
- `rightPath` records `eta_B o F(f)`;
- `endpointCompatibility` records compatibility of all square endpoints;
- `domainCompatibility` records compatibility of both composed path domains;
- `codomainCompatibility` records compatibility of both composed path codomains;
- `partialityCompatibility` records definedness compatibility of both paths;
- `pathComparison` records equality or equivalence between the two paths;
- `mode` records exact, quotient, observable, approximate, replay, audit, summary, checkpoint, partial, trusted-boundary, rejected, unknown, or research-obligated mode;
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

The record is a naturality-square morphism-use claim.

It is not a diagram object by itself.

## Source morphism

The source morphism is:



 f:A-> B



It must be a well-formed `CategoryMorphism`.

It must have accepted source endpoint, target endpoint, witness, domain, codomain, partiality, dependencies, certificates, epoch, proof boundary, audit links, and replay behavior.

A morphism label `f` in a diagram is insufficient.

A runtime function used in a square is insufficient.

## Functor images

The square requires functor images:



 F(f):F(A)-> F(B)



and:



 G(f):G(A)-> G(B)



These images must be valid morphisms.

They must satisfy functoriality obligations from `MorphismFunctoriality.lean`, including endpoint transport, identity preservation where relevant, composition preservation where relevant, domain transport, codomain transport, partiality transport, equality or equivalence preservation, dependencies, certificates, epoch, and replay behavior.

A mapping-table entry for `f` is insufficient.

## Component morphisms

The component morphisms are:



 eta_A:F(A)-> G(A)



and:



 eta_B:F(B)-> G(B)



Each component must be a well-formed morphism.

Each must have typed endpoints, domain, codomain, partiality, witness, dependencies, certificates, epoch, proof boundary, trusted boundary where used, audit links, invalidations, and replay behavior.

A vertical arrow drawn in a square is not a component proof.

## Left path

The left path is:



 G(f) o eta_A:F(A)-> G(B)



It is valid only when the target endpoint of `eta_A`, namely `G(A)`, is compatible with the source endpoint of `G(f)`, also `G(A)`, under the required endpoint relation.

The left path must have an explicit composed domain, composed codomain, partiality propagation, composition law, dependencies, certificates, epoch, and replay behavior.

The notation alone does not form a valid path.

## Right path

The right path is:



 eta_B o F(f):F(A)-> G(B)



It is valid only when the target endpoint of `F(f)`, namely `F(B)`, is compatible with the source endpoint of `eta_B`, also `F(B)`, under the required endpoint relation.

The right path must have an explicit composed domain, composed codomain, partiality propagation, composition law, dependencies, certificates, epoch, and replay behavior.

The notation alone does not form a valid path.

## Path comparison

Naturality use compares the two path morphisms:



 G(f) o eta_A



and:



 eta_B o F(f)



Exact naturality use requires:



 G(f) o eta_A=eta_B o F(f)



under exact morphism equality.

Weaker naturality use may require quotient, observable, approximate, replay, audit, summary, checkpoint, migrated, refined, or path-based equivalence.

The comparison relation must be declared.

## Endpoint compatibility

Both paths must have the same source and target endpoints under the declared comparison:



 src(G(f) o eta_A)=F(A)





 src(eta_B o F(f))=F(A)





 tgt(G(f) o eta_A)=G(B)





 tgt(eta_B o F(f))=G(B)



Endpoint compatibility must be certified.

Matching labels in a diagram are insufficient.

## Domain compatibility

The domains of both paths must match or be related.

Exact naturality use requires:



 D_{G(f) o eta_A}(x)<=> D_{eta_B o F(f)}(x)



for all relevant `x`.

If the square is partial, the theorem must state the common domain or one-sided inclusion.

If the domains match only after quotienting, observation, approximation, or restriction, the naturality-use mode must reflect that.

## Codomain compatibility

The codomains of both paths must match or be related.

Exact naturality use requires both path outputs to be admissible in the same target-side codomain predicate over `G(B)`.

A weaker claim may compare quotient codomains, observable codomains, approximate codomains, replay codomains, or audit codomains.

Target endpoint equality alone does not prove codomain compatibility.

## Partiality compatibility

Naturality use must account for partiality on both paths.

The following must agree or be related:

- definedness;
- undefinedness;
- rejection;
- unknown status;
- selected behavior;
- stochastic behavior;
- fallback behavior;
- audit-only behavior;
- research-obligated behavior.

If one side of the square is defined and the other is undefined, exact naturality fails.

If both sides are defined only on a shared restricted domain, naturality is partial.

## Exact naturality use

Exact naturality use states:



 G(f) o eta_A=eta_B o F(f)



as exact morphism equality.

It requires exact functorial images, exact component morphisms, exact compositions, exact endpoint compatibility, exact domain compatibility, exact codomain compatibility, exact partiality compatibility, exact path comparison, dependency freshness, accepted certificates, epoch compatibility, and replay admissibility.

Exact naturality cannot be inferred from a displayed commutative square.

## Quotient naturality use

Quotient naturality compares path classes:



 [G(f) o eta_A]=[eta_B o F(f)]



It supports quotient consumers only.

It requires quotient endpoints, quotient morphisms, quotient-domain compatibility, quotient-codomain compatibility, quotient-partiality compatibility, representative independence, composition congruence, functorial quotient compatibility, component descent, certificates, and replay behavior.

Quotient naturality cannot support representative-sensitive claims without recovery evidence.

## Observable naturality use

Observable naturality compares declared observables of the two paths:



 Obs(G(f) o eta_A)=Obs(eta_B o F(f))



It supports observable consumers only.

It does not prove hidden path equality unless observables are faithful and faithfulness is certified.

The observable map, retained information, lost information, dependencies, certificates, epoch, and replay behavior must be recorded.

## Approximate naturality use

Approximate naturality compares paths up to error:



 d(G(f) o eta_A,eta_B o F(f))<=epsilon



or pointwise:



 d((G(f) o eta_A)(x),(eta_B o F(f))(x))<=epsilon(x)



The metric, tolerance, error propagation, common domain, target codomain, dependencies, certificates, epoch, and replay behavior must be explicit.

Approximate naturality cannot discharge exact naturality obligations.

## Replay naturality use

Replay naturality states that replay reconstructs the two paths and their comparison:



 Replay(G(f) o eta_A)~ Replay(eta_B o F(f))



under a declared replay comparison.

Replay must reconstruct functor images, components, compositions, endpoints, domains, codomains, partiality, path comparison, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and epoch.

A stored diagram or cached outputs are insufficient.

## Audit naturality use

Audit naturality records historical provenance of a naturality claim.

It may show that a square, certificate, proof object, replay manifest, verifier result, or history record existed at a prefix.

Audit naturality does not prove current naturality.

It supports audit consumers unless strengthened by accepted proof, migration, or re-verification.

## Summary naturality use

Summary naturality compares summaries of the two paths.

It must record summary function, retained information, omitted information, sufficiency scope, dependencies, certificates, epoch, and replay behavior.

Summary naturality cannot support raw path equality unless summary sufficiency or reconstruction is certified.

## Checkpoint naturality use

Checkpoint naturality compares materialized replay states of the two paths.

It must record checkpoint payloads, covered morphisms, covered endpoints, covered domains and codomains, dependency closure, invalidation policy, certificates, epoch, and replay scope.

A cached pair of path outputs is not checkpoint naturality unless checkpoint validity is certified.

## Rejected naturality use

Naturality use may be rejected.

Reasons include invalid source morphism, invalid functor image, invalid component morphism, invalid path composition, endpoint mismatch, domain mismatch, codomain mismatch, partiality mismatch, rejected certificate, stale dependency, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected naturality use is audit content.

It is not usable naturality evidence.

## Unknown naturality use

Unknown naturality use records that the square cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block natural-transformation claims, functorial reasoning, quotienting, replay, migration, refinement, or certificate reuse.

Unknown must not be treated as approximate or audit-only success.

## Research-obligated naturality use

Research-obligated naturality use records a required but unproven naturality square.

It must identify transformation, functors, source morphism, component morphisms, functor images, both paths, missing compatibility or comparison evidence, dependencies, mode, scope, epoch, blocked consumer, and replay context.

It does not prove naturality.

It prevents silent use of a displayed square as proof.

## Naturality and identity morphisms

When `f=id_A`, the square compares:



 G(id_A) o eta_A



with:



 eta_A o F(id_A)



Reduction to `eta_A` requires functorial identity preservation and identity laws for composition.

The simplification is not syntactic.

It must cite identity and functoriality certificates.

## Naturality and composition

Naturality over a composite `g o f` may be derived from naturality over `f` and `g`, functoriality, composition preservation, and associativity.

Such derivations require explicit dependencies.

A diagram chase must be represented as certified composition, associativity, identity, functoriality, and equality or equivalence steps.

## Naturality and associativity

Naturality derivations often reassociate paths.

Each reassociation requires an associativity certificate under the relevant mode.

If associativity is quotient-only, observable-only, approximate, audit-only, rejected, or unknown, the derived naturality-use claim must reflect that mode.

Syntactic reassociation of paths is insufficient.

## Naturality and equality

Exact naturality use produces or consumes morphism equality.

The equality claim must include endpoints, witnesses, domains, codomains, partiality, dependencies, certificates, epochs, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Equality of labels on two paths is insufficient.

## Naturality and equivalence

Naturality may be stated under morphism equivalence.

A theorem may have form:



 G(f) o eta_A~eta_B o F(f)



This supports only consumers that accept `~`.

Equivalence-based naturality cannot be consumed as exact equality without strengthening evidence.

## Naturality and congruence

Naturality use must respect congruence.

If:



 f~ f'



then naturality for `f` may transfer to naturality for `f'` only if functor images, component morphisms, composition, endpoints, domains, codomains, partiality, and path comparison are congruent under the relation.

Congruence is not automatic.

## Naturality and quotienting

A naturality square may descend to a quotient only if all component morphisms, functor images, path compositions, domains, codomains, and partiality policies are quotient-compatible.

Representative independence is required.

A quotient naturality square cannot be justified by quotient-class labels alone.

## Naturality and stochastic morphisms

If any morphism in the square is stochastic, naturality must compare distributions or stochastic kernels, not sampled outputs.

A law may compare pushed-forward kernels along the two paths.

Support, normalization, probability carrier, randomness boundary, certificates, epoch, and replay behavior must be explicit.

Sample-path agreement is insufficient.

## Naturality and selected morphisms

If any morphism in the square is selected from a relation, naturality must compare selected outputs under a replayable selection policy.

Selection coherence must be certified.

Runtime order, branch order, hash order, or first-success behavior cannot silently define the naturality square.

## Naturality and dependencies

Naturality use depends on source morphism, source and target objects, functors, object maps, morphism maps, component morphisms, functor images, both compositions, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, equality or equivalence relation, proof modes, scopes, statuses, epochs, certificates, proof boundaries, trusted boundaries, audit links, invalidation policies, and replay parameters.

Hidden dependencies invalidate naturality replay.

## Naturality and epochs

Naturality use is epoch-indexed.

A naturality square valid at epoch `e` is not automatically valid at epoch `e'`.

Cross-epoch naturality use requires migration of functors, source morphism, component morphisms, functor images, compositions, endpoints, domains, codomains, partiality, equality or equivalence relations, dependencies, certificates, proof boundary, audit links, and replay behavior.

Same diagram labels across epochs are insufficient.

## Naturality migration

Naturality-use migration relates source and target naturality-use records:



 NatUse_e(f,eta,F,G) leads-to NatUse_{e'}(f',eta',F',G')



Migration must preserve or explicitly weaken functors, source morphism, component morphisms, functor images, paths, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, path comparison, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

A migrated functor map does not automatically migrate naturality use.

## Naturality refinement

Naturality-use refinement may sharpen path comparison, restrict domains, strengthen codomains, reduce approximation error, improve dependency closure, replace trusted boundaries, or add replay metadata.

Refinement is not migration.

If epoch changes, naturality migration evidence is also required.

A refined naturality-use proof is not automatically equal to the source proof.

## Naturality invalidation

Naturality-use claims may become stale if any of the following changes:

- source morphism;
- functor object map;
- functor morphism map;
- component morphism;
- functor image;
- path composition;
- endpoint compatibility;
- domain compatibility;
- codomain compatibility;
- partiality compatibility;
- equality relation;
- equivalence relation;
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

The old naturality-use claim remains audit content.

## Naturality status

Naturality-use status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted naturality for audit does not imply accepted exact naturality for proof.

## Naturality audit

Naturality audit links connect naturality-use claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, verifier exports, extraction artifacts, diagrams, or history prefixes.

Audit links provide traceability.

They do not prove naturality unless paired with accepted naturality certificates.

## Naturality replay

Naturality replay reconstructs transformation context, functors, source morphism, source and target objects, functor images, component morphisms, both path compositions, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, path comparison, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

A displayed diagram is not replay.

A stored square image is not replay.

A cached path output is not naturality evidence.

## Naturality certificates

Naturality-use certificates may prove:



 NaturalityUse(eta,F,G,f)





 G(f) o eta_A=eta_B o F(f)





 G(f) o eta_A~eta_B o F(f)



or functor-image validity, component validity, left-path validity, right-path validity, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, quotient naturality, observable naturality, approximate naturality, replay naturality, audit naturality, migration, refinement, invalidation, freshness, dependency closure, audit, replay, and path-coherence claims.

Only accepted certificates discharge naturality-use obligations.

## Naturality and trusted boundaries

A trusted boundary may certify naturality only if its trusted statement includes the naturality-square claim and all required path-comparison obligations.

A trusted diagram renderer may certify that a diagram was drawn.

It does not certify commutativity.

A trusted runtime comparison may certify sampled path outputs.

It does not certify naturality unless the statement includes full morphism semantics under the required mode and scope.

Boundary overreach is rejected.

## Naturality and proof boundaries

Naturality proofs may depend on functoriality laws, component-map laws, composition laws, associativity, identity laws, equality infrastructure, equivalence infrastructure, quotient laws, extensionality principles, replay procedures, extraction procedures, or trusted boundaries.

Those proof boundaries must be recorded.

Changing proof boundary may stale naturality certificates.

## Naturality and applications

Application-specific naturality squares belong outside this abstract file.

`MorphismNaturalityUse.lean` may define generic hooks for application-instantiated naturality use.

It must not define concrete application diagrams, bitmap naturality squares, matrix naturality squares, token naturality squares, image-processing squares, hash constants, Feistel squares, UI event diagrams, runtime callback diagrams, or payload-routing diagrams.

## Naturality and `none`

No naturality-use rule may treat `none`, `null`, missing component, missing functor image, absent runtime binding, missing path output, or undefined intermediate value as a mathematical default.

If a square path is undefined, rejected, unknown, fallback-mediated, audit-only, or research-obligated, this must be explicit.

Undefined path values cannot silently commute.

## Epoch rule

`MorphismNaturalityUse.lean` artifacts are epoch-indexed by:

- naturality-use schema epoch;
- transformation-context epoch;
- functor epoch;
- object-map epoch;
- morphism-map epoch;
- source-morphism epoch;
- functor-image epoch;
- component-morphism epoch;
- path-composition epoch;
- endpoint-compatibility epoch;
- domain-compatibility epoch;
- codomain-compatibility epoch;
- partiality-compatibility epoch;
- path-comparison epoch;
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

Changing any component may stale downstream naturality-use claims.

The old naturality-use artifact remains audit content.

## History relation

A history record depending on `MorphismNaturalityUse.lean` must record:

1. source file identity;
2. declaration identity;
3. transformation context;
4. functors `F` and `G`;
5. source morphism `f`;
6. objects `A` and `B`;
7. functor images `F(f)` and `G(f)`;
8. component morphisms `eta_A` and `eta_B`;
9. left path `G(f) o eta_A`;
10. right path `eta_B o F(f)`;
11. endpoint compatibility;
12. domain compatibility;
13. codomain compatibility;
14. partiality compatibility;
15. path comparison;
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

The displayed commutative diagram alone is insufficient.

## Replay rule

Replay of `MorphismNaturalityUse.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, `MorphismPartiality.lean`, `MorphismIdentity.lean`, `MorphismComposition.lean`, `MorphismAssociativity.lean`, `MorphismEquality.lean`, `MorphismEquivalence.lean`, `MorphismCongruence.lean`, `MorphismQuotient.lean`, and `MorphismFunctoriality.lean`;
3. reconstructing naturality-use declarations;
4. reconstructing transformation context, functors, source morphism, functor images, component morphisms, and both path compositions;
5. checking endpoint, domain, codomain, and partiality compatibility;
6. checking exact, quotient, observable, approximate, replay, audit, summary, checkpoint, rejected, unknown, and research-obligated naturality-use variants;
7. checking identity, composition, associativity, equality, equivalence, congruence, quotienting, migration, refinement, invalidation, certificates, epochs, audit, and replay interactions;
8. checking proof objects or trusted boundaries where present;
9. checking that displayed commutative diagrams are not treated as proof;
10. checking that no runtime code or application constants are introduced;
11. checking dependency closure and audit metadata.

If any step fails, downstream naturality-use claims are not replay-admissible.

## Runtime representation

`MorphismNaturalityUse.lean` may lower to:

- Lean naturality-use theorem statements;
- square descriptors;
- functor-image descriptors;
- component-morphism descriptors;
- path-composition descriptors;
- endpoint-compatibility descriptors;
- domain-compatibility descriptors;
- codomain-compatibility descriptors;
- partiality-compatibility descriptors;
- path-comparison descriptors;
- naturality-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not naturality proof.

Naturality-use identity depends on transformation context, functors, source morphism, functor images, component morphisms, paths, compatibility relations, comparison relation, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let a commutative diagram be displayed, or let two runtime paths appear to produce matching sampled outputs.

This does not imply naturality.

Naturality use holds only when functor images, component morphisms, both path compositions, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, path comparison, dependencies, certificates, epochs, proof boundaries, trusted boundaries, audit links, invalidations, and replay behavior are accepted for the required mode and scope.

Thus displayed commutative diagrams are insufficient as proof.

## Proof obligation

`MorphismNaturalityUse.lean` is admissible only if the framework can certify:

1. functor images `F(f)` and `G(f)` are valid morphisms;
2. component morphisms `eta_A` and `eta_B` are valid morphisms;
3. both square paths are valid compositions;
4. endpoint compatibility is explicit;
5. domain compatibility is explicit;
6. codomain compatibility is explicit;
7. partiality compatibility is explicit;
8. path comparison is explicit;
9. exact, quotient, observable, approximate, replay, audit, summary, checkpoint, rejected, unknown, and research-obligated variants are distinct;
10. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
11. displayed commutative diagrams are excluded as proof;
12. application constants are excluded;
13. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismNaturalityUse.lean` may not define concrete application naturality squares, bitmap naturality diagrams, matrix naturality diagrams, token naturality diagrams, image-processing diagrams, hash constants, Feistel diagrams, UI event diagrams, runtime callback diagrams, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, UI constants, or frame payloads.

It defines only abstract categorical morphism-naturality-use infrastructure.

## Commitment rule

`MorphismNaturalityUse.lean` may define how morphisms are used inside naturality squares.

It cannot treat displayed commutative diagrams as proof.

It cannot use unresolved functor images.

It cannot use unresolved component morphisms.

It cannot compare paths without forming valid compositions.

It cannot ignore endpoint, domain, codomain, or partiality compatibility.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached path outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
