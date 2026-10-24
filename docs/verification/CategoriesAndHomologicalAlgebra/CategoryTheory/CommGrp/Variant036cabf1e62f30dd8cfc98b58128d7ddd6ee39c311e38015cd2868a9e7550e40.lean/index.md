# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f621fd493017d0c531f6d8a179036531cd74929",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f621fd493017d0c531f6d8a179036531cd74929`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Grp_` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CommMon_` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommGrp_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/commgrp--018e90104d382e0bc9d70bf7.md) | 28 | `declaration-track:018e90104d382e0bc9d70bf795ca38e14eddc22334e2d2628dba273400c079f3` |
| 2 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/trivial--5c40c8f91894d52d06b0e0c2.md) | 39 | `declaration-track:5c40c8f91894d52d06b0e0c2eadf4cad72faf2cb8b7e2a9deff989caaf497b8d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--1f73b575630966b7356890a7.md) | 42 | `declaration-track:1f73b575630966b7356890a7c80fced177b8165a752a23ddc266a96b91a749dd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--45c31e7e130fa0ddc4c3fbc4.md) | 47 | `declaration-track:45c31e7e130fa0ddc4c3fbc4e867d88cf6b704c8869ffa67fcafb45c5408723c` |
| 5 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/id-hom--2ce2418b973486bb6d9c8a15.md) | 52 | `result-track:2ce2418b973486bb6d9c8a15bac0c63cd1fceaec82514b80a6616ca6de582bc9` |
| 6 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/comp-hom--97bfaeb3048772590458cae4.md) | 56 | `result-track:97bfaeb3048772590458cae41077e1131bb866831d254bd60da8612ce4842cff` |
| 7 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/hom-ext--eb68773cc9551e04591ccdce.md) | 61 | `result-track:eb68773cc9551e04591ccdce6bdf1c87e11f5cae57cd0d502b7ba3cb2615f57a` |
| 8 | `lemma` | [id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/id--9c4b7dfdadbb17a5bd9d220f.md) | 65 | `result-track:9c4b7dfdadbb17a5bd9d220f3a13e06f29dc5a7c22b99b35c4d8f7f596e39690` |
| 9 | `lemma` | [comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/comp--d6b8ac5d122f1606696b8c22.md) | 68 | `result-track:d6b8ac5d122f1606696b8c223ba8c07f1437717952c2970384814fcae08607ba` |
| 10 | `def` | [forget₂Grp_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-grp--a55591c0354e498494bd8a29.md) | 76 | `declaration-track:a55591c0354e498494bd8a29fe79e9df853a8cf2c07520c14e0f191bc1b29c99` |
| 11 | `def` | [fullyFaithfulForget₂Grp_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/fullyfaithfulforget-grp--77f1c71bcd9e512257b9b617.md) | 80 | `declaration-track:77f1c71bcd9e512257b9b617760ae2101fe63d4be3b17f7b10e02573451aceeb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--2490db8cce73f371403d1a18.md) | 83 | `declaration-track:2490db8cce73f371403d1a18d4186866abeebddfc2ed3e73d48512473db311d9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--8578e6a5b829d53bd3ce367e.md) | 84 | `declaration-track:8578e6a5b829d53bd3ce367ef0ccde680f8cb01ee4ded90d59e4f9bfdda8e0c2` |
| 14 | `theorem` | [forget₂Grp_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-grp-obj-one--4a8fb7bdfe66b6b29a0a422a.md) | 87 | `result-track:4a8fb7bdfe66b6b29a0a422a613298c0a9c2a43cf2d5e0b24b55c9a4c93b6b0a` |
| 15 | `theorem` | [forget₂Grp_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-grp-obj-mul--291528c3decc334b521c2362.md) | 91 | `result-track:291528c3decc334b521c2362bbe132db9183d3a1908fd0ead017e6e92b7e70f9` |
| 16 | `theorem` | [forget₂Grp_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-grp-map-hom--d0f8e3fe02689298782f2014.md) | 95 | `result-track:d0f8e3fe02689298782f20141464d34b54aae981ec184886b8a75d561c89ab8c` |
| 17 | `def` | [forget₂CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-commmon--4c9a738fc7079454835d634e.md) | 99 | `declaration-track:4c9a738fc7079454835d634e03800aa9e8e1c948e9eae18fc8f886e2bdd676f3` |
| 18 | `def` | [fullyFaithfulForget₂CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/fullyfaithfulforget-commmon--192614878e0114e7d83bf28e.md) | 104 | `declaration-track:192614878e0114e7d83bf28e196bc1196fd6ca91be24d606e4162449802693f5` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--229720d25a453451cfd222f0.md) | 107 | `declaration-track:229720d25a453451cfd222f09e300d5f0f02ab269e94e8dd7faca2a8524ea4a9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--4b28db3d3e41cdafec8b4c93.md) | 108 | `declaration-track:4b28db3d3e41cdafec8b4c93246419ca237c7c387f1135658599e9ffaef1b472` |
| 21 | `theorem` | [forget₂CommMon_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-commmon-obj-one--29ed8cac466efb4fda584fd0.md) | 111 | `result-track:29ed8cac466efb4fda584fd09b444346f9123ace7e98a0ea4401795f18ae1672` |
| 22 | `theorem` | [forget₂CommMon_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-commmon-obj-mul--97eaac381b86c2dc46d06df7.md) | 115 | `result-track:97eaac381b86c2dc46d06df7af35eb341193500ca5bf0805627754a7592bfa21` |
| 23 | `theorem` | [forget₂CommMon_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-commmon-map-hom--b1f8e4b76a946e5243935c45.md) | 119 | `result-track:b1f8e4b76a946e5243935c45c1f423d21fc082f20b921bb69bbf8d73b073105d` |
| 24 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget--2f887851b441f3baf1254984.md) | 125 | `declaration-track:2f887851b441f3baf12549843dd1a0973d9578f3521c1a82892dfbe6e4a2b8c6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--0af7dd437b30be513b071c60.md) | 128 | `declaration-track:0af7dd437b30be513b071c60b071b772bde621bd8648aadcdb6b7e1a26f6ac9c` |
| 26 | `theorem` | [forget₂Grp_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-grp-comp-forget--263a01c76b75efb44e05550d.md) | 131 | `result-track:263a01c76b75efb44e05550d40a9de8f05fdfb327757368ef5710bd34011750f` |
| 27 | `theorem` | [forget₂CommMon_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/forget-commmon-comp-forget--7db6780e2ea67ac7f6913bac.md) | 134 | `result-track:7db6780e2ea67ac7f6913bacd24920743e3255fbadf576acf881a962c59c3ef0` |
| 28 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mkiso--14b1b991cdc964bbd1d69647.md) | 144 | `declaration-track:14b1b991cdc964bbd1d696473f5756bdb47cf4ea5943ddd7074641645dc13d00` |
| 29 | `lemma` | [mkIso_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mkiso-hom-hom--be1bd4a1621f1030dd2808fc.md) | 147 | `result-track:be1bd4a1621f1030dd2808fcd5b6ce270e290f3dfc6ddba6e53e077d6164b413` |
| 30 | `lemma` | [mkIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mkiso-inv-hom--8f9a0205cd2f5dd295c8a9f1.md) | 148 | `result-track:8f9a0205cd2f5dd295c8a9f145f03af00e4f722de869a0c825182bf7a5f6c552` |
| 31 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/uniquehomfromtrivial--31308755c4d4bc4cb20f7726.md) | 152 | `declaration-track:31308755c4d4bc4cb20f77267aed536623a16ff20ac21957dafe77f4af4e320b` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/instance--6e0ab4e9b11909a8da5837e3.md) | 155 | `declaration-track:6e0ab4e9b11909a8da5837e38d18bd96751483024b4118f15bd6fbc233717706` |
| 33 | `def` | [mapCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrp--3f53ad9feced0a27204ec154.md) | 174 | `declaration-track:3f53ad9feced0a27204ec1546420adf77be14b9bd5aae6218c69a50eab15d503` |
| 34 | `def` | [mapCommGrpIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrpidiso--5ec5b2e3858e118dc9a2e9c2.md) | 184 | `declaration-track:5ec5b2e3858e118dc9a2e9c270e806acf27b00f86a91f1617915b2b800636e2f` |
| 35 | `def` | [mapCommGrpCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrpcompiso--f2f7f5babac8a07fadbf7612.md) | 190 | `declaration-track:f2f7f5babac8a07fadbf7612dbc39795e3c4394caeccc21ca207458450a2e318` |
| 36 | `def` | [mapCommGrpNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrpnattrans--12f97136546bd535e780676d.md) | 196 | `declaration-track:12f97136546bd535e780676d6bfc68a2b1e7cd956566283b85a7556d3557a8d1` |
| 37 | `def` | [mapCommGrpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrpnatiso--6b95c5e216874754ab6d2192.md) | 201 | `declaration-track:6b95c5e216874754ab6d21920a611e8f23083692c92295fb37f9823869c9a461` |
| 38 | `def` | [mapCommGrpFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrpfunctor--4d51acba1a8d09549843a876.md) | 207 | `declaration-track:4d51acba1a8d09549843a876a9cfd62ba12f36b1a9b6dad93254db7189ccb66f` |
| 39 | `def` | [mapCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrp--c48d814fa0933e7947c25514.md) | 220 | `declaration-track:c48d814fa0933e7947c25514bcb752dc366902dca2bb1728a7794c8a625831b3` |
| 40 | `def` | [mapCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/declarations/mapcommgrp--e1ae0b91122e9574a11bb519.md) | 230 | `declaration-track:e1ae0b91122e9574a11bb519a920867e3e90461cff805aaac4fa2d9bc8414d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
