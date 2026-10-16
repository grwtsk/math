# Grounded rules and checker soundness

The formal repository model is organized around judgments with an explicit
snapshot-dependent meaning. A sound rule proves that its side condition and all
premise meanings imply the exact conclusion meaning. A checker proves only that
an `accept` result implies the meaning of the certificate's conclusion.
`reject` and `unknown` establish no positive mathematical conclusion.

The reusable checked interfaces are:

- `GRWTSK.Logic.Inference.RuleSound` and
  `GRWTSK.Logic.Inference.grounded_rules_meaning`;
- `GRWTSK.Logic.Inference.CertificateChecker` and
  its separate `Accepts` and finite-domain `Covers` predicates, together with
  `meaning_of_complete_coverage`;
- `GRWTSK.Logic.Inference.CheckedByteInterface.accepted_meaning`;
- `GRWTSK.Logic.Certificates.ReconstructionDerivation`; and
- the separate snapshot-scoped
  `GRWTSK.Logic.ProofChecking.ReconstructionEvidence` and
  `GRWTSK.Logic.ProofChecking.FormalCorrectnessEvidence` records.

They extend the existing finite-rule development. `GroundedSupport`,
`grounded_target`, `mem_supportedClaims_iff`, and
`supportedClaims_empty_of_no_ground` ensure that mutually supporting rules do
not create evidence from a cycle. The historical declaration namespace remains
for compatibility, while maintained headings describe the mathematical object.

The versioned [`registry.json`](registry.json) records every required rule's
premises, side conditions, conclusion, checker, controls, and soundness evidence
or exact gap. Registry presence never discharges the rule. In particular, the
repository's Python and filesystem adapters have not been proved to refine the
Lean model; their successful runs remain operational evidence.

`EvidenceAvailability.dimensions_are_independent` gives direct
reconstruction-only and formal-correctness-only states. It therefore prevents
the profile model from treating the presence of one evidence object as the
presence of the other. The older `StatusVector` remains a compatibility status
model; setting one of its free propositions to `True` is not evidence.

This is the exact extent of the Busy Beaver 5 analogy adopted by the policy:
sound informative classifications must be combined with complete coverage of a
declared universe, while an unknown result provides no classification. It is
not a claim that the Lean and Coq foundations, deciders, or machine models are
identical, and no external BB5 source was compiled as part of this migration.
