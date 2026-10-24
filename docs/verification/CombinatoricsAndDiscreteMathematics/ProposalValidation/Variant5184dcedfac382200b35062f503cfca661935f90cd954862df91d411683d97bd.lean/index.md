# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ProposalValidation.Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59540ab56b2c9863827dc245e6741d6c6206c2a1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59540ab56b2c9863827dc245e6741d6c6206c2a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Coupling` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.NeuralProposal` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProposalRejectionReason](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/proposalrejectionreason--5378df68ea69dbe86425167b.md) | 15 | `declaration-track:5378df68ea69dbe86425167bd453b2c054fadfe7e65777ba603a1280b320c3b4` |
| 2 | `inductive` | [ProposalValidationDecision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/proposalvalidationdecision--5962593741e11ffffb58f8b6.md) | 26 | `declaration-track:5962593741e11ffffb58f8b68c48a96b8202a54777f564088b7e4eddc26212b3` |
| 3 | `structure` | [ValidatedNeuralProposal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/validatedneuralproposal--18613ca03d115f7326a8a697.md) | 32 | `declaration-track:18613ca03d115f7326a8a69789125d415a1374328d20dafca4d3cb181ad24a38` |
| 4 | `theorem` | [ValidatedNeuralProposal.authority_remains_external](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/validatedneuralproposal-authority-remains-external--ffd4eb3c45477518d771e40d.md) | 42 | `result-track:ffd4eb3c45477518d771e40d5ad3548b09b6c956cb47b80b3e4b4ca773397115` |
| 5 | `def` | [preserveOnRejectedProposal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/preserveonrejectedproposal--0c6480307bbb93f87b0a1e86.md) | 48 | `declaration-track:0c6480307bbb93f87b0a1e86740e220727e93c01b6b6d5d11843a54808918ce1` |
| 6 | `theorem` | [rejected_proposal_preserves_certified_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/rejected-proposal-preserves-certified-state--6211f8e62db190786c895fe4.md) | 58 | `result-track:6211f8e62db190786c895fe4162f3eac5ef1f6cd9c1258685c990b646df8f3b4` |
| 7 | `def` | [projectCouplingProposal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/projectcouplingproposal--1e996546a852be5a635dadcf.md) | 68 | `declaration-track:1e996546a852be5a635dadcfbb0904fb6dbd83190b8b9d709bd202118809df0f` |
| 8 | `theorem` | [projected_neural_weights_are_admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/projected-neural-weights-are-admissible--fc1a51e8a278cdfb887713b4.md) | 77 | `result-track:fc1a51e8a278cdfb887713b4e35dcd8ce1769c2e3616c662f9d26ee922175ed9` |
| 9 | `theorem` | [neural_confidence_is_not_proof_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variant5184dcedfac382200b35062f503cfca661935f90cd954862df91d411683d97bd.lean/declarations/neural-confidence-is-not-proof-authority--40480ea92bb4ddd763c0cb5f.md) | 90 | `result-track:40480ea92bb4ddd763c0cb5f99974bfdd0fd216a829f41224204abe037a2d3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
