/-
# Scope.lean

## Role

`Scope.lean` defines consumer-scope infrastructure for the Lean proof core.

A scope records where a theorem, relation, certificate, migration, refinement, replay claim, or proof-mode record may be used.

Scopes include proof, replay, audit, display, frame construction, authority mutation, tensor consumption, sheaf gluing, operator action, history migration, certificate reuse, verifier export, extraction, and application instantiation.

A scope is not a proof mode.

A scope is not a lifecycle status.

A scope is not a runtime environment.

It is a typed consumer boundary determining which evidence modes, dependencies, certificates, epochs, and replay behavior are admissible.

## Core principle

Every proof artifact has a use context.

A claim valid for audit may be invalid for current frame construction.

A claim valid for display may be invalid for proof.

A claim valid for quotient replay may be invalid for raw replay.

The proof core must make consumer scope explicit whenever scope affects admissibility.

## Formal shape

A scope record has schematic form:



    ScopeRecord=(kind,requiredMode,acceptedModes,subjects,consumerPolicy,deps,certs,epoch,audit,replay)



where:

- `kind` identifies the scope tag;
- `requiredMode` records the minimum evidence mode required by the consumer;
- `acceptedModes` records modes accepted under this scope;
- `subjects` records which object kinds the scope concerns;
- `consumerPolicy` records mode-compatibility and weakening rules;
- `deps` records dependency closure required by the scope;
- `certs` records certificates proving scope admissibility;
- `epoch` records semantic coordinates;
- `audit` records traceability;
- `replay` records reconstruction behavior.

The scope record classifies admissible use.

It does not prove the consumed claim.

## Scope tag

The file may define an inductive tag type:



    ScopeKind



with constructors such as:



    Proof





    Replay





    Audit





    Display





    FrameConstruction





    AuthorityMutation





    TensorConsumption





    SheafGluing





    OperatorAction





    HistoryMigration





    CertificateReuse





    VerifierExport





    Extraction





    ApplicationInstantiation



The constructors classify consumer contexts.

They do not establish admissibility by themselves.

## Proof scope

Proof scope is used when a theorem, certificate, or proof artifact must discharge a formal obligation.

Proof scope usually requires exact evidence unless the statement itself is approximate, quotient, observable, probabilistic, partial, or otherwise weakened.

A proof-scope consumer must reject weaker evidence unless its theorem statement explicitly accepts that weaker mode.

## Replay scope

Replay scope is used when a claim must be reconstructible by replay.

Replay scope requires replay target, replay procedure, schemas, dependencies, comparison relation, certificates, epoch, and invalidation behavior.

Stored output is insufficient.

Replay scope may be exact, approximate, quotient, observable, summary, checkpoint, partial, rejected, unknown, or audit-only, but the mode must be explicit.

## Audit scope

Audit scope is used for historical explanation and traceability.

Audit scope may accept stale, rejected, unknown, superseded, audit-only, research-obligated, or weaker evidence when the purpose is to explain what was known or attempted at a source prefix.

Audit scope does not imply current-use validity.

An audit-valid artifact may be invalid for proof, replay, authority mutation, or frame construction.

## Display scope

Display scope is used for rendering, reporting, summaries, diagnostics, and user-facing views.

Display scope may accept observable, summary, quotient, checkpoint, approximate, or audit-only information when the display policy permits it.

Display scope must not be used to discharge hidden-state, proof, authority, tensor, sheaf, operator, or raw replay obligations.

Displayed equality is not proof equality.

## Frame-construction scope

Frame-construction scope is used when constructing or committing a frame.

It is mode-sensitive and dependency-sensitive.

A frame requiring exact dependencies must reject approximate, quotient, observable, summary, checkpoint, audit-only, unknown, rejected, stale, or research-obligated evidence unless the frame claim is weakened accordingly.

Frame-construction scope must preserve authority, tensor, sheaf, async, operator, history, certificate, epoch, and replay dependencies.

## Authority-mutation scope

Authority-mutation scope is used when installing, anchoring, updating, rejecting, or recording authority state.

It must preserve the distinction between uninstalled bootstrap state and installed mathematical values.

No scope may treat `null`, `none`, or missing value as a mathematical default.

Authority-mutation scope generally requires exact authority evidence unless the authority policy explicitly permits a weaker mode.

## Tensor-consumption scope

Tensor-consumption scope is used when a tensor, tensor factor, product spectrum, contraction plan, contraction result, dependency graph, or local emission is consumed by another theorem or frame.

It must record whether the consumer requires factor-level equality, contraction-result equality, observable output, quotient result, approximate error, or summary information.

Same contraction output is insufficient for full tensor-consumption scope unless full tensor equivalence is certified.

## Sheaf-gluing scope

Sheaf-gluing scope is used when local sections are treated as compatible or globally glued.

It requires site, cover, restrictions, overlaps, compatibility, obstruction, repair witness, gluing datum, global candidate, certificates, and replay behavior where relevant.

Local section migration, equality, or display is insufficient.

A gluing-scope consumer must reject unresolved obstruction or research-obligated repair unless the consumer explicitly accepts unresolved status.

## Operator-action scope

Operator-action scope is used when applying or certifying an operator action.

It requires domain membership, codomain admissibility, partiality policy, action rule, spectra, dependencies, certificates, epoch, and replay behavior.

Runtime execution is insufficient.

A target output cannot satisfy operator-action scope unless the operator action law is certified under the declared mode.

## History-migration scope

History-migration scope is used when history records, prefixes, parent relations, append operations, commitments, views, forks, merges, invalidations, certificates, and replay manifests are migrated across epochs.

It must preserve append-only semantics under exact mode.

A final replay state or decoded target record is insufficient for history-migration scope.

## Certificate-reuse scope

Certificate-reuse scope is used when a certificate accepted in one context is reused in another.

It requires statement equality or migration, subject equality or migration, verifier compatibility, payload compatibility, dependency freshness, proof-boundary compatibility, result-mode compatibility, epoch compatibility, and replay behavior.

A source certificate is not reusable at a target epoch by default.

## Verifier-export scope

Verifier-export scope is used when Lean artifacts are exported to verifier-facing formats.

It must record theorem statement, proof object or trusted boundary, input schema, output schema, payload reference, dependency closure, proof mode, scope, epoch, and replay behavior.

A theorem name alone is insufficient.

Exporting a statement does not prove extraction correctness.

## Extraction scope

Extraction scope is used when Lean definitions, theorem checkers, or certificate validators are extracted into runtime-facing code.

It must record source Lean declaration, target language, trusted extraction boundary, proof-erasure policy, checker schema, result schema, dependencies, proof boundary, epoch, and replay behavior.

Extraction is not semantic preservation unless certified.

Extracted code is not the proof core.

## Application-instantiation scope

Application-instantiation scope is used when abstract framework definitions are instantiated by an application layer.

It may bind abstract parameters to concrete carriers, spectra, authorities, tensors, histories, migrations, or artifact values.

Such instantiation must remain outside the abstract proof core unless explicitly declared as an example proof module.

Application-instantiation scope must not import application constants into `lean/core/`.

## Scope and proof mode

Scope and proof mode are distinct.

Mode classifies evidence strength.

Scope classifies consumer context.

For example:



    Exact



is a mode, while:



    FrameConstruction



is a scope.

A frame-construction scope may require exact mode.

A display scope may accept observable or summary mode.

The acceptance relation must be explicit.

## Scope and status

Scope and status are distinct.

Status records lifecycle state, such as accepted, rejected, stale, unknown, migrated, invalidated, or audit-only.

Scope records intended use.

A certificate may have accepted status and audit-only scope.

A theorem may be exact-mode but stale for proof scope.

No status may be treated as global scope validity.

## Scope and dependency closure

Each scope may require different dependency closure.

Proof scope may require full proof-relevant dependencies.

Display scope may require retained-display dependencies.

Audit scope may require historical provenance dependencies.

Frame-construction scope may require all current dependency certificates and freshness.

Dependency closure is scope-relative.

## Scope and freshness

Freshness is scope-relative.

An artifact may be fresh for audit but stale for proof.

It may be fresh for display but stale for replay.

It may be fresh for quotient consumers but stale for representative-sensitive consumers.

The file must support predicates such as:



    FreshFor(scope,artifact,epoch)



or equivalent.

## Consumer compatibility

The file may define:



    ScopeAccepts(scope,providedMode)



or:



    CanConsume(scope,requiredMode,providedMode)



This relation determines admissible consumption.

It must be typed and certificate-backed where proof-relevant.

A consumer must not silently accept weaker evidence.

## Required mode

A scope may specify a required mode.

Examples:



    RequiredMode(Proof)=Exact



for exact proof obligations.



    RequiredMode(Display)=Observable



for display-only claims, where policy permits.

The required mode may depend on the statement.

A globally fixed mode for every instance of a scope is usually too coarse.

## Accepted modes

A scope may accept several modes.

For example, audit scope may accept accepted, rejected, stale, unknown, audit-only, and research-obligated records.

Display scope may accept observable, summary, or checkpoint evidence.

Proof scope may accept approximate evidence only when the theorem statement is approximate.

Accepted-mode policy must be explicit.

## Mode mismatch under scope

A mode mismatch occurs when:



    Required(scope,claim)>Provided(claim)



under the declared consumer policy.

Examples include:

- proof scope consuming audit-only evidence;
- frame-construction scope consuming stale certificate evidence;
- authority-mutation scope consuming approximate authority migration;
- raw replay scope consuming summary replay;
- operator-action scope consuming runtime execution only;
- sheaf-gluing scope consuming local sections without compatibility proof.

Mode mismatch rejects the use or creates a research obligation.

## Scope weakening

A claim may be weakened to a less demanding scope.

For example, a proof-scope theorem may support audit scope.

An exact replay theorem may support display scope through an observable projection.

Weakening must record retained and lost information.

Scope weakening is not the same as mode weakening, though they may occur together.

## Scope strengthening

A claim may be strengthened to a more demanding scope only by new evidence.

For example, display evidence may be strengthened to proof evidence only if hidden state, dependencies, certificates, and replay behavior are certified.

Audit-only evidence may be strengthened to current-use evidence only through migration, re-verification, or freshness certificates.

Scope strengthening is not automatic.

## Scope composition

Composite claims inherit the strictest relevant scope requirements from their dependencies.

If a frame-construction claim depends on a display-only component, the frame claim must be weakened or rejected.

If a proof claim depends on audit-only migration evidence, proof scope is not satisfied.

Composition rules must compute or declare the resulting scope.

## Scope meet

When several scopes interact, the effective scope is the consumer scope demanding all required obligations.

For example, a verifier-exported frame proof may require proof scope, verifier-export scope, replay scope, and audit scope.

The meet must preserve the strongest applicable dependency and replay obligations.

It must not silently drop stricter scopes.

## Scope equivalence

Two scopes may be equivalent for a particular consumer policy.

For example, a display scope and an observable-reporting scope may be equivalent if they accept the same retained information and invalidation behavior.

Scope equivalence is not equality.

It must be declared and certified.

## Scope equality

Two scope records are equal only if their kind, required modes, accepted modes, subjects, consumer policies, dependencies, certificates, epochs, audit references, and replay behavior coincide.

Same scope tag is insufficient.

Same name in a theorem is insufficient.

Same UI label is insufficient.

## Scope invalidation

A scope record becomes stale if its consumer policy, accepted modes, dependency requirements, certificate requirements, proof boundary, epoch, replay schema, or audit policy changes.

Invalidation is append-only.

The old scope record remains audit content.

A stale scope cannot justify current consumption unless freshness is restored.

## Scope migration

A scope may migrate across epochs.

Migration must preserve kind, consumer policy, required modes, accepted modes, dependency requirements, invalidation behavior, certificates, proof boundary, and replay behavior, or declare a weaker migration mode.

Same scope tag at the target epoch is insufficient.

## Scope refinement

A scope may refine by becoming more precise.

Examples include narrowing accepted modes, adding dependency requirements, distinguishing display from observable proof, or distinguishing raw replay from checkpoint replay.

Refinement is not migration.

Scope refinement must be recorded separately where proof-relevant.

## Scope and equality

Equality theorems must declare scope when equality is used by a consumer.

Raw equality for proof scope may not be needed for display scope.

Observable equality may satisfy display scope but fail proof scope.

Scope determines which equality notion is admissible.

## Scope and equivalence

Equivalence relations are scope-sensitive.

A quotient equivalence may be sufficient for quotient scope.

An audit equivalence may be sufficient for audit scope.

Representative-sensitive proof scope requires raw equality, representative recovery, or representative independence.

## Scope and relation schemas

Relation schemas carry scope.

A relation may be accepted for audit but rejected for proof.

It may be exact for a restricted proof scope and observable for display scope.

The relation schema must include the scope or reference scope-indexed admissibility.

## Scope and certificates

Certificates carry scope.

A certificate accepted for audit explanation does not discharge current proof obligations.

A verifier-export certificate may not support runtime extraction unless extraction scope is also certified.

Certificate scope is part of certificate identity.

## Scope and replay

Replay claims carry scope.

Raw replay scope requires reconstruction of procedures, dependencies, schemas, verifiers, certificates, and comparison relation.

Display replay scope may reconstruct only observables.

Checkpoint replay scope may reconstruct materialized state.

Stored output never satisfies replay scope by itself.

## Scope and trusted boundary

Trusted boundaries are scope-bound.

A trusted hash boundary may support byte-integrity scope.

It does not support semantic proof scope unless encoding and interpretation soundness are certified.

A trusted archive may support audit scope without supporting target certificate reuse.

## Scope and authorities

Authority mutation scope must enforce authority-specific policies.

It must distinguish uninstalled state from installed default.

It must reject hidden default inference.

It must require appropriate authority certificates, history replay, mutation ledger evidence, and epoch freshness.

## Scope and tensors

Tensor consumption scope must state whether it consumes factor data, contraction result, dependency graph, product spectrum, local emission, or display output.

A summary tensor result cannot satisfy factor-sensitive tensor scope.

Mode and retained information must match the consumer.

## Scope and sheaves

Sheaf gluing scope must state whether it consumes local sections, compatibility proof, obstruction class, repair witness, gluing datum, or global section candidate.

A display of local sections cannot satisfy gluing scope.

Obstruction and repair obligations must remain explicit.

## Scope and operators

Operator action scope must state whether it consumes domain membership, codomain membership, action result, kernel, image, adjoint, fixed point, or spectrum action.

A target output cannot satisfy operator-action scope unless domain, partiality, and action compatibility are certified.

## Scope and histories

History migration and replay scopes must preserve append-only semantics under exact mode.

History display scope may show a view or summary.

Raw history proof scope cannot consume a view unless raw backing or view sufficiency is certified.

## Scope and certificates

Certificate reuse scope requires current validity of statement, subject, verifier, payload, result mode, dependencies, proof boundary, epoch, and replay behavior.

Audit scope may preserve old certificate existence.

Certificate reuse scope requires more.

The two scopes must not be collapsed.

## Scope and verifier export

Verifier-export scope requires that exported artifacts preserve statement schema, input schema, output schema, dependency closure, result mode, proof boundary, and replay behavior.

A Lean theorem may be valid in proof scope but not yet exportable.

Exportability is a separate scope.

## Scope and extraction

Extraction scope requires proof that extracted checker behavior matches the Lean-side verifier specification under a trusted extraction boundary.

A theorem accepted in Lean proof scope is not automatically accepted in extraction scope.

Extraction scope must record target runtime assumptions.

## Scope and application instantiation

Application-instantiation scope allows concrete application values to instantiate abstract parameters only at the application boundary.

It must not pollute `lean/core/`.

An application proof may cite core scopes, but core scope declarations must remain application-independent.

## Scope and research obligations

A research-obligated scope records a blocked use.

It states which consumer wanted to use which claim, which mode was required, which evidence was missing, and which dependencies blocked acceptance.

It does not prove the claim.

It prevents silent forced acceptance.

## Scope and partiality

A scope may be partial.

For example, proof scope may apply only to selected inputs, selected records, selected opens, selected prefixes, or selected target epochs.

Partial scope must record its domain.

Consumers must prove they are inside the scope.

## Scope and probabilistic evidence

A scope may accept probabilistic evidence only if the consumer policy permits it.

Proof scope may reject probabilistic evidence unless the theorem statement is probabilistic.

Display scope may accept probabilistic confidence summaries.

Authority mutation generally should reject probabilistic evidence unless policy explicitly permits it.

## Scope certificates

Scope certificates may prove:



    ScopeAccepts(scope,mode)





    RequiredMode(scope,claim)=mode





    FreshFor(scope,artifact,epoch)





    ModeMismatch(scope,claim,mode)





    Weakens(scope_1,scope_2)





    EquivalentScope(scope_1,scope_2)



or consumer-policy, dependency-closure, invalidation, migration, refinement, replay, verifier-export, extraction, and audit-scope claims.

Only accepted certificates discharge scope obligations.

## Scope as dependency

Scopes are dependencies of theorem statements, relation schemas, proof modes, statuses, certificates, histories, refinements, migrations, replay manifests, verifier exports, extraction artifacts, and application instantiations.

Changing a scope policy may stale downstream artifacts.

Scope records must be replayable and auditable.

## Epoch rule

`Scope.lean` artifacts are epoch-indexed by:

- scope-interface epoch;
- scope-kind epoch;
- required-mode policy epoch;
- accepted-mode policy epoch;
- consumer-policy epoch;
- dependency-record epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- audit-policy epoch;
- replay-schema epoch;
- verifier-export epoch;
- extraction-boundary epoch;
- application-instantiation boundary epoch.

Changing any component may stale downstream scope claims.

The old scope artifact remains audit content.

## History relation

A history record depending on `Scope.lean` must record:

1. source file identity;
2. declaration identity;
3. scope kind;
4. required mode;
5. accepted modes;
6. consumer policy;
7. subject object kinds;
8. dependency closure;
9. certificate references;
10. epoch;
11. proof boundary;
12. replay data;
13. audit reference.

The scope tag alone is insufficient.

## Replay rule

Replay of `Scope.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean`, `ObjectInterface.lean`, `RelationSchema.lean`, `Equality.lean`, `Equivalence.lean`, and `ProofMode.lean`;
3. checking scope tag declarations;
4. checking consumer-policy declarations;
5. checking required-mode and accepted-mode rules;
6. checking weakening, strengthening, mismatch, composition, meet, invalidation, and freshness declarations;
7. checking verifier-export, extraction, and application-instantiation boundaries;
8. checking that no concrete runtime or application constants are introduced;
9. checking proof objects or trusted boundaries where present;
10. checking dependency closure and certificate metadata.

If any step fails, downstream scope claims are not replay-admissible.

## Runtime representation

`Scope.lean` may lower to:

- Lean inductive scope tags;
- scope records;
- consumer-policy tables;
- mode-compatibility descriptors;
- verifier-facing scope metadata;
- extraction-boundary descriptors;
- application-instantiation boundary metadata;
- audit references.

Runtime representation is not scope identity.

Identity depends on scope kind, required modes, accepted modes, consumer policy, dependencies, epochs, certificates, proof boundaries, and replay behavior.

## Non-collapse theorem

Let two scope records have the same scope tag.

This does not imply the records are equal.

They collapse only if their required modes, accepted modes, consumer policies, subjects, dependency closures, certificates, epochs, proof boundaries, audit references, and replay behavior coincide.

Thus tag equality is insufficient for scope identity.

## Proof obligation

`Scope.lean` is admissible only if the framework can certify:

1. scope tags are explicit;
2. scope is distinct from proof mode;
3. scope is distinct from lifecycle status;
4. proof, replay, audit, display, frame-construction, authority-mutation, tensor-consumption, sheaf-gluing, operator-action, history-migration, certificate-reuse, verifier-export, extraction, and application-instantiation scopes are distinguishable;
5. consumer compatibility is explicit;
6. required and accepted modes are explicit;
7. dependency requirements are scope-relative;
8. freshness is scope-relative;
9. scope policies are replayable;
10. concrete runtime and application constants are excluded;
11. replay can reconstruct scope declarations and dependencies.

## Exclusion rule

`Scope.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application values, runtime environments, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract consumer-scope infrastructure.

## Commitment rule

`Scope.lean` may define consumer scopes and scope admissibility infrastructure.

It cannot prove claims merely by placing them in proof scope.

It cannot make display evidence proof evidence.

It cannot make audit-only evidence current-use evidence.

It cannot make weaker modes satisfy stronger consumers without certificates.

It cannot infer defaults from `none` or `null`.

It cannot make stored outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
