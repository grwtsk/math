# Verification target: GRWTSK.Logic.PTSModelTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46eca07b0b7a7c3f6c978f4c13d0c8081f278f9d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/PTSModelTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46eca07b0b7a7c3f6c978f4c13d0c8081f278f9d`.

Source path: `GRWTSK/Logic/PTSModelTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/PTSModelTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.ExternalPTSSystemTransport`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Logic.PortPureTypeSystem`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Model](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/model--9d6f8933b83304481522a37a.md) | 15 | `declaration-track:9d6f8933b83304481522a37acfb6ff90652bbc2336da37205a4d2bdc7fcfac83` |
| 2 | `def` | [SystemWeaklyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/systemweaklynormalizing--826964721a3746609213ce67.md) | 25 | `declaration-track:826964721a3746609213ce67aa9699519e5e3153ec7af42d9b094757d820c51b` |
| 3 | `def` | [SystemStronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/systemstronglynormalizing--382283463de2b47c417e6229.md) | 29 | `declaration-track:382283463de2b47c417e622964433acf09ad91c8d5a99a49a95df3315e8e0c5e` |
| 4 | `structure` | [ModelEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/modelequiv--3fcd4087a117e82e444b3420.md) | 38 | `declaration-track:3fcd4087a117e82e444b34205960f0344afbb136917b2e5b7523bd58e82ea814` |
| 5 | `def` | [refl](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/refl--027e178b1e9865cd91bfd086.md) | 50 | `declaration-track:027e178b1e9865cd91bfd0863a445373fbb2e1175b5089c7b8ad955ffbd9b9fd` |
| 6 | `def` | [toReductionEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/toreductionequiv--e2a8a864bcf2c0dce25eaae2.md) | 58 | `declaration-track:e2a8a864bcf2c0dce25eaae2dbe155a7ef6559988ed4350661316a19fdf1c0b5` |
| 7 | `theorem` | [systemWeak_forward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/systemweak-forward--fce4d2f33f51680a650f2291.md) | 64 | `result-track:fce4d2f33f51680a650f2291436aad43e11dab756f0290883df26d2e9a670d90` |
| 8 | `theorem` | [systemStrong_backward](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/systemstrong-backward--cd4f320ab49f87c32e3b6e76.md) | 81 | `result-track:cd4f320ab49f87c32e3b6e760666494b902cc4f790d24fd318fbe3189ccae43a` |
| 9 | `structure` | [SourceBoundWeakToStrong](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/sourceboundweaktostrong--ff7fe81603638dc1d766962e.md) | 94 | `declaration-track:ff7fe81603638dc1d766962e2a12b9f11382dc0863974ca35a4cf1a73e9657e9` |
| 10 | `def` | [transport](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/transport--aee1143b1a7b1800d4c74f73.md) | 103 | `declaration-track:aee1143b1a7b1800d4c74f73ce6a24c758b99791a6ad08c5653f63b46f3c066a` |
| 11 | `def` | [portModel](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/portmodel--adc6a99412fea7fdaaddd2e5.md) | 114 | `declaration-track:adc6a99412fea7fdaaddd2e54d55b1fc12ace838e7705f6d2bf1ebfc8393dc9d` |
| 12 | `theorem` | [portModel_systemWeak_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/portmodel-systemweak-iff--819f95ddfef1e06ab65b8db2.md) | 122 | `result-track:819f95ddfef1e06ab65b8db200f9331b6f3fb710989199fcac53afec9406937e` |
| 13 | `theorem` | [portModel_systemStrong_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/portmodel-systemstrong-iff--0745e0e3573b9c26f0128d6e.md) | 128 | `result-track:0745e0e3573b9c26f0128d6e6cb1e2addd6ebcb6297c8d890beca78b4878a6c0` |
| 14 | `structure` | [ExternalAdmission](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/externaladmission--9c865c05adb6b711785ca3b2.md) | 135 | `declaration-track:9c865c05adb6b711785ca3b24f493b60ad611fa8a054fd4969e3044973238eaa` |
| 15 | `def` | [localTheorem](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/localtheorem--3a24b85d14a61fdea0c73bd2.md) | 145 | `declaration-track:3a24b85d14a61fdea0c73bd206359d2ef8e18682268ced198753bf0694757fa2` |
| 16 | `def` | [toWeakToStrongAdmission](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/toweaktostrongadmission--066913327c9f0b8f609d448a.md) | 150 | `declaration-track:066913327c9f0b8f609d448a2c28074695a1fbd8b7bd729d3a23b1e813b04d0f` |
| 17 | `theorem` | [strong_of_weak](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/strong-of-weak--1d9eafbac9c8764568047d6e.md) | 159 | `result-track:1d9eafbac9c8764568047d6e08888e1cbaaeb4dce7405854186ac5234f26f331` |
| 18 | `def` | [openAIWeakToStrongSource](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PTSModelTransport.lean/declarations/openaiweaktostrongsource--e8a4b8d8a03150f948476ea7.md) | 169 | `declaration-track:e8a4b8d8a03150f948476ea7828dd598170457ccafb75a43f8fc274a07621776` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
