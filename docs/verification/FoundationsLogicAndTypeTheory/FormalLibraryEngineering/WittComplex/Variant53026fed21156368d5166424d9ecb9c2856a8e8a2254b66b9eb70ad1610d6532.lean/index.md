# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplex.Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f4110cbcc9088f0ff3eb72f8ac7ec49c82eb744",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f4110cbcc9088f0ff3eb72f8ac7ec49c82eb744`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/declarations/wittcomplex--18beb28ff07b067b17689c67.md) | 32 | `declaration-track:18beb28ff07b067b17689c67accf4e70023710178545c3e59d4970e02778725c` |
| 2 | `structure` | [WittElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/declarations/wittelement--d7240a8658eebd37c80d90b4.md) | 44 | `declaration-track:d7240a8658eebd37c80d90b4068c32aa77849f40af7e40ab9fc39a37950e8151` |
| 3 | `def` | [WittElement.IsZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/declarations/wittelement-iszero--b35d64820aa23d80c2a2236c.md) | 50 | `declaration-track:b35d64820aa23d80c2a2236cf46b9413a2625d20466adc4c4140fb80992ec396` |
| 4 | `def` | [WittElement.Nonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/declarations/wittelement-nonzero--9b61a589099f6651e746d68e.md) | 55 | `declaration-track:9b61a589099f6651e746d68ebd8e621fb6702857c3c537e0aaee6ee7ec3979d9` |
| 5 | `theorem` | [witt_complex_is_complex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/declarations/witt-complex-is-complex--ded37e1459ab27262432ac3e.md) | 60 | `result-track:ded37e1459ab27262432ac3ef0bd82d25692379d6e8577b65080b2559476d4ef` |
| 6 | `theorem` | [witt_element_has_degree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant53026fed21156368d5166424d9ecb9c2856a8e8a2254b66b9eb70ad1610d6532.lean/declarations/witt-element-has-degree--0a5fdab548aca7f95deb8395.md) | 65 | `result-track:0a5fdab548aca7f95deb8395841392b0ec225f28049fc1dcc215c366da504af9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
