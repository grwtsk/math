# Verification target: GRWTSK.Algebra.LocalizationLocalization.Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9273b387704f3c74498686d78c13ece4446a271e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9273b387704f3c74498686d78c13ece4446a271e`.

Source path: `GRWTSK/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean.json)

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
| 1 | `def` | [localizationLocalizationSubmodule](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localizationlocalizationsubmodule--e3d97eceb20c3e0f65a2729f.md) | 54 | `declaration-track:e3d97eceb20c3e0f65a2729ff11821eecccd1354e03bc29204f9a2a42c41392e` |
| 2 | `theorem` | [mem_localizationLocalizationSubmodule](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/mem-localizationlocalizationsubmodule--f15c4edbd36685b5e0cfed43.md) | 61 | `result-track:f15c4edbd36685b5e0cfed43eb9f9a4ce8d51a645d6970bd3e0fbfbf2f806cbb` |
| 3 | `theorem` | [localization_localization_map_units](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localization-localization-map-units--90f8bbec8e3dd4f7edad164a.md) | 74 | `result-track:90f8bbec8e3dd4f7edad164ada5a7dc1b021663da7805ca9f9f6cf4cec80bec7` |
| 4 | `theorem` | [localization_localization_surj](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localization-localization-surj--5f6ad068e2459b7540d86439.md) | 81 | `result-track:5f6ad068e2459b7540d8643910981ef84e0df62bced7cf6942b0b713074ba2fc` |
| 5 | `theorem` | [localization_localization_eq_iff_exists](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localization-localization-eq-iff-exists--e4f69132fc4e8a6e29bebe0f.md) | 100 | `result-track:e4f69132fc4e8a6e29bebe0fc8d83088a569121510258b490808a21b7b04aa95` |
| 6 | `theorem` | [localization_localization_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localization-localization-islocalization--6865e1c60e427b8bcb84ab4d.md) | 130 | `result-track:6865e1c60e427b8bcb84ab4dfc446cd4355d170b40b7454f531e6e41233b62e9` |
| 7 | `theorem` | [localization_localization_isLocalization_of_has_all_units](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localization-localization-islocalization-of-has-all-units--3c4fe1e03b6b3ae68751241e.md) | 141 | `result-track:3c4fe1e03b6b3ae68751241e5d913d36e5980edf036d3d540f61b5ab4cba5438` |
| 8 | `theorem` | [isLocalization_isLocalization_atPrime_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/islocalization-islocalization-atprime-islocalization--9cfffe6cd91be1e20473958d.md) | 156 | `result-track:9cfffe6cd91be1e20473958d78c453e8922df6468e97f84df72e5233bdb040c4` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/instance--bf49a81c8570be2d24725ab6.md) | 163 | `declaration-track:bf49a81c8570be2d24725ab6902c605a494c2d2f4fda000eecc6de732c2bfcce` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/instance--9726c2925042173b4e457e52.md) | 166 | `declaration-track:9726c2925042173b4e457e52061e6eed31ce40797405548b72ee42ffd5ca154f` |
| 11 | `instance` | [localization_localization_atPrime_is_localization](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localization-localization-atprime-is-localization--a7723da6c83777981435bc92.md) | 170 | `declaration-track:a7723da6c83777981435bc920af7ad8e81a2639f9c520471975ca90f40014742` |
| 12 | `def` | [localizationLocalizationAtPrimeIsoLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localizationlocalizationatprimeisolocalization--4a580a975b8aaac53a316ec9.md) | 178 | `declaration-track:4a580a975b8aaac53a316ec9dda63b30b560b1c4d43cc88297f531c016098c08` |
| 13 | `def` | [localizationAlgebraOfSubmonoidLe](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localizationalgebraofsubmonoidle--61cd29d57c3dc9bd07820dd1.md) | 190 | `declaration-track:61cd29d57c3dc9bd07820dd19f472b4539f6d827b44b813ed8886697180c9b5e` |
| 14 | `theorem` | [localization_isScalarTower_of_submonoid_le](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/localization-isscalartower-of-submonoid-le--67e3f90629370ee580c666b5.md) | 198 | `result-track:67e3f90629370ee580c666b52f66fa38a981a6d526ca905efdf1c2b00b166e16` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/instance--fd70a708c537dbf35d0b64b1.md) | 205 | `declaration-track:fd70a708c537dbf35d0b64b1608b7ceb115f152efd12bbdbe535bb84b579c3fe` |
| 16 | `theorem` | [isLocalization_of_submonoid_le](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/islocalization-of-submonoid-le--97e6b1f413cc374981bfcd4a.md) | 214 | `result-track:97e6b1f413cc374981bfcd4ad2ea2da63266f3348537bd831e7fd0c72146f970` |
| 17 | `theorem` | [isLocalization_of_is_exists_mul_mem](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/islocalization-of-is-exists-mul-mem--fb0d08c8c6bcb186898a6333.md) | 255 | `result-track:fb0d08c8c6bcb186898a6333dab1b49fcba20cbc1efc5b8db4af189361a7d538` |
| 18 | `theorem` | [isFractionRing_of_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/isfractionring-of-islocalization--573d3a004f41284d63818254.md) | 282 | `result-track:573d3a004f41284d63818254c44320996a80d88f6e7967f2e16ada4d8f302804` |
| 19 | `theorem` | [isFractionRing_of_isDomain_of_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/declarations/isfractionring-of-isdomain-of-islocalization--b9f12471c7cb809dadf2305b.md) | 301 | `result-track:b9f12471c7cb809dadf2305be58b52e6ea2387284c9d75d25f534e5ac218cc4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
