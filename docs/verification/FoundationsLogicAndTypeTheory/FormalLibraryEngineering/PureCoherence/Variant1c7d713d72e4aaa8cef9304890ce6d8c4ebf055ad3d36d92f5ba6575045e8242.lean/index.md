# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PureCoherence.Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bf6422ed57a04da3acccb60512e86912aff5b31",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bf6422ed57a04da3acccb60512e86912aff5b31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.PureCoherence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.Datatypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [normalizeIsoComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/normalizeisocomp--f0894d1f7d60f5459e07565f.md) | 42 | `declaration-track:f0894d1f7d60f5459e07565f4e6972679281dc3087bb95874b1735d0f0a1e166` |
| 2 | `theorem` | [naturality_associator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-associator--d5c01913e46d7d6165524b66.md) | 46 | `result-track:d5c01913e46d7d6165524b66007b1e78a2e868fb3248f2572a39b4cbcdd32aa1` |
| 3 | `theorem` | [naturality_leftUnitor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-leftunitor--8b6cad1b311836878ab926ec.md) | 53 | `result-track:8b6cad1b311836878ab926ecd01f79f7343139fb15137c9771537a967e731dc5` |
| 4 | `theorem` | [naturality_rightUnitor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-rightunitor--af2609bd8e34df6beece1059.md) | 57 | `result-track:af2609bd8e34df6beece10590f9505324b953422a7f7b1dcc20d8e851532a136` |
| 5 | `theorem` | [naturality_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-id--9ad64a74627ab9e4fc7bfa04.md) | 61 | `result-track:9ad64a74627ab9e4fc7bfa04755ad806ea565f31509bc2bcbada6b227b708e0c` |
| 6 | `theorem` | [naturality_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-comp--6b60a3752f28d523b0edc89e.md) | 65 | `result-track:6b60a3752f28d523b0edc89ec5770fa770e1d26be3936a64c33595d8e7172785` |
| 7 | `theorem` | [naturality_whiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-whiskerleft--0a144504c93dd9d771f6d90f.md) | 72 | `result-track:0a144504c93dd9d771f6d90f1d42aea5a201006a9f705e6f2c6b3f1f43acdb76` |
| 8 | `theorem` | [naturality_whiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-whiskerright--f7c5feff941adf61d907e7ac.md) | 79 | `result-track:f7c5feff941adf61d907e7acb9b1fabf97bde166a7fcea2a3b67364a1ded48c7` |
| 9 | `theorem` | [naturality_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/naturality-inv--fd77287d62c9fdece8b74752.md) | 86 | `result-track:fd77287d62c9fdece8b74752b8c2f56ce8a04723056ced63ef1a433e4c141cc6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/instance--710ec893d955ada2f1072061.md) | 92 | `declaration-track:710ec893d955ada2f1072061d868eb0059f62f5fceadea44bab87de90c8dcaf6` |
| 11 | `theorem` | [of_normalize_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/of-normalize-eq--e3c0e99743cf6d50bb64aac1.md) | 220 | `result-track:e3c0e99743cf6d50bb64aac1f54b532b96cfc388fa021ecbf79fa2189e8d08f1` |
| 12 | `theorem` | [mk_eq_of_naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/mk-eq-of-naturality--8a0a69d009ef0ba6511d6266.md) | 230 | `result-track:8a0a69d009ef0ba6511d6266e03004b0d77024a0912e2650d115af61b4590d02` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/instance--71882baacb60e8e0cf4f60c7.md) | 245 | `declaration-track:71882baacb60e8e0cf4f60c7d2e4eef9582efcf6715bb58e0822bd2510d7a3aa` |
| 14 | `def` | [pureCoherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/purecoherence--072201faa001e930dcf592fb.md) | 281 | `declaration-track:072201faa001e930dcf592fbb836134197bd7e960e20cd9e26d62e7a9baa39a6` |
| 15 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant1c7d713d72e4aaa8cef9304890ce6d8c4ebf055ad3d36d92f5ba6575045e8242.lean/declarations/elab--b081b25b054e0e199a9ffd46.md) | 285 | `declaration-track:b081b25b054e0e199a9ffd4618fcdafc54511b33e6559093b49cefeff057ead3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
