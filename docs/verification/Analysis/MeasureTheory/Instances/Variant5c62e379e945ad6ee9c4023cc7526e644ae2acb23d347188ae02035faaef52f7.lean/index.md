# Verification target: GRWTSK.Analysis.MeasureTheory.Instances.Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a760b97654d0ded0742f2c9e7824483072d5cf03",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a760b97654d0ded0742f2c9e7824483072d5cf03`.

Source path: `GRWTSK/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.IterateAct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Empty.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/empty-instmeasurablespace--009fd6f764af9204569d7d88.md) | 18 | `declaration-track:009fd6f764af9204569d7d88b1e83fa56afb425075c06c06277ea1661f117bb7` |
| 2 | `instance` | [PUnit.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/punit-instmeasurablespace--ca41ba26fb716622552a2e9f.md) | 20 | `declaration-track:ca41ba26fb716622552a2e9f11bb056cc067393880e1625c505e76123724c9d1` |
| 3 | `instance` | [Bool.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/bool-instmeasurablespace--e618b1e9e17dac46a7c3541c.md) | 22 | `declaration-track:e618b1e9e17dac46a7c3541ceb71728681a55fef30c3f826009a627cd929fc49` |
| 4 | `instance` | [Prop.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/prop-instmeasurablespace--7e985ef28aa57650c1ffe00a.md) | 24 | `declaration-track:7e985ef28aa57650c1ffe00afc1602a52de8efbe1c48fbf7a238a6d1c246d2e6` |
| 5 | `instance` | [Nat.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/nat-instmeasurablespace--e78f594d5662f217b8c075c6.md) | 26 | `declaration-track:e78f594d5662f217b8c075c6727c303794019b5b7b674c0fa230a9eb38ee99d7` |
| 6 | `instance` | [ENat.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/enat-instmeasurablespace--1118dddf27b4e0e90ba838ab.md) | 28 | `declaration-track:1118dddf27b4e0e90ba838ab2a13ecba8c04f98055537a097f2a83285b1c414a` |
| 7 | `instance` | [Fin.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/fin-instmeasurablespace--ca85a2aaed44e76c9a36ea98.md) | 30 | `declaration-track:ca85a2aaed44e76c9a36ea98ecc1600750370a43dc346a422747a4118a170e68` |
| 8 | `instance` | [ZMod.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/zmod-instmeasurablespace--31e3971ae8a06b2749476c70.md) | 32 | `declaration-track:31e3971ae8a06b2749476c7013b088115ade9d28d3be5fab60141ab769a7600d` |
| 9 | `instance` | [Int.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/int-instmeasurablespace--0b543e05b975ce770435b391.md) | 34 | `declaration-track:0b543e05b975ce770435b3911be93cbdf7b5fe002fa82c5473b04b35913f27c5` |
| 10 | `instance` | [Rat.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/rat-instmeasurablespace--55d8b9b086e4c225c33033a1.md) | 36 | `declaration-track:55d8b9b086e4c225c33033a17203bb5850a0ac47d0c4b0fb93354db9f4386ce2` |
| 11 | `instance` | [IterateMulAct.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/iteratemulact-instmeasurablespace--f3cb3b0464a4b50d661d1066.md) | 39 | `declaration-track:f3cb3b0464a4b50d661d10669b76046a5af6619f256b7e9dee63e123e766fd89` |
| 12 | `instance` | [IterateMulAct.instDiscreteMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/iteratemulact-instdiscretemeasurablespace--921af2a471ed84a1dacf503b.md) | 43 | `declaration-track:921af2a471ed84a1dacf503bdf618bc0e790b116b03cfa1b78d49905a3449d0f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/instance--f544fc185693982810c877bf.md) | 46 | `declaration-track:f544fc185693982810c877bfd575bdcdf2f4fef79e39a9b9b78137ace952c95e` |
| 14 | `instance` | [Bool.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/bool-instmeasurablesingletonclass--9fc4300b893221a0200330c4.md) | 52 | `declaration-track:9fc4300b893221a0200330c4c4f947441d2ed2287e1a34ca123d487ef1631b8e` |
| 15 | `instance` | [Prop.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/prop-instmeasurablesingletonclass--1c739f6897ddc197e1c0361e.md) | 54 | `declaration-track:1c739f6897ddc197e1c0361e8d5a78e7bc5c8ec8645aca9a3516fc65cecb7089` |
| 16 | `instance` | [Nat.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/nat-instmeasurablesingletonclass--32c25b5beb4e22290b872f13.md) | 56 | `declaration-track:32c25b5beb4e22290b872f137ec0be96fa0664bd5406d632258b60b76e0362a3` |
| 17 | `instance` | [ENat.instDiscreteMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/enat-instdiscretemeasurablespace--21400d1c4522723c494d9176.md) | 58 | `declaration-track:21400d1c4522723c494d9176c1b535116a6124d96f2acb72308f694cf9d95ace` |
| 18 | `instance` | [ENat.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/enat-instmeasurablesingletonclass--93e63ef3ae2eb30497858fce.md) | 60 | `declaration-track:93e63ef3ae2eb30497858fce54788841fa0f0d264d582ec9709636c63e11ab26` |
| 19 | `instance` | [Fin.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/fin-instmeasurablesingletonclass--fccf2f66e0cd3dd1ca749027.md) | 62 | `declaration-track:fccf2f66e0cd3dd1ca749027043493caf9445fa3fd89e1a16d886b26c2948b73` |
| 20 | `instance` | [ZMod.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/zmod-instmeasurablesingletonclass--1308d51d4ff07d1e302dc2cc.md) | 65 | `declaration-track:1308d51d4ff07d1e302dc2cc7d7a4d4ff24d4105f1c2025aba9f93374581ad77` |
| 21 | `instance` | [Int.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/int-instmeasurablesingletonclass--d6f0aeefeb4fa818171a7f69.md) | 68 | `declaration-track:d6f0aeefeb4fa818171a7f691e36ed0f20478a085366f03b30e715069473c0d6` |
| 22 | `instance` | [Rat.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean/declarations/rat-instmeasurablesingletonclass--a781c5fac11af3a26834c60a.md) | 70 | `declaration-track:a781c5fac11af3a26834c60aa2bdfef0d485d089bdd609c14aa53fcd97b9aaad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
