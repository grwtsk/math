# Revision-scoped timed evidence

Conceptual direction and authorship: R.A. Jacob Martone. Mathematical formulation, formalization, and source development with AI assistance.

This exposition accompanies [RevisionEvidence.lean](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean) and its [separate static verification target](../../../verification/_unscoped/revision-evidence-v0.1.toml). The mathematical subject is a finite ledger whose observations name exact revisions and kinds. Source presence does not report elaboration, a transitive trust audit, or correspondence with another program.

Tracking: [generic revision-scoped evidence, issue #321](https://github.com/grwtsk/math/issues/321).

The principal result is a separation theorem: **issuing and confirming a fresh revision changes which revision is current, supplies no evidence for the fresh revision, and retains the entire old ordered history.** Its evidence-absence conclusion follows from a preserved structural invariant. It is not included in a transition guard or assumed as the theorem's hypothesis.

## 1. The objects and their exact meanings

Choose arbitrary types `Kind` and `Payload`. Query computation requires decidable equality on `Kind`; payload equality is not needed by the main theorems.

An evidence record has four fields:

| Field | Mathematical meaning |
| --- | --- |
| `revision : Nat` | Exact ordinal of the revision observed |
| `kind : Kind` | Exact kind of observation |
| `tick : Nat` | Clock value when this record was appended |
| `payload : Payload` | Retained observation payload |

A state contains an issuance count `issued`, a list `confirmed` of confirmed ordinals, a clock `clock`, and a list `history` of evidence records. The initial state has zero issuance, no confirmations, clock zero, and an empty history. If the issuance count is \(n\), the issued ordinals are \(0,\ldots,n-1\).

The current revision is computed by the existing `List.max?` operation:

\[
\operatorname{current}(s)=\max{}?(s.\operatorname{confirmed}).
\]

The result is `none` when no revision is confirmed. For states built from `empty` by the transitions below, the confirmation list retains first-confirmation order; the maximum ordinal supplies revision order. These two orders can differ. Arbitrary structure values, including values satisfying only the stated `WellFormed` fields, need not have a duplicate-free list or an established history of first confirmations.

The model imposes a single linear issuance order. It contains no identifier strings, predecessor links, branching revision graph, source text, or identifier-to-content binding. An application using strings and a predecessor chain must establish an order-preserving correspondence with these ordinals, including freshness, confirmation, and exact record references. A matching string, digest, or ordinal does not authenticate itself.

## 2. Concrete updates and independent guards

The four pure updates and their transition guards are:

| Label | Guard | State update |
| --- | --- | --- |
| `issue` | None | Increase the issuance count by one; the old count is the newly issued ordinal |
| `confirm r` | \(r<s.\operatorname{issued}\) | Append \(r\) to confirmations if not already present |
| `record r k p` | \(r\in s.\operatorname{confirmed}\) | Append the exact record \((r,k,s.\operatorname{clock},p)\) |
| `advance d` | \(d\) is a natural number | Replace the clock by \(s.\operatorname{clock}+d\) |

The `Step` relation supplies the guards separately from the update functions. Calling an unguarded update on arbitrary data is not a proof that a valid transition occurred. Invalid labels have no `Step`; this relation defines no parser error format or failure projection.

Issuance alone does not change the current revision. Confirmation does not append an observation. Recording may concern any confirmed revision, including an earlier one. A later observation about earlier work therefore remains attached to that earlier ordinal. An exact repeated confirmation is idempotent. Repeated evidence records remain distinct list entries; this source does not implement record-identifier deduplication or assign greater confidence to repetition.

`Trace` carries a finite ordered list of event labels and the actual consecutive states. The relation introduces no liveness, fairness, or eventual-observation premise.

## 3. The invariant and why fresh evidence cannot be inherited

`WellFormed s` states only these local structural conditions:

\[
\begin{aligned}
r\in s.\operatorname{confirmed}&\Longrightarrow r<s.\operatorname{issued},\\
e\in s.\operatorname{history}&\Longrightarrow
e.\operatorname{revision}\in s.\operatorname{confirmed},\\
e\in s.\operatorname{history}&\Longrightarrow e.\operatorname{tick}\le s.\operatorname{clock}.
\end{aligned}
\]

It does not assert that any query is empty or that any timing classification is correct. `empty_wellFormed` establishes it initially. `step_preserves_wellFormed` derives it after every guarded update, and `trace_preserves_wellFormed` propagates it through any finite trace.

The first two conditions imply that every existing record names an ordinal strictly below the current issuance count. Let \(n=s.\operatorname{issued}\), and define the two-step correction

\[
\operatorname{correct}(s)=\operatorname{confirm}(\operatorname{issue}(s),n).
\]

The new confirmation is valid because issuance makes \(n<n+1\) true. `correction_trace` constructs this exact two-step trace. Every older confirmed ordinal is below \(n\), so \(n\) becomes the greatest confirmed ordinal. Every old evidence record also names an ordinal below \(n\), so none can match \(n\). Neither of the two updates edits the evidence history.

For every kind \(k\), `fresh_confirmation_separates_evidence` proves

\[
\begin{aligned}
\operatorname{current}(\operatorname{correct}(s))&=\operatorname{some}(n),\\
\operatorname{query}(\operatorname{correct}(s),n,k)&=[],\\
\operatorname{correct}(s).\operatorname{history}&=s.\operatorname{history}.
\end{aligned}
\]

Its premise is `WellFormed s`. There is no premise saying that the new query is empty. `correction_preserves_historical_queries` separately preserves every query for an explicitly named historical revision and kind. Evidence eligibility changes because the selected ordinal changes; recorded observations are not erased or relabeled.

The malformed-state counterexample makes the scope necessary. A state with issuance count zero, no confirmations, and a fabricated record for ordinal zero fails `WellFormed`. Applying the same two updates to it makes ordinal zero current while retaining the fabricated matching record. The separation theorem therefore does not hold for arbitrary unvalidated input states. A state recovered from storage needs a separate valid-origin or invariant argument.

## 4. Late confirmation cannot roll back current selection

Suppose the current revision is \(m\), and a later confirmation names \(r\le m\). `old_confirmation_keeps_current` proves

\[
\operatorname{current}(\operatorname{confirm}(s,r))=\operatorname{some}(m).
\]

The proof uses the membership-and-upper-bound characterization of `List.max?`. The old maximum is still present, every old confirmed ordinal remains at most \(m\), and the new ordinal is also at most \(m\). The theorem covers a first confirmation of an older issued ordinal as well as repetition of an existing confirmation.

This result depends on using ordinal order to select current work. Selecting the last element of the confirmation list would not have the same property. A concrete control confirms ordinal one before ordinal zero and retains current ordinal one after the confirmation list becomes `[1, 0]`.

## 5. Exact queries and inclusive timing

`query s r k` is the actual `List.filter` selecting records whose revision equals \(r\) and whose kind equals \(k\). `mem_query_iff` proves both directions of that specification. Record order and complete payloads are retained.

`query_record` characterizes the effect of appending one observation: the result is the previous query followed by the new record exactly when both identifiers match. `query_record_other` derives that a different revision or a different kind leaves the query unchanged. A record of one kind therefore supplies no record of another kind merely because it occurs at the same revision or clock.

`earliestTick` maps the exact matching records to their ticks and applies the existing `List.min?`. Its two reflection theorems establish:

- `none` occurs exactly when the matching query is empty;
- `some t` occurs exactly when a matching record has tick \(t\) and every matching record has tick at least \(t\).

This uses the minimum of observed times and does not need to assume the input list was already sorted. For states reached by the guarded transitions, `WellFormed` also excludes records from the future relative to the current clock.

For a supplied target \(d\), `timing` has these exact meanings:

| Classification | Meaning |
| --- | --- |
| `unavailable` | The matching record query is empty |
| `byTarget` | Its earliest observed tick \(t\) exists and \(t\le d\) |
| `afterTarget` | Its earliest observed tick \(t\) exists and \(d<t\) |

The three `timing_*_iff` theorems reflect those meanings. Equality meets the inclusive target. The separate Boolean `targetElapsed s d` is true precisely when \(d<s.\operatorname{clock}\).

`advance_preserves_evidence` proves that moving the clock preserves the exact query, its earliest recorded time, and its target classification. The elapsed-target flag can change while evidence remains unavailable. A concrete control moves the clock from ten to twenty-one past target twenty and still has no evidence for the newly selected revision. Another control preserves a tick-ten timely observation after moving the clock to one hundred ten.

Targets are explicit query parameters. Comparing results at one fixed target does not prove that another implementation keeps that target fixed. Any policy forbidding target reset across revisions remains part of the external correspondence obligation.

## 6. Full history preservation through arbitrary finite traces

Every transition either retains `history` literally or appends one exact record. `step_history_prefix` proves the existing list-prefix relation for one step; `trace_history_prefix` composes it through any finite trace. `trace_history_position` strengthens the user-facing interpretation: each original record remains at its original numeric position with the same revision, kind, tick, and payload.

More precisely, if `oldPosition : index < source.history.length`, the theorem constructs

```lean
∃ newPosition : index < target.history.length,
  getElem target.history index newPosition =
    getElem source.history index oldPosition
```

The target bound is a conclusion derived from the prefix proof, not an additional transition assumption. Both getters select the same numeric index, and the equality concerns the complete record. This bounded-getter statement is an explicit interface change from the earlier optional-getter equality. A comparison of complete historical types must report that change; an unchanged informal description is not an unchanged formal signature.

This reuses Lean's prefix relation. The [constructive finite-list module](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ConstructiveList.lean) supplies direct proofs for that relation and bounded indexing. The repository's [AppendOnlyHistory](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory.lean) proves executable prefix-check reflection and dictionary reconstruction properties for a different mathematical subject. No second generic prefix relation or dictionary dependency is introduced here. The present result derives the prefix property from this specific evidence transition system.

Exact list preservation is a mathematical statement about the modeled values. It establishes no durable storage, crash recovery, transport integrity, or successful retrieval by a person.

## 7. Relationship to observation support and remaining bridges

[SupportedClaims](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean) defines support over nonempty fibers of an independently supplied observation model. [FiniteClassification](finite-observation-classification.md) classifies a supplied finite inventory and requires a coverage premise for larger ambient conclusions. Those definitions and their existing verification target are unchanged.

This module establishes exact facts about a revision-indexed record ledger. A matching record is a supplied observation, and an empty query is the absence of a matching ledger record. Neither outcome alone establishes the occurrence or nonoccurrence of an external event. No map from these records to an admissible external trace model is defined or proved in this increment.

An implementation correspondence still has to address at least:

1. Decoding, validation, and binding of exact revision identifiers, kinds, payloads, and times.
2. Freshness and order correspondence between an external revision representation and the linear ordinals here.
3. Correspondence of each concrete update and rejected input with the intended abstract transition or a separately justified extension.
4. Valid state recovery, immutable history, and source-to-record observation fidelity.
5. Fixed-target interpretation and the meaning of the selected observation kinds.

This compact source does not formalize hidden-context projection, access control, authorization, agreement, evidence adequacy, or a complete interaction lifecycle. It supplies no generic program-refinement theorem by testing finite fixtures.

The static target enumerates this module separately from earlier observation targets. Its positive and hostile controls are theorem propositions, including a counterexample to dropping the structural invariant. Any later elaboration, exact-type comparison, axiom audit, or external refinement evidence must identify its selected sources and report its own achieved scope. The exposition and target themselves are not such evidence.

## 8. Constructive dependencies and the unchanged strict trust policy

The target retains `allowed_axioms = []`. An import closure over `Init` does not establish that requirement: standard library dependencies can bring `propext`, `Classical.choice`, and `Quot.sound` into a declaration's transitive closure. Those are standard Lean axioms, but the present target does not permit them automatically. Dependencies in the declaration's type matter as well as dependencies in its proof or defining body.

`ConstructiveList` provides 24 explicit declarations: a membership decision procedure and 23 theorems about existing list operations. The proofs use structural induction, constructor elimination, equality transport, and natural-number order. The minimum and maximum reflection results concern the actual `List.min?` and `List.max?` folds on natural numbers. The prefix and indexing results concern the actual ordered list-prefix relation and bounded getter; no alternative list representation is assumed.

The revision module uses those proofs in its query, timing, invariant, correction, and history arguments. `confirm` supplies a constructive `Decidable (revision ∈ state.confirmed)` whose dependent result contains either a membership witness or a refutation. This is the same membership proposition used to choose between preserving the confirmation list and appending the new ordinal. All other update definitions and their independently stated transition guards retain their mathematical meaning.

The position theorem uses bounded indexing to keep the existence of each selected position explicit in its type. The earlier default optional-getter interface has an upstream dependency that a replacement proof alone cannot remove under this strict policy. The resulting signature change therefore requires explicit review. An exact historical-type comparator must retain its mismatch rather than rewrite an expectation to make the comparison succeed.

The target selects both owner modules and every explicit head: 76 declarations, including 56 theorems and the original nine fixtures. Generated constructors, recursors, projections, and derived instances are not separate inventory entries; their dependencies remain relevant when reached through selected declarations. External validation must preserve this distinction and inspect explicit transitive axiom lists for all selected heads.

This source package reports no execution outcome. Source-bound elaboration, observed axiom lists, and comparison of complete historical types remain external evidence. Historical agreement is also different from independently authored complete expected types: a stable interface can preserve a mistaken specification, and changed defining bodies are not fixed by equal types. Complete acceptance additionally requires the target's independent type expectations, source and compiler qualification, generated/native dependency obligations, and any claimed external-program correspondence. Earlier observation targets retain their unchanged sources and trust requirements.

Complete authored full-type expectations and their comparison remain a separate open gate. The manifest selects exact declaration heads and their source kinds, but those selections do not substitute for complete types, ordered universes, defining-body review, or external implementation correspondence.
