# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.HomCompletion.Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e3ceced517e816641d2ee08abd16c5bd8debd7d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e3ceced517e816641d2ee08abd16c5bd8debd7d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean.json)

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
| 1 | `def` | [NormedAddGroupHom.completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion--e8ce3078b2cb4456b013f257.md) | 62 | `declaration-track:e8ce3078b2cb4456b013f257e326d6a2a2b0f6ee0bfc8bafb8b3589ff0bac124` |
| 2 | `theorem` | [NormedAddGroupHom.completion_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-def--cb44a6c18dea008c41f02c8e.md) | 67 | `result-track:cb44a6c18dea008c41f02c8eb33e400e0c4933be11a260ca1ce6b6afb5125b31` |
| 3 | `theorem` | [NormedAddGroupHom.completion_coe_to_fun](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-coe-to-fun--7a63f74e5761f17d75b4dce2.md) | 73 | `result-track:7a63f74e5761f17d75b4dce25909cc4096628a018f9a12b4a92c2512d2421e0c` |
| 4 | `theorem` | [NormedAddGroupHom.completion_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-coe--9a20f9ee8bed8385d4b4099e.md) | 78 | `result-track:9a20f9ee8bed8385d4b4099e19bd5a129b555e68cb4f3d7734f821b317ead1b1` |
| 5 | `theorem` | [NormedAddGroupHom.completion_coe'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-coe--f63847ed9aa5134876766a8b.md) | 84 | `result-track:f63847ed9aa5134876766a8bb6943677442475a1f5f1784bb54328a8cf8f16da` |
| 6 | `def` | [normedAddGroupHomCompletionHom](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphomcompletionhom--17dc3dc9473c8a134963a9eb.md) | 90 | `declaration-track:17dc3dc9473c8a134963a9eb04e1140d633342f7a808ae3eae9485edf8cc61ae` |
| 7 | `theorem` | [NormedAddGroupHom.completion_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-id--14f5adcb6d889bf62063a5d0.md) | 100 | `result-track:14f5adcb6d889bf62063a5d0a17f2938872739ba3ce471bb3943bad553f1477a` |
| 8 | `theorem` | [NormedAddGroupHom.completion_comp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-comp--2c215c4a20194358702f3034.md) | 107 | `result-track:2c215c4a20194358702f303440b406d97ce48d5e29c988062c3b1a61dd4d27e7` |
| 9 | `theorem` | [NormedAddGroupHom.completion_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-neg--584ce9e3f3d612b4877ccc67.md) | 116 | `result-track:584ce9e3f3d612b4877ccc677523f7d4116f36b470462377f4a1cfa7cbb0f9d7` |
| 10 | `theorem` | [NormedAddGroupHom.completion_add](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-add--1902628c7f32116148cfa900.md) | 121 | `result-track:1902628c7f32116148cfa90087126122383e433714adcffdefe6bba9ca2c4220` |
| 11 | `theorem` | [NormedAddGroupHom.completion_sub](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-sub--eac884a1a3f1096a146ff3f7.md) | 126 | `result-track:eac884a1a3f1096a146ff3f7ec26623e59413f24a56290552464d183c33a3e5e` |
| 12 | `theorem` | [NormedAddGroupHom.zero_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-zero-completion--98d5697396066b597b9ca27b.md) | 132 | `result-track:98d5697396066b597b9ca27bb22673b6372e94a014606136c4baace2ccfed56b` |
| 13 | `def` | [NormedAddCommGroup.toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddcommgroup-tocompl--f986748e9973edb0789c518f.md) | 138 | `declaration-track:f986748e9973edb0789c518fd73bef4d1c0d03acfe8c5383d53c1d16f526e7bd` |
| 14 | `theorem` | [NormedAddCommGroup.norm_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddcommgroup-norm-tocompl--060a100497fdd4bd32047222.md) | 146 | `result-track:060a100497fdd4bd32047222244afbc0c9c0ab4b413a8388934478f60ae8b2a2` |
| 15 | `theorem` | [NormedAddCommGroup.denseRange_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddcommgroup-denserange-tocompl--4c71d3a9dfa2cc29cce4ce36.md) | 150 | `result-track:4c71d3a9dfa2cc29cce4ce36379abd027f89a1f571930ef2b4cdd85d843020e5` |
| 16 | `theorem` | [NormedAddGroupHom.completion_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-completion-tocompl--e556cbfb25ecf74ec2df6379.md) | 155 | `result-track:e556cbfb25ecf74ec2df63792960d232b652af2f254364c3c29826a4cc2cef0b` |
| 17 | `theorem` | [NormedAddGroupHom.norm_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-norm-completion--12bf0aa899cba075cb8838e0.md) | 160 | `result-track:12bf0aa899cba075cb8838e016d65f71f383b9470ded0dc790af6853db86f186` |
| 18 | `theorem` | [NormedAddGroupHom.ker_le_ker_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-ker-le-ker-completion--31441dc37ea6b3b9b0c1b70a.md) | 165 | `result-track:31441dc37ea6b3b9b0c1b70ac325c18fdd5691e665c5578a1bd7d48d127673e4` |
| 19 | `theorem` | [NormedAddGroupHom.ker_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-ker-completion--50d0ae594af321e81e0f3343.md) | 171 | `result-track:50d0ae594af321e81e0f33438fa568d7ae531e447a248149204a30f98caea76d` |
| 20 | `def` | [NormedAddGroupHom.extension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-extension--594f6e44895f221c55eb9d41.md) | 206 | `declaration-track:594f6e44895f221c55eb9d41e35b1a7a4c9871ad8e74e073c52ea7b2ce0852d0` |
| 21 | `theorem` | [NormedAddGroupHom.extension_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-extension-def--0e79fb54eabd9999fd8abb8b.md) | 212 | `result-track:0e79fb54eabd9999fd8abb8b47f37b7369b8bacdd6cdb86933e0eac76daa4c63` |
| 22 | `theorem` | [NormedAddGroupHom.extension_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-extension-coe--6b6f2cd38f2f85ba23540b18.md) | 218 | `result-track:6b6f2cd38f2f85ba23540b18ea2b846bc8f6d328efe50e153a7ba8082403a357` |
| 23 | `theorem` | [NormedAddGroupHom.extension_coe_to_fun](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-extension-coe-to-fun--c096968058c756a0fa49745a.md) | 222 | `result-track:c096968058c756a0fa49745a884b673f12051126c5d1cd854e9d316c9f067bee` |
| 24 | `theorem` | [NormedAddGroupHom.extension_unique](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant33fd70fb6429f4b5ae6ac826599aad3863a43982d07e9b783567e2bc903fe9f1.lean/declarations/normedaddgrouphom-extension-unique--760125e22b15ddb010a45405.md) | 227 | `result-track:760125e22b15ddb010a454057ee60b5c645042821ebc73e44ea556b862e3aa51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
