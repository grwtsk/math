# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismCodomain.Variant2705a29ae0df17c1adaf4d3e8d6b37aa1f47905e8026de6d1999a341e5c2bcd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f99d5d1a6d42c59361bd59e8fd8509c2f56cb161` · SHA-256 `4ea10db0ff39f759984caa0794f2f58cd25caacb83df346b02b010012cf44555`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantb46f295d0d1fbfc8718bb6056877cdacf092d481d7d4a7d084ef599267518385","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b46f295d0d1fbfc8718bb6056877cdacf092d481d7d4a7d084ef599267518385","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SourceUnit.Variantb46f295d0d1fbfc8718bb6056877cdacf092d481d7d4a7d084ef599267518385","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b46f295d0d1fbfc8718bb6056877cdacf092d481d7d4a7d084ef599267518385","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/27/Think/lean/category/morphism/MorphismCodomain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
# MorphismCodomain.lean


## Role

`MorphismCodomain.lean` defines target-side codomain infrastructure for categorical morphisms.

A morphism codomain records which target-side values, target-side objects, or target-side admissibility predicates may receive the output of a morphism.

A morphism codomain is not target-object membership alone.

It is not runtime output production.

It is not successful serialization.

It is not a displayed result.

It is not a cached value.

It is a typed proof-relevant target-side predicate with dependencies, certificates, epochs, audit links, invalidations, and replay behavior.

## Core principle

For a morphism:



    f:A-> B



a codomain predicate has form:



    C_f:X_B-> Prop



where `X_B` is the typed target-side representation associated with object `B`.

Using a morphism result `y` as an admissible output requires evidence:



    C_f(y)



unless the morphism is certified to land in the full target admissible region required by the consumer.

Membership in the target object is not enough.

Runtime output production is not enough.

Successful execution is not enough.

## Formal shape

A morphism-codomain record has schematic form:



    MorphismCodomain=(morphism,target,codomainPredicate,outputAdmissibility,preservation,reflection,partiality,mode,scope,prefix,epoch,deps,certs,status,invalidations,proofBoundary,trustedBoundary,audit,replay)



where:

- `morphism` identifies the morphism whose codomain is specified;
- `target` records the target endpoint object;
- `codomainPredicate` records the target-side admissibility predicate;
- `outputAdmissibility` records output membership, rejection, unknown status, approximation, quotient validity, observable validity, or research obligation;
- `preservation` records laws proving morphism outputs land in the codomain;
- `reflection` records laws allowing target-side codomain facts to reflect backward where required;
- `partiality` records interaction with morphism partiality policy;
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

The record specifies a target-side admissibility predicate.

It does not define the morphism action by itself.

## Codomain predicate

The codomain predicate is a typed proposition:



    C_f(y):Prop



for `y:X_B`, where `X_B` is associated with the target endpoint `B`.

The predicate must be explicit.

A morphism may have a universal codomain, restricted codomain, quotient codomain, observable codomain, approximate codomain, partial codomain, rejected codomain, unknown codomain, or research-obligated codomain.

The codomain predicate is part of morphism identity.

Changing it may change the morphism.

## Target endpoint interaction

The codomain is interpreted relative to the target endpoint.

For:



    f:A-> B



the target endpoint `B` supplies the target-side type witness and object interpretation.

If `B` changes, migrates, refines, becomes stale, or is replaced by an equivalent object, the codomain predicate may need migration, refinement, or congruence evidence.

The codomain predicate cannot be interpreted without the target endpoint.

## Target-object membership is not codomain admissibility

A value may inhabit the target representation:



    y:X_B



or satisfy target-object admissibility, while still failing the morphism codomain predicate:



     not  C_f(y)



Thus:



    y in  B
    \not=>
    C_f(y)



unless a codomain-inclusion theorem proves it.

Target-object membership is necessary only when required by the target interpretation.

It is not sufficient for output admissibility.

## Runtime output production is not codomain admissibility

A runtime function may produce an output.

This does not prove:



    C_f(y)



Runtime output production may result from coercion, fallback, unchecked serialization, exception recovery, permissive runtime behavior, stale cache, partial behavior, or implementation-specific defaults.

Codomain admissibility requires a typed proof, certificate, trusted-boundary statement, or replay-admissible derivation.

Runtime output production is implementation evidence at most.

## Output admissibility

Output admissibility records that a produced target-side value satisfies the codomain predicate:



    OutputAdmissible_f(y)\equiv C_f(y)



or a declared weaker relation.

For a functional morphism:



    D_f(x)=> C_f(f(x))



is the standard exact output-admissibility law.

For a relational morphism:



    D_f(x) and  R_f(x,y)=> C_f(y)



is the standard exact relational output-admissibility law.

## Rejected codomain case

A codomain judgment may be rejected.

A rejected codomain case records that a claimed output-admissibility proof failed.

Reasons may include invalid target object, invalid target value, stale dependency, rejected certificate, proof-boundary failure, target epoch mismatch, trusted-boundary overreach, codomain predicate failure, or replay failure.

Rejected codomain evidence cannot support target-side morphism use.

## Unknown codomain case

Unknown codomain status records that output admissibility cannot be established.

Unknown is not accepted.

Unknown is not rejection.

Unknown may block morphism application, composition, functoriality, naturality, replay, migration, refinement, or certificate reuse.

Unknown codomain status must not be treated as approximate, quotient-valid, observable-valid, or audit-only success.

## Research-obligated codomain case

A research-obligated codomain case records that output admissibility is required by a downstream consumer but unavailable.

It must identify morphism, target endpoint, target value or class, required mode, required scope, missing evidence, dependencies, epoch, blocked consumer, and replay context.

It does not prove codomain admissibility.

It prevents silent use of a morphism output outside its certified codomain.

## Universal codomain

The universal codomain satisfies:



    forall y:X_B,\ C_f(y)



Universal codomain means every target-side value is admissible for this morphism's codomain predicate.

It must be certified.

A target object with a large type does not imply universal codomain.

A runtime implementation producing any target-shaped value does not prove universal codomain.

## Restricted codomain

A restricted codomain is a proper subset of the target-side representation.

It may be defined by:



    C_f:X_B-> Prop



Restricted codomains must be explicit.

A morphism with restricted codomain cannot support claims about arbitrary target values unless codomain extension or coverage evidence is accepted.

## Empty codomain

The empty codomain satisfies:



    forall y, not  C_f(y)



It may represent an impossible output region, rejected morphism, diagnostic placeholder, or research-obligated state.

An empty codomain is not unknown.

A morphism with empty codomain generally cannot produce an admissible output unless the morphism has empty domain or the claim is rejected.

## Codomain equality

Two codomain predicates are equal only if their target endpoint, predicate definition, output-admissibility policy, preservation law, reflection law, partiality interaction, mode, scope, dependencies, certificates, epoch, proof boundary, trusted boundary, audit references, invalidations, and replay behavior coincide.

Pointwise equality may be one component:



    forall y,\ C_f(y)<=ftrightarrow C_g(y)



but framework codomain equality also includes proof and audit metadata where required.

Same predicate name is insufficient.

## Codomain equivalence

Codomain predicates may be equivalent under a declared relation.

Equivalence may be quotient, observable, approximate, replay, audit, migrated, refined, or path-based.

Codomain equivalence is not codomain equality.

A morphism construction may consume codomain equivalence only if the construction is congruent under that equivalence.

Codomain equivalence must be certified.

## Codomain inclusion

Codomain inclusion states:



    C_f(y)=> C_g(y)



for all relevant `y`.

This is useful for substitution, widening, refinement, and composition.

Inclusion is directional.

It is not equality.

A morphism with smaller codomain can often be used where a larger codomain is accepted, but the converse requires evidence.

## Codomain restriction

A morphism codomain may be restricted to a smaller target predicate:



    C_{f|R}(y):=C_f(y) and  R(y)



Restriction must record retained target cases, lost target cases, mode, scope, dependencies, certificates, epoch, and replay behavior.

Restriction is not equality.

Restricted codomain claims cannot support full-codomain consumers without coverage evidence.

## Codomain extension

A codomain may be extended:



    C_f(y)=> C_{f'}(y)



Extension permits more target values to be accepted.

Extension does not prove that the morphism actually produces those new target values.

A target implementation producing a broader class of outputs does not by itself prove codomain extension.

Codomain extension must be certified and replayable.

## Codomain preservation

Codomain preservation states that morphism outputs satisfy the codomain predicate.

For functional morphisms:



    D_f(x)=> C_f(f(x))



For relational morphisms:



    D_f(x) and  R_f(x,y)=> C_f(y)



For selected morphisms:



    D_f(x)=> C_f(select_f(x))



For stochastic morphisms:



    D_f(x)=> supp(K_f(x)) subseteq  C_f



Codomain preservation is not automatic.

It must be certified where used.

## Codomain reflection

Codomain reflection supports backward inference.

A reflection law may have form:



    C_{f'}(M(y))=> C_f(y)



under declared assumptions, or:



    C_g(y)=> C_f(y)



for a codomain inclusion reversed by proof.

Reflection is stronger than preservation.

It is required for invertibility, backward migration, representative recovery, and some refinement claims.

It is not automatic.

## Codomain preservation under equality

If target values are equal:



    y=z



then codomain membership may transfer:



    C_f(y)=> C_f(z)



only if the codomain predicate is congruent under the relevant equality.

For framework object equality, quotient equality, observable equality, approximate equality, or replay equality, codomain congruence must be declared separately.

## Codomain preservation under equivalence

If:



    y~ z



then:



    C_f(y)=> C_f(z)



requires representative independence or codomain congruence.

This is required for quotient morphisms.

A quotient relation that does not respect the codomain cannot support a quotient-codomain morphism.

## Codomain and quotienting

A morphism descends to a quotient only if its codomain predicate is representative-independent.

For representatives:



    y~ y'=> (C_f(y)<=ftrightarrow C_f(y'))



or an appropriate quotient-codomain condition.

Without codomain representative independence, quotient output admissibility is not well-defined.

Quotient compatibility requires domain compatibility, action compatibility, and codomain compatibility.

## Codomain and observables

An observable-codomain morphism may only establish output admissibility through an observable.

It must record observable map, observable codomain predicate, retained information, lost hidden information, dependencies, certificates, epoch, and replay behavior.

Observable-codomain membership cannot support hidden-codomain claims unless faithfulness or recovery is certified.

## Codomain and approximation

Approximate codomain membership may use residuals or tolerances:



    res_C(y)<=\varepsilon



This does not prove exact codomain membership unless a soundness theorem converts the residual to exact membership.

Approximate codomain evidence supports only approximate-codomain consumers.

Exact morphism use requires exact codomain admissibility when codomain admissibility is proof-relevant.

## Codomain and stochastic morphisms

A stochastic morphism may have a target-side codomain requiring support containment or distributional admissibility.

A typical law is:



    D_f(x)=> supp(K_f(x)) subseteq  C_f



or:



    K_f(x) in  Prob(C_f)



A sampled output does not prove stochastic codomain preservation.

Distributional admissibility must be certified.

## Codomain and selected morphisms

A selected morphism requires the selected output to satisfy the codomain predicate:



    D_f(x)=> C_f(select_f(x))



If selection produces a target outside the codomain, the selected morphism is rejected, partial, approximate, or research-obligated according to policy.

Selection cannot be inferred from runtime order.

## Codomain and domain

Domain and codomain are distinct.

Domain is source-side definedness.

Codomain is target-side admissibility.

A proof of domain membership:



    D_f(x)



does not prove:



    C_f(f(x))



unless codomain preservation is certified.

Morphism application may require both domain evidence and codomain evidence.

## Codomain and partiality

Partiality policy determines how outside-domain inputs and failed outputs are handled.

A morphism may be undefined, rejected, unknown, audit-only, fallback-valued, stochastic, or research-obligated.

No output may be treated as codomain-admissible merely because partiality policy produced it.

Codomain and partiality must be consistent.

## Codomain and identity morphisms

For identity morphism:



    id_A:A-> A



the codomain is usually the admissible region of `A`, but this must be stated.

If identity codomain is restricted, the restriction must be explicit.

A no-op implementation does not prove identity-codomain admissibility.

Object admissibility and codomain admissibility remain separate obligations.

## Codomain and composition

For composition:



    go f



the intermediate output of `f` must satisfy the domain predicate of `g`:



    D_f(x) and  C_f(f(x)) and  D_g(f(x))



or the relational analogue.

The codomain of the composite is generally governed by the codomain of `g`, but only after domain and preservation obligations are satisfied.

Composition-codomain claims must be certified.

## Codomain and associativity

Associativity of partial or restricted morphisms requires agreement of codomain and intermediate admissibility conditions.

The codomain behavior of:



    ho(go f)



and:



    (ho g)o f



must coincide or be related under the declared mode.

Associativity cannot be exact if codomain conditions differ unless equality or equivalence is certified.

## Codomain and functors

A functor mapping morphisms must preserve or transform codomains.

For:



    F(f):F(A)-> F(B)



the codomain of `F(f)` must be related to the image of the codomain of `f`.

Functoriality requires codomain preservation for identity and composition laws.

A morphism map that ignores codomains is not functorial for codomain-sensitive morphisms.

## Codomain and naturality

Naturality squares involving restricted codomains require codomain conditions for each composed side.

For:



    G(f)o \eta_A



and:



    \eta_Bo F(f)



the outputs of both composites must be compared in compatible codomains.

A naturality theorem must state whether codomain compatibility is exact, partial, quotient, observable, approximate, or restricted.

## Codomain and replay

Codomain replay reconstructs the codomain predicate, target endpoint, target value or class, admissibility proof or rejection, dependencies, certificates, epoch, status, proof boundary, trusted boundary, audit links, invalidations, and comparison relation.

A stored `validOutput=true` flag is not codomain replay.

A runtime output log is not codomain replay.

A cached output is not codomain evidence.

## Codomain and audit

Codomain audit links connect codomain claims to framework records, certificates, replay manifests, dependency records, trusted boundaries, migration nodes, refinement nodes, or history prefixes.

Audit links are traceability only.

They do not prove codomain admissibility unless paired with accepted codomain certificates.

## Codomain and certificates

Codomain certificates may prove:



    C_f(y)





    D_f(x)=> C_f(f(x))





    D_f(x) and  R_f(x,y)=> C_f(y)





    C_f(y)=> C_g(y)





    C_f(y)<=ftrightarrow C_g(y)



or codomain preservation, codomain reflection, codomain congruence, codomain migration, codomain refinement, codomain invalidation, and codomain replay claims.

Only accepted certificates discharge codomain obligations.

## Codomain and trusted boundaries

A trusted boundary may certify a codomain claim only if its trusted statement includes that claim.

A trusted serializer may certify output encoding.

It does not certify codomain admissibility unless the codomain predicate is part of the trusted statement.

A trusted runtime call may certify call output under its boundary.

It does not certify categorical codomain admissibility unless explicitly scoped.

## Codomain and proof boundaries

Codomain proofs may depend on proof boundaries.

If the proof uses axioms, verifier behavior, decoder behavior, finite enumerators, arithmetic kernels, replay engines, extraction boundaries, or trusted archives, those boundaries must be recorded.

Changing proof boundary may stale codomain claims.

## Codomain and epochs

Codomain predicates are epoch-indexed.

A codomain predicate at epoch `e`:



    C_{f,e}



is not automatically the same as:



    C_{f,e'}



Cross-epoch codomain use requires codomain migration, codomain equality, compatibility, re-verification, or audit-only policy.

Same morphism name across epochs is insufficient.

## Codomain migration

Codomain migration relates source and target codomain predicates:



    C_{f,e}(y)<=adsto C_{f,e'}(M(y))



It must record source morphism, target morphism, source endpoint, target endpoint, value migration, mode, scope, dependencies, certificates, invalidations, proof boundary, trusted boundary, audit links, and replay preservation.

Codomain migration is distinct from morphism migration.

Morphism migration depends on codomain migration.

## Codomain refinement

Codomain refinement may restrict, extend, sharpen, approximate, split, or strengthen a codomain predicate.

Refinement is not migration.

A refined codomain must preserve or explicitly relate to the original codomain.

If epoch changes, codomain migration evidence is required separately.

## Codomain invalidation

Codomain claims may become stale if target endpoint, type witness, codomain predicate, partiality policy, equality relation, equivalence relation, proof mode, scope, dependency closure, certificate schema, proof boundary, trusted boundary, epoch, audit schema, replay schema, or invalidation policy changes.

Invalidation is append-only.

The old codomain claim remains audit content.

## Codomain status

Codomain status is prefix-relative, epoch-relative, mode-relative, and scope-relative.

Possible statuses include proposed, accepted, rejected, unknown, stale, migrated, superseded, invalidated, approximate, quotient-valid, observable-valid, audit-only, and research-obligated.

An accepted codomain proof for audit does not imply accepted codomain proof for exact target use.

## Codomain equality

Two codomain records are equal only if morphism, target endpoint, codomain predicate, output-admissibility policy, preservation claim, reflection claim, partiality interaction, mode, scope, prefix, epoch, dependencies, certificates, status, invalidations, proof boundary, trusted boundary, audit links, and replay behavior coincide.

Same predicate name is insufficient.

Same runtime output behavior is insufficient.

## Codomain equivalence

Codomain records may be equivalent under a declared relation.

Examples include quotient codomain equivalence, observable codomain equivalence, approximate codomain equivalence, replay codomain equivalence, audit codomain equivalence, migrated codomain equivalence, refined codomain equivalence, or path codomain equivalence.

Equivalence is not equality.

Consumers must state which codomain equivalence they accept.

## Codomain path coherence

If multiple derivation paths establish a codomain predicate or output-admissibility proof, path coherence may be required.

Without path coherence, the path is part of codomain evidence.

Path-coherence certificates must record paths, morphism, target endpoint, codomain relation, modes, scopes, epochs, dependencies, certificates, invalidations, audit references, and replay behavior.

## Codomain and applications

Application-specific codomain predicates belong outside this abstract file.

`MorphismCodomain.lean` may define generic hooks for application-instantiated codomains.

It must not define concrete application codomains, bitmap codomains, matrix codomains, token codomains, image codomains, hash constants, Feistel codomains, UI output codomains, or runtime payload codomains.

## Codomain and `none`

No codomain rule may treat `none`, `null`, missing output, absent runtime value, or undefined runtime state as a mathematical default.

Absence may indicate undefinedness, rejection, unknown status, or data-level absence depending on partiality policy.

Undefinedness is not default target membership.

Authority-specific uninstalled-versus-installed semantics belong in the authority layer.

## Codomain certificates

Codomain certificates may prove:



    MorphismCodomain(f,C_f)





    CodomainMember(f,y)





    OutputAdmissible(f,x,y)





    MorphismLandsIn(f,C_f)





    CodomainPreserves(R,C_f,C_g)





    CodomainReflects(R,C_f,C_g)





    CodomainCongruent(C_f,~)





    CodomainReplayAdmissible(f)



or codomain equality, equivalence, restriction, extension, migration, refinement, invalidation, freshness, dependency closure, audit, and path-coherence claims.

Only accepted certificates discharge codomain obligations.

## Epoch rule

`MorphismCodomain.lean` artifacts are epoch-indexed by:

- morphism-codomain schema epoch;
- morphism-record epoch;
- target-endpoint epoch;
- target-type-witness epoch;
- codomain-predicate epoch;
- output-admissibility policy epoch;
- preservation-law epoch;
- reflection-law epoch;
- partiality-policy epoch;
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

Changing any component may stale downstream codomain claims.

The old codomain artifact remains audit content.

## History relation

A history record depending on `MorphismCodomain.lean` must record:

1. source file identity;
2. declaration identity;
3. morphism identity;
4. target endpoint;
5. codomain predicate;
6. output-admissibility claim;
7. preservation or reflection claim where used;
8. mode and scope;
9. prefix and epoch;
10. dependency closure;
11. certificates;
12. status;
13. invalidation behavior;
14. proof boundary;
15. trusted boundary where used;
16. audit reference;
17. replay data.

The target-object label or runtime output-production result alone is insufficient.

## Replay rule

Replay of `MorphismCodomain.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `lean/core/`, `lean/category/object/`, `CategoryMorphism.lean`, `MorphismEndpoint.lean`, and `MorphismDomain.lean`;
3. reconstructing codomain-predicate declarations;
4. reconstructing output-admissibility, universal-codomain, restricted-codomain, empty-codomain, codomain-equality, and codomain-equivalence records;
5. checking codomain preservation, reflection, restriction, extension, congruence, quotient, observable, approximate, stochastic, selected, migration, refinement, invalidation, and path-coherence declarations;
6. checking codomain interaction with target endpoints, domains, partiality, identity morphisms, composition, associativity, functors, naturality, certificates, epochs, audit, and replay;
7. checking proof objects or trusted boundaries where present;
8. checking that target-object membership and runtime output production are not treated as codomain admissibility;
9. checking that no runtime code or application constants are introduced;
10. checking dependency closure and audit metadata.

If any step fails, downstream codomain claims are not replay-admissible.

## Runtime representation

`MorphismCodomain.lean` may lower to:

- Lean codomain predicates;
- codomain-record declarations;
- output-admissibility theorem metadata;
- codomain-preservation descriptors;
- codomain-reflection descriptors;
- codomain-certificate descriptors;
- dependency manifests;
- audit-link descriptors;
- invalidation descriptors;
- replay descriptors.

Runtime representation is not codomain identity.

Codomain identity depends on morphism, target endpoint, codomain predicate, output-admissibility policy, preservation, reflection, partiality, mode, scope, prefix, epoch, dependencies, certificates, status, proof boundary, trusted boundary, audit reference, invalidations, and replay behavior.

## Non-collapse theorem

Let a value belong to the target object, be produced by a runtime function, be serialized successfully, be displayed, or be cached.

This does not imply morphism-codomain admissibility.

Codomain admissibility holds only when the typed codomain predicate is satisfied under the required mode, scope, prefix, epoch, dependencies, certificates, proof boundary, trusted boundary, audit references, invalidations, and replay behavior.

Thus target-object membership and runtime output production are insufficient for codomain admissibility.

## Proof obligation

`MorphismCodomain.lean` is admissible only if the framework can certify:

1. target-side codomain predicates are explicit;
2. output admissibility is distinct from target-object membership;
3. runtime output production is not codomain admissibility;
4. codomain preservation and reflection are explicit where used;
5. codomain congruence is explicit for quotienting and substitution;
6. codomain interaction with endpoints, domain, partiality, composition, functors, and naturality is explicit;
7. stochastic, selected, quotient, observable, and approximate codomains are distinguished;
8. dependencies, certificates, epochs, audit links, invalidations, proof boundaries, trusted boundaries, and replay behavior are explicit;
9. runtime representations and application constants are excluded;
10. `none` and `null` are not treated as defaults.

## Exclusion rule

`MorphismCodomain.lean` may not define concrete carrier codomains, concrete spectrum codomains, authority codomains, tensor codomains, sheaf codomains, operator codomains, history codomains, migration codomains, refinement codomains, application output codomains, runtime output validators, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract categorical morphism-codomain infrastructure.

## Commitment rule

`MorphismCodomain.lean` may define target-side codomain predicates and codomain laws.

It cannot treat target-object membership as codomain admissibility.

It cannot treat runtime output production as codomain admissibility.

It cannot infer output validity from execution success.

It cannot hide output-admissibility obligations.

It cannot produce default admissible outputs for undefined inputs.

It cannot infer defaults from optional fields, `none`, or `null`.

It cannot make cached outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceUnit.Variantb46f295d0d1fbfc8718bb6056877cdacf092d481d7d4a7d084ef599267518385

```
