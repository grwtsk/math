# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismAssociativity.Variantefd7d2fa573307ea01e551275833319d81a271c7ba6f5ec116de153a3e242967

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b9b99f4f48488c7cb02f3fe88baed7f3b08a590` · SHA-256 `efd7d2fa573307ea01e551275833319d81a271c7ba6f5ec116de153a3e242967`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# MorphismAssociativity.lean


## Role

`MorphismAssociativity.lean` defines associativity infrastructure for categorical morphism composition.

It specifies the associativity law:



 h o (g o f)=(h o g) o f



for typed composable morphisms:



 f:A-> B





 g:B-> C





 h:C-> D



together with endpoint, domain, codomain, partiality, equality, equivalence, quotient, observable, approximate, certificate, epoch, dependency, audit, invalidation, and replay prerequisites.

Associativity is not syntactic reassociation of runtime call chains.

It is not compiler optimization.

It is not callback nesting.

It is not a JavaScript pipeline rewrite.

It is a certified categorical law about typed compositions.

## Formal shape

A morphism-associativity record has schematic form:



 MorphismAssociativity=(f,g,h,leftComposite,rightComposite,source,mid_1,mid_2,target,endpointCompatibility,domainCompatibility,codomainCompatibility,partialityCompatibility,comparison,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `f`, `g`, and `h` are component morphisms;
- `leftComposite` records `h o (g o f)`;
- `rightComposite` records `(h o g) o f`;
- `source` records the source object `A`;
- `mid_1` and `mid_2` record intermediate endpoints `B` and `C`;
- `target` records the final target object `D`;
- `endpointCompatibility` records required endpoint equalities or equivalences;
- `domainCompatibility` records equality or equivalence of composed domains;
- `codomainCompatibility` records equality or equivalence of composed codomains;
- `partialityCompatibility` records agreement of definedness, undefinedness, rejection, unknown, selection, stochastic, or fallback behavior;
- `comparison` records the equality or equivalence relation used to compare the two composites;
- `mode` records exact, quotient, observable, approximate, summary, checkpoint, partial, audit-only, trusted-boundary, rejected, unknown, or research-obligated mode;
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

The record is an associativity claim.

It does not execute any morphism.

## Associativity law

The exact associativity law is:



 h o (g o f)=(h o g) o f



where both sides are defined as categorical compositions and compared under exact morphism equality.

This requires:

1. `f`, `g`, and `h` are well-formed morphisms;
2. all endpoint compatibilities are accepted;
3. both bracketings are valid compositions;
4. composed domains coincide;
5. composed codomains coincide;
6. partiality behavior coincides;
7. morphism equality is the equality required by the consumer;
8. dependencies and certificates are fresh;
9. replay reconstructs both sides.

The law is not inferred from syntax.

## Left bracketing

The left bracketing is:



 h o (g o f)



It requires first constructing:



 g o f:A-> C



then composing with:



 h:C-> D



The intermediate composite `g o f` must be well-formed, admissible, dependency-closed, epoch-valid, and replay-admissible.

If `g o f` is partial, quotient-only, observable-only, approximate, rejected, unknown, or audit-only, the left bracketing inherits that mode unless strengthened.

## Right bracketing

The right bracketing is:



 (h o g) o f



It requires first constructing:



 h o g:B-> D



then composing with:



 f:A-> B



The intermediate composite `h o g` must be well-formed, admissible, dependency-closed, epoch-valid, and replay-admissible.

If `h o g` is partial, quotient-only, observable-only, approximate, rejected, unknown, or audit-only, the right bracketing inherits that mode unless strengthened.

## Endpoint prerequisites

Associativity requires endpoint compatibility for all adjacent morphisms:



 tgt(f)\equiv src(g)





 tgt(g)\equiv src(h)



and endpoint compatibility for the intermediate composites.

Endpoint equality may be exact, quotient, observable, approximate, migrated, refined, replay-equivalent, audit-only, rejected, or unknown.

Exact associativity requires exact endpoint compatibility.

Weaker endpoint compatibility produces weaker associativity.

## Source and target

Both bracketings must have source `A` and target `D`:



 src(h o (g o f))=A





 tgt(h o (g o f))=D





 src((h o g) o f)=A





 tgt((h o g) o f)=D



These endpoint equalities must be certified.

Same labels for `A` and `D` are insufficient.

## Domain compatibility

For partial morphisms, the two bracketings may have different syntactic domain definitions.

Exact associativity requires equality of the actual composed domains.

A standard functional form is:



 D_{h o (g o f)}(x)



and:



 D_{(h o g) o f}(x)



with a certified equivalence:



 D_{h o (g o f)}(x)<=> D_{(h o g) o f}(x)



for all relevant `x`.

If domains agree only up to quotient, observable, approximation, or partial scope, associativity is weakened accordingly.

## Codomain compatibility

The codomain behavior of both bracketings must agree.

For exact associativity, both composites must land in the same target-side admissible region under the same codomain predicate.

A codomain compatibility theorem may state:



 C_{h o (g o f)}(z)<=> C_{(h o g) o f}(z)



or a directional inclusion where the consumer permits weakening.

Codomain compatibility is not automatic from target object equality.

## Partiality compatibility

Associativity for partial morphisms requires agreement of definedness behavior.

The following must align or be related:

- defined cases;
- undefined cases;
- rejected cases;
- unknown cases;
- fallback cases;
- selected cases;
- stochastic cases;
- audit-only cases;
- research-obligated cases.

If one bracketing is defined and the other is undefined, exact associativity fails.

If both are defined only under a shared subdomain, associativity is partial.

## Functional associativity

For total functional morphisms:



 f:X_A-> X_B





 g:X_B-> X_C





 h:X_C-> X_D



functional associativity has the familiar form:



 h(g(f(x)))=h(g(f(x)))



but the framework statement still requires typed endpoints, totality, codomain-to-domain compatibility, dependency closure, certificates, epoch, proof boundary, and replay behavior.

Programming-language function associativity does not supply categorical associativity by itself.

## Relational associativity

For relational morphisms:



 R_f:X_A-> X_B-> Prop





 R_g:X_B-> X_C-> Prop





 R_h:X_C-> X_D-> Prop



associativity compares:



 exists c,<=ft(exists b,\ R_f(a,b) and R_g(b,c)\right) and R_h(c,d)



with:



 exists b,\ R_f(a,b) and <=ft(exists c,\ R_g(b,c) and R_h(c,d)\right)



The equivalence of these witnesses must be certified under the chosen relation.

Existential reassociation in Lean may help prove the theorem, but framework replay still requires dependencies and certificates.

## Selected associativity

For selected morphisms, associativity requires selection coherence.

The selected target obtained by:



 h o (g o f)



must agree with or be equivalent to the selected target obtained by:



 (h o g) o f



under the declared selection policy.

If selection depends on runtime order, hash order, branch order, or first-success behavior without replayable policy, associativity is not admissible.

## Stochastic associativity

For stochastic morphisms, associativity requires equality or equivalence of composed stochastic kernels.

A law may compare:



 K_h\ast(K_g\ast K_f)



with:



 (K_h\ast K_g)\ast K_f



under a declared integration, summation, or pushforward operation.

Support, normalization, probability carrier, measurability where relevant, randomness boundary, certificates, epoch, and replay behavior must be explicit.

Sampling paths do not prove stochastic associativity.

## Quotient associativity

Quotient associativity states associativity after quotienting morphisms, objects, or paths.

A typical law is:



 [h] o ([g] o [f])=([h] o [g]) o [f]



in the quotient category.

This requires quotient readiness, representative independence, endpoint congruence, morphism congruence, composition congruence, and replay behavior.

Quotient associativity cannot support representative-sensitive associativity without recovery evidence.

## Observable associativity

Observable associativity states that observables of the two bracketings agree:



 Obs(h o (g o f))=Obs((h o g) o f)



It supports observable consumers only.

It does not prove hidden-state associativity unless the observable is faithful and faithfulness is certified.

The observable map and codomain equality are dependencies.

## Approximate associativity

Approximate associativity states that the two bracketings are close:



 d(h o (g o f),(h o g) o f)<=\varepsilon



or a pointwise version:



 d((h o (g o f))(x),((h o g) o f)(x))<=\varepsilon(x)



The metric, tolerance, error propagation, domain, codomain, dependencies, certificates, epoch, and replay behavior must be explicit.

Approximate associativity cannot discharge exact associativity obligations.

## Summary associativity

Summary associativity compares only summaries of the two bracketings.

It must record summary function, retained information, omitted information, sufficiency scope, dependencies, certificates, epoch, and replay behavior.

Summary associativity cannot support raw categorical associativity unless summary sufficiency or reconstruction is certified.

## Checkpoint associativity

Checkpoint associativity uses materialized replay state for the two bracketings.

It must record checkpoint payloads, covered morphisms, covered endpoints, covered domains and codomains, dependency closure, invalidation policy, certificates, epoch, and replay scope.

A cached pipeline output is not checkpoint associativity unless checkpoint validity is certified.

## Rejected associativity

Associativity may be rejected.

Reasons include invalid component morphisms, failed endpoint compatibility, failed composition formation, domain mismatch, codomain mismatch, partiality mismatch, rejected certificate, stale dependency, invalid epoch, proof-boundary failure, trusted-boundary overreach, or replay failure.

Rejected associativity is audit content.

It does not provide usable associativity evidence.

## Unknown associativity

Unknown associativity records that the framework cannot establish whether the associativity law holds.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block functoriality, naturality, quotienting, path coherence, replay, migration, refinement, or certificate reuse.

Unknown must not be treated as approximate success.

## Research-obligated associativity

Research-obligated associativity records that associativity is required but unproven.

It must identify `f`, `g`, `h`, both bracketings, missing evidence, dependencies, mode, scope, epoch, blocked consumer, and replay context.

It does not prove associativity.

It prevents silent reassociation.

## Associativity and identity morphisms

Associativity interacts with identity laws.

For example:



 h o (id_B o f)=(h o id_B) o f



requires associativity plus left and right identity laws.

If identity laws are quotient-only, observable-only, approximate, or audit-only, the derived statement remains in that mode unless strengthened.

Identity simplification is not syntactic by default.

## Associativity and congruence

Associativity claims must be stable under morphism equality or equivalence when used in larger derivations.

If:



 f~ f'





 g~ g'





 h~ h'



then associativity for `f,g,h` may transfer to `f',g',h'` only under congruence theorems.

Congruence is not automatic.

## Associativity and functoriality

Functoriality depends on associativity in source and target categories.

When proving:



 F(k o (g o f))=F((k o g) o f)



the proof may rely on associativity and composition preservation.

The functoriality theorem must cite associativity dependencies where used.

A functor cannot assume runtime reassociation.

## Associativity and naturality

Naturality derivations often use associativity to rearrange composed arrows.

Such rearrangements require associativity certificates.

A diagram chase is not a proof unless all associativity, identity, composition, and naturality steps are certified or derived in Lean under accepted boundaries.

## Associativity and path coherence

Associativity provides a canonical path-coherence law for different bracketings of the same composable path.

For a path:



 A\xrightarrow{f}B\xrightarrow{g}C\xrightarrow{h}D



the two bracketings must be equal or equivalent.

If associativity is not accepted, path identity depends on bracketing.

## Associativity and quotient categories

In quotient categories, associativity must be compatible with representative choice.

The two bracketings must define the same quotient morphism independent of representatives.

This requires quotient compatibility and composition congruence.

Without it, the quotient category is not well-formed.

## Associativity and epochs

Associativity is epoch-indexed.

Associativity at epoch `e` is not automatically associativity at epoch `e'`.

Cross-epoch associativity requires migration of component morphisms, composition laws, endpoint compatibility, domain and codomain conditions, partiality, equality or equivalence relations, dependencies, certificates, proof boundary, audit links, and replay behavior.

Same morphism names across epochs are insufficient.

## Associativity migration

Associativity migration relates associativity proofs across epochs:



 Assoc_e(f,g,h) leads-to  Assoc_{e'}(f',g',h')



It must preserve or explicitly weaken component morphisms, bracketings, endpoint compatibility, domains, codomains, partiality, comparison relation, dependencies, certificates, invalidations, audit links, proof boundary, trusted boundary, and replay behavior.

A migrated composition law does not automatically migrate associativity.

## Associativity refinement

Associativity refinement may sharpen domain conditions, strengthen equality, reduce approximation error, improve dependency closure, replace trusted boundaries, or add replay metadata.

Refinement is not migration.

If epoch changes, associativity migration evidence is also required.

A refined associativity proof is not automatically equal to the source proof.

## Associativity invalidation

Associativity claims may become stale if component morphisms, endpoint compatibility, domain predicates, codomain predicates, partiality policies, composition law, equality relation, equivalence relation, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old associativity claim remains audit content.

## Associativity status

Associativity status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

Accepted associativity for audit does not imply accepted exact associativity for proof.

## Associativity audit

Associativity audit links connect associativity claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, verifier exports, extraction artifacts, or history prefixes.

Audit links are traceability only.

They do not prove associativity unless paired with accepted certificates.

## Associativity replay

Associativity replay reconstructs component morphisms, both bracketings, endpoint compatibility, domains, codomains, partiality, comparison relation, associativity proof or trusted boundary, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and replay comparison.

A syntactic reassociation in code is not replay.

A cached result of a call chain is not replay.

## Runtime reassociation non-collapse

Rewriting:



 h(g(f(x)))



as:



 (h o g)(f(x))



inside a runtime language does not prove categorical associativity.

It may be an implementation transformation.

Categorical associativity requires typed morphisms, valid compositions, endpoint compatibility, composed domains, composed codomains, partiality compatibility, equality or equivalence comparison, certificates, dependencies, epochs, audit links, proof boundary, and replay behavior.

## Call-chain non-collapse

A call chain may be bracketed syntactically by a programming language.

Such bracketing is not categorical bracketing unless each call is certified as a morphism and each composition is certified as categorical composition.

Call sequencing and syntactic reassociation do not discharge associativity.

## Cached-output non-collapse

If both bracketings produce the same cached output on sample inputs, this does not prove associativity.

Associativity is a theorem over the declared domain, codomain, partiality, and comparison relation.

Sample equality may be evidence only under finite-exhaustive or sampling-sufficient certificates.

## Associativity and trusted boundaries

A trusted boundary may certify associativity only if its trusted statement explicitly includes the associativity law.

A trusted runtime optimizer may certify a runtime rewrite.

It does not certify categorical associativity unless source, target, domains, codomains, partiality, equality, dependencies, epoch, and replay are inside the trusted statement.

Boundary overreach is rejected.

## Associativity and proof boundaries

Associativity proofs may depend on equality infrastructure, equivalence infrastructure, composition infrastructure, quotient laws, partiality laws, function extensionality, propositional extensionality, choice, replay procedures, or trusted boundaries.

Those dependencies must be recorded.

Changing proof boundary may stale associativity certificates.

## Associativity and applications

Application-specific associativity belongs outside this abstract file.

`MorphismAssociativity.lean` may define generic hooks for application-instantiated associativity.

It must not define concrete application call chains, bitmap transformations, matrix compositions, token pipelines, image processing chains, hash constants, Feistel call chains, UI event sequences, or runtime payload flows.

## Associativity and `none`

No associativity rule may treat `none`, `null`, missing intermediate value, absent runtime binding, or undefined result as a mathematical default.

If an intermediate morphism is undefined, the bracketing is undefined, rejected, unknown, fallback-mediated, audit-only, or research-obligated according to explicit partiality policy.

Undefined intermediate values cannot be silently reassociated.

## Associativity certificates

Associativity certificates may prove:



 Assoc(f,g,h)





 h o (g o f)=(h o g) o f





 h o (g o f)~(h o g) o f



or endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, quotient associativity, observable associativity, approximate associativity, summary associativity, checkpoint associativity, migration, refinement, invalidation, freshness, dependency closure, audit, replay, and path-coherence claims.

Only accepted certificates discharge associativity obligations.

## Epoch rule

`MorphismAssociativity.lean` artifacts are epoch-indexed by:

- morphism-associativity schema epoch;
- component-morphism epoch;
- left-composition epoch;
- right-composition epoch;
- endpoint-compatibility epoch;
- composed-domain epoch;
- composed-codomain epoch;
- partiality-compatibility epoch;
- equality-relation epoch;
- equivalence-relation epoch;
- quotient-policy epoch;
- observable-policy epoch;
- approximate-comparison epoch;
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

Changing any component may stale downstream associativity claims.

The old associativity artifact remains audit content.

## History relation

A history record depending on `MorphismAssociativity.lean` must record:

1. source file identity;
2. declaration identity;
3. component morphisms `f,g,h`;
4. left bracketing `h o (g o f)`;
5. right bracketing `(h o g) o f`;
6. endpoint compatibility;
7. domain compatibility;
8. codomain compatibility;
9. partiality compatibility;
10. equality or equivalence relation;
11. proof mode and scope;
12. prefix and epoch;
13. dependency closure;
14. certificates;
15. status;
16. invalidation behavior;
17. proof boundary;
18. trusted boundary where used;
19. audit reference;
20. replay data.

A runtime reassociation or call-chain transformation alone is insufficient.

## Replay rule

Replay of `MorphismAssociativity.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, `MorphismPartiality.lean`, `MorphismIdentity.lean`, and `MorphismComposition.lean`;
3. reconstructing associativity declarations;
4. reconstructing component morphisms and both bracketings;
5. checking endpoint, domain, codomain, and partiality compatibility;
6. checking equality, equivalence, quotient, observable, approximate, summary, checkpoint, audit, rejected, unknown, and research-obligated variants;
7. checking associativity interaction with identity laws, congruence, functoriality, naturality, quotienting, migration, refinement, invalidation, certificates, epochs, audit, and replay;
8. checking proof objects or trusted boundaries where present;
9. checking that syntactic reassociation of runtime call chains is not treated as categorical associativity;
10. checking that no runtime code or application constants are introduced;
11. checking dependency closure and audit metadata.

If any step fails, downstream associativity claims are not replay-admissible.

## Runtime representation

`MorphismAssociativity.lean` may lower to:

- Lean associativity theorem statements;
- associativity records;
- bracketing metadata;
- endpoint-compatibility descriptors;
- domain-compatibility descriptors;
- codomain-compatibility descriptors;
- partiality-compatibility descriptors;
- associativity-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not associativity identity.

Associativity identity depends on component morphisms, bracketings, endpoint compatibility, domains, codomains, partiality, comparison relation, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let a runtime call chain be syntactically reassociated, optimized, inlined, piped, or produce matching sampled outputs under two bracketings.

This does not imply categorical associativity.

Categorical associativity holds only when the typed component morphisms, both categorical compositions, endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, comparison relation, dependencies, certificates, epochs, proof boundary, trusted boundary, audit links, invalidations, and replay behavior are accepted for the required mode and scope.

Thus syntactic reassociation of runtime call chains is insufficient for categorical associativity.

## Proof obligation

`MorphismAssociativity.lean` is admissible only if the framework can certify:

1. associativity is stated as `h o (g o f)=(h o g) o f`;
2. both bracketings are valid categorical compositions;
3. endpoint compatibility is explicit;
4. domain compatibility is explicit;
5. codomain compatibility is explicit;
6. partiality compatibility is explicit;
7. equality and equivalence variants are distinct;
8. quotient, observable, approximate, summary, checkpoint, partial, audit-only, rejected, unknown, and research-obligated associativity modes are distinct;
9. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
10. syntactic reassociation of runtime call chains is excluded as evidence;
11. application constants are excluded;
12. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismAssociativity.lean` may not define concrete carrier associativity, concrete spectrum associativity, authority-setter associativity, tensor-kernel associativity, sheaf-restriction associativity, operator-action associativity, history append associativity, migration-map associativity, refinement-map associativity, application pipeline associativity, runtime call-chain reassociation, compiler optimizations, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-associativity infrastructure.

## Commitment rule

`MorphismAssociativity.lean` may define associativity laws and prerequisites for categorical morphisms.

It cannot treat runtime reassociation as categorical associativity.

It cannot treat implementation call sequencing as associativity.

It cannot ignore endpoint compatibility.

It cannot ignore composed-domain or composed-codomain compatibility.

It cannot ignore partiality compatibility.

It cannot infer exact equality from quotient, observable, approximate, audit-only, unknown, or rejected evidence.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
