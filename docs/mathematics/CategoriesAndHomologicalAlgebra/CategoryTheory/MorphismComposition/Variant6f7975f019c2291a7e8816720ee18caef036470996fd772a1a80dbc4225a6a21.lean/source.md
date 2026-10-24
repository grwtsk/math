# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismComposition.Variant6f7975f019c2291a7e8816720ee18caef036470996fd772a1a80dbc4225a6a21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6b9bcfe0d120026763b30e332c5d682433b5435` · SHA-256 `6f7975f019c2291a7e8816720ee18caef036470996fd772a1a80dbc4225a6a21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# MorphismComposition.lean


## Role

`MorphismComposition.lean` defines categorical morphism-composition infrastructure.

It specifies typed composition:



    g o f:A-> C



from:



    f:A-> B



and:



    g:B-> C



or from morphisms whose intermediate endpoints are related by accepted equality, equivalence, quotient compatibility, observable compatibility, migration, refinement, or another declared compatibility relation.

Composition is not runtime function piping.

It is not implementation call sequencing.

It is not chaining callbacks.

It is not a pipeline operator.

It is a typed categorical construction with endpoint compatibility, composed domains, composed codomains, partiality propagation, equality or equivalence mode, dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior.

## Core principle

A composition judgment is admissible only when all component morphisms and intermediate endpoints are admissible for the required mode and scope.

The basic exact form is:



    f:A-> B





    g:B-> C





    g o f:A-> C



The intermediate object `B` must match as the target of `f` and source of `g`, or the mismatch must be resolved by a certified compatibility relation.

Same object label is insufficient.

Same runtime type is insufficient.

Same implementation signature is insufficient.

## Formal shape

A morphism-composition record has schematic form:



    MorphismComposition=(left,right,composite,source,intermediate,target,endpointCompatibility,domain,codomain,partiality,compositionLaw,equalityMode,equivalenceMode,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `left` records the first morphism `f:A-> B`;
- `right` records the second morphism `g:B-> C`;
- `composite` records `g o f:A-> C`;
- `source` records `A`;
- `intermediate` records the endpoint compatibility between `B` and the source of `g`;
- `target` records `C`;
- `endpointCompatibility` records exact, quotient, observable, approximate, migrated, refined, rejected, unknown, or audit-only endpoint compatibility;
- `domain` records the composed domain;
- `codomain` records the composed codomain;
- `partiality` records propagated definedness and undefinedness behavior;
- `compositionLaw` records the semantic composition rule;
- `equalityMode` records exact equality where used;
- `equivalenceMode` records weaker equality variants;
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

The record defines categorical composition.

It does not define runtime function sequencing.

## Typed composition

Typed composition requires:



    f in  Hom(A,B)





    g in  Hom(B,C)



and then yields:



    g o f in  Hom(A,C)



The source of the composite is the source of `f`.

The target of the composite is the target of `g`.

The intermediate target of `f` and source of `g` must be compatible under the declared relation.

Composition cannot be formed from untyped arrows.

## Intermediate endpoint compatibility

For:



    f:A-> B



and:



    g:C-> D



composition requires compatibility between `B` and `C`.

Exact composition requires:



    B=C



or accepted object-identity equality.

Weaker composition may allow:



    B~ C



under quotient, observable, approximate, migrated, refined, replay, or audit equivalence.

The resulting composite inherits the corresponding mode.

Endpoint compatibility must be explicit.

## Source endpoint of the composite

The source endpoint of:



    g o f



is the source endpoint of `f`:



    src(g o f)=src(f)=A



This requires `A` to be endpoint-admissible for the composite scope.

If `A` is stale, rejected, unknown, audit-only, display-only, or weaker than required, the composite morphism must be rejected, weakened, or research-obligated.

## Target endpoint of the composite

The target endpoint of:



    g o f



is the target endpoint of `g`:



    tgt(g o f)=tgt(g)=C



This requires `C` to be endpoint-admissible for the composite scope.

Target endpoint admissibility is not inferred from runtime output type.

Target endpoint labels are insufficient.

## Composite witness

The composite witness is formed from the witnesses of `f` and `g`.

For functional witnesses:



    (g o f)(x)=g(f(x))



where both sides are defined.

For relational witnesses:



    R_{g o f}(x,z):=exists y,\ R_f(x,y) and  R_g(y,z)



with domain, codomain, and partiality constraints.

The chosen witness form must be explicit.

Runtime pipeline syntax is not a witness.

## Functional composition

For total functional morphisms:



    f:X_A-> X_B





    g:X_B-> X_C



the composite may be:



    g o f:X_A-> X_C



Total functional composition requires totality certificates for `f` and `g`, endpoint compatibility, codomain-to-domain compatibility, dependency freshness, and replay evidence.

A programming-language function composition does not prove categorical functional composition.

## Partial functional composition

For partial functions:



    f:\{x:X_A//D_f(x)\}-> X_B





    g:\{y:X_B//D_g(y)\}-> X_C



the composed domain is:



    D_{g o f}(x):=D_f(x) and  D_g(f(x))



or a suitably typed equivalent.

The composite is partial unless this composed domain is certified total over the required source scope.

Partiality cannot be hidden.

## Relational composition

For relations:



    R_f:X_A-> X_B-> Prop





    R_g:X_B-> X_C-> Prop



the composite relation is:



    R_{g o f}(x,z):=exists y,\ R_f(x,y) and  R_g(y,z)



The intermediate witness `y` is proof-relevant.

If quotient, observable, approximate, or stochastic relations are used, the composition relation must record the comparison relation and retained information.

Existence of runtime output is insufficient.

## Selected composition

If either morphism uses selection, the composite selection policy must be explicit.

Selection may occur in `f`, in `g`, or after relational composition.

The selection policy must be deterministic or replayable under the declared mode.

Runtime iteration order, hash order, branch order, or first-success policy cannot silently determine composed selection.

## Stochastic composition

For stochastic morphisms with kernels:



    K_f:X_A-> Prob(X_B)





    K_g:X_B-> Prob(X_C)



composition may require kernel integration or pushforward:



    K_{g o f}(x)=int K_g(y),dK_f(x)(y)



or a finite/discrete analogue.

The probability carrier, support, normalization, randomness boundary, certificates, epoch, and replay behavior must be explicit.

Sampling `f` and then `g` is not the stochastic composite unless sampling semantics are certified.

## Composed domain

The composed domain records where the composite is defined.

For functional partial composition:



    D_{g o f}(x)=D_f(x) and  D_g(f(x))



For relational composition:



    D_{g o f}(x)=D_f(x) and  exists y,\ R_f(x,y) and  D_g(y)



or a declared stronger relation.

The composed domain must be certified.

It is not inferred from endpoint labels or source-object membership.

## Composed codomain

The composed codomain records target-side admissibility of composite outputs.

For exact functional composition, a typical law is:



    D_{g o f}(x)=> C_g(g(f(x)))



For relational composition:



    D_{g o f}(x) and  R_{g o f}(x,z)=> C_g(z)



The codomain of the composite is usually governed by the codomain of `g`, but only after intermediate definedness and target admissibility are checked.

## Intermediate codomain-to-domain condition

Composition requires that outputs of `f` are admissible inputs for `g`.

A standard condition is:



    D_f(x)=> D_g(f(x))



or, relationally:



    D_f(x) and  R_f(x,y)=> D_g(y)



This condition is not automatic from:



    f:A-> B



and:



    g:B-> C



unless the morphism records certify the intermediate compatibility.

## Partiality propagation

Composition propagates partiality.

If `f` is undefined at `x`, then `g o f` is undefined, rejected, unknown, fallback-mediated, or research-obligated according to the composition partiality policy.

If `f(x)` is defined but `g` is undefined at `f(x)`, then the composite is correspondingly partial.

Composition cannot convert undefinedness into default output.

## Rejected composition

A composition may be rejected.

Reasons include invalid endpoint compatibility, missing source or target admissibility, failed composed-domain proof, failed codomain proof, partiality mismatch, stale dependency, rejected certificate, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected composition is audit content.

It is not a usable composite morphism.

## Unknown composition

Unknown composition records that the framework cannot establish whether composition is valid.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block associativity, functoriality, naturality, replay, migration, refinement, or certificate reuse.

Unknown composition must not be treated as approximate or audit-only success.

## Research-obligated composition

Research-obligated composition records an unresolved composition claim required by a downstream consumer.

It must identify `f`, `g`, source, intermediate endpoint, target, missing compatibility evidence, missing domain or codomain evidence, dependencies, mode, scope, epoch, blocked consumer, and replay context.

It does not produce a composite morphism.

## Composition law

The composition law states how the composite relates to component morphisms.

For exact functional morphisms:



    (g o f)(x)=g(f(x))



For relational morphisms:



    R_{g o f}(x,z)<=> exists y,\ R_f(x,y) and  R_g(y,z)



or a directional inclusion where weaker mode is used.

The law must declare equality or equivalence relation, domain, codomain, partiality, dependencies, certificates, epoch, and replay behavior.

## Composition identity

The composite has its own morphism identity.

It is not merely the pair `(f,g)`.

It includes source, target, intermediate compatibility, witness, domain, codomain, partiality, mode, scope, dependencies, certificates, epoch, proof boundary, audit links, invalidations, and replay behavior.

Same component pair is insufficient if compatibility evidence or proof boundary differs.

## Composition equality

Two composition records are equal only if their component morphisms, composite morphism, endpoints, endpoint compatibility, composed domain, composed codomain, partiality, composition law, mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior coincide.

Same runtime pipeline is insufficient.

Same final output on examples is insufficient.

## Composition equivalence

Composition may be equivalent under exact, quotient, observable, approximate, replay, audit, summary, checkpoint, migrated, refined, or path-based equivalence.

Equivalence is not equality.

An equivalence-based composition law supports only consumers that accept the declared equivalence.

Exact consumers require exact composition equality or strengthening evidence.

## Quotient composition

Composition in a quotient category requires quotient compatibility of component morphisms and representative independence of the composition.

A quotient composition law may state:



    [g]o[f]=[g o f]



only when morphism equivalence and endpoint equivalence are congruent with composition.

Quotient composition cannot support representative-sensitive use without representative recovery.

## Observable composition

Observable composition preserves declared observables of composed outputs.

It may state:



    Obs((g o f)(x))=Obs(g(f(x)))



or a comparable observable law.

Observable composition supports observable consumers only.

It does not prove hidden-state composite equality unless faithfulness or recovery is certified.

## Approximate composition

Approximate composition records error accumulation.

A typical form is:



    d((g o f)(x),g(f(x)))<=epsilon



or an accumulated bound from errors of `f` and `g`.

The metric, tolerance, domain, codomain, error-propagation rule, dependencies, certificates, epoch, and replay behavior must be explicit.

Approximate composition cannot discharge exact composition obligations.

## Summary composition

Summary composition preserves only summary-level composite behavior.

It must record summary function, retained information, omitted information, sufficiency scope, dependencies, certificates, epoch, and replay behavior.

Summary composition cannot support raw morphism equality or exact associativity unless summary sufficiency or reconstruction is certified.

## Checkpoint composition

Checkpoint composition may use materialized intermediate or final replay state.

It must record checkpoint payload, covered component morphisms, covered endpoints, dependency closure, invalidation policy, certificates, epoch, and replay scope.

A cached pipeline output is not checkpoint composition unless checkpoint validity is certified.

## Composition and identity morphisms

Composition must interact with identity morphisms through left and right identity laws:



    id_B o f=f





    f o id_A=f



These laws are not part of composition by construction unless certified.

`MorphismIdentity.lean` supplies identity-morphism obligations.

`MorphismComposition.lean` supplies the composition formation needed by those laws.

## Composition and associativity

Associativity requires composition to be formed in both bracketings:



    h o (g o f)



and:



    (h o g) o f



The file must expose the prerequisites for associativity:

1. all component morphisms are well-formed;
2. both intermediate compositions are admissible;
3. composed domains are compatible;
4. composed codomains are compatible;
5. partiality behavior agrees or is related;
6. equality or equivalence mode is declared.

The associativity theorem itself belongs in `MorphismAssociativity.lean`.

## Composition and congruence

Composition must respect morphism equality or equivalence when certified:



    f~ f'
     and 
    g~ g'
    =>
    g o f~ g' o f'



The equivalence relation must include endpoint compatibility, domain behavior, codomain behavior, partiality behavior, dependencies, certificates, epochs, and replay behavior.

Congruence is not automatic.

## Composition and functors

Functoriality requires preservation of composition:



    F(g o f)=F(g) o F(f)



or a weaker equivalence.

This requires that both sides are well-formed composite morphisms in the target category.

A functor mapping table does not prove composition preservation.

Functoriality certificates must cite composition certificates.

## Composition and naturality

Naturality squares use composition on both sides:



    G(f)o eta_A



and:



    eta_B o F(f)



Each side must be a valid composition.

If either composition is partial, quotient-only, observable-only, approximate, rejected, or unknown, the naturality claim must reflect that mode.

Displayed squares are not composition proofs.

## Composition and dependencies

Composition depends on both component morphisms, endpoint objects, endpoint compatibility, domains, codomains, partiality policies, equality or equivalence relations, proof modes, scopes, statuses, epochs, certificates, proof boundaries, trusted boundaries, audit links, invalidation policies, and replay parameters.

Hidden dependencies invalidate composition replay and audit.

Lean imports alone are insufficient.

## Composition and epochs

Composition is epoch-indexed.

A composition valid at epoch `e` is not automatically valid at epoch `e'`.

Cross-epoch composition requires migration of component morphisms, endpoints, domains, codomains, partiality, equality or equivalence relations, dependencies, certificates, proof boundaries, audit links, and replay behavior.

Same morphism names across epochs are insufficient.

## Composition migration

Composition migration relates source and target composition records:



    (g_e o f_e) leads-to (g_{e'} o f_{e'})



It must preserve or explicitly weaken component morphisms, composite morphism, endpoints, endpoint compatibility, composed domain, composed codomain, partiality, composition law, equality or equivalence mode, dependencies, certificates, invalidations, audit links, and replay behavior.

Composition migration is not implied by component name reuse.

## Composition refinement

Composition refinement may sharpen composed domains, strengthen codomain guarantees, reduce approximation error, improve dependency closure, replace trusted boundaries, or add replay metadata.

Refinement is not migration.

If epoch changes, composition migration evidence is also required.

A refined composite is not automatically equal to the source composite.

## Composition invalidation

Composition claims may become stale if any component morphism, endpoint, endpoint compatibility relation, domain predicate, codomain predicate, partiality policy, equality relation, equivalence relation, composition law, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old composition claim remains audit content.

## Composition status

Composition status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted composition for audit does not imply accepted exact composition for proof.

## Composition audit

Composition audit links connect composition claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, verifier exports, extraction artifacts, or history prefixes.

Audit links are traceability only.

They do not prove composability or the composition law unless paired with accepted certificates.

## Composition replay

Composition replay reconstructs component morphisms, endpoint objects, endpoint compatibility, composite morphism, composed domain, composed codomain, partiality, composition law, equality or equivalence mode, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

A runtime call sequence is not composition replay.

A cached pipeline output is not composition replay.

## Runtime piping non-collapse

Runtime function piping:



    x|-> g(f(x))



does not prove categorical composition.

It may show an implementation call sequence.

Categorical composition requires typed morphisms, endpoint compatibility, domain and codomain compatibility, partiality propagation, certificates, dependencies, epochs, proof boundary, trusted boundary, audit links, and replay behavior.

Runtime pipes are implementation artifacts.

## Call sequencing non-collapse

A sequence of implementation calls is not categorical composition.

Call sequencing may be recorded in history or replay.

It does not establish:



    g o f



unless a certificate relates the calls to typed morphisms and proves the categorical composition law under the declared mode and scope.

Execution order is not composition law.

## Cached-output non-collapse

A cached output of a two-step computation does not prove composition.

It may be audit, display, checkpoint, or diagnostic data.

Exact composition requires the composed morphism relation, endpoint compatibility, domain, codomain, partiality, dependencies, certificates, epoch, proof boundary, trusted boundary, audit, and replay evidence.

## Composition and trusted boundaries

A trusted boundary may certify a composition claim only if its trusted statement includes the composition law.

A trusted runtime pipeline may certify pipeline execution.

It does not certify categorical composition unless the trusted statement includes source, target, domain, codomain, partiality, equality, dependencies, epoch, and replay behavior.

Boundary overreach is rejected.

## Composition and proof boundaries

Composition proofs may depend on equality infrastructure, equivalence infrastructure, object endpoint infrastructure, domain and codomain proofs, partiality proofs, quotient laws, replay procedures, or trusted boundaries.

These proof boundaries must be recorded.

Changing proof boundary may stale composition certificates.

## Composition and applications

Application-specific composition belongs outside this abstract file.

`MorphismComposition.lean` may define generic hooks for application-instantiated composition.

It must not define concrete application pipelines, bitmap transformations, matrix compositions, token pipelines, image processing chains, hash constants, Feistel call sequences, UI event chains, or runtime payload flows.

## Composition and `none`

No composition rule may treat `none`, `null`, missing intermediate value, absent runtime binding, or undefined result as a mathematical default.

If `f` is undefined, `g o f` is undefined, rejected, unknown, fallback-mediated, audit-only, or research-obligated according to explicit partiality policy.

Undefined intermediate values cannot silently feed the next morphism.

## Composition certificates

Composition certificates may prove:



    Composable(f,g)





    Composite(g,f,h)





    h=g o f





    Domain_{g o f}(x)





    Codomain_{g o f}(z)





    R_{g o f}(x,z)<=> exists y,\ R_f(x,y) and  R_g(y,z)



or endpoint compatibility, composed-domain validity, composed-codomain validity, partiality propagation, equality, equivalence, quotient compatibility, observable compatibility, approximate error, functorial preservation, naturality-use, migration, refinement, invalidation, freshness, dependency closure, audit, replay, and path-coherence claims.

Only accepted certificates discharge composition obligations.

## Epoch rule

`MorphismComposition.lean` artifacts are epoch-indexed by:

- morphism-composition schema epoch;
- left-morphism epoch;
- right-morphism epoch;
- composite-morphism epoch;
- source-endpoint epoch;
- intermediate-endpoint epoch;
- target-endpoint epoch;
- endpoint-compatibility epoch;
- domain-composition epoch;
- codomain-composition epoch;
- partiality-propagation epoch;
- composition-law epoch;
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

Changing any component may stale downstream composition claims.

The old composition artifact remains audit content.

## History relation

A history record depending on `MorphismComposition.lean` must record:

1. source file identity;
2. declaration identity;
3. left morphism;
4. right morphism;
5. composite morphism;
6. source endpoint;
7. intermediate endpoint compatibility;
8. target endpoint;
9. composed domain;
10. composed codomain;
11. partiality propagation;
12. composition law;
13. equality or equivalence mode;
14. proof mode and scope;
15. prefix and epoch;
16. dependency closure;
17. certificates;
18. status;
19. invalidation behavior;
20. proof boundary;
21. trusted boundary where used;
22. audit reference;
23. replay data.

The runtime pipeline or call sequence alone is insufficient.

## Replay rule

Replay of `MorphismComposition.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, `MorphismPartiality.lean`, and `MorphismIdentity.lean`;
3. reconstructing composition-record declarations;
4. reconstructing component morphisms, endpoint compatibility, composed domain, composed codomain, partiality propagation, and composition law;
5. checking exact, quotient, observable, approximate, summary, checkpoint, partial, audit-only, rejected, unknown, and research-obligated composition modes;
6. checking prerequisites for associativity, congruence, functoriality, naturality, quotienting, migration, refinement, invalidation, certificates, epochs, audit, and replay;
7. checking proof objects or trusted boundaries where present;
8. checking that runtime function piping and implementation call sequencing are not treated as categorical composition;
9. checking that no runtime code or application constants are introduced;
10. checking dependency closure and audit metadata.

If any step fails, downstream composition claims are not replay-admissible.

## Runtime representation

`MorphismComposition.lean` may lower to:

- Lean composition predicates;
- composite-morphism records;
- endpoint-compatibility metadata;
- composed-domain descriptors;
- composed-codomain descriptors;
- partiality-propagation descriptors;
- composition-law theorem metadata;
- composition-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not composition identity.

Composition identity depends on component morphisms, endpoints, compatibility, domains, codomains, partiality, law, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let two runtime functions be piped together, or let two implementation calls occur in sequence.

This does not imply categorical composition.

Categorical composition holds only when the typed component morphisms, endpoint compatibility, composed domain, composed codomain, partiality propagation, composition law, dependencies, certificates, epochs, proof boundary, trusted boundary, audit links, invalidations, and replay behavior are accepted for the required mode and scope.

Thus runtime function piping and call sequencing are insufficient for categorical composition.

## Proof obligation

`MorphismComposition.lean` is admissible only if the framework can certify:

1. composition is typed as `g o f:A-> C`;
2. component morphisms are well-formed and admissible;
3. endpoint compatibility is explicit;
4. composed domains are explicit;
5. composed codomains are explicit;
6. partiality propagation is explicit;
7. composition laws are explicit;
8. equality and equivalence variants are distinguished;
9. associativity prerequisites are exposed;
10. quotient, observable, approximate, summary, checkpoint, partial, audit-only, rejected, unknown, and research-obligated composition modes are distinct;
11. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
12. runtime function piping and call sequencing are excluded as composition evidence;
13. application constants are excluded;
14. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismComposition.lean` may not define concrete carrier composition, concrete spectrum composition, authority setter composition, tensor-kernel composition, sheaf-restriction composition, operator-action composition, history append composition, migration-map composition, refinement-map composition, application pipelines, runtime function piping, implementation call sequencing, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-composition infrastructure.

## Commitment rule

`MorphismComposition.lean` may define typed categorical composition and composition laws.

It cannot treat runtime function piping as composition.

It cannot treat implementation call sequencing as composition.

It cannot compose morphisms without endpoint compatibility.

It cannot hide composed-domain or composed-codomain obligations.

It cannot hide partiality propagation.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached pipeline outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
