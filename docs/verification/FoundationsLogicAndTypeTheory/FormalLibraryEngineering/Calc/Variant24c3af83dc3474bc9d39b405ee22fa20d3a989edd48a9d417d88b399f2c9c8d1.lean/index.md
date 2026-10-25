# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Calc.Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470686476a2289f65e2025cbe6bed7e7962b13f0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470686476a2289f65e2025cbe6bed7e7962b13f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getCalcRelation?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/getcalcrelation--256d0a5d8981776503aa8316.md) | 29 | `declaration-track:256d0a5d8981776503aa8316c19953ead8605d45557fe07a82a2fccb3e4b9623` |
| 2 | `def` | [getRelUniv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/getreluniv--517335e04908d0cc24ca84f1.md) | 35 | `declaration-track:517335e04908d0cc24ca84f13cca0f7f2112a90fe572d24bc92aeeeb186bca49` |
| 3 | `def` | [mkCalcTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/mkcalctrans--7a4bfc8b1d77a601075a68b1.md) | 41 | `declaration-track:7a4bfc8b1d77a601075a68b136886aeb036e6cb69483e374bd7fa4e5b7933754` |
| 4 | `def` | [annotateFirstHoleWithType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/annotatefirstholewithtype--295c6d000774f6ea494089e5.md) | 71 | `declaration-track:295c6d000774f6ea494089e57b02c6058a409c32484ee4a8fa5747669be60fd6` |
| 5 | `structure` | [CalcStepView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/calcstepview--7fc8bb5b01382ad982ea94ac.md) | 85 | `declaration-track:7fc8bb5b01382ad982ea94ac73879e8ebdda523e9e28291bafb97f2ffff5d2e4` |
| 6 | `def` | [mkCalcFirstStepView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/mkcalcfirststepview--c6be0601902824829a986bbf.md) | 93 | `declaration-track:c6be0601902824829a986bbf664912f9549dfdd907a7891bf21f184b247e23ec` |
| 7 | `def` | [mkCalcStepViews](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/mkcalcstepviews--0493b1d734688afd7a4d1c04.md) | 100 | `declaration-track:0493b1d734688afd7a4d1c04e725e0a7a3ce91a8cf9fc0efb8fdd3b4e9d7067d` |
| 8 | `def` | [elabCalcSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/elabcalcsteps--966e2f24adcb4edc3ab8c88a.md) | 112 | `declaration-track:966e2f24adcb4edc3ab8c88ad37525f0563c350a0a1323c1f30e554596b6dfc8` |
| 9 | `def` | [throwCalcFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/throwcalcfailure--15d0c9917951acd283525d55.md) | 139 | `declaration-track:15d0c9917951acd283525d55deef95eda3d14259ba63ff3c2c268149d568a5c3` |
| 10 | `def` | [elabCalc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/declarations/elabcalc--c080f8dd3435783072bb13bd.md) | 177 | `declaration-track:c080f8dd3435783072bb13bd49a2314f4e179ad41e044dff4b2dd24863bc4212` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
