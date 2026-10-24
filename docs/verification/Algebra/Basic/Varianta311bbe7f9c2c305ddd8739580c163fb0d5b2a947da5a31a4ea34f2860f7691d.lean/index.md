# Verification target: GRWTSK.Algebra.Basic.Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8fa47b8c0a371b21e609fe6b2d83e13c4787f0c`.

Source path: `GRWTSK/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Submodule` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHomProperties` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalizationPreserves](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/localizationpreserves--31473a39102f7d4b65f6b735.md) | 60 | `declaration-track:31473a39102f7d4b65f6b735195d38ab0914ac525d8693773cc23c9c86a11fb8` |
| 2 | `def` | [OfLocalizationMaximal](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/oflocalizationmaximal--8a97eceefb0c18f1df9f5122.md) | 66 | `declaration-track:8a97eceefb0c18f1df9f51228454b0ceccdd98177e953643f2d56d9c35f7f653` |
| 3 | `def` | [RingHom.ContainsIdentities](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-containsidentities--b75c1f31876b8ab16339146d.md) | 78 | `declaration-track:b75c1f31876b8ab16339146d69cf765d9067e5329b8d49ff8ae7383138f86bfa` |
| 4 | `def` | [RingHom.LocalizationPreserves](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-localizationpreserves--9708433592dc81f781590462.md) | 82 | `declaration-track:9708433592dc81f78159046242935492dc73e001a22b7320fba5819e23e4b025` |
| 5 | `def` | [RingHom.LocalizationAwayPreserves](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-localizationawaypreserves--8227b7b6f4e1833cf631d871.md) | 90 | `declaration-track:8227b7b6f4e1833cf631d8716bef9638235662943bf15f9753717ce826e8eb65` |
| 6 | `def` | [RingHom.OfLocalizationFiniteSpan](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationfinitespan--976a424f1b8f3fba81be4753.md) | 102 | `declaration-track:976a424f1b8f3fba81be475342bc8b69c1d82888e2e03589984560591f561e1b` |
| 7 | `def` | [RingHom.OfLocalizationSpan](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspan--74718d6051a08cca66fc01a5.md) | 112 | `declaration-track:74718d6051a08cca66fc01a5e6d4b86242d0de7e16ef9969ff6acc0e4f7d414a` |
| 8 | `def` | [RingHom.HoldsForLocalizationAway](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-holdsforlocalizationaway--17a296b0333fd0a9399217f6.md) | 118 | `declaration-track:17a296b0333fd0a9399217f624beaef0d566b42e03f15035aee18fc1ac81c073` |
| 9 | `def` | [RingHom.StableUnderCompositionWithLocalizationAwaySource](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-stableundercompositionwithlocalizationawaysource--83139600ae3431a443a7111e.md) | 125 | `declaration-track:83139600ae3431a443a7111e73d2e447f215491b846f6cc30a2c702a415d4427` |
| 10 | `def` | [RingHom.StableUnderCompositionWithLocalizationAwayTarget](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-stableundercompositionwithlocalizationawaytarget--f5a0207db4497f81be899004.md) | 132 | `declaration-track:f5a0207db4497f81be8990040eee45794d218f36652b3ccfe4401b1f43f306b1` |
| 11 | `def` | [RingHom.StableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-stableundercompositionwithlocalizationaway--5d3aa657b388bc50b9b709d8.md) | 139 | `declaration-track:5d3aa657b388bc50b9b709d8b553cca99b6ada96a02e0569f14b231948dce0f7` |
| 12 | `def` | [RingHom.OfLocalizationFiniteSpanTarget](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationfinitespantarget--652f7f38f41ee99c67f93fbf.md) | 149 | `declaration-track:652f7f38f41ee99c67f93fbf0066219d3ce6a2ba83936e85d197e19b40cd51ee` |
| 13 | `def` | [RingHom.OfLocalizationSpanTarget](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspantarget--16c15e77441a80c5df918d03.md) | 160 | `declaration-track:16c15e77441a80c5df918d03b381d28f1fd72ee61d913d381525533781afc5c2` |
| 14 | `def` | [RingHom.OfLocalizationPrime](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationprime--eef54c537636a64d2b5b6aed.md) | 166 | `declaration-track:eef54c537636a64d2b5b6aed7ee86c33dee075e8f33543d5c1bba5ce1af28923` |
| 15 | `structure` | [RingHom.PropertyIsLocal](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-propertyislocal--47ecf49eb3a367524acaf5e5.md) | 172 | `declaration-track:47ecf49eb3a367524acaf5e5005c54b9c3adc2ad4fb7b36da188db5324cfc88a` |
| 16 | `theorem` | [RingHom.ofLocalizationSpan_iff_finite](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspan-iff-finite--365923d93edbd97f540238b7.md) | 179 | `result-track:365923d93edbd97f540238b7b906e0ccd46d2bab6b5e9c5a9c986603b5431dc1` |
| 17 | `theorem` | [RingHom.ofLocalizationSpanTarget_iff_finite](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspantarget-iff-finite--8aceccc76ec4dc1773b297e6.md) | 191 | `result-track:8aceccc76ec4dc1773b297e66e8359faa8104f71dc65f757f33296f56778ccf2` |
| 18 | `lemma` | [RingHom.OfLocalizationSpan.mk](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspan-mk--02a90026d6c74b003ccae8b7.md) | 206 | `result-track:02a90026d6c74b003ccae8b7af26652fec9a10d21c345be29863d502942c9400` |
| 19 | `theorem` | [RingHom.HoldsForLocalizationAway.of_bijective](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-holdsforlocalizationaway-of-bijective--fc18f16ea7ee389368e71d40.md) | 226 | `result-track:fc18f16ea7ee389368e71d40d506b6b0dee7448bbd94eae60bc396a68619f8ed` |
| 20 | `lemma` | [RingHom.StableUnderComposition.stableUnderCompositionWithLocalizationAway](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-stableundercomposition-stableundercompositionwithlocalizationawa--ff291a4ad01cdf25eaa567d9.md) | 237 | `result-track:ff291a4ad01cdf25eaa567d9c5107ae19b52bd6cdf6e36014e0d41d2abb779c3` |
| 21 | `lemma` | [RingHom.HoldsForLocalizationAway.containsIdentities](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-holdsforlocalizationaway-containsidentities--a9b407a6e459c41b489cf5a0.md) | 246 | `result-track:a9b407a6e459c41b489cf5a0d546e82b21a627d222d51fb4f9f9b995cdf3cb27` |
| 22 | `lemma` | [RingHom.LocalizationAwayPreserves.respectsIso](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-localizationawaypreserves-respectsiso--a92e0db13b17ec4bacc9ee0a.md) | 251 | `result-track:a92e0db13b17ec4bacc9ee0a11bbde1f68b514b68c729aec3c35ce89a948b4d6` |
| 23 | `lemma` | [RingHom.StableUnderCompositionWithLocalizationAway.respectsIso](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-stableundercompositionwithlocalizationaway-respectsiso--1061503d023d7cd8155e1166.md) | 276 | `result-track:1061503d023d7cd8155e11663ba319d7a17dd52f7406619ed99e1235b0716f75` |
| 24 | `theorem` | [RingHom.PropertyIsLocal.respectsIso](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-propertyislocal-respectsiso--9da76cf1f5d8e0a0fe8fda2f.md) | 290 | `result-track:9da76cf1f5d8e0a0fe8fda2f8a16c1ae3f1701918900cd9f2fe0607207518e2f` |
| 25 | `theorem` | [RingHom.LocalizationPreserves.away](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-localizationpreserves-away--3a9a5f4bf7c00493df474e53.md) | 295 | `result-track:3a9a5f4bf7c00493df474e5361a67dbee8eb9d167eda423173e770557b895912` |
| 26 | `lemma` | [RingHom.PropertyIsLocal.HoldsForLocalizationAway](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-propertyislocal-holdsforlocalizationaway--78adbc991fe9090f30a18ba6.md) | 301 | `result-track:78adbc991fe9090f30a18ba6ae3e129cc8cc8ab0b512bdda656f6b9ca84b1d20` |
| 27 | `theorem` | [RingHom.OfLocalizationSpanTarget.ofLocalizationSpan](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspantarget-oflocalizationspan--c4f975b357b943e9808841dd.md) | 310 | `result-track:c4f975b357b943e9808841dd7811147f7f696d9e7f795cbf42c82ced2501276f` |
| 28 | `lemma` | [RingHom.OfLocalizationSpan.ofIsLocalization](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspan-ofislocalization--4e16b65547c62b7cead43935.md) | 324 | `result-track:4e16b65547c62b7cead4393585d1c8611d8b10774d3ad1548d55ec79e4c90853` |
| 29 | `lemma` | [RingHom.OfLocalizationSpan.ofIsLocalization'](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspan-ofislocalization--bc59284af4d241d738e0c5f5.md) | 352 | `result-track:bc59284af4d241d738e0c5f58c29cb7920884654dff388c7ec29ed1301faff9e` |
| 30 | `lemma` | [RingHom.OfLocalizationSpanTarget.ofIsLocalization](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspantarget-ofislocalization--b9612ff8243abd7af221024c.md) | 365 | `result-track:b9612ff8243abd7af221024cf397508e789b82db4af2ef11bc813d72bef68664` |
| 31 | `lemma` | [RingHom.OfLocalizationSpanTarget.and](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspantarget-and--127d7921cc24359e2936a714.md) | 383 | `result-track:127d7921cc24359e2936a714110228c3648f57c337a804e36bbd0ae480edcc88` |
| 32 | `lemma` | [RingHom.OfLocalizationSpan.and](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-oflocalizationspan-and--54cc21d093b97b38826621e1.md) | 389 | `result-track:54cc21d093b97b38826621e1bc0f94ba367eac1520f693744c462989837bbd78` |
| 33 | `lemma` | [RingHom.LocalizationAwayPreserves.and](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-localizationawaypreserves-and--264bf90ba4a01ee84a7f9f27.md) | 394 | `result-track:264bf90ba4a01ee84a7f9f27acf639b0bb9a158ce1b38b277ef6cfca10c7d4b8` |
| 34 | `lemma` | [RingHom.StableUnderCompositionWithLocalizationAwayTarget.and](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-stableundercompositionwithlocalizationawaytarget-and--d66ab96ff6fff8d6e69c9269.md) | 400 | `result-track:d66ab96ff6fff8d6e69c926965823969d4d7bbfb47a4fd43df2971d138a81d94` |
| 35 | `lemma` | [RingHom.PropertyIsLocal.and](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-propertyislocal-and--17e280fa17d234f47d21647b.md) | 407 | `result-track:17e280fa17d234f47d21647bc9a7793877d61e5a4a9cdac8e37e7321d6a248b8` |
| 36 | `lemma` | [RingHom.IsStableUnderBaseChange.of_isLocalization](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-isstableunderbasechange-of-islocalization--57e133ada6d0b9f8e6da5011.md) | 429 | `result-track:57e133ada6d0b9f8e6da50111ac5a4962e17d93a56f71fb2e18c7603b7ec7e4b` |
| 37 | `lemma` | [RingHom.IsStableUnderBaseChange.isLocalization_map](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-isstableunderbasechange-islocalization-map--1b51c9869080aeec7b3efb86.md) | 438 | `result-track:1b51c9869080aeec7b3efb86ebb18c9a42f288c6744fcdee0f4f0d6b9cfef77d` |
| 38 | `lemma` | [RingHom.IsStableUnderBaseChange.localizationPreserves](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ringhom-isstableunderbasechange-localizationpreserves--8bd4ca068088878bb1eb4ee1.md) | 449 | `result-track:8bd4ca068088878bb1eb4ee1975735d65e7457d5d065fb837b00fa4918f12e31` |
| 39 | `theorem` | [Ideal.localized'_eq_map](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ideal-localized-eq-map--9024b4121fa6741eae1a3148.md) | 464 | `result-track:9024b4121fa6741eae1a314882a8035433630698e19018b7c8fd3eb803747fbe` |
| 40 | `theorem` | [Ideal.localized₀_eq_restrictScalars_map](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ideal-localized-eq-restrictscalars-map--2937ab4ec5f28c4c5277f819.md) | 468 | `result-track:2937ab4ec5f28c4c5277f819e2ffc5bd0107fe173d4bd8c529b604d5e5255a69` |
| 41 | `theorem` | [Algebra.idealMap_eq_ofEq_comp_toLocalized₀](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/algebra-idealmap-eq-ofeq-comp-tolocalized--0b9e6583b98f76de51e3b2df.md) | 472 | `result-track:0b9e6583b98f76de51e3b2dfc3152cebc952c248b75ce72c710736a561c59d0f` |
| 42 | `theorem` | [Ideal.mem_of_localization_maximal](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ideal-mem-of-localization-maximal--7330f415d81d23d2c2a8cc35.md) | 478 | `result-track:7330f415d81d23d2c2a8cc358cfc2068d3e3da1d41b3408d6c1a7c586ac33995` |
| 43 | `theorem` | [Ideal.le_of_localization_maximal](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ideal-le-of-localization-maximal--98d22ed6d01b1fe6406fb966.md) | 487 | `result-track:98d22ed6d01b1fe6406fb96698e0fe66f2dd9ee37f47229b0359eb9259183013` |
| 44 | `theorem` | [Ideal.eq_of_localization_maximal](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ideal-eq-of-localization-maximal--ee29d51804354ac3a7f293ba.md) | 496 | `result-track:ee29d51804354ac3a7f293ba1125c2cd9a86b0dda2cd9c1b7d845a7d7a82ec3b` |
| 45 | `theorem` | [ideal_eq_bot_of_localization'](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ideal-eq-bot-of-localization--98907944b983bf8564048c3e.md) | 505 | `result-track:98907944b983bf8564048c3ec64dbfda4a2139f4624fd6aefcbabe603eeea189` |
| 46 | `theorem` | [eq_zero_of_localization](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/eq-zero-of-localization--d1234aaa01d820d36f2b71f5.md) | 511 | `result-track:d1234aaa01d820d36f2b71f526b37e18323285d5f688de1dd3684d06499e370f` |
| 47 | `theorem` | [ideal_eq_bot_of_localization](../../../../mathematics/Algebra/Basic/Varianta311bbe7f9c2c305ddd8739580c163fb0d5b2a947da5a31a4ea34f2860f7691d.lean/declarations/ideal-eq-bot-of-localization--4346fe8cbdf4bf232d0bd4c3.md) | 517 | `result-track:4346fe8cbdf4bf232d0bd4c386c8bc2896fec2428ae5cdd9767f122b8f579501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
