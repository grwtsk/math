# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binary.Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c57339d6cc16a8e0f32d2eb590a5a951f539011f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c57339d6cc16a8e0f32d2eb590a5a951f539011f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Presentation.Syntax` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PresentationLeaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/presentationleaf--4312aacf6b072b401c82345c.md) | 23 | `declaration-track:4312aacf6b072b401c82345c74c3250e9f66b572ef72ff53f4db77b03db89d87` |
| 2 | `inductive` | [FullBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/fullbinarytree--50b3c6b9997268defd59d66c.md) | 29 | `declaration-track:50b3c6b9997268defd59d66cfb2e4ea820c238bde45510555cf543ade0a64af5` |
| 3 | `structure` | [Bijection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/bijection--9e14a987b9b1b0761fc37f04.md) | 35 | `declaration-track:9e14a987b9b1b0761fc37f04e512835c7a3f70b94864ff52311f31ed25447a36` |
| 4 | `def` | [toBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/tobinarytree--0e0eaeffc0d205221e9ec6ca.md) | 44 | `declaration-track:0e0eaeffc0d205221e9ec6ca1faa4b249136724911b3953ed7b610d389c29d94` |
| 5 | `def` | [ofBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/ofbinarytree--33503557619d39661d782c5c.md) | 50 | `declaration-track:33503557619d39661d782c5ccca48e7fa922e22eb81a98a15217ce3adff97e91` |
| 6 | `theorem` | [of_toBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/of-tobinarytree--addf4d6a6b05666a86b95196.md) | 56 | `result-track:addf4d6a6b05666a86b95196666125a052a10d4166d644a6f05954eea62a3085` |
| 7 | `theorem` | [to_ofBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/to-ofbinarytree--e7c0ed37c71cafc9525de0fd.md) | 66 | `result-track:e7c0ed37c71cafc9525de0fd68349e497a1e61d34a4e06c4bd2a583066552079` |
| 8 | `def` | [equivFullBinaryTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/equivfullbinarytree--e038b1287c4c2ab4c7889f77.md) | 79 | `declaration-track:e038b1287c4c2ab4c7889f779620b77d4ad6c53a821672b90f25c6bb8e942270` |
| 9 | `theorem` | [node_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variantb6659f8834da124fff67601db89cb1723c606248e286fa125918dfe62ddb613b.lean/declarations/node-injective--7ccf9d0410ec35b147fc9e26.md) | 88 | `result-track:7ccf9d0410ec35b147fc9e26d63c122ac5c2f9f8771f8db0afbab878767efb35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
