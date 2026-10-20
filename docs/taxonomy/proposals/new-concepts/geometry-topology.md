---
schema_version: "0.1.1"
id: "urn:uuid:d53e7304-a343-4241-be9f-9de4b2ad913c"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:f8eae694-aed8-4351-98c9-33f0cbb70448", "urn:uuid:d2503a54-b471-49a9-b55c-86974719ea0e", "urn:uuid:19f1dd58-8c23-4cc2-9326-7ccee050a295", "urn:uuid:695e5594-f345-461f-a03c-9bf79bafc5f4", "urn:uuid:03a6b10c-71cd-4062-8bef-bccc82c5b1de", "urn:uuid:5eef2939-f9f7-482e-bc71-db9926df1540", "urn:uuid:488ac86e-75aa-43d0-a98d-17f305f6cad9", "urn:uuid:3347007f-4ae3-4c1d-9b3a-f17102a0895f", "urn:uuid:0273582d-e292-4d10-bc99-30189c735a38", "urn:uuid:09ee87c8-34bb-4519-96ed-dbf8ea260c88", "urn:uuid:73ef9d25-86ae-4bde-88a8-da55dc2a2fa5", "urn:uuid:4af35b29-a93b-4113-b480-84b9d963846d"]
affected_source: {"repository": "grwtsk/math", "commit": "ae9b637989a78a4360ef95e1fc4ead44ee3f6f8a", "vocabulary": "0.3-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
sources: [{"key": "L11", "locator": "Author contents and chapter 2, section 2.1, including printed page 106; topological homotopy and ordinary homology conventions."}, {"key": "L12", "locator": "Author description and contents, chapters 2-3 and 10-15; primarily the axiomatic Euclidean plane."}, {"key": "L13", "locator": "Second-edition author scope, copyright 2013; smooth structures, tangent constructions and differential forms."}, {"key": "L14", "locator": "Second-edition author scope and preface, copyright 2018; metrics, geodesics and curvature."}, {"key": "L15", "locator": "Second-edition author scope and contents, copyright 2011, chapters 2-4; general spaces, constructions and properties."}, {"key": "L16", "locator": "Author institutional book record: AMS 2010; published description of topology, algorithms and persistence; full book not audited."}, {"key": "L17", "locator": "Version 3.13.0 SimplexTree reference, representation, betti_numbers and compute_persistence coefficient/output restrictions."}]
revision_history: [{"version": "0.4-pilot", "date": "2026-10-19", "change": "Twelve established-subject additions; prior concept payloads and objections retained."}]
decision_refs: ["D01", "D03", "D04", "D05", "D06", "D08"]
---
# Geometry and topology: proposed subject additions

[Taxonomy](../../index.md) · [Subjects](../../subjects/index.md) · [Registry](../../registry.md)

## Problem and affected identities

The previous candidate lacks geometry and topology entry points. Add the twelve identified subjects with locally authored definitions, exclusions and examples. This is not a claim of new mathematics, exhaustive geometric/topological coverage or absence of repository implementations. All twenty-nine preceding concept pages retain their exact payloads.

## Evidence and closest concepts

Lee supplies axiomatic, smooth, Riemannian and general-topological contexts; Hatcher supplies topological homotopy and homology constructions. Edelsbrunner and Harer's institutional book record warrants computational topology as an established subdiscipline. GUDHI's versioned manual illustrates a real prime-coefficient interface and its implementation-specific constraints; it does not prove an arbitrary algorithm correct. The source register distinguishes books from samples, author scope descriptions and software documentation. Inspection is bounded, not independent specialist review.

## Alternatives and recommendation

Keep geometry and topology as independent navigation entries with explicit subject distinctions. Do not infer an identity between smooth, topological and metric structures, or between homotopy, homology and cohomology. Further associative or multiple-parent relationships may be proposed with warrant; their omission here does not deny them.

The restricted computational simplicial-homology subject has two proposed specialization parents: simplicial homology and computational topology. The question is an exact computational homology problem, not every use of linear algebra in topology. An object facet or alias is insufficient to retain this subject's scope. A one-parent placement plus a related link is an alternative needing review. Finite prime-field examples do not exhaust simplicial homology or computational topology.

## Before and proposed after

Before: twenty-nine proposed concepts. After: forty-one proposed concepts, with eleven additional direct subject-specialization edges and one retained proposal. The path Topology -> Algebraic topology -> Homology theory -> Simplicial homology -> Computational simplicial homology has a second route through Computational topology. One canonical page retains both parents. All edges remain proposed.

## Compatibility and edition binding

No prior concept identifier, path, definition, scope or parent edge changes. Vocabulary candidate 0.4-pilot remains separate from schema 0.1.1. The three existing mappings update their local source edition and retained history only; targets, external editions, directions, relations, compound structure and proposed states are preserved. Compare the two pinned versions without transferring approval. Old Noe bindings remain immutable.

## Acceptance criteria and retained rationale

Independently review definitions, coefficients, assumptions, literary adequacy and all eleven proposed edges. Verify both browsing directions, one canonical home, persistent UUIDs, relative links and exact source inventories through the existing Noe component. Preserve objections and rejected alternatives; no name collision or source migration is resolved here. Source keys resolving is not rights clearance, software correctness, attribution adjudication or mathematical acceptance.

The original MSC source files remain unavailable in the working environment. The separately located TIB SKOS serialization is a research conversion with its own revision and modelling choices, not a new published MSC edition or a proven byte-identical replacement. Neither partial reference access nor the existence of a conversion clears bulk-data rights or full identifier reconciliation. No external dataset, textbook payload, Lean build or standards submission is introduced.
