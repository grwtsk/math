# Learning from the ontology

grwtsk contributors

This guide explains how to contribute mathematical records that support inspectable learned retrieval. It describes the committed Noeaaeue contract at [`26991b68bc6458b10c4d0b279fc2c5cb2092811f`](https://github.com/grwtsk/noeaaeue/tree/26991b68bc6458b10c4d0b279fc2c5cb2092811f), including the `ontology-typed-neural-rust-v8` model. Later working-tree interfaces are outside this contract. Learned output suggests candidates for review; mathematical acceptance follows the repository's [proof-comparison disposition](../../documentation/mathematics/_support/reference/proof-comparison-disposition.md).

The release contains 345 full metadata records and 262 records in its derived semantic index, including 110 entities, 45 relations and 14 inference rules. Only two rules are currently `established` and `ground`, both in the unit-interval example. Classification completeness and source-review volume therefore do not establish readiness for a learned premise-selection task. This guide supplies no training labels, production weights or empirical generalization claim.

## From YAML to a reviewed suggestion

The [record schema](schemas/records.schema.json) and source bindings remain authoritative. Noe's [corpus loader](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/tools/ontology/corpus.py#L68-L143) validates record shapes, unique IDs and references, then constructs a JSON envelope containing `snapshot`, `records` and counts. Full validation additionally checks the inventory. The semantic index omits the large file and issue mapping inventories; their population counts are separate from mathematical graph size.

| Stage | Required boundary | Resulting authority |
|---|---|---|
| Authored YAML | Exact mathematical scope, context, sources and separate evidence axes | A source-grounded record with its declared disposition |
| Derived semantic JSON | Validated records and a reproducible input digest | A searchable snapshot |
| Reviewed dataset | Explicit pair labels, historical feature provenance and independent splits | Evidence for the declared retrieval task |
| V8 model and evaluation | Bound snapshot/dataset/artifact digests, support and baseline gates | Advisory ranking within the approved scope |
| Mathematical review | Complete premises, source comparison and applicable verification evidence | A separately justified contribution or admission |

Recorded source reviews have another path: a validated review projection can expose source declarations, findings and obligations for search. Its observations retain `planning.fact_eligible: false` and `planning.rule_eligible: false`. Compact projection `/2` stores exact journal and G3OB evidence in sidecars. The native neural [JSON reader](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/bin/ontology-neural.rs#L11-L18) does **not** validate those sidecars or reconstruct the projection. An outer validated export must first use Noe's [projection loader](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/tools/ontology/review_projection.py#L291-L332), preserve its evidence bundle and pass the validated records snapshot. Loading JSON directly into Rust does not authenticate its history.

## What v8 actually consumes

V8 has 76 numeric inputs: four pair features and 36 graph channels for each endpoint. The pair features are lexical, typed-neighborhood and subject overlap, plus exact same-context membership. Each endpoint contributes four seed descriptors; means of incoming neighbors, outgoing neighbors, joint premises and joint guards; and 16 direction, relation-type and rule-arity descriptors. These are fixed, pair-masked aggregates. Direct endpoint relations and joint factors involving both endpoints are excluded from their own scoring features. They are lossy observations, with no executable entailment semantics. See the [feature names and encoder](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural_graph.rs#L12-L94) and [masking](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural_graph.rs#L357-L495).

| Record fields | Current use | Contribution consequence |
|---|---|---|
| Entity `title`, `statement`, optional `definition` | Lexical tokens and bounded unique-token count | Write the precise object and assertion in the top-level statement |
| Entity `subjects`, `kind`, `context` | Subject overlap/count; theorem-or-lemma indicator; context presence and eligibility | Use truthful types and subject references; retain exact context identities |
| Relation `from`, `to`, `type`, `status` | Directed documented/established neighborhoods | Preserve actual endpoints, direction and meaning |
| `defined_using`, `represented_by`, `constrains`, `requires_work` | Dedicated incoming/outgoing count channels | Use these labels only when their mathematical meanings apply |
| Other relation types | Exact labels in baseline profiles; distinct-type counts in neural aggregates | Keep precise roles even without a dedicated neural channel |
| Inference `premises_all`, `side_conditions`, `conclusion`, `context`, `status`, `instantiation` | Established ground rules become complete joint factors | Record conjunctions together and alternative routes separately |
| Source pins, evidence axes, hypotheses, counterchecks and review prose | Provenance and review material; no dedicated v8 semantic encoding | Preserve them for validation and human comparison; do not infer that v8 understands them |
| Navigation costs and source-review dispositions | Other search/review operations | Do not interpret ranking as cost optimization or proof admission |

The [numerical model](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural_core.rs#L70-L138) applies 72 learned nonnegative gates to the graph channels, leaving the four pair controls unchanged, then uses dense layers `76 → 16 → 8 → 1`, ReLU hidden activations and a sigmoid readout. It is not a general message-passing GNN or an encoder of complete Lean hypotheses. Proposed/analogical relations and conditional/schematic rules do not enter its observed graph. Keep typed blocker roles such as `missing_supplier`, `argument_gap` and `scope_restriction`; relabeling them to resemble the four dedicated channels would change their meaning.

## Source identity and mathematical context

An immutable citation combines the source record's pinned revision with the entity's path and locator, plus an exact blob and environment pins where available. A subject label or folder name cannot replace that identity. Updating this release's manifest, including its companion revision or descriptive policies, changes both the derived snapshot and full `records` digest even when record counts and numeric features stay unchanged. Preserve old artifacts and their historical scopes; regenerate the appropriate export and retrain/requalify when required. Manually retagging an old model or renaming labels cannot establish compatibility.

An entity context records foundations, assumptions and conventions. The source-review projection instead creates a distinct `context:source-syntax.<declaration_id>` for [each bound declaration](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/tools/ontology/review_projection.py#L135-L175). That context preserves an unelaborated lexical environment. Two declarations in one file do not thereby share a mathematical context.

Proof-mode pairs require exact matching known contexts. V8 also retains the exact **ordered context pairs observed in training**, independently of its numeric feature ranges. An unseen context pair causes abstention even when all 76 coordinates match supported values. Combined with entity-disjoint splits, per-declaration raw contexts can prevent qualification entirely. Analogy mode permits cross-context exploration but retains the ordered support gate; it supplies no transport theorem. See [proof eligibility](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural_graph.rs#L500-L532) and [training-only support](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural.rs#L109-L145).

Curate source-preserving semantic counterparts where review justifies a shared context. Retain each original binding, source-syntax observation and unresolved correspondence; add an explicit comparison explaining the mathematical objects, assumptions and permitted transport. Never coalesce contexts to make a dataset pass. A readiness report should inventory entities and eligible rules by context, proposed train/held-out context pairs, coverage and unresolved transports before claiming a trainable cohort.

## Label and evaluation contract

A source review is not a reviewed query–candidate label. Define one binary retrieval task and its unit first: for example, usefulness of a candidate premise for an exact goal under specified ambient facts and context. Preserve the intended relation/application, reviewer protocol, source locators, complete joint premises and hard-negative rationale in the external Noe dataset packet. V8 consumes binary `label` values, not those richer judgments as separate prediction heads. Missing edges, `NOT_RUN`, unsupported transports and absent suppliers remain unknown unless an explicit review establishes the task-specific rejection.

The implemented [historical guard](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_rank.rs#L139-L177) requires `feature_snapshot`, `feature_cutoff` and `feature_provenance` containing `source_commit`, `snapshot_as_of`, `records_sha256` and `record_observed_at` for exactly every feature-bearing record. Training label dates lie between snapshot date and cutoff; held-out dates follow the cutoff. Preserve actual observation evidence: syntactically valid dates and matching self-digests do not attest historical authenticity. Rebuild changed-source snapshots and reassess model compatibility rather than rewriting historical provenance.

Each row supplies `query`, `candidate`, integer `label` 0 or 1, `corpus` and `date`. [Split validation](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_rank.rs#L384-L524) requires disjoint corpora, queries, candidates and entity pairs; entities cannot switch query/candidate roles across splits. Held-out evaluation needs at least five queries across at least two corpora, at least two queries per corpus, and both labels for every query. V8 additionally requires both labels for every training query and uses an [equal-query, equal-class objective](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural.rs#L79-L107). Group duplicated implementations and shared source families conservatively when choosing corpora; a new path alone does not demonstrate independence.

Report complete numeric/context support coverage, abstention causes and query-macro pairwise accuracy/nDCG overall and per corpus. Ordinary qualification requires complete held-out support and no regression against logistic, lexical and structural baselines, both in aggregate and in every corpus. Coordinatewise support is a limited novelty check, not joint-distribution coverage or mathematical confidence. The [qualification implementation](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural.rs#L485-L559) also retains optimizer status.

Normal [proof-mode ranking](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural.rs#L569-L672) requires an independently approved model artifact digest and matching snapshot/full-records identities; its own checksum is insufficient. A `line_search_stalled` optimizer outcome blocks ordinary ranking. An exploratory qualification override can expose unqualified in-support scores, but unsupported numeric features or context pairs still receive no score.

A later external audit must be independently frozen, dated after qualification, and disjoint from training and qualification entities/corpora. Retain the approved model digest, full audit-packet digest, row digest and review protocol. Both full and [coverage-only audits](https://github.com/grwtsk/noeaaeue/blob/26991b68bc6458b10c4d0b279fc2c5cb2092811f/src/ontology_neural_audit.rs#L402-L446) replay deterministic training for artifact consistency; coverage-only computes no new audit scores. No such audit is authorized or executed by this guide.

## Contribution order and readiness

Prioritize complete mathematical cohorts over adding labels to isolated declarations:

1. Extend the [unit-interval routes](inferences/unit-interval.quasi-compact-route.yaml) with independently reviewed instances and exact alternative consumers. Preserve the Hausdorff **and** quasi-compact premises; the [open-complement route](inferences/unit-interval.open-complement-route.yaml) instead requires its own side condition. Their shared conclusion does not make their premises interchangeable.
2. Connect [PMF support](entities/examples/probability.support.yaml) to finite-set topology through an authored, reviewed comparison. A point mass at 1 on a finite discrete space has finite, closed support. On the existing [two-point topology](entities/examples/topology.nonhausdorff-counterexample.yaml), the same singleton support is quasi-compact but not closed. The finite-subcover argument survives; closedness needs the missing separation premise. These are proposed contribution examples, not supplied training labels. Preserve the distinct Mathlib and classical-topology contexts until the comparison is justified.
3. Add source-bound theorem/definition/obligation neighborhoods across further subjects, with genuine consumers and typed missing bridges. Keep research routes conditional while their inputs remain open. Review negative controls against the exact attempted implication, distinguishing a counterexample from a rejected certificate or tooling obstruction.

For each contribution, acceptance evidence should identify the exact statement and ambient hypotheses, source revision/path/locator and available blob/environment pins, analytical argument, intended consumer, countercheck, alternative route or honest absence, and unresolved suppliers. Preserve all six evidence axes, recording unperformed formal checks as `NOT_RUN`. A prospective dataset cohort additionally needs reviewed labels, historical availability evidence, split-family justification and context-support inventory. Operational packets, receipts and model artifacts belong in Noe; this repository retains the mathematical records and their source correspondence.

## Inspect without training

With dependencies already installed and an independently selected companion checkout/binary matching the pinned implementation, these recipes validate metadata, write a fresh derived index outside the corpus, and inspect its feature inventory:

```sh
python3 tools/ontology/cli.py validate ../math/docs/ontology
python3 tools/ontology/cli.py index ../math/docs/ontology /tmp/ontology-learning-index.json
target/debug/ontology-neural inspect /tmp/ontology-learning-index.json
```

Run from Noeaaeue; choose an unused output path. `inspect` attests neither historical dates nor mathematical acceptance. Future scope-aware hypothesis encoders, dedicated blocker-role channels, richer graph learning or multiple prediction tasks require new versioned features, reviewed datasets and fresh qualification. They are proposals beyond v8, with benefits still to be measured.
