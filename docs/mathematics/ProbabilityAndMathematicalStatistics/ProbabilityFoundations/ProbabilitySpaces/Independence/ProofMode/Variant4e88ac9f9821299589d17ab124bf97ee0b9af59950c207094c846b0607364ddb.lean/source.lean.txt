/-
# ProofMode.lean

## Role

`ProofMode.lean` defines proof-mode infrastructure for the Lean proof core.

It provides tags and records for exact, approximate, quotient, observable, summary, checkpoint, probabilistic, partial, rejected, unknown, audit-only, trusted-boundary, and research-obligated evidence.

A proof mode classifies the strength, retained information, lost information, admissible consumers, invalidation behavior, dependency requirements, certificate requirements, epoch sensitivity, and replay behavior of a proof-layer claim.

A proof-mode tag is not proof.

It is not a verifier result.

It is not a runtime status.

It is not a migration by itself.

It is a typed classification used by theorem statements, relation schemas, certificates, migrations, refinements, histories, and replay claims.

## Core principle

Every proof-layer claim must declare its mode when the mode affects admissibility.

A theorem in exact mode cannot be replaced by an approximate theorem.

A quotient theorem cannot be consumed as representative-sensitive evidence.

An observable theorem cannot be consumed as hidden-state evidence.

An audit-only theorem cannot be consumed as current target proof.

Mode-sensitive admissibility must be explicit.

## Formal shape

A proof-mode record has schematic form:



    ProofModeRecord=(kind,retained,lost,comparison,scope,consumerPolicy,invalidations,deps,certs,epoch,replay)



where:

- `kind` identifies the mode tag;
- `retained` records preserved information;
- `lost` records omitted, weakened, hidden, or unavailable information;
- `comparison` records equality, equivalence, metric, quotient, observable, summary, checkpoint, probabilistic, or audit comparison;
- `scope` records where the mode applies;
- `consumerPolicy` records which consumers may use the mode;
- `invalidations` records claims made stale by the mode;
- `deps` records dependency closure;
- `certs` records accepted evidence;
- `epoch` records semantic coordinates;
- `replay` records reconstruction behavior.

The record refines a mode tag into usable proof metadata.

The tag alone is insufficient.

## Mode tag

The file may define an inductive tag type:



    ProofModeKind



with constructors such as:



    Exact





    Approximate





    Quotient





    Observable





    Summary





    Checkpoint





    Probabilistic





    Partial





    Rejected





    Unknown





    AuditOnly





    TrustedBoundary





    ResearchObligated



The constructors classify evidence.

They do not prove that evidence is valid.

## Exact mode

Exact mode claims preservation or truth without unrecorded loss for a declared scope.

A canonical exact claim may have form:



    x=y



or:



    M_Y(f_e(x))=f_{e'}(M_X(x))



Exact mode may support exact proof, exact replay, exact frame construction, exact authority mutation, exact operator action, exact tensor contraction, exact sheaf gluing, or exact history replay when all dependencies are fresh.

Exact mode is inadmissible if required information is omitted.

## Approximate mode

Approximate mode claims preservation up to a bound:



    d(x,y)<=epsilon



or:



    res(x,y)<=epsilon



It must record metric, topology, tolerance carrier, error composition, retained information, lost exactness, and consumer scope.

Approximate mode cannot discharge exact obligations unless a strengthening theorem proves exactness.

## Quotient mode

Quotient mode claims preservation only after quotienting:



    q(x)=q(y)



or:



    [x]=[y]



It retains equivalence-class information.

It loses representative identity unless representative recovery or representative independence is certified.

Quotient mode may support quotient consumers.

It must not support representative-sensitive consumers by default.

## Observable mode

Observable mode claims equality or compatibility only after applying an observable:



    Obs(x)=Obs(y)



It retains observable information.

It loses hidden-state information.

Observable mode supports only consumers certified to depend only on the observable.

It cannot support raw proof or hidden-state replay unless faithfulness or recovery is certified.

## Summary mode

Summary mode claims preservation of a summary:



    Summary(x)=Summary(y)



It must identify retained fields, omitted fields, summary function, sufficiency scope, and invalidation policy.

Summary mode is lossy unless raw reconstruction is certified.

It cannot support raw replay, raw audit, or exact proof by default.

## Checkpoint mode

Checkpoint mode claims validity through materialized replay state.

It must record covered prefix, covered records, checkpoint payload, dependency closure, invalidation policy, replay scope, certificates, and epoch.

Checkpoint mode is not raw replay unless checkpoint-only replay is accepted for the declared scope.

Checkpoint consumers must explicitly accept checkpoint evidence.

## Probabilistic mode

Probabilistic mode claims validity under probability, confidence, stochastic kernel, randomized verifier, or sampling assumptions.

It must record probability space, random variables, sampling law, support, confidence parameter, independence assumptions, trusted randomness boundary, and replay policy.

Probabilistic mode is not deterministic proof.

It cannot satisfy exact deterministic consumers unless derandomization or deterministic strengthening is certified.

## Partial mode

Partial mode claims validity only on a declared domain or scope:



    Dsubseteq X



A partial theorem must record the domain.

Consumers must prove that their use lies inside the partial domain.

Partial mode cannot support total claims without coverage evidence.

## Rejected mode

Rejected mode records that a proposed claim failed.

It may carry failure reason, rejected statement, subject, verifier result, dependencies, epoch, and replay data.

Rejected mode is audit and diagnostic content.

It does not provide usable proof evidence.

## Unknown mode

Unknown mode records that the proof core cannot establish the claim.

Unknown is not accepted.

Unknown is not false.

Unknown may block downstream use, trigger proof search, or create a research obligation.

It must not be converted silently into approximate, quotient, observable, or accepted evidence.

## Audit-only mode

Audit-only mode preserves historical explanatory value.

It may record that a statement, proof, certificate, replay, migration, or status existed at a source epoch or prefix.

Audit-only mode does not certify current target use.

It cannot support current frame construction, authority mutation, exact replay, or target proof obligations unless strengthened.

## Trusted-boundary mode

Trusted-boundary mode records reliance on a declared trusted component.

Examples include:

- Lean kernel;
- trusted arithmetic kernel;
- trusted finite enumerator;
- trusted canonical decoder;
- trusted hash;
- trusted verifier;
- trusted replay engine;
- trusted archive;
- trusted extraction boundary.

The trusted boundary must name the statement it certifies.

Trusted-boundary mode is not exact mode unless the trusted statement covers exact preservation.

## Research-obligated mode

Research-obligated mode records that a needed claim is unresolved and must not be assumed.

It carries unresolved statement, source object, target object where relevant, missing evidence, dependencies, blocked consumers, intended mode, and replay context.

It supports research ledgers and blocked-proof reports.

It does not prove the claim.

## Retained information

The retained-information field records what survives under the mode.

Examples include:

- raw value;
- equality proof;
- equivalence class;
- observable;
- summary;
- checkpoint state;
- probability bound;
- selected domain;
- audit provenance;
- certificate status;
- replay result;
- dependency closure;
- proof boundary;
- trusted-boundary statement.

Retained information is part of mode identity.

## Lost information

The lost-information field records what is not preserved.

Examples include:

- representative identity;
- exact equality;
- hidden state;
- raw proof payload;
- branch alternatives;
- dependency details;
- replay trace;
- local section data;
- repair witness;
- stochastic sample path;
- exact verifier trace.

Unspecified proof-relevant loss is inadmissible.

## Comparison relation

A mode must identify its comparison relation when comparison is proof-relevant.

Examples include:



    x=y





    x~ y





    q(x)=q(y)





    Obs(x)=Obs(y)





    d(x,y)<=epsilon





    Replay(x)=Replay(y)



The comparison relation must be typed.

A display match is not a comparison relation unless formalized.

## Consumer compatibility

The file may define a relation:



    ModeAccepts(consumer,mode)



or:



    CanConsume(scope,required,provided)



This relation is proof-relevant.

Exact consumers generally reject weaker modes.

Display consumers may accept observable or summary modes.

Audit consumers may accept audit-only modes.

Every acceptance rule must be explicit.

## Mode mismatch

A mode mismatch occurs when a consumer requires stronger evidence than the provided mode supplies.

Examples include:

- exact proof consuming approximate evidence;
- representative-sensitive claim consuming quotient evidence;
- hidden-state claim consuming observable evidence;
- raw replay consuming summary evidence;
- current target proof consuming audit-only evidence;
- accepted certificate reuse consuming unknown evidence.

Mode mismatch must reject or create a research obligation.

## Strengthening

A mode may be strengthened by new evidence.

Examples include:



    Approximate-> Exact





    Quotient-> Representative





    Observable-> Raw





    Unknown-> Accepted





    Checkpoint-> RawReplay



Strengthening is not automatic.

It requires a theorem or accepted certificate.

## Weakening

A mode may be weakened by a certified projection.

Examples include:



    Exact-> Quotient





    Exact-> Observable





    Exact-> Summary





    RawReplay-> Checkpoint





    CurrentUse-> AuditOnly



Weakening must record lost information and admissible consumers.

## Mode composition

When claims compose, modes compose.

Exact followed by approximate generally yields approximate.

Exact followed by quotient yields quotient.

Observable followed by exact observable remains observable.

Summary followed by exact summary remains summary.

No composition may silently strengthen the result.

Mode-composition rules must be declared and certified where proof-relevant.

## Mode meet

When a theorem depends on multiple premises with different modes, the resulting mode must be computed or declared.

The result may be weaker than every individual premise for the intended consumer.

For example, exact carrier evidence plus observable spectrum evidence yields observable admissibility, not exact admissibility.

Mode meet is scope-relative.

## Mode hierarchy caution

Proof modes do not form a universal total order.

Quotient and observable modes may be incomparable.

Summary and checkpoint modes may preserve different information.

Audit-only and unknown modes are not accepted semantic preservation.

Any ordering must be stated for a specific consumer scope and comparison relation.

## Mode and scope

A proof mode is meaningful only relative to scope.

Exact audit evidence is not necessarily exact current-use evidence.

Observable display evidence is not operator-action evidence.

Checkpoint replay evidence is not raw history evidence.

The mode record must include or reference the relevant scope.

## Mode and status

Proof mode is distinct from status.

A theorem may be in approximate mode and accepted status.

A claim may be in exact mode but rejected status.

A source certificate may be exact-mode but stale status at a target epoch.

Mode classifies strength.

Status classifies lifecycle state.

## Mode and equality

Equality claims are mode-sensitive.

Raw equality, quotient equality, observable equality, approximate equality, replay equality, and audit identity are distinct.

The proof mode must state which equality or equivalence notion is being used.

A theorem may not omit mode when equality notion affects downstream use.

## Mode and equivalence

Equivalence claims are mode-sensitive.

A quotient equivalence relation supports quotient consumers.

An audit equivalence relation supports audit consumers.

An approximate equivalence relation supports tolerance-bounded consumers.

Equivalence mode must be recorded in equivalence schemas and certificates.

## Mode and relation schemas

Relation schemas carry mode.

A relation with the same predicate but different mode is a different framework relation artifact.

For example, a relation may be exact in one scope, observable in another, and audit-only after invalidation.

The mode field is part of relation identity.

## Mode and certificates

Certificates carry mode.

A certificate's mode tells what its accepted result may discharge.

A certificate accepted in quotient mode cannot discharge exact obligations.

A trusted-boundary certificate cannot discharge claims outside its trusted statement.

Certificate mode is part of certificate identity.

## Mode and replay

Replay claims carry mode.

Exact replay requires exact preservation of replay procedures, schemas, dependencies, verifiers, comparison relation, and result.

Checkpoint replay and summary replay are weaker.

Stored output equality cannot upgrade replay mode.

## Mode and audit

Audit may record all modes.

Rejected, unknown, stale, audit-only, and research-obligated modes remain useful for audit.

Audit availability does not imply current-use admissibility.

Mode records must remain replayable in history.

## Mode and history

When mode records are stored in history, later records may strengthen, weaken, invalidate, supersede, or reject them.

They do not edit old mode records.

Append-only history must reconstruct both old mode and later status changes.

## Mode and migration

Migration loss mode and proof mode are related but distinct.

A migration may have a loss mode.

A theorem certifying that migration may have a proof mode.

For example, an exact proof may certify that a migration is quotient-mode.

The file must not collapse proof mode with migration loss mode.

## Mode and refinement

Refinement claims use proof modes to classify exact reconstruction, approximate error bounds, quotient preservation, observable preservation, partial domains, or convergence obligations.

A refinement mode does not imply migration mode.

Precision movement and epoch movement remain distinct.

## Mode and authority

Authority claims must respect mode.

An exact authority mutation cannot consume approximate, quotient, observable, audit-only, unknown, or rejected authority evidence unless authority policy explicitly permits a weaker mode.

`null` remains uninstalled bootstrap state under every mode.

No mode turns `null` into default section.

## Mode and tensor

Tensor claims must declare whether they preserve factors, contraction result, local emission, product spectrum, or only observable/summary output.

Same contraction result in summary mode does not certify tensor equality.

Tensor consumers must declare accepted mode.

## Mode and sheaf

Sheaf claims must distinguish exact gluing, approximate compatibility, quotient obstruction class, observable section display, summary obstruction report, and research-obligated repair.

Local sections do not glue by switching mode labels.

Mode does not erase obstruction obligations.

## Mode and operator

Operator claims must distinguish exact action, approximate action, quotient action, observable output, partial domain, rejected action, and unknown domain behavior.

Runtime execution does not upgrade mode.

Operator domain and partiality must remain explicit.

## Mode and history replay

History replay claims may be exact, quotient, observable, summary, checkpoint, partial, rejected, unknown, or audit-only.

Same final state is not exact history replay.

The mode must record retained and lost historical information.

## Mode and trusted boundary

A trusted boundary may supply proof for a mode.

The trusted statement must be explicit.

A trusted hash can support byte-integrity mode.

It cannot support semantic exact mode unless encoding and interpretation soundness are certified.

## Mode invalidation

A mode record becomes stale if kind, retained information, lost information, comparison relation, consumer policy, dependency closure, proof boundary, epoch, certificate, or replay schema changes.

Invalidation is append-only.

The old mode record remains audit content.

## Mode freshness

A mode is fresh for a consumer only if its dependencies, certificates, proof boundary, scope, epoch, and replay behavior remain valid for that consumer.

Freshness is not global.

A mode may be fresh for audit but stale for proof.

## Mode equality

Two proof-mode records are equal only if their kind, retained information, lost information, comparison relation, scope, consumer policy, invalidations, dependencies, certificates, epochs, proof boundaries, and replay behavior coincide.

Same mode tag is insufficient.

Same label in a theorem name is insufficient.

## Mode equivalence

Two proof modes may be equivalent for a declared consumer scope.

For example, a raw theorem and a quotient theorem may be equivalent for a quotient-only consumer if quotient projection is certified.

They are not equal.

Equivalence of modes must be declared and certified.

## Mode reflection

Mode reflection derives constraints from a mode.

For example:



    mode=Exact=> lost=varnothing



under a declared exactness policy.

Such reflection requires a theorem.

A tag alone should not be pattern-matched as proof of all semantic fields unless the record constructor enforces them.

## Mode preservation

A transformation may preserve mode:



    mode(claim)=mode(transformedClaim)



or weaken it.

Preservation must account for retained information, lost information, scope, dependencies, certificates, and replay.

Mode preservation is not automatic under migration, refinement, or extraction.

## Mode under extraction

If proof-mode metadata is exported to a verifier or runtime-facing checker, extraction must preserve tag, retained information, lost information, consumer policy, dependencies, certificates, epoch, and replay references.

An extracted enum alone is insufficient for framework use.

Extraction boundary must be explicit.

## Mode certificates

Proof-mode certificates may prove:



    kind(m)=Exact





    retained(m)=R





    lost(m)=L





    CanConsume(scope,required,provided)





    Composes(m_1,m_2,m_3)





    Fresh(m,scope,e)



or weakening, strengthening, mismatch, invalidation, equivalence, replay-preservation, trusted-boundary, and research-obligation claims.

Only accepted certificates discharge proof-mode obligations.

## Epoch rule

`ProofMode.lean` artifacts are epoch-indexed by:

- proof-mode-interface epoch;
- mode-kind epoch;
- retained-information schema epoch;
- lost-information schema epoch;
- comparison-relation epoch;
- consumer-policy epoch;
- scope epoch;
- status epoch;
- dependency-record epoch;
- certificate-schema epoch;
- proof-boundary epoch;
- replay-schema epoch.

Changing any component may stale downstream proof-mode claims.

The old proof-mode artifact remains audit content.

## History relation

A history record depending on `ProofMode.lean` must record:

1. source file identity;
2. declaration identity;
3. mode kind;
4. retained information;
5. lost information;
6. comparison relation;
7. consumer scope;
8. consumer policy;
9. invalidation behavior;
10. dependency closure;
11. certificate references;
12. epoch;
13. replay data;
14. audit reference.

The mode tag alone is insufficient.

## Replay rule

Replay of `ProofMode.lean` proceeds by:

1. reconstructing the source file;
2. reconstructing imports from `Universe.lean`, `ObjectInterface.lean`, `RelationSchema.lean`, `Equality.lean`, and `Equivalence.lean`;
3. checking proof-mode tag declarations;
4. checking retained-information and lost-information schemas;
5. checking mode-composition and consumer-compatibility declarations;
6. checking strengthening, weakening, mismatch, invalidation, and freshness declarations;
7. checking that no concrete runtime or application constants are introduced;
8. checking proof objects or trusted boundaries where present;
9. checking dependency closure and certificate metadata.

If any step fails, downstream proof-mode claims are not replay-admissible.

## Runtime representation

`ProofMode.lean` may lower to:

- Lean inductive tags;
- proof-mode records;
- consumer-compatibility tables;
- mode-composition metadata;
- invalidation metadata;
- verifier-facing mode descriptors;
- audit references.

Runtime representation is not proof-mode identity.

Identity depends on tag, retained information, lost information, comparison relation, consumer policy, dependencies, epochs, certificates, and replay behavior.

## Non-collapse theorem

Let two proof-mode records have the same mode tag.

This does not imply the records are equal.

They collapse only if their retained information, lost information, comparison relation, scope, consumer policy, invalidations, dependencies, certificates, epochs, proof boundaries, audit references, and replay behavior coincide.

Thus tag equality is insufficient for proof-mode identity.

## Proof obligation

`ProofMode.lean` is admissible only if the framework can certify:

1. proof-mode tags are explicit;
2. mode tags are distinguished from proof;
3. retained information is explicit;
4. lost information is explicit;
5. comparison relation is explicit;
6. consumer compatibility is explicit;
7. exact, approximate, quotient, observable, summary, checkpoint, probabilistic, partial, rejected, unknown, audit-only, trusted-boundary, and research-obligated modes are distinct;
8. mode composition does not silently strengthen evidence;
9. proof mode is distinct from lifecycle status and migration loss mode;
10. concrete runtime and application constants are excluded;
11. replay can reconstruct proof-mode declarations and dependencies.

## Exclusion rule

`ProofMode.lean` may not define concrete carriers, concrete spectra, authority values, tensor kernels, sheaf covers, operator action rules, history append operations, migration maps, refinement maps, application values, runtime status enums, browser APIs, Rust structs, WASM modules, JavaScript values, bitmap constants, matrix dimensions, hash constants, Feistel parameters, UI constants, or frame payloads.

It defines only abstract proof-mode infrastructure.

## Commitment rule

`ProofMode.lean` may define proof-mode tags, records, and admissibility infrastructure.

It cannot prove claims merely by labeling them exact.

It cannot upgrade approximate, quotient, observable, summary, checkpoint, probabilistic, partial, audit-only, unknown, rejected, or research-obligated evidence into exact evidence.

It cannot make trusted-boundary evidence exceed its declared boundary.

It cannot infer defaults from `none` or `null`.

It cannot make stored outputs replay evidence.

It cannot mutate history.

It cannot commit a frame.
-/
