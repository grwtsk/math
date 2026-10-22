---
schema_version: "0.1.1"
id: "urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:12048078-5b03-49fb-8166-03585462a8dd", "urn:uuid:7d6d748a-f382-4862-bcd6-1eab3c4808c0", "urn:uuid:ed407ce1-0ca3-4929-9433-7a0967b3f3dc", "urn:uuid:e6181efd-a05a-4131-b98e-e21751c60c34", "urn:uuid:d26248fa-96a1-45b7-8a99-4e77a5600f05", "urn:uuid:aa74905b-40b1-48a4-beaf-c67c506943c3", "urn:uuid:8388fbd0-9a19-4b54-99e7-9ebbe463a808", "urn:uuid:93e97cd9-3048-4e33-893a-6ed41356af91", "urn:uuid:6f508e89-44f2-4875-8635-8de1a6a1500e", "urn:uuid:806e39ed-f9b9-434e-83cd-6cd1152568fa", "urn:uuid:df2c6c73-bc6f-417b-ae79-2a7330455fb5"]
affected_source: {"repository": "grwtsk/math", "commit": "f3d3f755ac0bb40732f9580a3cb30fecdcd26bcd", "tree": "02d050133e77faa1fe15d86dcb81adef41e98c33", "vocabulary": "0.4-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L18", "locator": "Primary subject scope and selected statistical boundaries."}, {"key": "L19", "locator": "Primary subject scope and selected statistical boundaries."}, {"key": "L20", "locator": "Primary subject scope and selected statistical boundaries."}, {"key": "L21", "locator": "Primary subject scope and selected statistical boundaries."}, {"key": "L22", "locator": "Primary subject scope and selected statistical boundaries."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Initial eleven-subject proposal from integrated main; no source migration."}]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Statistics, inference and regression: subject addition

[Proposals](../index.md) · [Statistics](../../subjects/statistics/index.md) · [Registry](../../registry.md)

## Problem and affected source

Statistics is within the declared mathematical-sciences scope but has no canonical subject branch in the complete candidate-0.4 taxonomy subtree. That is a statement about the taxonomy, not an assertion that the repository contains no statistical mathematics. This proposal starts from integrated main `f3d3f755ac0bb40732f9580a3cb30fecdcd26bcd`, whose root tree equals the retained candidate `814971e0bc4fd54802423eec4beb6a0b890a8cb4`. The source-only merge of #280 does not accept the concepts. The original branch and all historical objections remain intact.

## Proposed scope and warrant

Add eleven established-subject records: statistics, mathematical statistics, statistical inference theory, statistical estimation theory, point estimation theory, frequentist confidence interval theory, statistical hypothesis testing theory, statistical decision theory, regression theory, linear regression theory, and least-squares estimation theory for fixed-design full-rank linear models. Exact definitions and hypotheses are maintained only on their canonical pages. [L18-L22](../../standards/index.md) supply bounded institutional and author/publisher references, not a complete bibliography or independent review.

## Placement and alternatives

The deepest path has six levels through point estimation to the restricted least-squares subject. Linear regression supplies its second proposed parent. An alias of either parent would erase its narrower model or estimation scope. A method facet alone would not represent the subject studying this estimator's sampling properties. A crosswalk is unsuitable for two parents within one scheme. A related-topic link instead of the second specialization remains a reviewable alternative.

The other branches distinguish statistical tasks and models. Probability is not silently made synonymous with statistics, and decision theory is not an execution authority. One umbrella page, two duplicate least-squares pages, or treating all inference as hypothesis testing are rejected design alternatives, not historical mathematical claims. Future sampling, experimental-design, Bayesian, nonparametric and applied-statistics records remain required where supported; the present selection does not exhaust the discipline.

## Before and after relationships

Before: 41 concepts, three mappings, five proposals and one association in vocabulary 0.4-pilot. Proposed after: 52 concepts, three mappings, six proposals and one association in 0.5-pilot, with eleven additional proposed subject-specialization edges. The old 41 concept pages retain their exact payloads. The three mappings retain their identities and external semantics while explicitly changing local source edition and history; independent review is not transported across that edition change.

## Compatibility and acceptance criteria

No Lean namespace, import, theorem, source notice or #254 attribution disposition changes. New URNs do not reuse retired identities. Source key resolution, prose presence, Git membership and navigability must be checked at exact commits in Noe, whose inspected implementation head is `7c9524437982cfa2c08ac7062f039c39762ed526`; no executable validator or operational receipt is added to math. Mechanical success cannot accept semantic parentage or source rights.

Independent review must assess all eleven scopes, the two-parent least-squares placement, the distinction between confidence and posterior probability, and every sampling assumption. In particular, rank and moment assumptions are not Gaussianity, uncorrelated errors are not necessarily independent, and exact numerical fitting is not model adequacy. Resolve any objections in retained revisions. This proposal makes no statistical recommendation for a real dataset and no new-mathematics claim.

## Retained baseline and decision

Recommended disposition: retain as proposed pending specialist and cataloging review. Native MSC source checksums, complete identifier sets and rights clearance remain unavailable; no external dataset is imported. This branch is original local authoring with references, not completion of MSC Section 62 or a replacement for the full baseline. D09 records the source-integration and edition boundary. Rejection or later revision must preserve this intake, alternatives, affected IDs and historical mappings.
