# Static validation and review contract

[Taxonomy](index.md) · [Profile](schema.md)

Status for every execution described below: **NOT_RUN**. This document specifies acceptance cases; it is not a runner, execution request or evidence receipt. The implementation, tests, commands, metering and output belong to the existing Noe-owned components, not to math.

## Separate verdicts

Report structural validation, baseline-set reconciliation, semantic/cataloging review, mathematical proof verification and rights/operational eligibility independently. A source hash identifies input; it is not proof. A parser success is not a semantic review. Unavailable source data is not an empty set. A failed tool, missing import, timeout or unrelated parse error cannot count as the intended negative control.

Structural checks cover UUID uniqueness/non-reuse; record kinds and endpoint profiles; one preferred label per language; Unicode normalization and explicit homograph qualification; one canonical page; case-sensitive and portable relative paths; source-code validity at the cited edition; accepted subject-cycle detection; declared inverse consistency; source revisions; proposal exclusion; source/rights completeness; and identifier/redirect resolution. Reject duplicate YAML keys and unsafe YAML object construction. Do not execute embedded code, commands, includes or network fetches from record content.

Coverage checks compare exact baseline identifier sets at every native level, disposition of indexing provisions, duplicate/omitted identifiers and unresolved sets. Export checks retain compound records, rights, editions, statuses, edge types and provenance. Inferred inverses/closure remain tagged and do not inflate direct-edge counts.

## Paired controls

The following are fixture specifications. Simulated accepted states exist only inside an isolated test graph; they do not admit this pilot's proposed records.

| ID | Positive control | Adversarial control and required result |
| --- | --- | --- |
| V01 | One UUID at one canonical path resolves | Same UUID at two pages: reject duplicate identity |
| V02 | One subject has two justified parents and one home | Second definition created for the alternate parent: reject duplication, not polyhierarchy |
| V03 | Operator spectrum and ring spectrum have different IDs and qualified labels | Merge by shared alternative label `spectrum`: reject unsupported identity |
| V04 | A closeMatch remains close and nontransitive | Promote close to exact or chain two close edges as exact: reject |
| V05 | Compound MSC co-indexing is retained as one record | Export its two targets as exactMatch statements: reject lossy promotion |
| V06 | Local broadMatch external traverses toward the broader target | Reverse its interpretation without narrowMatch: reject |
| V07 | Historical code A at edition E remains resolvable after split to B/C at F | Reuse A's identity for only narrower B: reject silent identity change |
| V08 | A closed, synthetic repository inventory contains no implementation for a valid subject | Delete the subject or call it unknown mathematics: reject inference; outside closed inventory return unassessed |
| V09 | A proposed, unproved novelty claim remains quarantined with objections | Editorial admission asserted as theorem proof: reject status promotion |
| V10 | Accepted edges export; proposed edges are available only in the proposal view | Proposed mapping leaks into asserted production graph: reject |
| V11 | Direct A→B and B→C produce separately tagged inferred A→C | Count inferred A→C as an observed edge: reject provenance loss |
| V12 | Acyclic subject graph and an allowed cyclic non-subject relation graph are distinguished | Accepted subject cycle: reject; do not reject every graph cycle indiscriminately |
| V13 | A valid indexing provision is registered as its actual kind | Invent every prefix/suffix combination or label every provision a subdiscipline: reject |
| V14 | Same text in different historical contexts keeps distinct occurrence IDs | Deduplicate occurrence obligations solely by blob equality: reject |
| V15 | Changed label/path with unchanged scope preserves ID and redirect | Redirect to a broader or narrower meaning without a decision: reject |
| V16 | Valid explicit exactMatch closure survives review | Closure conflicts with broad/related mappings or scope evidence: withhold release and report conflict |
| V17 | All required positive fixtures pass at exact inputs | Always-reject validator, missing positive cases or an empty fixture list: fail acceptance |
| V18 | ASCII filename with Unicode display label and valid relative links works offline | Case-only path mismatch, malformed language label or broken parent link: reject precisely |
| V19 | An exact source-bound relevantTo association remains non-entailing | Traverse it as implies, Lean coercion or source-identification theorem: reject |
| V20 | Rights-blocked data remains blocked with an explicit missing set | Omit blocked records and report full coverage, or flatten their license to MIT: reject |

## Concrete unproved-claim fixture for V09

This is a deliberately synthetic proposal, not a contribution attributed to the repository owner. Claim: for every finite irreducible reversible Markov transition matrix on n≥2 states, `1-lambda_2 >= 1/n^2`, where eigenvalues are ordered decreasingly and lambda_2 is the second eigenvalue. It enters the fixture as proposed, novelty unassessed, proof NOT_RUN.

Retain the objection: the two-state matrix with diagonal 99/100 and off-diagonal 1/100 is irreducible and reversible for the uniform distribution. The vectors (1,1) and (1,-1) give eigenvalues 1 and 98/100 by direct multiplication. Its gap 1/50 is less than 1/4. This written counterexample blocks acceptance of the claimed universal bound; it is not an executed Lean test or a new research result. Never delete the initial proposal or silently weaken its statement to hide the objection. A corrected claim would require a new revision with explicit hypotheses and prior-art review.

## Required Noe implementation delivery

Before an authorized executor implements this profile, inspect the pinned Noe taxonomy classification, collation, integration and mathematical Git-binding owners and their applicable instructions. Extend the appropriate existing owner rather than a new top-level generator. Bind the math commit, schema version, input rights/snapshots, test corpus and output identities explicitly.

A reproducible delivery must supply exact checked-in command paths and versions, permitted inputs, expected result formats, positive and hostile fixture identities, and output hashes through those owners. No taxonomy validation command has yet been implemented or verified; this draft deliberately does not invent a CLI that appears runnable. Missing implementation/commands remain an explicit release blocker. Lean/Lake is not an incidental documentation check and remains outside this task's execution scope.
