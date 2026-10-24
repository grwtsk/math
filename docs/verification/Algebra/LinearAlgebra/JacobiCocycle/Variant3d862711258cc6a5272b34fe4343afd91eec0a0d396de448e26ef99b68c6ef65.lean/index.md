# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobiCocycle.Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcf5fec08a2312282fde4a34f92ad440b230e08f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcf5fec08a2312282fde4a34f92ad440b230e08f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Spectral.JacobiTransfer` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/orderedproduct--6831a6446ee71c2f84ae3a6a.md) | 38 | `declaration-track:6831a6446ee71c2f84ae3a6a9e916c0c059ee1532765045b94c3c0a7f896587d` |
| 2 | `theorem` | [orderedProduct_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/orderedproduct-zero--e0d212a33a246040938ab963.md) | 43 | `result-track:e0d212a33a246040938ab9632466b285a488a1930cfd7319887a50c508784d88` |
| 3 | `theorem` | [orderedProduct_succ](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/orderedproduct-succ--3d487f664dd7d6921d2c1aa7.md) | 47 | `result-track:3d487f664dd7d6921d2c1aa7e01f44e9fa97c1a6cef772ae29bea4310d515037` |
| 4 | `theorem` | [orderedProduct_add](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/orderedproduct-add--2cb7d239549b04833af19927.md) | 51 | `result-track:2cb7d239549b04833af19927636a9f6290c514a06f3968e6ad964f83206a0b7a` |
| 5 | `def` | [orderedTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/orderedtransfer--2c6608aae8b245b08f8f7a21.md) | 61 | `declaration-track:2c6608aae8b245b08f8f7a2108461715792a3c79ad603b44154c2909ca4eac2c` |
| 6 | `theorem` | [state_eq_orderedProduct_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/state-eq-orderedproduct-mulvec--95f98c1e5fd3861b86f6c166.md) | 65 | `result-track:95f98c1e5fd3861b86f6c1662d62228e8362cb7ca55f2f3cb50f7c8f775f20b8` |
| 7 | `theorem` | [state_eq_orderedTransfer_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/state-eq-orderedtransfer-mulvec--17be37889a92780468fe5ba1.md) | 76 | `result-track:17be37889a92780468fe5ba1f28f98b5d01456b25a938941dd0d4875398577c1` |
| 8 | `theorem` | [det_orderedProduct_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/det-orderedproduct-eq-one--e1eec0852d6f662f799f3e02.md) | 84 | `result-track:e1eec0852d6f662f799f3e029635af8ad3e3591706389ab33cc788e5a34bdf74` |
| 9 | `theorem` | [det_weightedJacobi_orderedProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/det-weightedjacobi-orderedproduct--81d391211d877a1e0f128a95.md) | 92 | `result-track:81d391211d877a1e0f128a9529ae798f40490e3c40b9759f52f2d6b22f5c2e7d` |
| 10 | `def` | [cocycleProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/cocycleproduct--004836cf9e4e86d83968a35b.md) | 98 | `declaration-track:004836cf9e4e86d83968a35b69111cd3116a0c2e2005c30904e1a951c51727d2` |
| 11 | `theorem` | [cocycleProduct_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/cocycleproduct-zero--a5925fb6e3c52740c5791244.md) | 104 | `result-track:a5925fb6e3c52740c579124446aa348b1b0083874a4664bbaee85960fb5b7c0f` |
| 12 | `theorem` | [cocycleProduct_succ](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/cocycleproduct-succ--8ea74a31653fe8d55bee3fba.md) | 108 | `result-track:8ea74a31653fe8d55bee3fba3d4e14c1e83d4c5584ec660f0443a94c9999e527` |
| 13 | `theorem` | [cocycleProduct_eq_orderedProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/cocycleproduct-eq-orderedproduct--4f18015538a5184b09ebc3d9.md) | 113 | `result-track:4f18015538a5184b09ebc3d9d6f39dafa67984f0662d63b5216a25067dac6721` |
| 14 | `theorem` | [cocycleProduct_add](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/cocycleproduct-add--4b803362ba0d6a16395f6bf2.md) | 121 | `result-track:4b803362ba0d6a16395f6bf29250320fcb41c3c939ea46f1bd88de10b52a5ff2` |
| 15 | `def` | [cocycleGaugeTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/cocyclegaugetransfer--fad4e4378fad462974f7f59f.md) | 132 | `declaration-track:fad4e4378fad462974f7f59ffe29e898d0ed224eaa479f1faa5c9fdec6d91a20` |
| 16 | `theorem` | [cocycleProduct_gauge](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/cocycleproduct-gauge--848d90f89076984d7fea6ce3.md) | 136 | `result-track:848d90f89076984d7fea6ce3df26009eb9ab9f2d8bf958b3141ce93ff33e17bd` |
| 17 | `def` | [gaugeTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/gaugetransfer--c4e956f6ab1cae4fac4f42aa.md) | 147 | `declaration-track:c4e956f6ab1cae4fac4f42aa5f84e4e3b794f7c3a429c9461e63e6d241f88346` |
| 18 | `def` | [gaugeState](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/gaugestate--ea73679f9a4dee292342a1ad.md) | 151 | `declaration-track:ea73679f9a4dee292342a1ad735e7a6a43b13709270278b2ad65f59480306316` |
| 19 | `theorem` | [gaugeState_step_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/gaugestate-step-iff--240690514ff53b349d475059.md) | 156 | `result-track:240690514ff53b349d475059fafd56e71087449a60a8ae1467e57e2731b7570c` |
| 20 | `theorem` | [orderedProduct_gaugeTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/orderedproduct-gaugetransfer--17c51122048048f87fe10173.md) | 172 | `result-track:17c51122048048f87fe10173ab63f1b08790e126d0afa0d5e9f45fb2f52adde1` |
| 21 | `theorem` | [orderedProduct_eq_of_gaugeTransfer_eq](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/orderedproduct-eq-of-gaugetransfer-eq--2931578ff9538ab474e1e700.md) | 183 | `result-track:2931578ff9538ab474e1e7005bb45271be0612135dd5340e29a97970695acd1b` |
| 22 | `def` | [recursiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/recursivegauge--e234861475527153df97245a.md) | 193 | `declaration-track:e234861475527153df97245a72a3f18fb38774366a5de433fbe4aa022965fbe1` |
| 23 | `theorem` | [recursiveGauge_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/recursivegauge-zero--0f96d4a60b9b128472ac3bfd.md) | 198 | `result-track:0f96d4a60b9b128472ac3bfdea06cc00995abe4e4fb6ced035732aade0f72199` |
| 24 | `theorem` | [recursiveGauge_succ](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/recursivegauge-succ--a3e116478c58421153c5384c.md) | 202 | `result-track:a3e116478c58421153c5384c71602f3be3a2a034178fd8ace31d2fca2eb63fec` |
| 25 | `theorem` | [gaugeTransfer_recursiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/gaugetransfer-recursivegauge--09e02605332a13d84fbba4a5.md) | 207 | `result-track:09e02605332a13d84fbba4a50c083dbb740cda06b46517bb5694483afaa72d95` |
| 26 | `theorem` | [unrestricted_oneSided_gauge_exists](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/unrestricted-onesided-gauge-exists--eef60216fee85d001296e546.md) | 213 | `result-track:eef60216fee85d001296e54627ee9251b3cf55f47014b3d3197a14fdffe9db24` |
| 27 | `theorem` | [recursiveGauge_const_identity](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/recursivegauge-const-identity--f8af7a035262124b6c071f93.md) | 218 | `result-track:f8af7a035262124b6c071f938fc1be5e25caa5ac0aa77a3da0a03b91215261fa` |
| 28 | `def` | [expandingSL](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/expandingsl--fc5b678a84296ec5a4be3a08.md) | 225 | `declaration-track:fc5b678a84296ec5a4be3a08a732ace7adb06613e32aac7c9acc661064494895` |
| 29 | `theorem` | [recursiveGauge_expanding_entry](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/recursivegauge-expanding-entry--043e003dadc4f352569cf46a.md) | 229 | `result-track:043e003dadc4f352569cf46a23a3f2428fc48c86d1ffd84c4f1d8a414f8e1e4d` |
| 30 | `theorem` | [recursiveGauge_expanding_entry_unbounded](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/recursivegauge-expanding-entry-unbounded--4f4046f7531519a43ce8be22.md) | 239 | `result-track:4f4046f7531519a43ce8be227d25e75eb1728a94bbd135a3ecd8dfc2106a5d5e` |
| 31 | `theorem` | [schrodinger_transfer_order_matters](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/declarations/schrodinger-transfer-order-matters--34dd38d23b30b0083ce61699.md) | 251 | `result-track:34dd38d23b30b0083ce616993d262bc4a28c97245abec84eb0572ee47b84113d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
