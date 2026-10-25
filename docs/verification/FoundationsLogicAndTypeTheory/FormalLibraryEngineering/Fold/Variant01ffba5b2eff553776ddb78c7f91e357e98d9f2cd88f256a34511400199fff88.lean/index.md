# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fold.Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dd631473c41be1663c2a732ea31a1354934ade7",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dd631473c41be1663c2a732ea31a1354934ade7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 13; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Hints` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl--fc80a6e5f9556281a1bb970e.md) | 27 | `declaration-track:fc80a6e5f9556281a1bb970e8d7e4158745bb4620b632cd125e9333daedf7b67` |
| 2 | `def` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr--3cd442dafa4e66a3d1f426e4.md) | 40 | `declaration-track:3cd442dafa4e66a3d1f426e4b616d9fc8d042ff7361bfcb27abe4a758965fded` |
| 3 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm--c29aa3c434b8caad4d99f223.md) | 60 | `declaration-track:c29aa3c434b8caad4d99f2233af6fbe25555f76b6497bb56ace99935e066c111` |
| 4 | `def` | [foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm--a64aa0e13e24df31772d06cd.md) | 89 | `declaration-track:a64aa0e13e24df31772d06cde5ef58e81129a68a18a01e321d7b43ec4790d1e1` |
| 5 | `theorem` | [foldlM_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-congr--db272cf1c43d2c70feb6f077.md) | 108 | `result-track:db272cf1c43d2c70feb6f0778d46a85ecc4f91bd6b587fdfb26ff813d9621360` |
| 6 | `theorem` | [foldlM_loop_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-loop-lt--5e522bd018ee066fe7fa7968.md) | 113 | `result-track:5e522bd018ee066fe7fa7968ad39ba302103776bf815d2b16f1fe5e5c82c0bc1` |
| 7 | `theorem` | [foldlM_loop_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-loop-eq--8c49d52f1002120b9f15117a.md) | 117 | `result-track:8c49d52f1002120b9f15117afc7fc9a246a2369b68a2afb4948eff88f17ac9c2` |
| 8 | `theorem` | [foldlM_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-loop--0e3fc7b40a7d268eef295dbb.md) | 120 | `result-track:0e3fc7b40a7d268eef295dbbfd12d1cf36484b183eb392b35f00411278ddbf54` |
| 9 | `theorem` | [foldlM_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-zero--9afe5b45c04bace1b0c6870e.md) | 133 | `result-track:9afe5b45c04bace1b0c6870e6aa3de650aa442faf8d279bdebf76a4f1c19efbe` |
| 10 | `theorem` | [foldlM_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-succ--8eab01ca5785347fa68768a8.md) | 137 | `result-track:8eab01ca5785347fa68768a888d79e7603357434e934c910b81f33e2b83ffab0` |
| 11 | `theorem` | [foldlM_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-succ-last--399c1e91dc86313949c361f7.md) | 143 | `result-track:399c1e91dc86313949c361f79ba6ea05998520cc4ace5e4a5f86458ac58d21c1` |
| 12 | `theorem` | [foldlM_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-add--053c098dc04cbf086e36b9cb.md) | 158 | `result-track:053c098dc04cbf086e36b9cbae5273591309453a821efd8cdfd46ffa171b4120` |
| 13 | `theorem` | [foldrM_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-congr--37bffbba17848a9fa5af46b7.md) | 171 | `result-track:37bffbba17848a9fa5af46b706bfdd6ff57bfb067bed4d8037bf252900ebc0ec` |
| 14 | `theorem` | [foldrM_loop_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-loop-zero--5feaecf3661c4ad568da04c6.md) | 176 | `result-track:5feaecf3661c4ad568da04c6eae906c2fdd24f5c1222f94566e5206653030413` |
| 15 | `theorem` | [foldrM_loop_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-loop-succ--06dc3320127d6fd4839b4374.md) | 180 | `result-track:06dc3320127d6fd4839b437472477fecad8be4e85ac17a38cf4098172b1d96a1` |
| 16 | `theorem` | [foldrM_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-loop--642331aef0777a34566c005d.md) | 184 | `result-track:642331aef0777a34566c005d2547f3e192b48c6692325380170980f168d17f13` |
| 17 | `theorem` | [foldrM_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-zero--3497d32f6760a46a08e1846f.md) | 198 | `result-track:3497d32f6760a46a08e1846f21458481072a8689607bd1efd263f93aa65c30c7` |
| 18 | `theorem` | [foldrM_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-succ--15f9ba2d34c3f965689c11df.md) | 202 | `result-track:15f9ba2d34c3f965689c11dfc038133f7b77094ec6c837a689f5d716caeb75c0` |
| 19 | `theorem` | [foldrM_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-succ-last--3f0c23dfa9eb0229ea6cb46d.md) | 207 | `result-track:3f0c23dfa9eb0229ea6cb46dc999c73ce99625abb55f92b9dcceeb7a550d69a4` |
| 20 | `theorem` | [foldrM_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-add--05c862b10441b96c34642d57.md) | 217 | `result-track:05c862b10441b96c34642d573fabf8b5378dc2b14fe8248f4d363c08a31a0f1b` |
| 21 | `theorem` | [foldl_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-congr--92f68d7b8ff8419a416e3d04.md) | 229 | `result-track:92f68d7b8ff8419a416e3d04df0944561b27a36bf4ae94c0b78663b7c36b3488` |
| 22 | `theorem` | [foldl_loop_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-loop-lt--22ff0ee3ce1b779603428d0a.md) | 234 | `result-track:22ff0ee3ce1b779603428d0aa8d0756a5c9325baa8d7f3c27d482ef181ec708b` |
| 23 | `theorem` | [foldl_loop_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-loop-eq--ac93e9f0f6a1d628afc4807b.md) | 238 | `result-track:ac93e9f0f6a1d628afc4807b5de1e3ac1e85fe448b9bcf94180f34a5ec319694` |
| 24 | `theorem` | [foldl_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-loop--fe88bb6d9201a7fd0686a98f.md) | 241 | `result-track:fe88bb6d9201a7fd0686a98f9eb71aa5e1d6fd740117497a9471d1368ad7eca7` |
| 25 | `theorem` | [foldl_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-zero--054f060cbd6ce9d8ecde41e4.md) | 251 | `result-track:054f060cbd6ce9d8ecde41e4b532a6158f184f2ebdc2abb57d4b0db75d12c6c3` |
| 26 | `theorem` | [foldl_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-succ--df6851babd1db26552000d2d.md) | 254 | `result-track:df6851babd1db26552000d2d055cb164b894188a5c03a770511a0e6609a6a093` |
| 27 | `theorem` | [foldl_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-succ-last--16d5eca0b946500756745c2f.md) | 258 | `result-track:16d5eca0b946500756745c2f506b1ed2969d3fd63a97bd233c4ecb9411ec0fc8` |
| 28 | `theorem` | [foldl_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-add--831a0a29657a2da471e1de32.md) | 265 | `result-track:831a0a29657a2da471e1de32a85c90a0aee956c0afebce0c6a71bc8a815626f8` |
| 29 | `theorem` | [foldl_eq_foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-eq-foldlm--bc8968dcb7f898664125b185.md) | 273 | `result-track:bc8968dcb7f898664125b185808f5c25dfe53bfc4972caba20a781bd916b09df` |
| 30 | `theorem` | [foldlM_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldlm-pure--4fb8d4f6650c8fbe59d8cc8c.md) | 278 | `result-track:4fb8d4f6650c8fbe59d8cc8c2ab0212a656f440e5769941f74538f137673eeb7` |
| 31 | `theorem` | [foldr_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-congr--5cbc563e997a3088c07e7ea7.md) | 286 | `result-track:5cbc563e997a3088c07e7ea7acf83705b27f002facd21b49fa4543b79074a2de` |
| 32 | `theorem` | [foldr_loop_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-loop-zero--b0dcdef737e499e98efd5b5b.md) | 291 | `result-track:b0dcdef737e499e98efd5b5b4f873ae406a9fd64c6bcbb6f577ce2037929763b` |
| 33 | `theorem` | [foldr_loop_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-loop-succ--2de1f2dca1e1ae999eb7599c.md) | 295 | `result-track:2de1f2dca1e1ae999eb7599c7807151dae58c647cea39d8db062a18f57e4c64c` |
| 34 | `theorem` | [foldr_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-loop--e9248b36dbc40f28bd713b4a.md) | 299 | `result-track:e9248b36dbc40f28bd713b4a6c8feee1248036af065035aff1dddbd96e7b8425` |
| 35 | `theorem` | [foldr_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-zero--43f28d050801c268095b7ff7.md) | 306 | `result-track:43f28d050801c268095b7ff7a73448524d070d9c5ac946d68003997708d6792c` |
| 36 | `theorem` | [foldr_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-succ--d16fb3b3bb88219e97b5bb3f.md) | 309 | `result-track:d16fb3b3bb88219e97b5bb3f51e17c0b9b2a7c96e10958db1a082d1dab26508b` |
| 37 | `theorem` | [foldr_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-succ-last--239eeb7ff507d17153a6a78c.md) | 312 | `result-track:239eeb7ff507d17153a6a78c2194146b302748dd344c4fc3ca1e53415a400471` |
| 38 | `theorem` | [foldr_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-add--3e8a9e298301e88b912fbef0.md) | 318 | `result-track:3e8a9e298301e88b912fbef062ed04e021bbaccba98320810d2b4e8f7b801823` |
| 39 | `theorem` | [foldr_eq_foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-eq-foldrm--875d1e9db18150535da38dcc.md) | 326 | `result-track:875d1e9db18150535da38dcc738a0ec37e48a9e6a701cf7acaf4e82c6c03aaa3` |
| 40 | `theorem` | [foldl_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldl-rev--7d78daad4ce7aafbfb05a099.md) | 330 | `result-track:7d78daad4ce7aafbfb05a0998c95fc833d3901da036427e6d08ccbd492643288` |
| 41 | `theorem` | [foldr_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldr-rev--20f71b0e80181d5d78f3598c.md) | 336 | `result-track:20f71b0e80181d5d78f3598c9534a8346300acb810dc9b70423c6db4545e48c7` |
| 42 | `theorem` | [foldrM_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/declarations/foldrm-pure--6ebd7a9f03c90030b92600bd.md) | 343 | `result-track:6ebd7a9f03c90030b92600bd782d161702d2076b0e1858a5f5704da082ddeb37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
