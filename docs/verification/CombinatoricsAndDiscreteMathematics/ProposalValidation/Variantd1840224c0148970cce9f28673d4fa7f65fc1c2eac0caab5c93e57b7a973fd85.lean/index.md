# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ProposalValidation.Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7384bdbd82984df8838a89b818c796b6f3d535d7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7384bdbd82984df8838a89b818c796b6f3d535d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Coupling` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.NeuralProposal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProposalRejectionReason](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/proposalrejectionreason--da851f23d9115abe4573d411.md) | 23 | `declaration-track:da851f23d9115abe4573d4111bca8fdbe52012d1fb09ae57b85ad38b232029f8` |
| 2 | `inductive` | [ProposalValidationDecision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/proposalvalidationdecision--e35abc842b54672d14b44aae.md) | 34 | `declaration-track:e35abc842b54672d14b44aaeaf93e1ab664ba44baea12480857a34fbf36243ec` |
| 3 | `structure` | [ValidatedNeuralProposal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/validatedneuralproposal--d1e29dd7c8aea82aac58aa24.md) | 40 | `declaration-track:d1e29dd7c8aea82aac58aa24c5ec357c2b1e445395d602f4114e276888e71bfd` |
| 4 | `theorem` | [ValidatedNeuralProposal.authority_remains_external](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/validatedneuralproposal-authority-remains-external--f9017820f852211f1fbee8f8.md) | 50 | `result-track:f9017820f852211f1fbee8f89a50731a53670e6c06358db13ab44ec5a4dfec1a` |
| 5 | `def` | [preserveOnRejectedProposal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/preserveonrejectedproposal--948a55242d62d17eb0e665d1.md) | 56 | `declaration-track:948a55242d62d17eb0e665d17c7a848f0bc694dedb20dc2f24c3f0b9604dd68d` |
| 6 | `theorem` | [rejected_proposal_preserves_certified_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/rejected-proposal-preserves-certified-state--6fc86a2e2ddbc211d340bf07.md) | 66 | `result-track:6fc86a2e2ddbc211d340bf072ac7057587e654ae63be5c5eec470fb8ded80724` |
| 7 | `def` | [projectCouplingProposal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/projectcouplingproposal--edadf719f858fe05ea857588.md) | 76 | `declaration-track:edadf719f858fe05ea8575882b18198057a796aaff18a0d5fa632cf988237543` |
| 8 | `theorem` | [projected_neural_weights_are_admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/projected-neural-weights-are-admissible--bf150e0be013a2cef926aa07.md) | 85 | `result-track:bf150e0be013a2cef926aa077d0e166f1664bc23089b0542f6828e6a947d4cea` |
| 9 | `theorem` | [neural_confidence_is_not_proof_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProposalValidation/Variantd1840224c0148970cce9f28673d4fa7f65fc1c2eac0caab5c93e57b7a973fd85.lean/declarations/neural-confidence-is-not-proof-authority--9747b36c6dfb9d0dcae637e8.md) | 98 | `result-track:9747b36c6dfb9d0dcae637e807104649f86f6a9130e1c416dd154c39097f49fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
