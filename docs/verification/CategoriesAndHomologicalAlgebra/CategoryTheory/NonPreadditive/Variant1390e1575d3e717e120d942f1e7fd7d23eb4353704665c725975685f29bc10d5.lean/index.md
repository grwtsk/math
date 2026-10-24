# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NonPreadditive.Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d08fb1dbb492fc33178802952368b8ad9af9c7e3",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d08fb1dbb492fc33178802952368b8ad9af9c7e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.NormalMono.Equalizers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Images` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonPreadditiveAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/nonpreadditiveabelian--bb484814d7604707efc2f251.md) | 68 | `declaration-track:bb484814d7604707efc2f25143eeea839a7a52b145eb3f062e6caf7d7d945ad1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/instance--714887056fc17aba1e35aec0.md) | 103 | `declaration-track:714887056fc17aba1e35aec0b08f3cb61211b080df133aa27e4b143f1aa915e0` |
| 3 | `instance` | [isIso_factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/isiso-factorthruimage--bf6a1ff62b0ae7378ebe69ca.md) | 137 | `declaration-track:bf6a1ff62b0ae7378ebe69cae0b1483b5b53becdea4fde4e568bfa70af5ce58c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/instance--b24bb20c59c52d1e09512def.md) | 141 | `declaration-track:b24bb20c59c52d1e09512def531ecaf1881a8cd726efaf3dd0972d92aab7e054` |
| 5 | `instance` | [isIso_factorThruCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/isiso-factorthrucoimage--2ce8cc5bc0097d5d08590145.md) | 173 | `declaration-track:2ce8cc5bc0097d5d085901453c9efda72a5fdeaab4a4ce7df186802d36cab282` |
| 6 | `def` | [epiIsCokernelOfKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/epiiscokernelofkernel--ce45a4e383edc8feeacfcbe8.md) | 185 | `declaration-track:ce45a4e383edc8feeacfcbe8881e0bf8e7c29b21c0bacec63a5bc56857b977ee` |
| 7 | `def` | [monoIsKernelOfCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/monoiskernelofcokernel--11331be4367249c95f8e11aa.md) | 195 | `declaration-track:11331be4367249c95f8e11aae9980b8aace2b2699b59b6b1639c2329c026e56e` |
| 8 | `abbrev` | [r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/r--8aed1ac4c0b0965e0aa5c039.md) | 208 | `declaration-track:8aed1ac4c0b0965e0aa5c0394a585d67a6e8ba99a4e6fa1b11cf4add3ec6fcf5` |
| 9 | `instance` | [mono_Δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/mono--cba0851a62ee8a6fafd7bc66.md) | 211 | `declaration-track:cba0851a62ee8a6fafd7bc6673b9e334272b51855c9cfc72309f8c7fc91b2f43` |
| 10 | `instance` | [mono_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/mono-r--0dd7800a20e4d87e3dd7c017.md) | 214 | `declaration-track:0dd7800a20e4d87e3dd7c0173b2bc9dc42f1dc7d30785be866d5d2e438c21f4c` |
| 11 | `instance` | [epi_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/epi-r--68532b3c2715884c4126c5a7.md) | 230 | `declaration-track:68532b3c2715884c4126c5a7115eba1712fb1950690d641ae2f152004c110174` |
| 12 | `instance` | [isIso_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/isiso-r--3cc17acd190d183f251acfa1.md) | 256 | `declaration-track:3cc17acd190d183f251acfa1ea0cc607f5cd0a5f205afe3662e289b69c9ce79b` |
| 13 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/anonymous--f5bc5c3786cb1127cb69e15d.md) | 263 | `declaration-track:f5bc5c3786cb1127cb69e15d1aee3f305d5917f22961781ceeebbc5d5a9943aa` |
| 14 | `theorem` | [diag_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/diag--28aacf4166462e28e761a751.md) | 269 | `result-track:28aacf4166462e28e761a751225062bf2dcc4cf4cca54750c452450cd3edf68c` |
| 15 | `theorem` | [lift_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/lift--c25cfbd5394a42c77f590f60.md) | 272 | `result-track:c25cfbd5394a42c77f590f60c7689d2b5594ee2e9057f14251c3e6e64453e7db` |
| 16 | `theorem` | [lift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/lift-map--e8b6e5f51149bd8865dff074.md) | 275 | `result-track:e8b6e5f51149bd8865dff07405590f7c690a6a77d734ea30516ca0f9f1e75acf` |
| 17 | `def` | [isColimitσ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/iscolimit--d939977c0fb6a5236c4e429f.md) | 279 | `declaration-track:d939977c0fb6a5236c4e429fca00405666c5a9be55d01a83f69d506bf67132a7` |
| 18 | `theorem` | [σ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/comp--d4a2c3bcd0682cd8d908db8b.md) | 283 | `result-track:d4a2c3bcd0682cd8d908db8b6d014c32e80c929a25008b3c88d21f44b8c46397` |
| 19 | `def` | [hasSub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/hassub--68eac1b14d97c71e891b4d59.md) | 298 | `declaration-track:68eac1b14d97c71e891b4d590afad8090888c83b195aab53c0ac159ad691031f` |
| 20 | `def` | [hasNeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/hasneg--2315a92bbc4f098798313f58.md) | 305 | `declaration-track:2315a92bbc4f098798313f5800d1c4c9661466df709c2781cf8a37146d0e9cc9` |
| 21 | `def` | [hasAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/hasadd--440085bc20f1c0cf31bfd817.md) | 312 | `declaration-track:440085bc20f1c0cf31bfd817a363fc5af1bf731fdd85c5ccb3396a68be8ad4b9` |
| 22 | `theorem` | [sub_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/sub-def--cf5d197dd98c73f89bb759d8.md) | 317 | `result-track:cf5d197dd98c73f89bb759d8734b5996c2ee564f4b06996de10416919312806f` |
| 23 | `theorem` | [add_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/add-def--3cdcaa972267c990de71d61f.md) | 319 | `result-track:3cdcaa972267c990de71d61ff5ba7c0d6a62305b222d79afee4ff7c69f11a35f` |
| 24 | `theorem` | [neg_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/neg-def--a85ee6f85d3ac15333e9f3f4.md) | 321 | `result-track:a85ee6f85d3ac15333e9f3f4138287cb5696545badd6b141883e4a17295e8784` |
| 25 | `theorem` | [sub_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/sub-zero--dae3d3e5bb21f554aa010846.md) | 323 | `result-track:dae3d3e5bb21f554aa01084679470360da381f98785b0f44d49f4aa0760272a3` |
| 26 | `theorem` | [sub_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/sub-self--34cbc6e86aaa03b1ccce582b.md) | 330 | `result-track:34cbc6e86aaa03b1ccce582b038b4ba73ba3fa800a8567201c520aa5adf1a6a2` |
| 27 | `theorem` | [lift_sub_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/lift-sub-lift--f7e7b096c3de087d49dae8a4.md) | 333 | `result-track:f7e7b096c3de087d49dae8a48864bba85ebaff84251985c23e229d155f91f8da` |
| 28 | `theorem` | [sub_sub_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/sub-sub-sub--1d0e006305f9b9b7e2d9d86d.md) | 340 | `result-track:1d0e006305f9b9b7e2d9d86dd29cc08b5726327b4d7e28fed816bc181ba6025d` |
| 29 | `theorem` | [neg_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/neg-sub--28bf23ebecfc6aac9de25a55.md) | 343 | `result-track:28bf23ebecfc6aac9de25a557f643655452ef8e7dfd6663cfa6fa177aa6fad9e` |
| 30 | `theorem` | [neg_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/neg-neg--b363e495372563dccd62491b.md) | 346 | `result-track:b363e495372563dccd62491b9efdb2948ca7f55b57bf6545a8e4c76f33eea02b` |
| 31 | `theorem` | [add_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/add-comm--5f3097e47caa40cc0d46468a.md) | 352 | `result-track:5f3097e47caa40cc0d46468a10ef72d67757584ef477b009638bd5daa0bec955` |
| 32 | `theorem` | [add_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/add-neg--1ece35ccdad11eae37c156cc.md) | 362 | `result-track:1ece35ccdad11eae37c156cc8f0728330b9e20bcf5506e24de72d4dea0928dcf` |
| 33 | `theorem` | [add_neg_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/add-neg-cancel--e73dfd1668844c37276e3975.md) | 364 | `result-track:e73dfd1668844c37276e3975cd6e8efb7f1c09cffa772642f18b3d7367d5f0ea` |
| 34 | `theorem` | [neg_add_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/neg-add-cancel--2dac8c052d6eb52338c8e1a6.md) | 366 | `result-track:2dac8c052d6eb52338c8e1a6418a296d828c5e25454ad5619aef3f9e0eaf325e` |
| 35 | `theorem` | [neg_sub'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/neg-sub--a3d3b8361f2ce4046f5e5294.md) | 368 | `result-track:a3d3b8361f2ce4046f5e52944737e135abaa61eb16dc27284b6a50d6f0879dad` |
| 36 | `theorem` | [neg_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/neg-add--5045d0b9b6f24aadbcf06211.md) | 373 | `result-track:5045d0b9b6f24aadbcf06211dc3e222870aed9757b502b118319325ce0e974ef` |
| 37 | `theorem` | [sub_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/sub-add--6d7d8a2cb1eb3ef0338b71d3.md) | 375 | `result-track:6d7d8a2cb1eb3ef0338b71d39700a57ed7f3bd4da4009cd72c41750fb567125e` |
| 38 | `theorem` | [add_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/add-assoc--fdfd86115ee035336ee2cfce.md) | 378 | `result-track:fdfd86115ee035336ee2cfce91df563e72c2d944f3456ffe98a9d79188e84410` |
| 39 | `theorem` | [add_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/add-zero--bfc637241b93e2a9e34adc17.md) | 383 | `result-track:bfc637241b93e2a9e34adc17033dcef91feebe0670d1fcaf2c4606856b14657d` |
| 40 | `theorem` | [comp_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/comp-sub--1aeb0c7ec93d760550830fb9.md) | 385 | `result-track:1aeb0c7ec93d760550830fb9532853a5af06dc70c30ec7cd0506fae05d3f1df1` |
| 41 | `theorem` | [sub_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/sub-comp--b2a9d592be6bf249768ace06.md) | 388 | `result-track:b2a9d592be6bf249768ace06dd1b008b4f6e04df9914d89f23b92240d094f66d` |
| 42 | `theorem` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/comp-add--2a2aa0b5aa9a8f8e6c9b1151.md) | 391 | `result-track:2a2aa0b5aa9a8f8e6c9b1151c58802c39f2c70a7178f7f17896d81642c22088a` |
| 43 | `theorem` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/add-comp--83a2859557b464c5f1a01953.md) | 394 | `result-track:83a2859557b464c5f1a0195348bc50783dfc79b62be6135f91f558eda7b7665c` |
| 44 | `def` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/declarations/preadditive--848e04e7b9428972327a821a.md) | 398 | `declaration-track:848e04e7b9428972327a821af9a699c7ed3c8783c392948cc0a580015d82b52b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
