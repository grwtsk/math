# Verification target: GRWTSK.Analysis.MeasureTheory.Order.Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddfc7216ec62a1b531d5b38182a423063f2f2ecd",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddfc7216ec62a1b531d5b38182a423063f2f2ecd`.

Source path: `GRWTSK/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean.json)

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
| 1 | `instance` | [instPartialOrder](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/instpartialorder--5fc301fb0321e8e16fd97396.md) | 60 | `declaration-track:5fc301fb0321e8e16fd97396dd80ca562ef67cdb97887668fe2dc89404e1039a` |
| 2 | `theorem` | [le_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/le-iff--ed75973b8e68c897e0c91601.md) | 68 | `result-track:ed75973b8e68c897e0c91601088096678377592ccdfeed94fc347f7f85600ccc` |
| 3 | `theorem` | [le_iff'](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/le-iff--42af5ccc4229fbcffa0ec8cb.md) | 70 | `result-track:42af5ccc4229fbcffa0ec8cb1a419f3edafe2d82425a4b58d0b4686b8a581560` |
| 4 | `theorem` | [restrict_le_restrict_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-restrict-iff--d7622ad386eb809953b6c98f.md) | 88 | `result-track:d7622ad386eb809953b6c98f0559efedf1ed24a3d3e2b30a9963cdbb06ebeca9` |
| 5 | `theorem` | [subset_le_of_restrict_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/subset-le-of-restrict-le-restrict--af5e551cf5b2a96498f95b2c.md) | 95 | `result-track:af5e551cf5b2a96498f95b2ce42f7704e2ac02f257a81f6282ed00709691ba07` |
| 6 | `theorem` | [restrict_le_restrict_of_subset_le](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-restrict-of-subset-le--9da0a257d419180fe660eaac.md) | 101 | `result-track:9da0a257d419180fe660eaac6f656b0b3802391b06a2191d7ad2baca009ed019` |
| 7 | `theorem` | [restrict_le_restrict_subset](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-restrict-subset--c92c931e4ae299f4376f42d4.md) | 107 | `result-track:c92c931e4ae299f4376f42d48bf1a14f26ea9a79475a307e50c84ff9c4f56f00` |
| 8 | `theorem` | [le_restrict_empty](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/le-restrict-empty--2c34de4ff3d99f8ed573d625.md) | 112 | `result-track:2c34de4ff3d99f8ed573d62501df70473dd0520880f47f8090783ad933be211b` |
| 9 | `theorem` | [le_restrict_univ_iff_le](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/le-restrict-univ-iff-le--a90003e8f165553b62281260.md) | 115 | `result-track:a90003e8f165553b6228126077c25e6607ecb6830c9fcaba7001214baa6d1c83` |
| 10 | `theorem` | [neg_le_neg](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/neg-le-neg--e0eff1952f09e42da2beb829.md) | 126 | `result-track:e0eff1952f09e42da2beb829758daf7b4c664081fe07895ec34ddc5b5df8b0b0` |
| 11 | `theorem` | [neg_le_neg_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/neg-le-neg-iff--e094de590618b4d22f81e901.md) | 133 | `result-track:e094de590618b4d22f81e9010119c566dd34962eca0081938894f928d673a897` |
| 12 | `theorem` | [restrict_le_restrict_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-restrict-iunion--e39e082df51443f5def04064.md) | 144 | `result-track:e39e082df51443f5def040649d437f238abe76ed8e152f1c52f642d463482b2e` |
| 13 | `theorem` | [restrict_le_restrict_countable_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-restrict-countable-iunion--aa644d1bfc18ae9c044e2acb.md) | 166 | `result-track:aa644d1bfc18ae9c044e2acb3f982e63741b2e039cd41f7c1c8c08c3ff93510f` |
| 14 | `theorem` | [restrict_le_restrict_union](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-restrict-union--e3b11e708070c625eb4d9df5.md) | 178 | `result-track:e3b11e708070c625eb4d9df5260e8ce9ddc4481bb0fa16a0b523650f051c7af4` |
| 15 | `theorem` | [nonneg_of_zero_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/nonneg-of-zero-le-restrict--44ad610a0262a45a37022fa2.md) | 192 | `result-track:44ad610a0262a45a37022fa20f2194fab5e6cea15a98e6bbf0b5bfe125a82edf` |
| 16 | `theorem` | [nonpos_of_restrict_le_zero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/nonpos-of-restrict-le-zero--abbdb5dc527e6c0e4da62dec.md) | 197 | `result-track:abbdb5dc527e6c0e4da62dec6603be78114d7d9589495f56c8007c2c1c3e5997` |
| 17 | `theorem` | [zero_le_restrict_not_measurable](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/zero-le-restrict-not-measurable--cd3762db48f25e0ef6b452cb.md) | 202 | `result-track:cd3762db48f25e0ef6b452cbabca29e8e1c98733d3ff160a78418c1becfa8a6d` |
| 18 | `theorem` | [restrict_le_zero_of_not_measurable](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-zero-of-not-measurable--2a2045f13ac4e5f6c2dd16e2.md) | 205 | `result-track:2a2045f13ac4e5f6c2dd16e2347eaa3ad742734efedb40f1c4166ce34ce1ef63` |
| 19 | `theorem` | [measurable_of_not_zero_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/measurable-of-not-zero-le-restrict--c162098adb26bea3df110115.md) | 208 | `result-track:c162098adb26bea3df11011581dab2f9398bf2cd70c5324c11ebd5bdb62d603c` |
| 20 | `theorem` | [measurable_of_not_restrict_le_zero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/measurable-of-not-restrict-le-zero--760caafe2dc55ddc71b26d0b.md) | 211 | `result-track:760caafe2dc55ddc71b26d0bd605b90270bdc3feb41df5579de0717dafab059e` |
| 21 | `theorem` | [zero_le_restrict_subset](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/zero-le-restrict-subset--301de9f93f374a8dec918038.md) | 214 | `result-track:301de9f93f374a8dec9180389334ff4c410f0c5958471ee9e95fef515c9c11e3` |
| 22 | `theorem` | [restrict_le_zero_subset](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/restrict-le-zero-subset--0b16b3db8e6950f77117a788.md) | 218 | `result-track:0b16b3db8e6950f77117a788291895771b0c2dff68ad4c573d3763cefbfa81e6` |
| 23 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/exists-pos-measure-of-not-restrict-le-zero--87023c4cb30e0836befe0018.md) | 229 | `result-track:87023c4cb30e0836befe001897d138c15d2f128ef246522d598a00ae183befdc` |
| 24 | `instance` | [instAddLeftMono](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/instaddleftmono--0f827fda3f1d141a6f28a70f.md) | 243 | `declaration-track:0f827fda3f1d141a6f28a70fa8d080f7e11772ed57557f8662a5d15e98a753f3` |
| 25 | `def` | [toMeasureOfZeroLE'](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureofzerole--9569c077727ce93a5a85aab4.md) | 258 | `declaration-track:9569c077727ce93a5a85aab4a1411300012ddb248030f96d90bb8c5afa1747c3` |
| 26 | `def` | [toMeasureOfZeroLE](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureofzerole--8051eb76195fe65fc1c0fbe6.md) | 264 | `declaration-track:8051eb76195fe65fc1c0fbe62e1248d79b68f70d8113017271512854817eef95` |
| 27 | `theorem` | [toMeasureOfZeroLE_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureofzerole-apply--f9a15061ded82ae6346391d3.md) | 286 | `result-track:f9a15061ded82ae6346391d37a1a623a669f05d0765b01d90594754320064a2b` |
| 28 | `theorem` | [toMeasureOfZeroLE_real_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureofzerole-real-apply--0c06f8543cd3417c809b3747.md) | 292 | `result-track:0c06f8543cd3417c809b3747a6ab02b24489526dee33c4fad3844ad104d67df5` |
| 29 | `def` | [toMeasureOfLEZero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureoflezero--da0dfaf0b2d83450218e28d5.md) | 299 | `declaration-track:da0dfaf0b2d83450218e28d530e25952243d3f74b187145a44e5ff2954292820` |
| 30 | `theorem` | [toMeasureOfLEZero_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureoflezero-apply--45e861e5a5297eda31ab057c.md) | 303 | `result-track:45e861e5a5297eda31ab057cf3ebe961dc70f2b113679b2a40ed3e9dd71d1b68` |
| 31 | `theorem` | [toMeasureOfLEZero_real_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureoflezero-real-apply--6e6efe723bbad1e6ffef12f5.md) | 310 | `result-track:6e6efe723bbad1e6ffef12f56ccd57149b449f0462106fa151473080403c5722` |
| 32 | `instance` | [toMeasureOfZeroLE_finite](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureofzerole-finite--21c0a00214caaf2dae07b7a8.md) | 316 | `declaration-track:21c0a00214caaf2dae07b7a8c7639047f0f778b55370f2b250e88313ce059fd6` |
| 33 | `instance` | [toMeasureOfLEZero_finite](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureoflezero-finite--8846502af235fb0df929f16f.md) | 323 | `declaration-track:8846502af235fb0df929f16f385f859673a557118b0810339f210757ac4bc27a` |
| 34 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureofzerole-tosignedmeasure--d86e124f7194e988420405f7.md) | 329 | `result-track:d86e124f7194e988420405f7a76865eb90e784b8d669104497fe57d7e0fd79a9` |
| 35 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tomeasureoflezero-tosignedmeasure--9d17d4dd0e9309a8af722efb.md) | 334 | `result-track:9d17d4dd0e9309a8af722efb6e62fc795c73a51e0f343df0888c9ceedf1048e3` |
| 36 | `theorem` | [zero_le_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/zero-le-tosignedmeasure--0eeaea4b683860704044b072.md) | 347 | `result-track:0eeaea4b683860704044b0724ee847ae93201b48ea8444e1b95e23b9d62ab493` |
| 37 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tosignedmeasure-tomeasureofzerole--81b88543e5082d113a091979.md) | 352 | `result-track:81b88543e5082d113a0919794860c47b1cd957a900483b1540708e9d1b97b10e` |
| 38 | `theorem` | [toSignedMeasure_restrict_eq_restrict_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tosignedmeasure-restrict-eq-restrict-tosignedmeasure--8b5dead8e3f638d6151d1958.md) | 361 | `result-track:8b5dead8e3f638d6151d1958e1f4057a321bf5facb82a33ff49cbb81f79df7d4` |
| 39 | `theorem` | [toSignedMeasure_le_toSignedMeasure_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean/declarations/tosignedmeasure-le-tosignedmeasure-iff--80b6319d7fd660abb6e5d803.md) | 366 | `result-track:80b6319d7fd660abb6e5d803dab46e1c952b0d2a0c999077c1e5da48852d9efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
