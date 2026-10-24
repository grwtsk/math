# Logic

<!-- BEGIN GENERATED MATHEMATICS NAVIGATION -->

[Results index](../index.md) · [Up one directory](../index.md)

**Subject:** `urn:uuid:72d4d327-ab11-4ac8-a09c-0db545aed427` · editorial status: **proposed** · [definition, scope and sources](../../taxonomy/subjects/mathematical-logic/index.md).

The mathematical study of formal languages, consequence, theories and their interpretations, including the capabilities and limitations of formal reasoning.

**Scope.** The field includes syntactic, semantic, set-theoretic and effective approaches. It is not exhausted by one classical calculus, a particular proof assistant, or philosophical argumentation in general. Foundations of mathematics has broader connections than any single logical formalism; this page does not rename that whole field.

| Unique articles in this branch | Structured articles | Verification metadata supplied | Spectral scores available |
|---:|---:|---:|---:|
| 14 | 0 | 0 | 0 |

Counts deduplicate shared article identities. Verification coverage reports supplied article metadata; it does not establish fresh replay or whole-branch acceptance.

## Top results

**Unranked article previews.** Spectral scores are unavailable for these articles. The following selection preserves the [selected catalog's editorial order](../../reference/results.md), then uses structured metadata and title order; it is not a measured ranking.

- [Certificates for incrementally decoded batches](FiniteSequences/batch-certificate.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. Let `certificate : Certificate Key Payload` contain an actual proof of its predicate on its exact entries. With decidable payload equality, assume
- [Composition of incremental dictionary decoding](FiniteSequences/incremental-composition.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. Let `original : Packed Key Payload` have valid references and let `a` and `b` be finite lists of key–payload occurrences, with decidable payload equality. Applying the actual incremental encoder twice has the…
- [Exact indexed dictionaries](FiniteSequences/indexed-dictionary.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. For any finite list of key–payload pairs and decidable equality on payloads, `unpack_pack` proves the exact equation \[ \operatorname{unpack}(\operatorname{pack}(\mathrm{entries})) =…
- [Exact ordered history extensions](FiniteSequences/append-only-history.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. For lists `oldRows` and `newRows` with decidable row equality, the executable `checkPrefix` accepts exactly when there is a suffix `tail` satisfying `newRows = oldRows ++ tail`. Every old row remains at its…
- [Finite coverage and scope](FiniteCoverage/scope.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. `GRWTSK.Logic.FiniteCoverage` carries four established propositions. Local proofs assemble over an explicitly covered domain with the original domain and index types. The tail variant requires a separate proof…

Missing metric evidence: `verification_dependency_graph_unavailable`.

[Ranking definition and weight profile](../../reference/ranking-profile.json) · [Article standard](../../reference/result-article-standard.md).
Ranking profile: `spectral-volume-radius3-v1` · SHA-256 `72d348b5be89dd5aad88aeaac60d482693913193e74bf5bb87d0c156d5e876fa`.

## Immediate specializations and directories

1. **[Computability theory](computability-theory/index.md)** — 0 immediate children · 0 unique articles · 0 structured · 0 verification metadata · 0 scored · editorial: proposed. The study of effective computation, computable functions and sets, and the limits and relative strength of algorithmic procedures.
2. **[Finite Coverage](FiniteCoverage/index.md)** — 0 immediate children · 1 unique articles · 0 structured · 0 verification metadata · 0 scored. Source-guide directory; semantic association unassessed.
   Unranked previews: [Finite coverage and scope](FiniteCoverage/scope.md).
3. **[Finite Sequences](FiniteSequences/index.md)** — 0 immediate children · 8 unique articles · 0 structured · 0 verification metadata · 0 scored. Source-guide directory; semantic association unassessed.
   Unranked previews: [Certificates for incrementally decoded batches](FiniteSequences/batch-certificate.md); [Composition of incremental dictionary decoding](FiniteSequences/incremental-composition.md).
4. **[Mechanistic Reasoning](MechanisticReasoning/index.md)** — 0 immediate children · 3 unique articles · 0 structured · 0 verification metadata · 0 scored. Source-guide directory; semantic association unassessed.
   Unranked previews: [Finite observation classification](MechanisticReasoning/finite-observation-classification.md); [From ethical obligations to mechanistic reasoning](MechanisticReasoning/ethics-capsules.md).
5. **[Model theory](model-theory/index.md)** — 0 immediate children · 0 unique articles · 0 structured · 0 verification metadata · 0 scored · editorial: proposed. The study of structures as interpretations of formal languages and of the connections between their properties, definability and the sentences they satisfy.
6. **[Proof Checking](ProofChecking/index.md)** — 0 immediate children · 1 unique articles · 0 structured · 0 verification metadata · 0 scored. Source-guide directory; semantic association unassessed.
   Unranked previews: [Proof-checking source roles](ProofChecking/source-roles.md).
7. **[Proof theory](proof-theory/index.md)** — 0 immediate children · 0 unique articles · 0 structured · 0 verification metadata · 0 scored · editorial: proposed. The mathematical study of formal deductions, proof systems and their transformations, strengths and limitations.
8. **[Set theory](set-theory/index.md)** — 0 immediate children · 0 unique articles · 0 structured · 0 verification metadata · 0 scored · editorial: proposed. The study of sets, membership and the structures and principles governing collections, including infinite collections and axiomatic theories of them.

## Articles at this level

- [Observable-fiber information loss: exact Farey and Bombieri adapters](information-loss-farey-weil.md) — source-guide; verification: `UNASSESSED`; S₃ unavailable. **Formalization state:** `SOURCE_INTEGRATED / NOT_LEAN_BUILT / NOT_FRESH_KERNEL_CHECKED / TRANSITIVE_AXIOMS_PENDING`. The declarations below are authored Lean proofs, not independently accepted kernel…

Source baseline: math commit `1b31ff873827ecf9acdf41b501b21a12b242a504`; 900 observed taxonomy/article/catalog inputs; 0 differ from that commit. Observation SHA-256: `9c00207c8c066060d9106b7d2475b518f0c5c9bd190ea17cc291924f5ac95037`.
Generated navigation, scores and source syntax inventories do not strengthen the proof scope recorded in an article.

<!-- END GENERATED MATHEMATICS NAVIGATION -->

[All mathematical areas](../../index.md) · [Lean source folder](../../../GRWTSK/Logic).

<!-- BEGIN GENERATED DOCUMENTATION POPULATION COUNTS -->
| Inventory | Count |
|---|---:|
| Lean source modules (current regular filesystem files) | 104 |
| Curated registered object guides | 10 |
| Curated documented object groups | 3 |
| Curated primary sources linked | 10 |
| Curated archive intake records | 3 |
| Curated selected catalog families | 0 |

No current whole-corpus source-command census is available.
<!-- END GENERATED DOCUMENTATION POPULATION COUNTS -->

These counts measure documentation and source coverage. They do not count accepted theorems or establish that every source module is documented or checked. [Definitions and limits](../../reference/library-pages.md#count-definitions).

Historical curated observer census (not current totals): At least 556 source declaration commands, including 296 theorem/lemma commands, across 60 parsed Lean source modules; 5 modules are unparsed, so these totals are lower bounds. These count source commands, not compiler-generated declarations or accepted theorems.

## FiniteCoverage

1 object guide · 1 distinct linked primary source file.

Historical curated observer census (not current totals): Linked primary-source scope: 4 source declaration commands, including 4 theorem/lemma commands, across 1 parsed Lean source modules. These count source commands, not compiler-generated declarations or accepted theorems.

- [Finite coverage and scope](FiniteCoverage/scope.md).

## FiniteSequences

8 object guides · 8 distinct linked primary source files.

Historical curated observer census (not current totals): Linked primary-source scope: 88 source declaration commands, including 68 theorem/lemma commands, across 8 parsed Lean source modules. These count source commands, not compiler-generated declarations or accepted theorems.

- [Certificates for incrementally decoded batches](FiniteSequences/batch-certificate.md).
- [Composition of incremental dictionary decoding](FiniteSequences/incremental-composition.md).
- [Exact indexed dictionaries](FiniteSequences/indexed-dictionary.md).
- [Exact ordered history extensions](FiniteSequences/append-only-history.md).
- [Prefix service intervals and obligation coverage](FiniteSequences/prefix-coverage.md).
- [Revision of indexed dictionaries](FiniteSequences/dictionary-revision.md).
- [Semantic certificates for finite premises](FiniteSequences/decision-certificate.md).
- [Stable incremental dictionary encoding](FiniteSequences/incremental-dictionary.md).

## ProofChecking

1 object guide · 1 distinct linked primary source file.

Historical curated observer census (not current totals): Linked primary-source scope: 19 source declaration commands, including 6 theorem/lemma commands, across 1 parsed Lean source modules. These count source commands, not compiler-generated declarations or accepted theorems.

- [Proof-checking source roles](ProofChecking/source-roles.md).

## Sources and verification

[Selected catalog](../../reference/results.md) · [Archive source candidates](../../reference/source-intake.md).

## Mechanistic reasoning exposition

[From ethical obligations to mechanistic reasoning](MechanisticReasoning/ethics-capsules.md) connects the A–M–I–F–E–D–O–X taxonomy to precise judgments and proof obligations. Three isolated mathematical companions address rooted authorization, support from partial observations, and effect-preserving simulation. This authored exposition is additional to the inventory snapshot above; the inventory counts have not been regenerated.

[Finite observation classification](MechanisticReasoning/finite-observation-classification.md) specializes nonempty observation support to an executable four-outcome finite scan. It separates exact listed semantics from ambient conclusions requiring an explicit coverage premise. Source-bound verification evidence and unresolved acceptance gates are tracked in [PR #313](https://github.com/grwtsk/math/pull/313).
