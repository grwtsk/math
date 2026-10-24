# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.HomCompletion.Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1e0ab1cdc774e0342e2cb37ffcc2536189898b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1e0ab1cdc774e0342e2cb37ffcc2536189898b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Completion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NormedAddGroupHom.completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion--f24e75983ece2bbe41f18cd9.md) | 60 | `declaration-track:f24e75983ece2bbe41f18cd92e8fb97f9f75c49f2e648dc3840b273d1bc3a38c` |
| 2 | `theorem` | [NormedAddGroupHom.completion_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-def--f2a8343e71383d514fbbf153.md) | 64 | `result-track:f2a8343e71383d514fbbf1530540f50d3529c6eb79f4931aebe388b92fe9073a` |
| 3 | `theorem` | [NormedAddGroupHom.completion_coe_to_fun](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-coe-to-fun--a796393d96e9f135afbd0476.md) | 69 | `result-track:a796393d96e9f135afbd04768175a973ae1f687898b6de6f55fa5d7c36e71418` |
| 4 | `theorem` | [NormedAddGroupHom.completion_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-coe--b9986dda19836ea22e39d5f4.md) | 72 | `result-track:b9986dda19836ea22e39d5f49d8627127c86433113acf67ccbafaeb6ddd68227` |
| 5 | `theorem` | [NormedAddGroupHom.completion_coe'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-coe--012f5ac642b77f438aafed46.md) | 77 | `result-track:012f5ac642b77f438aafed46801c6218ce77a609571838c7bc5f9514d164d7f2` |
| 6 | `def` | [normedAddGroupHomCompletionHom](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphomcompletionhom--9170bfc757f6e5518ad37c03.md) | 83 | `declaration-track:9170bfc757f6e5518ad37c034e3e5a07905d47abfbd9d7b70104f1c6d2221991` |
| 7 | `theorem` | [NormedAddGroupHom.completion_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-id--6cde3d3667072eb3f050c8e1.md) | 91 | `result-track:6cde3d3667072eb3f050c8e13ba5d8a2a98518452636634e0ed729f79c576e5d` |
| 8 | `theorem` | [NormedAddGroupHom.completion_comp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-comp--1f2653e3b5960d4a8a161bf7.md) | 97 | `result-track:1f2653e3b5960d4a8a161bf739a06c076c43349d20794da8aa6bb1af8c1d1d8b` |
| 9 | `theorem` | [NormedAddGroupHom.completion_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-neg--1c649f07732ab972250c8c1c.md) | 105 | `result-track:1c649f07732ab972250c8c1ccec51d0818257a3dfc1e71ae47968f3fa1933e59` |
| 10 | `theorem` | [NormedAddGroupHom.completion_add](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-add--83711c85f1ef360628ff9291.md) | 109 | `result-track:83711c85f1ef360628ff9291dd9cd7707a45c701f522283195e9f3ef944c9c29` |
| 11 | `theorem` | [NormedAddGroupHom.completion_sub](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-sub--2bec9d6648c805b2f2130da8.md) | 113 | `result-track:2bec9d6648c805b2f2130da8b346aaa651713a702d3c6c142cf2e68f029eda02` |
| 12 | `theorem` | [NormedAddGroupHom.zero_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-zero-completion--f3e129effaad61600a02b573.md) | 118 | `result-track:f3e129effaad61600a02b5730aae3e2879c0521ac3d2e7a914d24a384bee72ad` |
| 13 | `def` | [NormedAddCommGroup.toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddcommgroup-tocompl--350f322ece13569d29f4d62b.md) | 123 | `declaration-track:350f322ece13569d29f4d62b625672de59be583581bab0f1a4f3cf9333623a84` |
| 14 | `theorem` | [NormedAddCommGroup.norm_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddcommgroup-norm-tocompl--ec25190e0307643ccb5059b3.md) | 130 | `result-track:ec25190e0307643ccb5059b31b3bad40a8a096c2dfa636001ac4d5e1b46a41c8` |
| 15 | `theorem` | [NormedAddCommGroup.denseRange_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddcommgroup-denserange-tocompl--bede8394b70f402905326321.md) | 133 | `result-track:bede8394b70f4029053263212fb09a67497171cf401fa631cb7154249029f3b0` |
| 16 | `theorem` | [NormedAddGroupHom.completion_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-completion-tocompl--e8c52959ce1319eae5003b49.md) | 137 | `result-track:e8c52959ce1319eae5003b49b011683b6735e0d8bfe989e8b640d7af0c63d57c` |
| 17 | `theorem` | [NormedAddGroupHom.norm_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-norm-completion--7f31f1f0bb5fbbf85d09d5cc.md) | 141 | `result-track:7f31f1f0bb5fbbf85d09d5cca110516d783182668a26200584da6e35a13e6edb` |
| 18 | `theorem` | [NormedAddGroupHom.ker_le_ker_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-ker-le-ker-completion--a468f41b677d62ca0107b3ef.md) | 145 | `result-track:a468f41b677d62ca0107b3efdf902cb010087c02b4f4557b09359eaf734a2ae3` |
| 19 | `theorem` | [NormedAddGroupHom.ker_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-ker-completion--cf9e62d3491c5110f456b478.md) | 150 | `result-track:cf9e62d3491c5110f456b47874db0e6a22233128ef27751fd7ac66cc4ec51a40` |
| 20 | `def` | [NormedAddGroupHom.extension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-extension--6c97415bb85c076b932c4d5d.md) | 184 | `declaration-track:6c97415bb85c076b932c4d5d86a832745813a35de1aad9b73acec6107b0e31c9` |
| 21 | `theorem` | [NormedAddGroupHom.extension_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-extension-def--74c5165ee2510fa17746a272.md) | 189 | `result-track:74c5165ee2510fa17746a2725c5081473b1a0f358d461bfff77afe46efef0b04` |
| 22 | `theorem` | [NormedAddGroupHom.extension_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-extension-coe--247419b564db6894c8861826.md) | 194 | `result-track:247419b564db6894c88618262cc05245ab1aa0a254d3a28839fccd65c7a07cf3` |
| 23 | `theorem` | [NormedAddGroupHom.extension_coe_to_fun](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-extension-coe-to-fun--a8e2ae4e4f59a0aef0c8d86c.md) | 197 | `result-track:a8e2ae4e4f59a0aef0c8d86ccf86cb1a1a9a96f355139eb149c88fb821c0823d` |
| 24 | `theorem` | [NormedAddGroupHom.extension_unique](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variantb596d8774991005324b02aec10b177bb828ca721180201191c52a85b381a4a44.lean/declarations/normedaddgrouphom-extension-unique--4bd0bb6f361b00b0b8d4c94c.md) | 201 | `result-track:4bd0bb6f361b00b0b8d4c94c362cb8e0813fb72eecc5dd650f1191a5ec718285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
