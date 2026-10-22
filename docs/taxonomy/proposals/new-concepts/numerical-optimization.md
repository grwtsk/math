---
schema_version: "0.1.1"
id: "urn:uuid:839a77ac-06ca-49a0-a167-d1c03a077368"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:5a00d561-cb33-491e-95b5-123f6be35e6c", "urn:uuid:09a7cc2c-9c83-403b-8878-ec023725dedb", "urn:uuid:1e436f29-6a2e-4fdd-90f7-60b6c85624d1", "urn:uuid:a0c26630-bd74-42a2-939b-ff8d1fd0d29b", "urn:uuid:46269753-be23-4ec7-adc4-e2a5c01d29d3", "urn:uuid:9eb25631-96c6-4737-b244-17e10e5a8929", "urn:uuid:ac890272-7f5e-4090-96ee-5b31b92812b0", "urn:uuid:5b6b329f-d4f2-4806-ac40-8ad34d655843", "urn:uuid:15c70f79-f6ea-43ba-b22e-7ac3c6fdcbd5"]
affected_source: {"repository": "grwtsk/math", "commit": "262daeee89add65f0d7997f338f9ca45bcac718e", "tree": "839bbf7f45eba12eefc045c82e859d1199fce5e5", "vocabulary": "0.5-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L23", "locator": "Selected numerical or optimization scope; see source register for inspected limits."}, {"key": "L24", "locator": "Selected numerical or optimization scope; see source register for inspected limits."}, {"key": "L25", "locator": "Selected numerical or optimization scope; see source register for inspected limits."}, {"key": "L26", "locator": "Selected numerical or optimization scope; see source register for inspected limits."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.6-pilot", "date": "2026-10-20", "change": "Nine-subject numerical and optimization proposal, with bounded quadratic/conjugate-gradient overlap."}]
decision_refs: ["D01", "D03", "D04", "D10"]
---
# Numerical analysis and optimization: subject addition

[Proposals](../index.md) · [Numerical analysis](../../subjects/numerical-analysis/index.md) · [Optimization](../../subjects/optimization/index.md) · [Registry](../../registry.md)

## Problem and affected source

Candidate 0.5 has no canonical numerical-analysis or mathematical-optimization branch, although both belong to the declared mathematical-sciences baseline. This describes the taxonomy subtree, not absence of mathematical implementations. This proposal extends math `262daeee89add65f0d7997f338f9ca45bcac718e`; it changes no source namespaces or old concept definitions.

## Proposed scope and warrant

Add nine established-subject records: numerical analysis, numerical linear algebra, numerical solution of linear systems, iterative solution theory, Krylov-subspace solver theory, conjugate-gradient theory for real symmetric positive-definite systems, mathematical optimization, convex optimization, and unconstrained strictly convex finite-dimensional real quadratic optimization. Their definitions remain solely on canonical pages. [L23-L26](../../standards/index.md) provide bounded primary references, not independent endorsement or exhaustive prior-art review.

## Placement and alternatives

The numerical route has six levels through Krylov solvers to the restricted conjugate-gradient subject. The quadratic-optimization subject supplies a second proposed parent to that same record. Both concern the same restricted algorithmic solution theory, not an arbitrary application of a method. Separate method/object facets, a related-topic link instead of the second parent, and a broader conjugate-gradient umbrella remain reviewable alternatives. Duplicating the canonical definition, collapsing optimization into numerical analysis, or treating all optimization as convex would erase distinctions.

## Before and after relationships

Before: 52 concepts, three mappings, six proposals and one association at 0.5-pilot. Proposed after: 61 concepts, three mappings, seven proposals and one association at 0.6-pilot. Eight new direct subject-specialization edges are proposed, with two new navigational root entries; neither root is declared the unique mathematical owner of the other. All 52 preceding concept pages are byte-preserved. Three mapping identities retain their external targets and semantics while recording the local vocabulary-edition change; no review approval is carried forward.

## Compatibility and acceptance criteria

No Lean file, import, dependency, source notice, mathematical statement or #254 attribution disposition changes. No retired identity is reused. Noe implementation `ba81eef56f4b9c2fb29b9ff2ef838f5f4989e4c7` owns executable validation. Required checks include canonical identity, path/source-key resolution, inverse browsing, nonempty prose and exact-revision compatibility; tests and operational reports do not belong in math.

Independent numerical-analysis and cataloging review must assess all nine definitions, the solver-versus-method record choice, the second conjugate-gradient parent, real symmetry and positive-definiteness assumptions, and the distinction between exact-arithmetic and floating-point behavior. Conditioning must not be confused with stability; residuals with error; convexity with attainment; solver output with a verified result. Retain objections and source versions. No independent review has occurred merely because this proposal exists.

## Retained baseline and recommended disposition

Recommended disposition: remain proposed. Native MSC source bytes and exact identifiers remain unavailable; the reuse/distribution arrangement remains unresolved. Reference-only local prose does not complete MSC Sections 65 or 90, nor the other mathematical-sciences fields. No source-owned classification data is imported or relicensed. D10 records the candidate boundary; a later rejection, reparenting or scope change must preserve this history.
