---
schema_version: 0.1.1
id: urn:uuid:9c88259e-60bf-450a-8d36-ad0452fd53fc
record_kind: proposal
proposal_type: addition
lifecycle: proposed
affected_concept_ids: [urn:uuid:30401bfc-5e4f-403d-adad-ef76a037720d, urn:uuid:f633a28f-ee02-40ab-8f58-2d5f75f0a161]
sources: [{key: R-GRWTSK-20261023, locator: '364-module baseline at f8b640ad4cee877626b469b0ef5bfe6ec3221d4e, tree 6389972d9cd3335a7568fd8ce8f341ccfcd9aa18.'}]
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.1, date: '2026-10-23', change: 'Two resource kinds warranted by source-specific editorial review.'}]
decision_refs: []
---
# Resource kinds for the residual semantic review

## Problem and alternatives

Some maintained source wrappers only expose supplied propositions; others specify
checklists, bibliography, labels or publication policies. Labeling them all RH,
algebraic geometry, category theory or logic from their names or Lean syntax would
misrepresent their contents. Leaving them operationally routed without an explicit
semantic decision is also insufficient.

## Recommendation and scope

Use the two separately defined resource kinds, with source-bound scope and
nonclaims. Allow evidenced subject associations alongside them, not as synonyms.
Every source remains maintained under the same policy. These records do not move
Lean files or introduce a new namespace, and assert no accepted parent edges.

The editorial judgments are AI-assisted source review, not independent human or
disciplinary acceptance. They are authored and validated in Noeaaeue at
`bindings/mathematics/organization/policy/semantic-review-364/`, with exact source
occurrences, content digests, provider context and vocabulary pins. This proposal
is not a declaration that the taxonomy as a whole has been reviewed.

## Acceptance and invalidation

Check canonical identity uniqueness and typed record roles. Reopen affected source
decisions if source, inspected provider, concept definition or authored judgment
changes. Editorial review does not run Lean or alter verification queues. Subject
and resource indexing cannot manufacture elaboration, trust, attribution or rights
evidence. Generated ledgers and counts remain Noeaaeue artifacts.
