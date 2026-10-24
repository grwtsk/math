# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqualizerProducts.Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7b716b05c89c611e15e98ea4e8c1c6f0b6dcefe",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7b716b05c89c611e15e98ea4e8c1c6f0b6dcefe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piOpens](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/piopens--98d9744602fd0232fad27dff.md) | 43 | `declaration-track:98d9744602fd0232fad27dff8e68d2ca66e74103417d9f702f56ea2c08da63b7` |
| 2 | `def` | [piInters](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/piinters--24d69ac8f8491626ece086ce.md) | 51 | `declaration-track:24d69ac8f8491626ece086ce28a6d3d8b73206c039ef8327e21d2f6bdccad20c` |
| 3 | `def` | [leftRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/leftres--682affaa5969d6e21ed432d7.md) | 59 | `declaration-track:682affaa5969d6e21ed432d722e89a775c690643675002fc87816452d6b5e4bc` |
| 4 | `def` | [rightRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/rightres--618aa21dea3b6b52341b6fbe.md) | 67 | `declaration-track:618aa21dea3b6b52341b6fbe3a958918cd62657a2e7e359bdce6d2b4ddc5a9ff` |
| 5 | `def` | [res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/res--6146f6ae8f58f21681cb2363.md) | 75 | `declaration-track:6146f6ae8f58f21681cb23632d2cbad1687a9bb27f9c69f94c50eff0cfd6b70d` |
| 6 | `theorem` | [res_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/res--86a1eabcbecba925a45e4f66.md) | 81 | `result-track:86a1eabcbecba925a45e4f6625655391e9ef0f992897daf5f9f7d6081afa97b3` |
| 7 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/w--b41d49d6a53e87b9b2dca15f.md) | 87 | `result-track:b41d49d6a53e87b9b2dca15f23465e3633fd7a2d188396d4e81eb2b0ee015d22` |
| 8 | `def` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/diagram--a5752402e001846a5d02e6e5.md) | 102 | `declaration-track:a5752402e001846a5d02e6e5911f908e3dc277a8abbf60b678b694c19779f44d` |
| 9 | `def` | [fork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/fork--54761875a95465f0be4567e0.md) | 110 | `declaration-track:54761875a95465f0be4567e0fb3fc4de8539034f9e73884b35d7efb77e97e2dc` |
| 10 | `theorem` | [fork_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/fork-pt--d45b269cbf5f86bb6eb63389.md) | 116 | `result-track:d45b269cbf5f86bb6eb633899cc1e6a6396348028fc2855f4ad39bfbe0a34306` |
| 11 | `theorem` | [fork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/fork--e2c88bc0bcc71d79719907c7.md) | 122 | `result-track:e2c88bc0bcc71d79719907c72b4dd6c89a7751c35d4923d80ecfe770b6be4442` |
| 12 | `theorem` | [fork_π_app_walkingParallelPair_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/fork-app-walkingparallelpair-zero--d2e43a2763ab6d0886cc3db4.md) | 128 | `result-track:d2e43a2763ab6d0886cc3db456fa4f65a900d34e663087bfab47ac4b93d67d57` |
| 13 | `theorem` | [fork_π_app_walkingParallelPair_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/fork-app-walkingparallelpair-one--daf34b2fd6bd1098e20c31be.md) | 135 | `result-track:daf34b2fd6bd1098e20c31be36385ce818137cf550572238d3e2d5227865d28c` |
| 14 | `def` | [piOpens.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/piopens-isoofiso--e0401822b6a9574058201fa8.md) | 145 | `declaration-track:e0401822b6a9574058201fa89737d4dbc362ca098fca1a919634dcee29c3899e` |
| 15 | `def` | [piInters.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/piinters-isoofiso--aaa8838b952f5a464f8290c6.md) | 152 | `declaration-track:aaa8838b952f5a464f8290c6eb0f670b8c37e6bf96605dbf878b87ee457c5860` |
| 16 | `def` | [diagram.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/diagram-isoofiso--669d475cc1858a0e504dcd39.md) | 158 | `declaration-track:669d475cc1858a0e504dcd397ac64ee6ff3f289bf63f12ba1f432f9aa755eb15` |
| 17 | `def` | [fork.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/fork-isoofiso--6b823beb7573dca0b205245c.md) | 186 | `declaration-track:6b823beb7573dca0b205245ccc6aeca719c7268be04f322eb81968f3fb537403` |
| 18 | `def` | [IsSheafEqualizerProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/issheafequalizerproducts--1a0374aa9a31a9f59c5f055b.md) | 209 | `declaration-track:1a0374aa9a31a9f59c5f055b90f2d02890831da589912b7f4e2618c6c01b2ad5` |
| 19 | `def` | [coneEquivFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequivfunctorobj--1ab1aa8a233cbe9be23d1c99.md) | 226 | `declaration-track:1ab1aa8a233cbe9be23d1c99833825a876d5cd8d998dc35e40e9b4d0a4f2ed79` |
| 20 | `def` | [coneEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequivfunctor--424e2b35699c396b71809959.md) | 276 | `declaration-track:424e2b35699c396b71809959c0b9f5c507af7b463cc89485d6a55921f043ef1d` |
| 21 | `def` | [coneEquivInverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequivinverseobj--e7c024eb618f3843a4718008.md) | 296 | `declaration-track:e7c024eb618f3843a471800811e7063976632fc404a0a6390549630d2334716b` |
| 22 | `def` | [coneEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequivinverse--0301ae004b4c9ae2638cf0ff.md) | 344 | `declaration-track:0301ae004b4c9ae2638cf0ffc870e2785687931a1c2ca460e21cb365e9af977c` |
| 23 | `def` | [coneEquivUnitIsoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequivunitisoapp--0b8430dd7e32266a2de04257.md) | 364 | `declaration-track:0b8430dd7e32266a2de04257d8c26c15f69bb5e623a6b46b2584a470af0f8d8d` |
| 24 | `def` | [coneEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequivunitiso--329cde0c59ff4f692d88c10a.md) | 386 | `declaration-track:329cde0c59ff4f692d88c10a0b155a5e08b9c2b5f0c59fb8d306576ef21be365` |
| 25 | `def` | [coneEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequivcounitiso--e43aa8ce7cafca2336bf6fe1.md) | 394 | `declaration-track:e43aa8ce7cafca2336bf6fe1aeac83df7b2dd806bb28b12c28c6f59ee158df2f` |
| 26 | `def` | [coneEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/coneequiv--d14fd2a849eb1dcfcb59a6c3.md) | 438 | `declaration-track:d14fd2a849eb1dcfcb59a6c3edbbfd853448fc983b3aeafa190272bf755bbe6a` |
| 27 | `def` | [isLimitMapConeOfIsLimitSheafConditionFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/islimitmapconeofislimitsheafconditionfork--1675825aaef86a82aae428ed.md) | 455 | `declaration-track:1675825aaef86a82aae428eda32254d4882f71eebe1543033f04fd6e3d3434e6` |
| 28 | `def` | [isLimitSheafConditionForkOfIsLimitMapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/islimitsheafconditionforkofislimitmapcone--535e80b045319bddf87bd142.md) | 492 | `declaration-track:535e80b045319bddf87bd142ef37415fc42fa06c21242e9885304078783e2962` |
| 29 | `theorem` | [isSheaf_iff_isSheafEqualizerProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/declarations/issheaf-iff-issheafequalizerproducts--b1377dc958ecdaa161b9c982.md) | 535 | `result-track:b1377dc958ecdaa161b9c982790d80e66a9812800b9069caca961a6d4a214e14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
