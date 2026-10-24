# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismEquivalence.Variantcae159357ad1e123bf471528eca9b4388e5024fedcabe462d842a83277eb965c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50274ffec51864ad3c2f5882debd3673422bf914` · SHA-256 `cae159357ad1e123bf471528eca9b4388e5024fedcabe462d842a83277eb965c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# MorphismEquivalence.lean


## Role

`MorphismEquivalence.lean` defines equivalence infrastructure for categorical morphisms.

It specifies extensional, quotient, observable, approximate, replay, audit, migrated, refined, and path-based equivalence relations for morphisms, together with endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, congruence, certificates, epochs, dependency closure, invalidations, audit links, proof boundaries, trusted boundaries, and replay behavior.

Morphism equivalence is not morphism equality.

It is not implementation-name equality.

It is not runtime-function equality.

It is not sampled-output equality.

It is a declared relation between morphisms whose consumer power depends on mode, scope, retained information, lost information, dependencies, and certificates.

## Core principle

For morphisms:



 f:A-> B



and:



 g:C-> D



an equivalence claim:



 f~ g



is meaningful only after naming the equivalence relation.

Exact equality, extensional equivalence, quotient equivalence, observable equivalence, approximate equivalence, replay equivalence, audit equivalence, migrated equivalence, refined equivalence, and path equivalence are distinct.

A morphism-equivalence theorem does not permit exact substitution unless congruence and strengthening evidence are accepted.

## Formal shape

A morphism-equivalence record has schematic form:



 MorphismEquivalence=(left,right,relation,laws,endpointRel,domainRel,codomainRel,partialityRel,witnessRel,retained,lost,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `left` and `right` identify the compared morphisms;
- `relation` records the morphism-equivalence relation;
- `laws` records reflexivity, symmetry, transitivity, partial-equivalence, or weaker relation laws where required;
- `endpointRel` records source and target endpoint compatibility;
- `domainRel` records domain compatibility;
- `codomainRel` records codomain compatibility;
- `partialityRel` records partiality compatibility;
- `witnessRel` records witness, graph, action, selected, stochastic, or trusted-statement compatibility;
- `retained` records preserved information;
- `lost` records ignored, quotiented, hidden, approximated, summarized, or audit-only information;
- `mode` records exact, quotient, observable, approximate, replay, audit, migrated, refined, path-based, summary, checkpoint, rejected, unknown, or research-obligated mode;
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

The record declares equivalence.

It does not collapse the morphisms into one morphism.

## Equivalence relation

The relation field has type:



 Rel(f,g):Prop



or a universe-safe relation over morphism records.

It must state what aspects of the morphisms are related.

It may compare:

- endpoints;
- witnesses;
- graphs;
- actions;
- domains;
- codomains;
- partiality policies;
- observables;
- quotient classes;
- replay results;
- audit provenance;
- migration paths;
- refinement projections;
- approximation residuals.

A relation name alone is insufficient.

## Equivalence laws

An equivalence relation may require:



 Reflexive(Rel)





 Symmetric(Rel)





 Transitive(Rel)



or a partial-equivalence variant over a declared domain.

These laws must be supplied by proofs, accepted certificates, or trusted-boundary statements.

A binary relation without these laws is not an equivalence relation.

A directed migration relation is not an equivalence unless symmetry and transitivity are certified or the relation is explicitly symmetrized.

## Partial equivalence

Morphism equivalence may be partial.

A partial equivalence applies only when component morphisms satisfy a domain predicate:



 D(f)



and:



 D(g)



The domain may restrict endpoint objects, morphism kind, proof mode, scope, epoch, status, dependency freshness, or partiality policy.

Partial morphism equivalence cannot support global substitution.

Consumers must prove they are inside the equivalence domain.

## Extensional equivalence

Extensional equivalence compares morphism behavior over all relevant inputs.

For total functional morphisms:



 forall x,\ f(x)=g(x)



may establish extensional equivalence.

For partial morphisms, extensional equivalence must include domain compatibility:



 forall x,\ D_f(x)<=> D_g(x)



and action agreement on the common domain.

For relational morphisms, extensional equivalence is graph equivalence.

Extensional equivalence is not sampled-output equality.

## Graph equivalence

For relation witnesses:



 R_f:X_A-> X_B-> Prop



and:



 R_g:X_C-> X_D-> Prop



graph equivalence requires endpoint compatibility and a relation between graphs:



 R_f(x,y)<=> R_g(x',y')



under declared source and target translations or equalities.

Graph equivalence may be exact, quotient, observable, approximate, replay, or audit-level.

The comparison relation must be explicit.

## Action equivalence

For functional morphisms, action equivalence compares outputs over compatible domains.

A standard form is:



 D_f(x)=> f(x)~_B g(x)



with domain compatibility and target equivalence.

If domains differ, the relation must record restriction, extension, partial scope, or rejected mismatch.

Action equivalence alone is not full morphism equality unless endpoints, domains, codomains, partiality, dependencies, certificates, epochs, and replay behavior also align.

## Quotient equivalence

Quotient morphism equivalence identifies morphisms after quotienting:



 [f]=[g]



or:



 q(f)=q(g)



It supports quotient-level consumers.

It does not preserve representative morphisms.

Representative-sensitive consumers require representative recovery, representative independence, or exact equality.

Quotient equivalence requires quotient relation, endpoint quotient compatibility, domain congruence, codomain congruence, partiality congruence, composition congruence, certificates, and replay behavior.

## Observable equivalence

Observable morphism equivalence compares declared observables:



 Obs(f)=Obs(g)



or pointwise observable outputs.

It supports observable and display consumers.

It does not preserve hidden morphism data, hidden endpoint data, hidden domain distinctions, hidden partiality behavior, proof provenance, or replay trace unless faithfulness or recovery is certified.

Observable equivalence cannot be consumed as exact equality by default.

## Approximate equivalence

Approximate morphism equivalence compares morphisms up to a metric, residual, or tolerance:



 d(f,g)<=\varepsilon



or pointwise:



 d(f(x),g(x))<=\varepsilon(x)



over a declared domain.

It must record metric, topology, tolerance carrier, error propagation, domain, codomain, partiality behavior, dependencies, certificates, epoch, and replay behavior.

Approximate equivalence cannot discharge exact equality obligations unless strengthened.

## Replay equivalence

Replay equivalence compares morphisms by replay reconstruction.

A replay equivalence may state:



 Replay(f)~ Replay(g)



under a declared replay procedure and comparison relation.

Replay equivalence requires replay target, procedure, manifest, comparison, dependencies, certificates, epoch, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Stored outputs, cached traces, and runtime call logs are insufficient.

## Audit equivalence

Audit equivalence compares morphisms for provenance or historical explanation.

Two morphisms may be audit-equivalent because they link to the same history record, certificate, replay manifest, migration node, refinement node, or audit path.

Audit equivalence does not imply mathematical equality.

It supports audit consumers only unless a certificate proves audit faithfulness for the required morphism claim.

## Migrated equivalence

Migrated equivalence relates source-epoch and target-epoch morphisms.

A typical form is:



 f_e~_{mig} f_{e'}



It must record source epoch, target epoch, source morphism, target morphism, endpoint migration, domain migration, codomain migration, partiality migration, witness migration, loss mode, retained information, lost information, dependencies, certificates, invalidations, audit links, and replay preservation.

Same target morphism name is insufficient.

## Refined equivalence

Refined equivalence relates morphisms across precision or representation levels.

It may compare a coarse morphism with a refined morphism through projection, reconstruction, or error bounds.

It must record refinement index, projection relation, reconstruction relation, domain refinement, codomain refinement, partiality refinement, retained information, added information, dependencies, certificates, epoch, and replay behavior.

Refinement equivalence is not migration equivalence.

If epoch changes, migration evidence is also required.

## Path-based equivalence

Path-based equivalence relates morphisms obtained through different construction, composition, migration, refinement, quotient, functorial, replay, or audit paths.

It must identify both paths.

Without path coherence, the path is part of morphism identity.

Path-based equivalence requires certificates before it can be used by composition, associativity, functoriality, naturality, replay, migration, or proof obligations.

## Endpoint relation

Morphism equivalence must record endpoint relation.

For exact equivalence, source endpoints and target endpoints may need exact equality:



 src(f)=src(g)





 tgt(f)=tgt(g)



For quotient or observable equivalence, endpoints may be related by weaker endpoint equivalence.

Endpoint relation determines whether the equivalence can be consumed by endpoint-sensitive constructions.

Endpoint labels are insufficient.

## Domain relation

Morphism equivalence must record domain relation.

For exact extensional equivalence of partial morphisms:



 D_f(x)<=> D_g(x)



is usually required.

For quotient equivalence, domain membership must be representative-independent.

For approximate equivalence, domain mismatch must be bounded, restricted, or rejected.

Domain relation is not inferred from source-object equality.

## Codomain relation

Morphism equivalence must record codomain relation.

Output admissibility predicates must be equal, equivalent, or related under declared mode.

A morphism whose outputs land in a smaller codomain may be usable where a larger codomain is accepted, but this is an inclusion claim, not equality.

Codomain relation must be certified where proof-relevant.

## Partiality relation

Morphism equivalence must record partiality relation.

Definedness, undefinedness, rejection, unknown status, selection, stochastic behavior, fallback behavior, audit-only behavior, and research-obligated behavior must agree or be related under the declared mode.

If one morphism is total and another is partial, exact equivalence fails unless totality is restricted or the claim is weakened.

## Witness relation

Morphism equivalence must record witness relation.

Witnesses may be functional, partial, relational, selected, stochastic, approximate, quotient, observable, replay, audit, trusted, rejected, unknown, or research-obligated.

Witness relation must compare the appropriate structure.

Runtime function equality is not witness relation unless trusted and scoped.

## Equivalence and equality separation

The file must assert:



 MorphismEquivalence \not\equiv MorphismEquality



Equivalence supports only the consumers congruent under the declared relation.

Equality supports stronger substitution.

A theorem may turn equivalence into equality only under strengthening conditions, such as representative recovery, faithful observables, zero-error soundness, replay completeness, or identity reflection.

No strengthening is implicit.

## Substitution limit

Morphism equivalence does not automatically permit substitution.

A substitution theorem must state:



 f~ g=> P(f)=> P(g)



for the specific predicate or construction `P`.

Substitution into composition, associativity, identity laws, functoriality, naturality, replay, migration, or certificates requires congruence.

Using equivalence as equality without congruence is inadmissible.

## Congruence requirement

Morphism equivalence can be consumed only by constructions proven congruent under that equivalence.

For composition:



 f~ f'
 and 
 g~ g'
 =>
 g o f~ g' o f'



This requires endpoint compatibility, domain compatibility, codomain compatibility, partiality compatibility, and comparison relation compatibility.

Congruence is not automatic.

## Identity compatibility

If:



 A~ B



then identity morphisms may be equivalent:



 id_A~ id_B



only if identity formation is congruent under the object equivalence.

Repeated labels or equivalent object displays are insufficient.

Identity compatibility must be certified.

## Composition compatibility

Composition must respect morphism equivalence when the appropriate congruence theorem is accepted.

If component equivalences are quotient, observable, approximate, replay, or audit-level, the composite equivalence inherits that mode unless strengthened.

Composition cannot silently upgrade equivalence to equality.

## Associativity compatibility

Associativity may be stated under morphism equivalence:



 h o (g o f)~(h o g) o f



This is weaker than exact associativity.

It supports only consumers that accept the equivalence.

Associativity compatibility must account for endpoints, domains, codomains, partiality, dependencies, certificates, epoch, and replay behavior.

## Functor compatibility

A functor may preserve morphism equivalence:



 f~ g=> F(f)~ F(g)



or may map equivalence to equality under a stronger theorem.

Functor compatibility is required for quotient functors, observable functors, approximate functors, replay-preserving functors, and application interfaces.

A functor mapping implementation names is insufficient.

## Naturality compatibility

Naturality may be transported across morphism equivalence only when naturality-use congruence is certified.

If:



 f~ g



then naturality for `f` implies naturality for `g` only if component maps, functor images, compositions, endpoint relations, and comparison relations respect the equivalence.

Displayed squares are insufficient.

## Equivalence preservation

A relation or transformation may preserve morphism equivalence:



 f~ g=> T(f)~' T(g)



Preservation must name source equivalence, target equivalence, mode, scope, dependencies, certificates, epoch, and replay behavior.

Preservation is required for functors, migrations, refinements, replay transformations, quotienting, and extraction.

## Equivalence reflection

A transformation may reflect morphism equivalence:



 T(f)~' T(g)=> f~ g



Reflection is stronger than preservation.

It supports invertibility, representative recovery, backward migration, and exactness restoration.

Reflection must be certified.

## Equivalence composition

Equivalence proofs compose by transitivity when the same relation is used.

When relations differ, relation-composition evidence is required.

Approximate equivalence may accumulate error.

Observable equivalence requires compatible observables.

Quotient equivalence requires compatible quotient relations.

Mode must not be silently strengthened during composition.

## Equivalence weakening

Morphism equality may weaken to morphism equivalence.

For example:



 f=g=> f~_{quotient}g



or:



 f=g=> f~_{observable}g



Weakening must record retained and lost information.

The weaker equivalence cannot support stronger consumers unless strengthened later.

## Equivalence strengthening

Morphism equivalence may strengthen to equality only with additional evidence.

Examples include:

- representative recovery for quotient equivalence;
- faithfulness for observable equivalence;
- zero-error soundness for approximate equivalence;
- replay completeness for replay equivalence;
- audit faithfulness for audit equivalence.

Strengthening requires accepted certificates.

It is not inferred from the equivalence label.

## Equivalence domain

Every morphism-equivalence relation must declare its domain.

The domain may restrict morphism kind, endpoints, proof mode, scope, epoch, partiality policy, dependency freshness, or status.

A morphism outside the domain cannot be compared under that equivalence.

Domain membership must be proven before consuming the equivalence.

## Equivalence mode

Morphism equivalence is mode-sensitive.

Modes include exact-equivalence, quotient, observable, approximate, replay, audit-only, summary, checkpoint, migrated, refined, path-based, partial, rejected, unknown, trusted-boundary, and research-obligated.

Mode determines retained and lost information.

Consumers must check mode compatibility.

## Equivalence scope

Morphism equivalence is scope-sensitive.

A relation may be valid for display but not proof.

It may be valid for audit but not composition.

It may be valid for quotient categories but not representative-sensitive functoriality.

The scope must be part of the equivalence record.

## Equivalence status

Morphism equivalence has lifecycle status.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

An accepted equivalence at one prefix may be stale at another.

Status must be replayable.

## Equivalence dependency closure

Morphism equivalence depends on relation definition, endpoint relations, domain relations, codomain relations, partiality relations, witness relations, equality and equivalence infrastructure, proof modes, scopes, statuses, epochs, certificates, proof boundaries, trusted boundaries, audit links, invalidations, and replay parameters.

Hidden dependencies invalidate equivalence replay.

Lean imports alone are insufficient.

## Equivalence certificates

Morphism-equivalence certificates may prove:



 MorphismEquiv(f,g,R)





 ExtensionalEquiv(f,g)





 QuotientEquiv(f,g)





 ObservableEquiv(f,g)





 ApproxEquiv(f,g,\varepsilon)





 ReplayEquiv(f,g)





 AuditEquiv(f,g)





 MigratedEquiv(f_e,f_{e'})





 RefinedEquiv(f_h,f_{h'})



or equivalence laws, congruence, preservation, reflection, weakening, strengthening, migration, refinement, invalidation, freshness, dependency closure, audit, replay, and path-coherence claims.

Only accepted certificates discharge equivalence obligations.

## Equivalence invalidation

Morphism-equivalence claims may become stale if relation definition, endpoint relation, domain relation, codomain relation, partiality relation, witness relation, equivalence laws, congruence theorem, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old equivalence remains audit content.

## Equivalence migration

Morphism equivalence may migrate across epochs:



 f_e~_e g_e
 leads-to 
 f_{e'}~_{e'} g_{e'}



Migration must preserve or explicitly weaken endpoint relations, domains, codomains, partiality, witnesses, equivalence laws, dependencies, certificates, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

Same target implementation names are insufficient.

## Equivalence refinement

Morphism equivalence may refine by sharpening relation, narrowing domain, strengthening congruence, reducing error, improving dependency closure, or replacing trusted boundaries.

Refinement is not migration.

If epoch changes, equivalence migration is also required.

A refined equivalence is not automatically equal to the source equivalence.

## Equivalence audit

Audit links may trace morphism-equivalence claims to framework records, certificates, replay manifests, trusted boundaries, dependency records, migration nodes, refinement nodes, verifier exports, extraction artifacts, or history prefixes.

Audit links do not prove equivalence.

Audit path coherence may be required when multiple audit paths support the same equivalence claim.

## Equivalence replay

Replay of morphism equivalence reconstructs compared morphisms, relation, laws, endpoint relation, domain relation, codomain relation, partiality relation, witness relation, retained information, lost information, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and replay behavior.

If replay reconstructs only implementation names, runtime functions, sampled outputs, or displayed arrows, the equivalence is not replay-admissible.

## Runtime non-collapse

Runtime functions, implementation calls, exported symbols, callback identities, pipeline fragments, and sampled outputs are not morphism equivalences by default.

They may be evidence only if a trusted boundary or certificate states the relevant morphism-equivalence claim.

Runtime similarity does not establish endpoint, domain, codomain, partiality, witness, dependency, epoch, or replay compatibility.

## Equivalence and applications

Application-specific morphism equivalence belongs outside this abstract file.

`MorphismEquivalence.lean` may define generic hooks for application-instantiated equivalence.

It must not define concrete application equivalence, bitmap transform equivalence, matrix operation equivalence, token operation equivalence, image operation equivalence, hash constants, Feistel equivalence, UI callback equivalence, or runtime payload equivalence.

## Equivalence and `none`

No morphism-equivalence rule may treat `none`, `null`, missing output, missing input, absent runtime binding, or undefined result as a mathematical default.

Equivalence of undefinedness is a partiality claim.

Equivalence of fallback behavior must be certified.

Undefinedness cannot be silently equated with output equality.

## Epoch rule

`MorphismEquivalence.lean` artifacts are epoch-indexed by:

- morphism-equivalence schema epoch;
- relation-definition epoch;
- endpoint-relation epoch;
- domain-relation epoch;
- codomain-relation epoch;
- partiality-relation epoch;
- witness-relation epoch;
- equivalence-law epoch;
- quotient-policy epoch;
- observable-policy epoch;
- approximate-comparison epoch;
- replay-equivalence epoch;
- audit-equivalence epoch;
- migration-equivalence epoch;
- refinement-equivalence epoch;
- path-equivalence epoch;
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

Changing any component may stale downstream morphism-equivalence claims.

The old equivalence artifact remains audit content.

## History relation

A history record depending on `MorphismEquivalence.lean` must record:

1. source file identity;
2. declaration identity;
3. left morphism;
4. right morphism;
5. equivalence relation;
6. equivalence laws;
7. endpoint relation;
8. domain relation;
9. codomain relation;
10. partiality relation;
11. witness relation;
12. retained and lost information;
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

The equivalence symbol, implementation name, runtime function, or sampled-output table alone is insufficient.

## Replay rule

Replay of `MorphismEquivalence.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, `MorphismDomain.lean`, `MorphismCodomain.lean`, `MorphismPartiality.lean`, `MorphismIdentity.lean`, `MorphismComposition.lean`, `MorphismAssociativity.lean`, and `MorphismEquality.lean`;
3. reconstructing morphism-equivalence declarations;
4. reconstructing extensional, quotient, observable, approximate, replay, audit, migrated, refined, and path-based equivalence records;
5. checking equivalence laws, partial domains, endpoint relations, domain relations, codomain relations, partiality relations, witness relations, retained information, and lost information;
6. checking equality/equivalence separation, substitution limits, congruence requirements, preservation, reflection, weakening, strengthening, migration, refinement, invalidation, certificates, epochs, audit, and replay interactions;
7. checking proof objects or trusted boundaries where present;
8. checking that implementation names, runtime functions, and sampled outputs are not treated as morphism equivalence;
9. checking that no runtime code or application constants are introduced;
10. checking dependency closure and audit metadata.

If any step fails, downstream morphism-equivalence claims are not replay-admissible.

## Runtime representation

`MorphismEquivalence.lean` may lower to:

- Lean equivalence predicates;
- morphism-equivalence records;
- equivalence-law metadata;
- extensional-equivalence descriptors;
- quotient-equivalence descriptors;
- observable-equivalence descriptors;
- approximate-equivalence descriptors;
- replay-equivalence descriptors;
- audit-equivalence descriptors;
- equivalence-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not equivalence identity.

Equivalence identity depends on compared morphisms, relation, laws, endpoints, domains, codomains, partiality, witnesses, retained information, lost information, mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let two morphisms be equivalent under a declared relation.

This does not imply they are equal.

They may be substituted only in consumers whose constructions are congruent under that relation.

In particular, implementation-name agreement, runtime-function agreement, sampled-output agreement, audit provenance agreement, quotient agreement, observable agreement, approximate agreement, or replay agreement is insufficient for exact morphism equality.

## Proof obligation

`MorphismEquivalence.lean` is admissible only if the framework can certify:

1. morphism equivalence is distinct from morphism equality;
2. equivalence relations are typed;
3. equivalence laws are explicit;
4. endpoint relation is explicit;
5. domain relation is explicit;
6. codomain relation is explicit;
7. partiality relation is explicit;
8. witness relation is explicit;
9. extensional, quotient, observable, approximate, replay, audit, migrated, refined, and path-based equivalences are distinct;
10. substitution requires congruence;
11. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
12. implementation names, runtime functions, and sampled outputs are excluded as equivalence evidence;
13. application constants are excluded;
14. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismEquivalence.lean` may not define concrete carrier morphism equivalence, concrete spectrum morphism equivalence, authority-setter equivalence, tensor-kernel equivalence, sheaf-restriction equivalence, operator-action equivalence, history-append equivalence, migration-map equivalence, refinement-map equivalence, application function equivalence, runtime function equivalence, implementation-name equivalence, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-equivalence infrastructure.

## Commitment rule

`MorphismEquivalence.lean` may define morphism-equivalence relations and laws.

It cannot collapse equivalence into equality.

It cannot allow quotient equivalence to replace representative equality without evidence.

It cannot allow observable equivalence to prove hidden morphism equality without faithfulness.

It cannot allow approximate equivalence to prove exact equality without strengthening.

It cannot equate morphisms by implementation name, runtime function, or sampled outputs.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
```
