# Claim-bound mathematical diagnostics

Authored mathematical design and source-candidate notes by **grwtsk contributors**.

The mathematical implementation is
`GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/MathematicalDiagnostics.lean`,
with hostile controls in `MathematicalDiagnosticsExamples.lean`. These modules
are source proof candidates until executed elaboration, fresh kernel checking,
and transitive axiom auditing succeed on their exact published identities.

## Purpose and scope

The same descriptive error families apply across the current mathematical
subjects under `GRWTSK/`: algebra, analysis, categories and homological algebra,
combinatorics, equations and dynamics, foundations, geometry, history,
information theory, mathematics education, mechanics, number theory, numerical
analysis, optimization, probability/statistics, and topology. A current root
path is not a claim that the local taxonomy exhausts mathematics. Each
subject can refine a family with a subject-specific code without defining a
second proof-trust system.

The 16 diagnostic families are `source`, `definition`, `hypothesis`, `logic`,
`proof`, `existence`, `uniqueness`, `structure`, `lifting`, `bound`, `limit`,
`computation`, `model`, `formalization`, `verification`, and `repository`.
Their classifications are *descriptive only*; a name, relevance match,
provenance string, validation status, or file path does not imply a theorem.

`Descriptor` binds a claim to reported source identity, canonical subject path,
related paths, family, code, and scope description. `CatalogDiagnostic` refers
to the existing immutable research-state catalog and demands **equality of
recorded source identities**. This equality does not authenticate Git.
`Standing` is indexed by the exact `Prop`: `established` stores `P`,
`refuted` stores `¬P`, and `conditional` stores `Q → P` with `Q` explicit;
`unresolved`, `candidate`, and `analogy` carry no assertion.

## Mathematical acceptance boundary

`Standing.proof_of_hasProof` and `Standing.refutation_of_hasRefutation`
recover proofs only from matching constructors. `Standing.not_both` rules out
simultaneous certified truth and refutation within one status value.
`Standing.forward` transfers a proved or conditional claim along a supplied
implication; a refuted antecedent becomes unresolved rather than a refutation
of the consequent. `CatalogDiagnostic.statement_of_hasProof` retains all
catalog hypotheses before deriving the raw mathematical conclusion.

`scoped_counterexample` gives the exact nonimplication of a restricted
universal quantification from a witness inside that restriction.
`no_universal_descriptor_promotion` and `no_universal_scope_promotion` are
proof goals preventing metadata-only and scope-escalation routes, respectively.
Arithmetic fixtures exercise a concrete counterexample, a false conditional,
wrong-way refutation transfer, and a local-but-not-global assertion. They do
not establish results in every listed subject or a general automation theorem.

## Existing structure and validation

This package **extends** rather than replaces `ResearchState.Catalog`,
`ResearchState.Meaning`, `ResearchState.TypedRelation`, and source identities.
It is aligned with existing issues #84, #89, and #90 and the conservative
hypothesis and proof-debt transitions. It makes no change to source acceptance,
logical inference constructors, repository authority, or transitive axiom policy.

The passive source-bound contract is
`docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/MathematicalDiagnosticsExamples/mathematical-diagnostics-v0.1.toml`.
Operational compilation, source custody, receipts, and publication effects
belong in `grwtsk/noeaaeue`. Source identity, Lean compilation, fresh kernel
checking, and axiom auditing remain separate; **NOT_RUN** is never acceptance.

A next mathematical supplier is explicit evidence-indexed scope-transport
rather than a string-based scope promotion; it must preserve exact domains,
quantifiers, sources, and additional hypotheses. A compatible refinement with
the existing typed relation graph also requires proof-carrying adapters.
