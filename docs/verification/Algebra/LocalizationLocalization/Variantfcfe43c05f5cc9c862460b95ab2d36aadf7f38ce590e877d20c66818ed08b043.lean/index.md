# Verification target: GRWTSK.Algebra.LocalizationLocalization.Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6627644612543b753f443169fef0d405f8581f2b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6627644612543b753f443169fef0d405f8581f2b`.

Source path: `GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localizationLocalizationSubmodule](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localizationlocalizationsubmodule--d0209c7d514f3c24d179a202.md) | 51 | `declaration-track:d0209c7d514f3c24d179a20260a5b8fc834bc9bbfc02bd2261e7bb7a13ea6e87` |
| 2 | `theorem` | [mem_localizationLocalizationSubmodule](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/mem-localizationlocalizationsubmodule--783cf5ecc376010cca6c5d43.md) | 57 | `result-track:783cf5ecc376010cca6c5d431bd6d92c0fa08ddb882d3d5b6d091225fcf31312` |
| 3 | `theorem` | [localization_localization_map_units](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localization-localization-map-units--61a420d3abbeb3aed90ca196.md) | 70 | `result-track:61a420d3abbeb3aed90ca1967a34727b8c937232f3ba59db93e07540daaa3f31` |
| 4 | `theorem` | [localization_localization_surj](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localization-localization-surj--d021863d7c3111f3548180b0.md) | 76 | `result-track:d021863d7c3111f3548180b06e0c818ebf17dc82bd3d3e48a05ae6fb2e5d2446` |
| 5 | `theorem` | [localization_localization_exists_of_eq](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localization-localization-exists-of-eq--aea05f740eb74a7fbf093468.md) | 94 | `result-track:aea05f740eb74a7fbf093468126e690eee0b9c1757499087fbd239a465caffb1` |
| 6 | `theorem` | [localization_localization_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localization-localization-islocalization--8b30ae83c0125223acecb12f.md) | 115 | `result-track:8b30ae83c0125223acecb12f0d753bc41de072343bbdb00d1d8ce1bc5e03540f` |
| 7 | `theorem` | [localization_localization_isLocalization_of_has_all_units](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localization-localization-islocalization-of-has-all-units--aef6b2c6cdcea5b2eb3b9a9b.md) | 126 | `result-track:aef6b2c6cdcea5b2eb3b9a9b586991b78914295ab0192ef9d6aa49ae37bdcfae` |
| 8 | `theorem` | [isLocalization_isLocalization_atPrime_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/islocalization-islocalization-atprime-islocalization--0faba34f140dd92be1485bf3.md) | 141 | `result-track:0faba34f140dd92be1485bf3f7aba538676e39cebf1b0a2f71739ccbd065ff1d` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/instance--7a18e06554bb0b4f97057ee6.md) | 147 | `declaration-track:7a18e06554bb0b4f97057ee6279a8c333d68fd26f30d582104a3c750ea156a5a` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/instance--b7fd2e701f0041a16cc1fa5a.md) | 150 | `declaration-track:b7fd2e701f0041a16cc1fa5a425cff5359d4017e1fc63f1b3845cfbe7b85c956` |
| 11 | `instance` | [isLocalization_atPrime_localization_atPrime](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/islocalization-atprime-localization-atprime--b1d37c60e43e20a86e1fe6ad.md) | 154 | `declaration-track:b1d37c60e43e20a86e1fe6ad65bb9085991cf1c3b6a9fb3608d239ce24aaa235` |
| 12 | `def` | [localizationLocalizationAtPrimeIsoLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localizationlocalizationatprimeisolocalization--e3e8c43d086961ae86337d6d.md) | 161 | `declaration-track:e3e8c43d086961ae86337d6d5b64b92c7d330569aae8e1de377b67f8e0439e4d` |
| 13 | `def` | [localizationAlgebraOfSubmonoidLe](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localizationalgebraofsubmonoidle--c797d11b4e7a9a3c40841c48.md) | 172 | `declaration-track:c797d11b4e7a9a3c40841c48c7aca00b8447858c3b97bd978d225ee1650f4979` |
| 14 | `theorem` | [localization_isScalarTower_of_submonoid_le](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/localization-isscalartower-of-submonoid-le--fb237d27fb5f985965b7fdfa.md) | 179 | `result-track:fb237d27fb5f985965b7fdfa6e7fc00192c3c7aa87f3b2ac7b1d3a0edc3683a9` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/instance--215ec42fa11eabbee65c861b.md) | 185 | `declaration-track:215ec42fa11eabbee65c861b23963e80fbe0c127bd912f0700dd583dd2de9154` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/instance--e6b538028cee3cab6075f45c.md) | 193 | `declaration-track:e6b538028cee3cab6075f45cf8b8cdd0455bae04132a5ad5338741782006ae29` |
| 17 | `theorem` | [isLocalization_of_submonoid_le](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/islocalization-of-submonoid-le--24306a7f256972f9090b96d3.md) | 199 | `result-track:24306a7f256972f9090b96d3e3551de5f99521017fca7645efb1eaecc6b4526e` |
| 18 | `theorem` | [isLocalization_of_is_exists_mul_mem](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/islocalization-of-is-exists-mul-mem--7344aa54f900a547d06edefc.md) | 236 | `result-track:7344aa54f900a547d06edefc4d2f3a7f9352dd621a2d1ead9d90886e79cf575d` |
| 19 | `theorem` | [mk'_eq_algebraMap_mk'_of_submonoid_le](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/mk-eq-algebramap-mk-of-submonoid-le--783c2b0ab9b17fd2fca50c86.md) | 250 | `result-track:783c2b0ab9b17fd2fca50c860cf3be94e52a6b33e4b8a00bc9f203b628278bec` |
| 20 | `theorem` | [isFractionRing_of_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/isfractionring-of-islocalization--b62b2cdc7a0a92f1a83b468d.md) | 265 | `result-track:b62b2cdc7a0a92f1a83b468d1b9363c8a12f032d5bc15abd8e3996bbc07bb6a6` |
| 21 | `theorem` | [isFractionRing_of_isDomain_of_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/isfractionring-of-isdomain-of-islocalization--d884374282f9de89367e04e6.md) | 283 | `result-track:d884374282f9de89367e04e6c2a5e9bf7e20aa371568b773d4a04b98400bea4b` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/declarations/instance--4a994ab743b1228cea9aaad3.md) | 296 | `declaration-track:4a994ab743b1228cea9aaad31724a786f93f42598a9c87cd2dd27c76bdccad72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
