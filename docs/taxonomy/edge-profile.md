# Direct concept-edge profile 0.1.1

[Taxonomy](index.md) · [Record profile](schema.md) · [Validation contract](validation.md) · [Identifier registry](registry.md)

This maintained specification corrects an encoding ambiguity in the 0.1 pilot. It does not implement a validator, approve a production graph, or change a mathematical definition. Independent editorial review and implementation remain pending. The 20 original validation families remain mandatory; the 12 additional cases below are also specifications, not execution results.

## Source-bound finding and compatibility

Inspected math parent: `70f920a7c210fcd89d99d1a21b31dac1376a8344`, tree `58c2be4a2516935f8f861e1aefc57757b0f659e5`. Its schema requires identity, type, origin, editorial status, sources and rationale for every semantic edge. Three concept records instead use a facet row containing only `axis` and `target`: spectral theory of linear operators, self-adjoint spectral theory, and the finite reversible-chain spectral subject. Their source blobs are respectively `6ff3ba8ef60d599197760460b8558ceb27ca68fc`, `e3753ed2f8f36f115c0ad0dfe27f5f4860aee020` and `f948a97a75c0b3132090554379bfd66334aa067c`.

The correction makes these three associations explicit proposed `facet` edges. Their existing concept IDs, paths, definitions, scope, parentage, sources and independent status dimensions are retained. The facet object covers bounded-operator cases; it does not narrow either general spectral subject to bounded operators. No spelling, scope, authorship or mathematical-identity decision is inferred from the encoding repair.

The corrected records declare schema 0.1.1. Unmodified 0.1.0 records retain their historical schema declarations. Mixed-version reading is permitted only through an explicitly versioned adapter: 0.1.0 direct edges already carrying the complete fields below may be interpreted without semantic change, but incomplete shorthand must be reported as `EDGE_METADATA_INCOMPLETE`. Never invent a key, status, source, rationale or acceptance while reading old data. Unknown versions are `UNSUPPORTED_SCHEMA`, not empty successful graphs. This compatibility rule concerns direct concept edges, not complete conformance of every other record kind.

## Canonical direct-edge shape

The owning concept page supplies the source endpoint implicitly through its persistent `id`. An edge in any of `broader`, `facets` or `relations` requires:

| Field | Requirement |
| --- | --- |
| `edge` | Nonempty persistent local key, unique across all three lists in that source record |
| `target` | Persistent target identifier, resolved in the exact selected record inventory |
| `type` | Explicit relation name with an applicable endpoint contract; never inferred from a folder |
| `origin` | `direct` for an authored observation; inferred relations use the separate derivation contract |
| `status` | One explicit editorial state: proposed, under_review, accepted, rejected or superseded |
| `sources` | Nonempty distinct source keys, each resolved through the record's sources and source register |
| `rationale` | Nonempty explanation of this association and its actual scope; mechanical presence does not establish adequacy |

A facet additionally requires `axis`. A globally addressable edge identity is the ordered pair `(source concept ID, edge key)`, not the key alone. The same key on different source pages is permitted. Moving an edge between the three lists does not give permission to reuse its identity for another relation or target. A substantive change requires a retained revision/disposition; canonical observed history must not be overwritten by an inferred edge.

A compact list of labels is not a concept edge. A source citation, breadcrumb, related-page link or facet index is not automatically an asserted semantic relation. Navigation collections retain the scoped keys already declared in the registry; those keys are not subject-concept UUIDs.

## Endpoint and list contracts

| Storage / relation | Source kind | Target kind and additional condition |
| --- | --- | --- |
| `broader` / `subjectSpecialization` | subject_concept | subject_concept in the same local scheme |
| `facets` / `facet`, axis `objects` | Any concept kind below | object_concept |
| `facets` / `facet`, axis `structures` | Any concept kind below | structure_concept |
| `facets` / `facet`, axis `methods` | Any concept kind below | method_concept |
| `facets` / `facet`, axis `applications` | Any concept kind below | application_domain |
| `facets` / `facet`, axis `resource-kinds` | Any concept kind below | resource_kind |

Here the permitted concept kinds are subject_concept, object_concept, structure_concept, method_concept, application_domain and resource_kind. `facet` denotes a justified retrieval association on the named axis. It does not assert instance membership, exclusive ownership, whole-subject coverage, logical implication or object equality. A mathematical `studiesObject`, `usesMethod`, `appliedIn`, `partOf` or `instanceOf` assertion remains a separately typed relation, not an automatically generated consequence of `facet`.

These tables intentionally cover the pilot's direct subject/facet edges, not every possible mathematical relation. Each relation in `relations` needs its own declared endpoint/evidence profile. A validator lacking that profile returns `UNSUPPORTED_RELATION_PROFILE` for that slice and cannot claim full-graph validation. The #89 mathematical/evidentiary families retain their original premises and meanings. Repository associations, binary crosswalks and compound crosswalks are separate record kinds and cannot be coerced into this concept-edge shape to bypass their contracts.

Each nonempty `broader` list must contain the designated concept-valued navigation parent. A collection-valued navigation parent is permitted for an entry concept with no selected broader subject, as in the current analysis/probability entry pages. The selected home does not remove other parents. No collection is injected into the mathematical DAG to make it look like a single rooted tree. General object hierarchy and additional facet-axis hierarchies need separately declared profiles.

## Declared acceptance is not release authorization

For a fixed immutable input inventory, first form the observed direct-edge set from canonical records, retaining all editorial states. A declared-accepted direct view contains an edge only when all of the following hold:

1. Its source record, its target record and the edge itself explicitly say `accepted`.
2. Both endpoint identities resolve in the selected inventory and the relation satisfies its endpoint profile.
3. The edge is direct and neither record nor edge belongs to a fixture dataset.

These conditions specify the status projection, not an approval mechanism. In particular, an accepted edge on a proposed record, or pointing to a proposed target, is withheld. Report the edge and reason rather than deleting its canonical history or silently upgrading an endpoint. Rejected, superseded, missing and unassessed endpoints cannot enter this view through an accepted edge. An empty result for the all-proposed pilot is expected but is not release completeness or evidence that a validator works.

Production eligibility requires additional, separately evidenced semantic/cataloging review, source/rights dispositions, structural checks, coverage and supported exports at the exact record revisions. A copied `accepted` string or review identifier is not evidence of an actual review. The authorized Noe-owned release process must check the referenced decisions and exact payloads; this math specification stores no operational grant. Missing or unperformed gates remain unavailable or NOT_RUN. Neither declared acceptance nor an external release process supplies Lean evidence or resolves #254 attribution.

Check acyclicity on the declared-accepted direct `subjectSpecialization` subgraph. Report proposed subject cycles for editorial review without silently accepting them. Other relation graphs are not subject to this DAG rule unless their own profile requires it. A cyclic relevance graph is not automatically an invalid taxonomy. Any inference graph must preserve rule identity, supporting direct edges, source revisions and inferred origin; it is never counted as new observed evidence. Exact-match closure and compound-crosswalk export remain separate obligations under the original profile.

## Existing Noe owner: compatibility boundary

Inspected Noe revision: `48e5610d333075a317214d75575a803fe7c36c90`. The existing owner is `registry/taxonomy/classification/`; its README at blob `2eb8a7c7630b495c2de31ee261003cc839d5e5aa` distinguishes PMD metadata from mathematical source authority. The inspected Python package tree is `bc364ec13b0d54ec5803046251cf641081067a10`.

The existing `python/noe_taxonomy/core.py` at blob `be2dfd8e5b67cab507aeedbfafbb39fbf8fe9a39` validates `NOE-TAXONOMY-SNAPSHOT/v1`: it requires a root, decimal notation/address agreement, a primary parent matching an address prefix, and a fixed node/edge/binding shape. It also constrains a declared dependency subgraph. Those are existing snapshot semantics, not evidence that this Markdown concept profile has already been implemented. The source contains additional revision and impact functions; this compatibility finding is limited to the inspected codec/validation and entry contracts, not an audit of the entire package.

Do not feed canonical Markdown records into that snapshot validator by fabricating a mathematical root, replacing UUIDs with decimal addresses, collapsing multiple parents or renaming relation families. Do not relax its existing invariants in place. A future reader/validator must extend the same component with an explicitly distinguished profile and exact math input bindings. Reuse existing custody, codecs and framework components only where their actual contracts fit; avoid importing a module solely for a helper when that import activates unrelated layout/runtime behavior.

A PMD navigational projection may be separately proposed after documenting what it preserves and omits. It is not the authoritative concept graph and cannot count as a lossless export unless its mapping is proved at the relevant data-contract scope. No PMD snapshot, metadata writer, transfer routine, cache, source-retirement guard or runtime activation is changed by this amendment.

The inspected `tests/README.md` (blob `acdde9ddf943618c952ebf376fc3383a182a11f9`) requires component-owned tests with explicit registration in `tests/run.py` (blob `c4ac836a0728aca034eacba4e0c6dafc0ded9a15`). An implementation delivery must include that registration and an exact-input command/result record in Noe. No new runner, command, adapter implementation or registered suite is supplied by this document.

## Additional paired acceptance specifications

All cases use isolated synthetic records, not mutations to canonical accepted states. A negative test counts only when the intended diagnostic occurs; unrelated parsing, missing dependencies, timeouts or tool failures do not satisfy it.

| ID | Required positive companion | Adversarial case / disposition |
| --- | --- | --- |
| E01 | Complete proposed facet row is readable without changing status | Old axis/target-only row: EDGE_METADATA_INCOMPLETE; no inferred acceptance |
| E02 | Accepted edge and two accepted endpoints appear in the declared view | Proposed source with accepted edge: withhold and report SOURCE_NOT_ACCEPTED |
| E03 | Accepted source and accepted target retain the same edge identity | Proposed target with accepted edge: withhold and report TARGET_NOT_ACCEPTED |
| E04 | Retained rejected/superseded records remain addressable outside that view | An accepted edge cannot resurrect a rejected or superseded endpoint |
| E05 | The same local edge key on two different source pages is valid | A key repeated across broader/facets/relations of one record: DUPLICATE_EDGE_ID |
| E06 | objects-axis facet reaches an object_concept | objects-axis facet to a subject or navigation collection: EDGE_ENDPOINT_KIND |
| E07 | A subject with two parents has one canonical record and one home | Drop its second parent to satisfy decimal-tree encoding: report lossy projection |
| E08 | A relevance cycle with acyclic subject edges remains distinguishable | Accepted subject-specialization cycle: SUBJECT_CYCLE; reject that accepted graph |
| E09 | Nonempty exact expected-ID inventory reconciles to the selected records | Missing, duplicate or extra selected records: inventory discrepancy, not an empty passing set |
| E10 | A simulated accepted fixture exercises the positive status rule inside its isolated view | Fixture content enters production: FIXTURE_LEAKAGE even when its status says accepted |
| E11 | An inferred closure retains its rule and supporting observed edge IDs | Relabel it direct or reuse an observed edge ID: ORIGIN_OR_IDENTITY_CONFLICT |
| E12 | A known-version direct-edge slice preserves exact source record bindings | Unknown schema, wrong source revision or missing rights: unsupported/blocked, never a full validation pass |

Coverage of these specifications is separate from V01-V20. Status projection, keys and endpoint shape can be mechanical checks. Adequacy of definitions, parentage, homograph/split decisions, literary warrant, originality and interpretation of source rights still require the appropriate review. A mechanical tool must not claim to decide them merely because a field is populated. Acceptance requires the positive E02 companion and other positive cases; an always-reject implementation fails.

## References and amendment history

The local cycle and facet rules are application-profile choices, not universal SKOS axioms. The distinctions between concepts, collections, semantic relations and mapping properties are grounded in the [W3C SKOS Reference](https://www.w3.org/TR/skos-reference/), sections 3, 8, 9 and 10, re-read on 2026-10-19. Source and relation obligations remain those of [math #89](https://github.com/grwtsk/math/issues/89) and [#254](https://github.com/grwtsk/math/issues/254).

Repository compatibility sources are the exact [Noe classification README](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/registry/taxonomy/classification/README.md), [core validator](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/registry/taxonomy/classification/python/noe_taxonomy/core.py), and [test ownership instructions](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/tests/README.md).

Amendment 0.1.1, 2026-10-19: make three facet rows explicit; specify cross-list edge identity, endpoint profiles, endpoint-status withholding and mixed-version behavior; identify the existing PMD compatibility boundary; add twelve paired acceptance specifications. This is author review of the earlier draft, not independent review. No concept has been added, removed, merged, split, accepted or assigned a new mathematical scope by this amendment.
