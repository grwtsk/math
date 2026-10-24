# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ReviewedCandidate.Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36d9fd91b2ad3722e395ee414575ab2b4be99759",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36d9fd91b2ad3722e395ee414575ab2b4be99759`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.Index` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Model` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.Assignment` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.AssignmentElements.Assignment` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CandidateAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/declarations/candidateauthority--3d0502b40414ee155c0df51f.md) | 26 | `declaration-track:3d0502b40414ee155c0df51f19717b7ce0a1310c09d52e73ca62e57bb759a4b5` |
| 2 | `structure` | [KernelCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/declarations/kernelcandidate--1a2a848e54bdfcc4684da186.md) | 31 | `declaration-track:1a2a848e54bdfcc4684da1862b23187ec68c29dcbefa838d963da4d6fb04ff8f` |
| 3 | `structure` | [ReviewedCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/declarations/reviewedcandidate--741292b5e721218b8d1f1a80.md) | 43 | `declaration-track:741292b5e721218b8d1f1a8049605feb4196528f591b93d25c880b84e3f1b146` |
| 4 | `def` | [ReviewedCandidate.toOwnedAssignment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/declarations/reviewedcandidate-toownedassignment--d15ad2b882a3c610e5ea3c23.md) | 54 | `declaration-track:d15ad2b882a3c610e5ea3c230efb79cc82e8d9ccb324b16be94492183c021000` |
| 5 | `theorem` | [candidate_authority_is_navigation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/declarations/candidate-authority-is-navigation--01e88b26f9f6a573b70a0af7.md) | 66 | `result-track:01e88b26f9f6a573b70a0af79d16376c4bcebba0127e6a2939374329abc4fe03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
