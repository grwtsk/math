# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binary.Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d4a8351e3be672371bd41257265c4121c58d9fa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d4a8351e3be672371bd41257265c4121c58d9fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Presentation.Syntax` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PresentationLeaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/presentationleaf--2f151d2a6ee0c4534d5f1036.md) | 31 | `declaration-track:2f151d2a6ee0c4534d5f10364b6213fa5e847ad3a20ebb771eb314428fc3f5b0` |
| 2 | `inductive` | [FullBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/fullbinarytree--e050eb6f5b622ec54673fbb8.md) | 37 | `declaration-track:e050eb6f5b622ec54673fbb8404ac405770d02b90f7bf182d3a5e69ce9f5c095` |
| 3 | `structure` | [Bijection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/bijection--2b42e27e45c4d336804cdebb.md) | 43 | `declaration-track:2b42e27e45c4d336804cdebb889c3aba81e39ed63797ca3e5aeccc3842b5e0d1` |
| 4 | `def` | [toBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/tobinarytree--af0567b6d7d0e6d3be13afda.md) | 52 | `declaration-track:af0567b6d7d0e6d3be13afda5341b7ca85e544850d936dce25dc2d4f554c6128` |
| 5 | `def` | [ofBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/ofbinarytree--dc55834d82928ca70bd53fed.md) | 58 | `declaration-track:dc55834d82928ca70bd53fedc1984a797fcd8c726f27deaa1bd71fdbbb8c0afd` |
| 6 | `theorem` | [of_toBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/of-tobinarytree--a1ff72c1f5dd18048ce0c548.md) | 64 | `result-track:a1ff72c1f5dd18048ce0c548323e1598f0d55ae920b6e52e77b6e32de069af6c` |
| 7 | `theorem` | [to_ofBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/to-ofbinarytree--4bfd69840ea5e0f05de4fef2.md) | 74 | `result-track:4bfd69840ea5e0f05de4fef205cc52ca1d99de30886423e393322fc7631fad8a` |
| 8 | `def` | [equivFullBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/equivfullbinarytree--ba7c8d4802f9ca96d7a68afd.md) | 87 | `declaration-track:ba7c8d4802f9ca96d7a68afdf64c260c738a5dfa1329a15a5fd059af89f159b5` |
| 9 | `theorem` | [node_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantdfeb8d06d64974068abcdb81583349123945647c059579bcf101873083a10d85.lean/declarations/node-injective--afc5e0adce84b1db23523ab2.md) | 96 | `result-track:afc5e0adce84b1db23523ab2aab6d60b33df0faf422291db4af6e4593ccf53ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
