---
schema_version: 0.1.0
id: urn:uuid:8239c220-d9bf-4c45-9486-4b1bd50a0890
record_kind: proposal
proposal_type: scope_dispute
lifecycle: proposed
affected_concept_ids: []
affected_source: {repository: grwtsk/math, commit: eb3124bd05f0f74aaa709ca36a855539f722fb92, tree: bfdf232423cfbbaf9ea062e3a18a52bb8cc952bf}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: ATTRIBUTION_CLARIFICATION_NEEDED, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
sources: [{kind: issue, repository: grwtsk/math, number: 254}, {kind: issue, repository: grwtsk/math, number: 89}]
revision_history: [{version: 0.1, date: '2026-10-19', change: 'Initial three-case scope intake; no merge or rename.'}]
decision_refs: [D01, D05]
---
# Three namespace scope-review candidates

[Proposals](../index.md) · [Source audit](../../audit.md)

## Problem and affected identities

The following exact root-tree entries coexist in the inspected main revision. They are source namespaces, not yet six canonical subject concepts. `affected_concept_ids` is empty because no concept IDs have been assigned from these labels alone; it is not a claim that the source has no mathematical content.

| Case | First path and tree identity | Second path and tree identity |
| --- | --- | --- |
| C01 | `GRWTSK/Combinatorics/` — `95f9ce84fbc858a10b41622f37d475173e95336b` | `GRWTSK/CombinatoricsAndDiscreteMathematics/` — `011719f3e11fed4ffee582f21073ed05af04b810` |
| C02 | `GRWTSK/Logic/` — `cf9cea3f3b549156095d5b94e88f2499db0fb060` | `GRWTSK/FoundationsLogicAndTypeTheory/` — `1edbe6a758776f87886434ea42fb668faa8f9029` |
| C03 | `GRWTSK/DynamicalSystems/` — `4c59905a1c84186e2c66c553627e21e0b7da7961` | `GRWTSK/DifferentialEquationsAndDynamicalSystems/` — `ff6b194be02d825ce4e7b80455cad0d28050c08d` |

## Evidence and distinct questions

Root membership and identities are observed in the [pinned source tree](https://api.github.com/repos/grwtsk/math/git/trees/bfdf232423cfbbaf9ea062e3a18a52bb8cc952bf). Full contents have not been compared in this bounded audit.

C01 asks whether combinatorial and other discrete subjects are different scopes, an organizational union, or overlapping placements. C02 asks which logical, foundational and type-theoretic subjects actually occur; a combined folder name does not identify them all as synonyms. C03 asks whether differential-equation and dynamical-system content forms overlap, separate subfields or a union. None is predetermined to be a duplicate.

## Alternatives and recommendation

Possible dispositions include separate concepts, a source-to-several-concepts association, a broader navigational collection, an alias after genuine scope equivalence, or a separately proposed source migration. Retaining two parents for one actual concept is also possible and is not itself a collision.

Recommended current disposition for each case: retain both paths and their histories; mark subject equivalence UNASSESSED; inspect each exact selected source with its hypotheses, dependencies, notices and contribution history before proposing any concept merge or Lean migration. Existing #254 attribution obligations remain open.

## Before and after

Before: the six named source roots coexist; no accepted concept-equivalence edges are asserted by this proposal. After this intake: the same six roots and mathematical declarations remain unchanged; three durable scope questions are recorded. No alias, redirect, rename, split, merge or import rewrite is introduced.

## Compatibility, acceptance and retained rationale

Acceptance of a resolution requires source-by-source content review, literature-backed concept scope, explicit affected concept IDs, before/after typed relationships, a separate source migration plan when needed, and preservation of exact source/attribution lineage. Mechanical filename comparison, byte equality or matching labels cannot satisfy those criteria. Any resolution must retain this original intake, alternatives and objections; source migration remains outside this documentation task.
