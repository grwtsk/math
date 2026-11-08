# Mathematics-wide ontology: static records and source bindings

Local attribution: grwtsk contributors.

This is the maintained static mathematical ontology for GRWTSK. Its records
preserve mathematical objects, exact statements, contexts, joint premises,
alternative arguments, source comparisons and unresolved obligations. MSC2020
continues to govern subject placement; ontology IDs preserve semantic identity
independently of physical paths.

| Static contract | Entry point |
|---|---|
| Mathematical objects, statements and contexts | [Subjects](subjects/), [entities](entities/) and [contexts](contexts/) |
| Source identities, corpus dispositions and issue correspondence | [Sources](sources/), [corpora](corpora/) and [mapping contract](mappings/README.md) |
| Release and external companion identity | [Manifest](manifest.yaml) |
| Record shape and reference profile | [Record schema](schemas/records.schema.json) |
| Retired IDs and retained historical source | [V1 migration crosswalk](migrations/grwtsk.v1.yaml) |

Intelligence, retrieval, model/training/evaluation and operational workflow
guidance live in Noe: [ontology discovery](https://github.com/grwtsk/noeaaeue/blob/07a2fde8f059549cc48b80f9459a4e8ca8792cb8/docs/intelligence/math/ontology-discovery.md)
and [learning guide](https://github.com/grwtsk/noeaaeue/blob/07a2fde8f059549cc48b80f9459a4e8ca8792cb8/docs/intelligence/math/ontology-learning.md).
The manifest's companion pin identifies its ontology-tooling contract, not every
Noe integration. Each other external source retains its own scoped revision and
locator. Records and references grant no execution or publication authority.

## Release and coverage

[manifest.yaml](manifest.yaml) identifies the release and its evidence and search policies. [records.schema.json](schemas/records.schema.json) describes the record profile. All of the following denominators are finite, pinned inventories.

Manifest policies describe corpus curation and publication. They are not scheduler settings, training parameters or new runtime gates; the pinned companion implements its own versioned consumer contract.

| Inventory | Coverage | Interpretation |
|---|---:|---|
| Curated semantic layer | 110 entities, 45 relations, 14 inferences | A starting graph with 11 contexts; two inference records are established ground rules |
| MSC2020 identifiers | 6,603 / 6,603 | 63 roots, 534 groups and 6,006 details in the two pinned official downloads |
| MSC2020 root source plans | 63 / 63 | One authored plan per root plus a separate elementary plan |
| GRWTSK Git tree dispositions | 151,988 / 151,988 | 150,308 pending semantic or source review and 1,680 justified exemptions |
| GitHub issue dispositions | 1,156 / 1,156 | 1,085 open and 71 closed at capture. 13 have local architecture mappings, 1,127 are pending and 16 are exempt |
| Legacy v1 IDs | 89 / 89 | Native targets or immutable v1 locators. The crosswalk also resolves unkeyed legacy relations |

The subject counts use the publisher's downloads as the denominator. The publisher's landing page lists different group and detail totals. The [classification inventory](corpora/msc2020.yaml) records both sets of counts and the exact file pins. Its [notice](subjects/MSC2020-NOTICE.md) scopes the publisher's CC BY-NC-SA 4.0 terms to the classification projection.

The [repository inventory](corpora/math.yaml) is pinned to GRWTSK revision `2b232aa5aaa6c80fe13a87a94c1b5ce81ddaa011`. It includes the root and 75,190 Lean files under `GRWTSK/`, authored and verification documentation, adapters and operational files. The root umbrella has 451 import lines. Import inventory, mathematical entity extraction and proof dependency extraction describe separate work. The [v1 migration](migrations/grwtsk.v1.yaml) retains historical paths, attachment digests and distinctions between proof candidates and their mathematical targets.

The source plans seed open-ended construction. Each plan gives topics, scoped acquisition leads and an initial task. A classification code, a semantic entity, and a source unit each have their own progress measure. The release measures recorded source correspondence, mathematical disposition and formal evidence separately from inventory coverage. It contains no estimate of the percentage of mathematics represented.

The table describes the canonical pinned inventories, including their historical `pending` dispositions. Live lexical inspection, retained semantic reviews, neural training labels and model qualification have separate ledgers in Noeaaeue. Completing one does not rewrite the others. The canonical semantic export contains 262 records; full metadata validation covers 345 records, including corpus and mapping shards. These counts are record populations, not theorem or training-example counts.

## Records and identity

- `subjects/` contains classification and independent mathematical entry points. An entity can belong to several subjects.
- `contexts/` names foundations, assumptions and conventions. The examples distinguish classical point-set topology, constructive rational representations and Lean dependent type theory. A context transport requires its own scoped comparison.
- `entities/` separates concepts from definition variants, mathematical statements, proofs, examples and implementations. `subjects` and `context` are explicit references. `statement` records the mathematical content in a form a reader can inspect.
- `relations/` contains directed edges with distinct types, provenance, a justification and four nonnegative navigation cost components. Two edges can join the same endpoints with different meanings.
- `inferences/` contains rule records. Every `premises_all` entry and every `side_conditions` entry is required jointly. Separate records with the same conclusion are alternatives. `context`, `substitution` and any schematic `binders` delimit the application.
- `sources/`, `corpora/` and `mappings/` bind units and dispositions to provenance. An immutable Git binding uses a source revision and path, with an exact blob where recorded. The corpus can retain several implementations of an entity and several entities from one source.
- `views/` selects records for a purpose. `migrations/` makes retired IDs and their source context resolvable.

The canonical key is `id`, independent of its label, shard path and subject associations. New IDs live in an owned namespace and are never reallocated to a different mathematical meaning. Split and merge proposals preserve former IDs and carry the justification and exact source comparison. A federation pins each contributing release, validates references across the chosen releases and rejects colliding IDs without an explicit resolution. YAML is a restricted interchange format with unique string keys, JSON scalar types, and no anchors, aliases, explicit tags or executable includes.

### Relation semantics

| Types in this release | Direction and meaning |
|---|---|
| `defined_using`, `has_domain` | Definition or construction to ingredient or domain |
| `has_definition_variant`, `has_instance` | Concept to an explicitly qualified definition or instance |
| `equivalent_under` | Directed comparison under the recorded conditions and context |
| `has_candidate_proof` | Statement to a source proof candidate |
| `requires_work`, `constrains` | Research target to outstanding work, or obstruction to the scoped route it restricts |
| `represented_by`, `read_by` | Object to a scoped representation or reading construction |
| `covers_codes_of`, `not_identical_to`, `analogous_to` | Scoped coverage, documented distinction, or analogy |

Use `documented` for source-grounded observations such as definitional ingredients and source candidates, `established` for justified comparisons within their stated scope, and `proposed` or `analogical` for exploration. Retain historical or rejected edges with their reasons. Ordinary edges carry no rule applicability.

### Evidence and interoperability

Entity evidence separates mathematical disposition, source correspondence, elaboration, fresh kernel checking, transitive axiom auditing and independent review. `NOT_RUN` preserves the status of an unperformed check. A proof binding adds exact statement, declaration, source and environment identities, assumptions and retrievable evidence when available. Schema validation checks record structure and references. Formal checking and mathematical acceptance have their own source-bound processes. Follow the repository's [mathematical review requirements](../../AGENTS.md#mathematical-claims-and-evidence) when admitting or changing a claim.

MSC2020 codes can be exported as SKOS notations and their classifications as SKOS concepts and broader links. Preserve the scheme and its edition. Export mathematical symbols to OpenMath only when a content dictionary and symbol resolve the actual meaning. Map a context to an MMT theory and a justified context translation to a theory morphism when their parameters and witnesses agree. An identifier match alone gives a candidate mapping. These are interchange contracts for future adapters. [SKOS Reference](https://www.w3.org/TR/skos-reference/) · [OpenMath Standard](https://openmath.org/standard/) · [MMT language](https://uniformal.github.io/doc/language/)

## Mathematical examples and retained scope

The [closed unit interval](entities/examples/topology.unit-interval.closed.yaml)
has distinct recorded routes: Hausdorff separation together with quasi-compactness,
or the explicitly stated open-complement side condition. The
[two-point counterexample](entities/examples/topology.nonhausdorff-counterexample.yaml)
retains the failure when the required separation premise is absent. The premises
of one rule are joint; different rules remain alternatives.

The [Weil certificate view](views/grwtsk.weil-certificate-routes.yaml) retains
exact-source/root-return obligations, the cofinal stage family and nonprincipal
character sectors. The [marked Weil view](views/grwtsk.frontier-diffuser-weil.yaml)
retains conditional comparisons, finite signed-coordinate transport and their
unresolved full-domain returns. The [finite configuration view](views/grwtsk.finite-configurations.yaml)
and [independent entry points](views/independent-entry-points.yaml) remain
mathematical navigation records. A view does not establish its missing premises.

## Source-preserving maintenance boundary

A changed mathematical claim retains exact hypotheses, context, source pins,
comparison and independent evidence axes under the repository's
[mathematical review requirements](../../AGENTS.md#mathematical-claims-and-evidence).
Schema/reference checks concern record integrity; they do not elaborate a Lean
statement, replay a kernel, audit transitive axioms or authenticate an external
receipt. Historical inventory snapshots and evidence remain at their stated
source scopes.

This README retains the static contract extracted from
[the original record](https://github.com/grwtsk/math/blob/8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec/docs/ontology/README.md).
The operational/learning sections are preserved in the source-bound Noe guide and
unchanged original archive. No manifest, schema, source pin or mathematical
acceptance is upgraded by this separation.
