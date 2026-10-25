# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BEq.Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6a01e9e37ba1c4bfd408c4d301944a96b53dad",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6a01e9e37ba1c4bfd408c4d301944a96b53dad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PartialEquivBEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/partialequivbeq--1d4bec4e1efa860acd509716.md) | 29 | `declaration-track:1d4bec4e1efa860acd5097169543fb91a9688aadad8d1001e4e61842585baf8e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/instance--f592696c8f57e16b59650edd.md) | 35 | `declaration-track:f592696c8f57e16b59650edde43705540ebbd8d57ab3d19b34f6b2c98232d15c` |
| 3 | `class` | [EquivBEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/equivbeq--6e48f2da48e8add5feb582a0.md) | 39 | `declaration-track:6e48f2da48e8add5feb582a0d97dce58ef13f5c841e2139e591be75ed99cb4f8` |
| 4 | `theorem` | [BEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-symm--038059e7e5108e471dea3685.md) | 41 | `result-track:038059e7e5108e471dea3685cdcad595ade5951f179dcd6256e1afe760819c16` |
| 5 | `theorem` | [BEq.comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-comm--1f1c1978739ed9bab97d081b.md) | 44 | `result-track:1f1c1978739ed9bab97d081bd7660a0ec5baf466f87832d303b620d63f3b84a5` |
| 6 | `theorem` | [bne_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/bne-eq--996458c8d217ecbad35ad7e4.md) | 47 | `result-track:996458c8d217ecbad35ad7e41b76dd654486f07799d65b51e823bcfa7808c59d` |
| 7 | `theorem` | [bne_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/bne-comm--d7112cbad6cc8b487e185639.md) | 49 | `result-track:d7112cbad6cc8b487e1856390462ad18ce7b8de80106215d98a5453fc70d073b` |
| 8 | `theorem` | [BEq.symm_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-symm-false--e140e08af325781daf7c2691.md) | 52 | `result-track:e140e08af325781daf7c2691bd5ed33525ddd952c9c818a916d56c1c20f296da` |
| 9 | `theorem` | [BEq.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-trans--ceb892ecbea872966170da96.md) | 55 | `result-track:ceb892ecbea872966170da963801a1f2aa7941f5bf91affecebd977716b69095` |
| 10 | `theorem` | [BEq.congr_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-congr-left--459bb45acad9a91462b17127.md) | 58 | `result-track:459bb45acad9a91462b1712769c7dd0b801ef9920b2f709ac677c15a8b54273c` |
| 11 | `theorem` | [BEq.congr_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-congr-right--b6a225dcc10aba090f41f8df.md) | 62 | `result-track:b6a225dcc10aba090f41f8df4e5f9d298bb342b87cf09e9511445ba27cefe5d8` |
| 12 | `theorem` | [BEq.neq_of_neq_of_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-neq-of-neq-of-beq--c808b38f8931e9ab8125e90e.md) | 66 | `result-track:c808b38f8931e9ab8125e90e15f27ca26c8d80768e1b0d20c7ecbdd41b3734d6` |
| 13 | `theorem` | [BEq.neq_of_beq_of_neq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/beq-neq-of-beq-of-neq--6801f0ac6aa53836d92ddf25.md) | 70 | `result-track:6801f0ac6aa53836d92ddf2571b211a094683c5ed4bb6f6965a5f4a3b9e7a395` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/instance--6769945cd58cc30185cd54ec.md) | 74 | `declaration-track:6769945cd58cc30185cd54ec285a4de1c4a925ae66b1e51679d9b9f8dc063bb8` |
| 15 | `theorem` | [equivBEq_of_iff_apply_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7.lean/declarations/equivbeq-of-iff-apply-eq--ca8b14d440b2debf488863c0.md) | 78 | `result-track:ca8b14d440b2debf488863c0a0a9d0b5682308da5a5632f182897b5994f97715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
