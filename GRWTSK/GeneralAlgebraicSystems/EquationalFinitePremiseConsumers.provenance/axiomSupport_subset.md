# `GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.axiomSupport_subset`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [EquationalFinitePremiseConsumers.lean](../EquationalFinitePremiseConsumers.lean), line 36.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GeneralAlgebraicSystems/EquationalFinitePremiseConsumers.lean#L36).
- Declaration spelling: `GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.axiomSupport_subset` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GeneralTopology/Compactness.lean)

- [Pinned upstream source](https://github.com/teorth/equational_theories/blob/2f49bdaf3d38ffb722e54ac1288c8269dac61846/equational_theories/Compactness.lean)
- [Pinned upstream source](https://github.com/teorth/equational_theories/blob/2f49bdaf3d38ffb722e54ac1288c8269dac61846/equational_theories/Completeness.lean)
- [Pinned upstream source](https://github.com/teorth/equational_theories/blob/2f49bdaf3d38ffb722e54ac1288c8269dac61846/equational_theories/MagmaLaw.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "equational-theories",
      "project_subdir": "adapters/equational-theories",
      "path": "adapters/equational-theories/GRWTSK/GeneralAlgebraicSystems/EquationalFinitePremiseConsumers.lean",
      "declarations": [
        "GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.axiomSupport_subset",
        "GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.finite_subcontext_consequence",
        "GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.consequence_of_retained_support",
        "GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.countermodel_blocks_derivation",
        "GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.reflexive_support_empty",
        "GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers.trans_support_mem_iff"
      ],
      "upstream": [
        {
          "repository": "teorth/equational_theories",
          "commit": "2f49bdaf3d38ffb722e54ac1288c8269dac61846",
          "source": "equational_theories/Compactness.lean",
          "blob": "4efabb782fcfbf4f6b6602f7da346bc9dfd99a3c",
          "declarations": [
            "derive.getAxioms",
            "derive.getAxiomsEnough",
            "derive.Weak",
            "Soundness",
            "Completeness"
          ]
        },
        {
          "repository": "teorth/equational_theories",
          "commit": "2f49bdaf3d38ffb722e54ac1288c8269dac61846",
          "source": "equational_theories/Completeness.lean",
          "blob": "06908b723c0b2ec23033aeed051296dacaf752ba",
          "declarations": [
            "derive.getAxioms",
            "derive.getAxiomsEnough",
            "derive.Weak",
            "Soundness",
            "Completeness"
          ]
        },
        {
          "repository": "teorth/equational_theories",
          "commit": "2f49bdaf3d38ffb722e54ac1288c8269dac61846",
          "source": "equational_theories/MagmaLaw.lean",
          "blob": "9f90f06a08ae288c9fff1b160dcb0ad1ee9bfbd6",
          "declarations": [
            "derive.getAxioms",
            "derive.getAxiomsEnough",
            "derive.Weak",
            "Soundness",
            "Completeness"
          ]
        }
      ],
      "hypotheses": "A context Gamma of magma laws on Type u; DecidableEq of variables for extracted Finset support. Semantic consequence uses the upstream all-model domain; countermodels are arbitrary Type with a Magma instance, not finite-only.",
      "conclusion": "A proof uses finitely many axioms all belonging to Gamma; semantic consequence has a finite Delta subset Gamma. Any slice retaining the full actual support suffices. Countermodels block derivations; reflexivity has empty support, transitivity combines both supports.",
      "use": "Concrete source-axiom extraction for the local joint-premise inference programme; strengthens imported compactness by retaining Delta subset Gamma, and proves safe chosen-proof support restriction.",
      "consumer_paths": [
        "GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/JointPremiseInference.lean"
      ],
      "paper_or_source": "Equational theories project proof calculus and completeness/compactness source, pinned 2026 repository revision. Original upstream author and license notices remain in source; no historical paper influence inferred.",
      "license": "Apache-2.0, exact upstream notices retained",
      "missing_bridges": [
        "Actual source-bound compilation and axiom audit on pinned Lean4.29.1/Mathlib environment",
        "Checked reification of this equational-law calculus into root JointPremiseInference representation",
        "No assertion of smallest/minimal support or finite-model completeness",
        "No acceptance of upstream executable graph closure merely from graph reachability"
      ],
      "source_blob": "b7226e16908e4813abf80c440b876866e1449d64",
      "source_sha256": "4eb559b3a7f9d9c2f049be5ccf3b121aaf57fc67f6b6b3ee591d98d6fd62a2fe",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Local attribution: grwtsk contributors.

The imported equational proof calculus and completeness theorem are from the
pinned equational_theories dependency, whose original attribution and Apache-2.0
license remain upstream. These are source proof candidates. Compilation, fresh
kernel replay and complete transitive axiom auditing are NOT_RUN.
-/

/-!
# Exact finite premises for equational-law consumers

The existing GRWTSK joint-premise programme needs every premise of a selected
inference to remain available. An equational proof is a particularly concrete
consumer: the upstream Type-valued derivation computes its finite set of used
axioms. The upstream `Compactness` endpoint exposes a finite context, but does
not include the useful assertion that it is a subset of the original context.

This module proves that subset assertion from the actual derivation. It then
uses upstream soundness/completeness to obtain a finite subcontext preserving
semantic consequence, and to justify keeping only a slice containing the used
axioms of a chosen proof. It does not assert minimality of that support, convert
a reachability graph to a proof, or identify this calculus with the root
`JointPremiseInference` representation. That reification bridge is separate.
-/

/-- Every axiom extracted from a derivation is an actual member of its original
context. Substitution changes terms, not the source-axiom identity. -/

/-- Semantic consequence admits a finite subset of the original assumptions.
The witness is the source-axiom set of a completeness-produced derivation. -/

/-- A consumer may discard unused axioms of a chosen proof, provided it retains
all of that proof's actual source axioms jointly. No minimal-proof claim follows. -/

/-- Transitivity retains both premise supports. Choosing one branch alone is not
an available rule of the upstream proof calculus. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
