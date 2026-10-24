# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Proposal.Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a324f68af1ea1d7dfaa9ff446599c168d0a958bf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a324f68af1ea1d7dfaa9ff446599c168d0a958bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Cohomology` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ElementNameIR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean/declarations/elementnameir--f28b1d19abc32100fede636c.md) | 9 | `declaration-track:f28b1d19abc32100fede636c7f82ab5f8a2253a57db8347d73ebd9a1b939f497` |
| 2 | `structure` | [OracleCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean/declarations/oraclecandidate--1f494af5c960a4e5f4adb7ab.md) | 20 | `declaration-track:1f494af5c960a4e5f4adb7ab3f4b465b0968a4b561c47c30099250bed0038c04` |
| 3 | `structure` | [ModelProposal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean/declarations/modelproposal--dcb7932350510171e0c443b1.md) | 30 | `declaration-track:dcb7932350510171e0c443b11ed9cfae1477849b05c18b99df4336c1420e79fa` |
| 4 | `def` | [ProposalAgreement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean/declarations/proposalagreement--464cf56e7c3f2025bdf76a3d.md) | 39 | `declaration-track:464cf56e7c3f2025bdf76a3dd182b10c830e8128983dcfaa418d0ff4ec76a2e2` |
| 5 | `theorem` | [proposalAgreement_has_no_external_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4ef0bbf68a58ab038b04ef2ce1fa2b66f33cff5d82f0de1f32fcc78d8eafae74.lean/declarations/proposalagreement-has-no-external-authority--3e8f98edff1c5322bb9b67b8.md) | 43 | `result-track:3e8f98edff1c5322bb9b67b85c235a5d5a93bae5b8fd97892611099716475070` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
