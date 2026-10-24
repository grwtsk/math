# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e48f36be08f8dfed6f0cc1937a9cd460ac99541",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e48f36be08f8dfed6f0cc1937a9cd460ac99541`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unop_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/unop-mono-of-epi--add7f6d2e4ec94c8ed93500f.md) | 23 | `declaration-track:add7f6d2e4ec94c8ed93500fb079967d6fecf4049cbfc286527daf72fa01692f` |
| 2 | `instance` | [unop_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/unop-epi-of-mono--b2cb8c55aa18c3d5d86bd571.md) | 26 | `declaration-track:b2cb8c55aa18c3d5d86bd571179daee2f0c9643b59e969f328931d571ed731d2` |
| 3 | `instance` | [op_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/op-mono-of-epi--e99a327d4250d36b88f5d070.md) | 29 | `declaration-track:e99a327d4250d36b88f5d0701e8cb9546ed62aa8ef24a5e44ccf61d322d99d35` |
| 4 | `instance` | [op_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/op-epi-of-mono--b45984ac7d131b70871706bd.md) | 32 | `declaration-track:b45984ac7d131b70871706bd61f02815d8f4cea7f88d0bb9d10bbd2dd3129723` |
| 5 | `structure` | [SplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitmono--4c4484defc91dadd05ef0c1f.md) | 41 | `declaration-track:4c4484defc91dadd05ef0c1fad4cd090113a53c046710925dedaa0556b612ae6` |
| 6 | `class` | [IsSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitmono--c9287b81ca6776efea826f5e.md) | 50 | `declaration-track:c9287b81ca6776efea826f5e070bc82f969e9e9e5518747f07d7d6a6af8159d9` |
| 7 | `def` | [SplitMono.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitmono-comp--c80ef4b2e9bef5816cf59175.md) | 56 | `declaration-track:c80ef4b2e9bef5816cf59175c5729d12db310538c0f096e7f57812ce73b9da65` |
| 8 | `theorem` | [IsSplitMono.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitmono-mk--f69379b3ff4b736172b1fdfd.md) | 61 | `result-track:f69379b3ff4b736172b1fdfdc8066cd812e9325b87b5202126e29c17beda5560` |
| 9 | `structure` | [SplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitepi--7afdce411b14fa31d70b96d8.md) | 71 | `declaration-track:7afdce411b14fa31d70b96d8c4db12089209df4c51049e507045b46f956cd92a` |
| 10 | `class` | [IsSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitepi--72962bf308554fec2d156e3e.md) | 80 | `declaration-track:72962bf308554fec2d156e3e8bd9ee4cac2def160f5d241ffa27bc6373058479` |
| 11 | `def` | [SplitEpi.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitepi-comp--a5538a6b1a427379a0a6d28a.md) | 86 | `declaration-track:a5538a6b1a427379a0a6d28a97fcca85c76f24533b492c274edc3b769cf0c20d` |
| 12 | `theorem` | [IsSplitEpi.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitepi-mk--6df990ce3209d9902a29bd4d.md) | 91 | `result-track:6df990ce3209d9902a29bd4d44a416e10af23fcecd91e97b2991a5a37819c32a` |
| 13 | `def` | [retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/retraction--8700847426f6383d4ca64a3f.md) | 95 | `declaration-track:8700847426f6383d4ca64a3f9973f907f5009567f2a5646519b0a1154f608e18` |
| 14 | `theorem` | [IsSplitMono.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitmono-id--e0c8d28abcd49a9689b5e027.md) | 99 | `result-track:e0c8d28abcd49a9689b5e027f040b34b927a8455c7637006746ce307f159c0c9` |
| 15 | `def` | [SplitMono.splitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitmono-splitepi--4c5d4029277da9c89b904022.md) | 103 | `declaration-track:4c5d4029277da9c89b904022dede2627d33c55dc146e9298c6a8a680f349dce9` |
| 16 | `instance` | [retraction_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/retraction-issplitepi--20c4f5cc6d096ae9ef0b9700.md) | 107 | `declaration-track:20c4f5cc6d096ae9ef0b97001377d154cc3b8e9286c26d5f3a9be221f1c78357` |
| 17 | `theorem` | [isIso_of_epi_of_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/isiso-of-epi-of-issplitmono--9ed2618418cf820bbf8d2e94.md) | 112 | `result-track:9ed2618418cf820bbf8d2e94f3d00600f9401e12a8657dae52f23c197df91c76` |
| 18 | `def` | [section_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/section--c317e7a8a4aaa3032def1ce0.md) | 118 | `declaration-track:c317e7a8a4aaa3032def1ce06c0d2256cd55144b80347e697680c40012010823` |
| 19 | `theorem` | [IsSplitEpi.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitepi-id--6c47b6920cf928b9c66ebf6f.md) | 122 | `result-track:6c47b6920cf928b9c66ebf6fa8c6bcc1c3312cdd9f6ec5f6b93b581efb713c54` |
| 20 | `def` | [SplitEpi.splitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitepi-splitmono--bdaf28ab53c5cb2a586b0b6c.md) | 126 | `declaration-track:bdaf28ab53c5cb2a586b0b6cae761879deaf458273476500e40d4207e4fab06a` |
| 21 | `instance` | [section_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/section-issplitmono--8c47a47d454b2c6d555d2142.md) | 130 | `declaration-track:8c47a47d454b2c6d555d21427579f8812d31fea5f9de37529081092e00276b71` |
| 22 | `theorem` | [isIso_of_mono_of_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/isiso-of-mono-of-issplitepi--84bc2c29af787a1fe57e19cf.md) | 134 | `result-track:84bc2c29af787a1fe57e19cfc618bc787709c0b765bb8723476007da5851415f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--80e915b7907162d42c201db3.md) | 138 | `declaration-track:80e915b7907162d42c201db3883dce280a126f6156e3543ef5ac328eb02fb583` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--440ed32ff571f0f1bcd4a96f.md) | 142 | `declaration-track:440ed32ff571f0f1bcd4a96fdbfffcb0f41cf65369c491ee01d7db27bd1e5635` |
| 25 | `theorem` | [SplitMono.mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitmono-mono--1e1de045a82439e45c7dac4e.md) | 145 | `result-track:1e1de045a82439e45c7dac4e7a3ccfc9b280c84f7fa8c17e61f69486328b791b` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--b0be868561e05a89547a2421.md) | 149 | `declaration-track:b0be868561e05a89547a2421032b334e7e500ce9d8e35de391edc67248e08294` |
| 27 | `theorem` | [SplitEpi.epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitepi-epi--91d03fe90159d556a225dd69.md) | 152 | `result-track:91d03fe90159d556a225dd69b4386dbcf0ad7165babeb96dcc0ef2eaf2b6f8cd` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--d2d417b12c15bd2d72ef49d3.md) | 156 | `declaration-track:d2d417b12c15bd2d72ef49d3174e7129df9f3e74142fd89a219dbab0af7a13f1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--edc05486e60c9136a03156a3.md) | 159 | `declaration-track:edc05486e60c9136a03156a3dce50ef2071e2ccd071e5683ded6f8f1c1d707fb` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--66593880b6d2c93cf67d68d0.md) | 162 | `declaration-track:66593880b6d2c93cf67d68d0414fd6268ba2018f6e524cada22327908c6f2c66` |
| 31 | `theorem` | [IsIso.of_mono_retraction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/isiso-of-mono-retraction--c6bbf3a992464719f274466a.md) | 166 | `result-track:c6bbf3a992464719f274466a663b1e427a78726330086c8d86390d8c60a26aeb` |
| 32 | `theorem` | [IsIso.of_mono_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/isiso-of-mono-retraction--cb36c2938f1358d53d6469aa.md) | 171 | `result-track:cb36c2938f1358d53d6469aa29effb4cbbda72126d8e2ab5607c7ce357e1d82d` |
| 33 | `theorem` | [IsIso.of_epi_section'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/isiso-of-epi-section--9aa85bcb4d54e9aa9e994503.md) | 176 | `result-track:9aa85bcb4d54e9aa9e994503be667db40854d017c56e18ac720c827dee6cb9f7` |
| 34 | `theorem` | [IsIso.of_epi_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/isiso-of-epi-section--adbafa6333e1e93252837ddc.md) | 181 | `result-track:adbafa6333e1e93252837ddcbaef3d4e862ab758a6edbb10743317072e0383ca` |
| 35 | `def` | [Groupoid.ofTruncSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/groupoid-oftruncsplitmono--a19db5a230cf934b52c132d1.md) | 187 | `declaration-track:a19db5a230cf934b52c132d1e650833d6bf54989c86a3cf8078d5f20f86cb546` |
| 36 | `class` | [SplitMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitmonocategory--a9bf1feb9c67728556d7d25f.md) | 200 | `declaration-track:a9bf1feb9c67728556d7d25ff396dc43d04b47779415d5b0f515fc112e46b94e` |
| 37 | `class` | [SplitEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitepicategory--e554944b56640c5f27099765.md) | 205 | `declaration-track:e554944b56640c5f270997659055d0e5016effaf36f1b3c18ac22b3a282f23e6` |
| 38 | `theorem` | [isSplitMono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitmono-of-mono--9fd01056de309f2dfdf07696.md) | 213 | `result-track:9fd01056de309f2dfdf07696fab4bf741245c29ca0098c7e2ebfdca6b4b156d6` |
| 39 | `theorem` | [isSplitEpi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/issplitepi-of-epi--ede7a66359da5e0575ea97ee.md) | 218 | `result-track:ede7a66359da5e0575ea97ee122bdadb53ab5de87d3ab59b530125e293935b31` |
| 40 | `def` | [SplitMono.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitmono-map--d40fb6f89fb73eda293c8016.md) | 227 | `declaration-track:d40fb6f89fb73eda293c8016e0745e38d31eeff5af89b67faf09cafc67b390ff` |
| 41 | `def` | [SplitEpi.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/splitepi-map--33902724aa6cc62460dd2fe8.md) | 233 | `declaration-track:33902724aa6cc62460dd2fe86f4fb9f5999ea6b47cc144fe0f9f25d2868808a9` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--34ae7cb7ee384daab59fad73.md) | 237 | `declaration-track:34ae7cb7ee384daab59fad734efdfd99db1076a209008fb0fc765bc0b9c4e469` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/declarations/instance--bf80ffda33f3531160194e3b.md) | 240 | `declaration-track:bf80ffda33f3531160194e3beb17fb7f330e4eae4e9fc6ea8efdd074ea891b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
