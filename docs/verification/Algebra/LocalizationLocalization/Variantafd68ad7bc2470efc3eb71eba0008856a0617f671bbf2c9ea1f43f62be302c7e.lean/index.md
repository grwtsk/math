# Verification target: GRWTSK.Algebra.LocalizationLocalization.Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa`.

Source path: `GRWTSK/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localizationLocalizationSubmodule](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localizationlocalizationsubmodule--0624f87211b9349a112be80d.md) | 46 | `declaration-track:0624f87211b9349a112be80da5de7503692a494815382b94886937a03cd7eea0` |
| 2 | `theorem` | [mem_localizationLocalizationSubmodule](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/mem-localizationlocalizationsubmodule--cf6e1809f4813ec33c318bc1.md) | 53 | `result-track:cf6e1809f4813ec33c318bc12a3acd60fe4bf4373eb8c19de828b8d802c3a2f6` |
| 3 | `theorem` | [localization_localization_map_units](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localization-localization-map-units--6a59efbd52fb11cef55ff839.md) | 66 | `result-track:6a59efbd52fb11cef55ff839fb742a068db3ca0a9255d098c02c870fd0d665d5` |
| 4 | `theorem` | [localization_localization_surj](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localization-localization-surj--77d9811dac37e0c082308d12.md) | 73 | `result-track:77d9811dac37e0c082308d1200d84a0a87eccdc08ce2475e466f60b837108e08` |
| 5 | `theorem` | [localization_localization_eq_iff_exists](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localization-localization-eq-iff-exists--68d9abcd9e35d8b662372d2f.md) | 92 | `result-track:68d9abcd9e35d8b662372d2f85cd9c4f7efe058bde53476ce9b5d93d1763d31e` |
| 6 | `theorem` | [localization_localization_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localization-localization-islocalization--6e6ddfacb2c12917fd93c4cf.md) | 122 | `result-track:6e6ddfacb2c12917fd93c4cf3f50e6565bfb6e338de72e96b8d7299eb3277bf2` |
| 7 | `theorem` | [localization_localization_isLocalization_of_has_all_units](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localization-localization-islocalization-of-has-all-units--b710a3eed4166cd7399f69ad.md) | 133 | `result-track:b710a3eed4166cd7399f69ad5819ad082d1acd662507235e5e54dc963250b026` |
| 8 | `theorem` | [isLocalization_isLocalization_atPrime_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/islocalization-islocalization-atprime-islocalization--f37fe75c88b80f51660714ac.md) | 148 | `result-track:f37fe75c88b80f51660714ac2553c4b4127a7d5ae5f681ef7bed47558beead4a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/instance--54f82abc292af9b3c2a90aad.md) | 155 | `declaration-track:54f82abc292af9b3c2a90aad40e8d68b028b24faa485cf9b53f3da7e86ba123b` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/instance--dd3cb7f51358f52bd54fe43b.md) | 158 | `declaration-track:dd3cb7f51358f52bd54fe43b796cda993940ba56b94a7f357961f352d7375c44` |
| 11 | `instance` | [localization_localization_atPrime_is_localization](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localization-localization-atprime-is-localization--bc312ca1ae997fd620c42606.md) | 162 | `declaration-track:bc312ca1ae997fd620c4260664e789bf8c0c8a65475ef50cc5b8b71f1dc9b185` |
| 12 | `def` | [localizationLocalizationAtPrimeIsoLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localizationlocalizationatprimeisolocalization--38a0cd40f10d9f79093cffdd.md) | 170 | `declaration-track:38a0cd40f10d9f79093cffdd501f942fd8fe64697532a65643166f0a739b8d5b` |
| 13 | `def` | [localizationAlgebraOfSubmonoidLe](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localizationalgebraofsubmonoidle--929223f63ec7b7c94106b091.md) | 182 | `declaration-track:929223f63ec7b7c94106b091ff71fc956f48e559d02d2c010b0ede4d31261681` |
| 14 | `theorem` | [localization_isScalarTower_of_submonoid_le](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/localization-isscalartower-of-submonoid-le--f03b082be8ed7d0f63cbf5d3.md) | 190 | `result-track:f03b082be8ed7d0f63cbf5d37f7da3fe040eb37427acc085a8882b1b5a015891` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/instance--9820bf16cce715bcc2634975.md) | 197 | `declaration-track:9820bf16cce715bcc2634975f7e33514eb0dfce5e41bd05f1fe4f22e2563db36` |
| 16 | `theorem` | [isLocalization_of_submonoid_le](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/islocalization-of-submonoid-le--48fd514862ba2e0aeff7af6e.md) | 206 | `result-track:48fd514862ba2e0aeff7af6ec66ee12eded6767d87c30d2848a5ba655b78e50f` |
| 17 | `theorem` | [isLocalization_of_is_exists_mul_mem](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/islocalization-of-is-exists-mul-mem--6812c988b36dd6b20f77b38e.md) | 247 | `result-track:6812c988b36dd6b20f77b38ead4a2db80bb5c4a9fae5d6df38e9e7b1d2eb3547` |
| 18 | `theorem` | [isFractionRing_of_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/isfractionring-of-islocalization--1fd1d12e0f32d46b64e4c580.md) | 274 | `result-track:1fd1d12e0f32d46b64e4c58045190ec0f29fe8ccb144e191e80bd46d1802ab6d` |
| 19 | `theorem` | [isFractionRing_of_isDomain_of_isLocalization](../../../../mathematics/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/declarations/isfractionring-of-isdomain-of-islocalization--08be5c85271ed1bf117d988c.md) | 293 | `result-track:08be5c85271ed1bf117d988c594bb17f84aa2a102f6e09a915abbda9c0fa7f52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
