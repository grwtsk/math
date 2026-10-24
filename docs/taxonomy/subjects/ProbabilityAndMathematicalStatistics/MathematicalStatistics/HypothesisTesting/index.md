---
schema_version: "0.1.1"
id: "urn:uuid:8388fbd0-9a19-4b54-99e7-9ebbe463a808"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Statistical hypothesis testing theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-inference", "target": "urn:uuid:ed407ce1-0ca3-4929-9433-7a0967b3f3dc", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L20", "L19"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:ed407ce1-0ca3-4929-9433-7a0967b3f3dc"
facets: []
relations: []
sources: [{"key": "L20", "locator": "NIST/SEMATECH handbook section 7.1.3, hypotheses and error criteria."}, {"key": "L19", "locator": "First-edition contents and the public abstracts for chapters 6, 9, 12 and 13; not a full-book audit."}]
warrant: {"literary": "Established statistical subject with cited primary scope references; the precise local boundary and parentage need independent review.", "user": "Find statistical topics without using repository filenames or the current proof agenda as the subject baseline.", "organizational": "Keep model assumptions, inferential statements, software evidence and operational permission separate."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Original local subject description; candidate placement after source-only integration of 0.4."}]
proposal_refs: ["urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Statistical hypothesis testing theory

[Statistical inference theory](../Inference/index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of data-dependent rules for distinguishing specified statistical hypotheses while controlling or evaluating their probabilities of erroneous decisions.

## Scope

Null and alternative hypotheses, sampling assumptions, rejection rules and error criteria must be explicit. Failure to reject a null is not a proof of that null. A p-value is not the posterior probability that a hypothesis is true, and statistical significance is not effect magnitude. Multiple testing, sequential use and selection after observing data require their own calibration.

## Browse

Selected division criterion: Hypothesis family and error-control problem; selected narrower procedures remain unpopulated.

No narrower canonical pages are authored here yet. This is not an assertion that narrower subjects do not exist.

## Example and boundary

For a test function phi with values in [0,1], a level-alpha condition can be expressed as sup over theta in Theta_0 of E_theta(phi(X)) <= alpha. Power concerns expectations under alternatives; the two are not the same bound.

## Sources and review

[L20, L19](../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
