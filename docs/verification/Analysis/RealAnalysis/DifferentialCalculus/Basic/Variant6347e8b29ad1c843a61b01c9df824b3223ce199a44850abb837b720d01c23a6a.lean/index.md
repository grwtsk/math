# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7441f62438b30b883e5b647e5476b1c338058d74",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7441f62438b30b883e5b647e5476b1c338058d74`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/contdiffbump--e404cf9758245f5d83014059.md) | 66 | `declaration-track:e404cf9758245f5d8301405992da65cfeebddbb97495c437eb1ecb23c819f89a` |
| 2 | `structure` | [ContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/contdiffbumpbase--f10cbba2de7627ea0971ff42.md) | 77 | `declaration-track:f10cbba2de7627ea0971ff42cd798d3898852a2156aef8bf8a13a232f7b01d2e` |
| 3 | `class` | [HasContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/hascontdiffbump--c4231fb8a809838acc3576ec.md) | 89 | `declaration-track:c4231fb8a809838acc3576ecf87407dc030d1dbc66a48b9f17b78549e51086c2` |
| 4 | `def` | [someContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/somecontdiffbumpbase--7b7256902b009c985d0e3d68.md) | 94 | `declaration-track:7b7256902b009c985d0e3d68fda64c7c8cce1baab1d4443657451b0abc122333` |
| 5 | `theorem` | [rOut_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/rout-pos--af877a7f9659b7d6ef38bc44.md) | 100 | `result-track:af877a7f9659b7d6ef38bc4428004068dbb3c5d29c65fd4fa9f8c566db573fe5` |
| 6 | `theorem` | [one_lt_rOut_div_rIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/one-lt-rout-div-rin--67c893b118f700a32862dacd.md) | 103 | `result-track:67c893b118f700a32862dacdb7ad12a218518884b45c8065e6f827ac8466ea16` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/instance--94e6e04fd2d9982a1140ea34.md) | 107 | `declaration-track:94e6e04fd2d9982a1140ea34a2d62ce2f49acbbc8a3048aafa35b6c68eed1149` |
| 8 | `def` | [toFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/tofun--568efd9ef959affa055c9697.md) | 115 | `declaration-track:568efd9ef959affa055c96978e676eca4cd9b8199e31e4b4b6f615881414a055` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/instance--082fb6c593ec25cffa77f2a0.md) | 118 | `declaration-track:082fb6c593ec25cffa77f2a0ecc19b0b4f86fed3ee08d7b7200e8e3b5c48c372` |
| 10 | `theorem` | [apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/apply--9fdfd0fddec3ea6e52ffaa18.md) | 121 | `result-track:9fdfd0fddec3ea6e52ffaa18ac53c797958c68dc2bcd23a789b26f88524af546` |
| 11 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/sub--a6c879cfc6e057d60122bf67.md) | 125 | `result-track:a6c879cfc6e057d60122bf67465b159ed469a343ff06e208c10b931d5cd4ef82` |
| 12 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/neg--727c42cc0731ed0f87cf384c.md) | 128 | `result-track:727c42cc0731ed0f87cf384cd7b25ca55c1917f61ff0e5aaedc68873f8fb0932` |
| 13 | `theorem` | [one_of_mem_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/one-of-mem-closedball--a9c5461fb3737095c011424e.md) | 133 | `result-track:a9c5461fb3737095c011424e33c6c220639ef81ad1a3e74dcca16133e8a0fa2f` |
| 14 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/nonneg--91bfe7f7a458c9b5e4ed7fd0.md) | 138 | `result-track:91bfe7f7a458c9b5e4ed7fd044375aaa46ecf716157ee018e9928fb0f6bb9e15` |
| 15 | `theorem` | [nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/nonneg--b5f842eeeba1b61be27dd59b.md) | 142 | `result-track:b5f842eeeba1b61be27dd59b97513ce9efc974533c0e2b50fc239342dfd0b9dd` |
| 16 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/le-one--74ab0640da8f64d0cd445c71.md) | 144 | `result-track:74ab0640da8f64d0cd445c71193b103aed816853d9f38a0393b0255498da56ed` |
| 17 | `theorem` | [support_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/support-eq--572b7711bb0bfc0942582471.md) | 147 | `result-track:572b7711bb0bfc094258247157bb61acbd999b450e542bb01349c12b1585253b` |
| 18 | `theorem` | [tsupport_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/tsupport-eq--4e14b8bbbbdef43f6e707b93.md) | 153 | `result-track:4e14b8bbbbdef43f6e707b934c7e1ec5ca3abcf5422b1fa069190263edc30c6a` |
| 19 | `theorem` | [pos_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/pos-of-mem-ball--0628fbacf4bef318958002e7.md) | 156 | `result-track:0628fbacf4bef318958002e7e59befa31c09ee7edbbab3cf65d7d7523d9ddb78` |
| 20 | `theorem` | [zero_of_le_dist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/zero-of-le-dist--ed700b30d6849797e8bdd962.md) | 159 | `result-track:ed700b30d6849797e8bdd962ff30e99289b47d14a44024ab87bd4b700b755ca4` |
| 21 | `theorem` | [hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/hascompactsupport--8358695a635a7ec9a885c963.md) | 162 | `result-track:8358695a635a7ec9a885c96340df43f0192962f1c850d656f176014e82697158` |
| 22 | `theorem` | [eventuallyEq_one_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/eventuallyeq-one-of-mem-ball--33cbd932c8fd0c62ac1940fb.md) | 165 | `result-track:33cbd932c8fd0c62ac1940fbd1f557a49a899650bbd5538bfe28b2f660ac7b04` |
| 23 | `theorem` | [eventuallyEq_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/eventuallyeq-one--8cd6d4274bdc06ff548843e7.md) | 168 | `result-track:8cd6d4274bdc06ff548843e76b9c9c4c3173ebcc870327643d5c21a4024e57f7` |
| 24 | `theorem` | [_root_.ContDiffWithinAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/root-contdiffwithinat-contdiffbump--a6896495b18a19db60969358.md) | 172 | `result-track:a6896495b18a19db609693583140f142095c2352c7527842ed60c49f195f573e` |
| 25 | `theorem` | [_root_.ContDiffAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/root-contdiffat-contdiffbump--602ea25abca8c23ec44a7f2b.md) | 186 | `result-track:602ea25abca8c23ec44a7f2b54ae51a487d69c72bc38adabdf87dd6c64aab875` |
| 26 | `theorem` | [_root_.ContDiff.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/root-contdiff-contdiffbump--21ad099f8621425de3fd5183.md) | 192 | `result-track:21ad099f8621425de3fd5183bf592f5f96907c35d31f7e482725bedcd7a53926` |
| 27 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/contdiff--565b7c03c5dceab1bdc37f95.md) | 199 | `result-track:565b7c03c5dceab1bdc37f95099a3afbd05f17e5a749e228610a9e7d9d292105` |
| 28 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/contdiffat--736e3dc177d807c8762baa24.md) | 202 | `result-track:736e3dc177d807c8762baa246c86d125ea20f49b3c72ea32fe38b9d1f52a5bbe` |
| 29 | `theorem` | [contDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/contdiffwithinat--6efaf517814484f61a4e4169.md) | 205 | `result-track:6efaf517814484f61a4e41695e7a9f10c7d49a7a5d8a52934657e00620d86cb6` |
| 30 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.lean/declarations/continuous--d21516d6f46753d71e09bc02.md) | 208 | `result-track:d21516d6f46753d71e09bc02303223415a8e1077dfbf9976decb692c2a76781b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
