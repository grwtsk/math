---
schema_version: "0.1.1"
id: "urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a", "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c", "urn:uuid:29dbd2d2-37a1-4cef-be3f-d8af8be15435", "urn:uuid:de7ef891-c454-4034-95fa-cbbcc277dbd9", "urn:uuid:89a513d7-fdd5-45fd-b670-021162b26a1c", "urn:uuid:6cc2d458-3117-48eb-ae4f-76ed9166720e", "urn:uuid:c8b0b274-fbca-4a2e-a73a-8585ebcab14a", "urn:uuid:ff723b28-76df-464e-881a-aa717626f6c2", "urn:uuid:20fce9ae-f8ab-4b20-aa59-395531a17716", "urn:uuid:c67aebfc-2b99-44cd-b352-0d1da1eee8fe", "urn:uuid:928a6590-e238-4c23-ba5d-2916d856807c"]
affected_source: {"repository": "grwtsk/math", "commit": "900c2ed33885ad46cc55eabc176fab8cd2b2c0cb", "tree": "c7ebb8d91b3e48ec5d19589b1ab42a4ebe26e375", "vocabulary": "0.9-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L45", "locator": "The Stacks Project, tags 00AO, 00AQ and 00AR: chapter outline, commutative-unital ring convention and basic module notions; mutable HTML inspected."}, {"key": "L46", "locator": "Sheldon Axler, Linear Algebra Done Right fourth-edition author page: vector spaces, finite-dimensional operators, bases and matrices; author overview inspected, not full book."}, {"key": "L47", "locator": "J. S. Milne, Fields and Galois Theory author page: frozen notes v5.10 (2022), field extensions and distinct version-specific license statement; outline inspected."}, {"key": "L48", "locator": "Pavel Etingof, Rings, Ideals, and Modules resource in MIT 18.706 Spring 2023: author/title and noncommutative-course placement; resource metadata inspected, not lecture PDF."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Ten algebra subjects, twelve proposed parent edges and an existing-parent navigation extension."}]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Algebraic structures: subject addition

[Proposals](../index.md) · [Algebra](../../subjects/algebra/index.md) · [Registry](../../registry.md)

## Problem and source

The preceding candidate has an algebra entry and group-theory branch, but no canonical general ring, field, module or linear-algebra branch. Numerical linear algebra, algebraic coding and algebraic number theory do not replace those subjects. This concerns the selected taxonomy subtree, not absence of mathematics or repository implementations.

## Proposed scope and warrant

Add linear algebra, vector space theory over fields, finite-dimensional vector space theory, matrix theory over fields, associative unital ring theory, commutative algebra, unital module theory, modules over commutative rings, commutative field theory and finite field theory. [L44-L48](../../standards/index.md) retain bounded primary-source warrants. The subjects are established; original local descriptions are not claims of original mathematics.

## Placement and alternatives

The existing algebra record gains browsing links without changing its definition or scope. Vector space theory has linear-algebra and module-theory parents; modules over commutative rings has module-theory and commutative-algebra parents. Each has one canonical page. These are intrinsic structural restrictions, not edges inferred from the use of a method. Alternatives include collapsing vector-space theory into linear algebra or using related-topic links for cross-branch browsing. Field theory remains directly under algebra; a different subject home is a review question, not a reason to force every field-theory topic into a commutative-algebra hierarchy.

The general ring record permits noncommutative multiplication; the Stacks chapter's commutative convention is scoped to that source and the commutative branch. Zero-ring, unital-map and left/right module conventions are explicit. Homographs involving physical field theory or software modules do not establish concept equivalence. An infinite-dimensional basis assertion does not become choice-free through classification.

## Before and after relationships

Before: 95 concepts, three mappings, ten proposals and one association. Proposed after: 105 concepts, three mappings, eleven proposals and one association at 0.10-pilot. Twelve new specialization edges remain proposed. Ninety-four earlier concept pages remain byte-identical; Algebra changes only navigation and its corresponding history entry. Existing definitions, scopes, statuses and identities are unchanged. External mapping meanings are retained; only local edition and history advance without review transport.

## Compatibility and acceptance criteria

Independent algebra and cataloging review must assess the definitions, possible scope overlap, division criteria, field and ring conventions, and both multiple-parent arrangements. Check scalar fields versus underlying sets, vector-space dimension versus cardinality, freeness versus finite generation, tensor-product exactness hypotheses, similarity versus left-right matrix equivalence, and finite fields versus residue rings. A source-specific convention is not a universal terminology rule.

Mechanical prose or graph checks do not provide that review. No new source associations, source migration, namespace-collision resolution, Lean coercion, implication or authorship disposition is proposed. Preserve all #89 typed-relation and #254 attribution obligations.

## Disposition and remaining scope

Remain proposed. This is a partial algebra addition, not complete ring, field, module or linear-algebra coverage and not a 1.0 release. Native MSC source bytes and exact identifiers remain unavailable; extraction completeness and permitted bulk reuse remain unresolved. No source-owned dataset, lecture text or book payload is imported or relicensed. No external standards submission or production-graph admission follows.
