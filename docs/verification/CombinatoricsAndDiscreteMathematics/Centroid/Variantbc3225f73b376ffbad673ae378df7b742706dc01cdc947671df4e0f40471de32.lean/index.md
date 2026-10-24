# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Centroid.Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea3bf8ce929ecd8e51c12e88c581abae1d5d8b7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea3bf8ce929ecd8e51c12e88c581abae1d5d8b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centroidWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroidweights--29ed94faeba07eba2baacdec.md) | 48 | `declaration-track:29ed94faeba07eba2baacdece2d66a64c44bfcbb6e2f3769ab3ab83d650b150c` |
| 2 | `theorem` | [centroidWeights_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroidweights-apply--27fde4a65e43df345d420825.md) | 53 | `result-track:27fde4a65e43df345d420825767f9d9c1f2890f7709cef5bca71d4b1ea212f8e` |
| 3 | `theorem` | [centroidWeights_eq_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroidweights-eq-const--be43a4563fec4397d6949135.md) | 57 | `result-track:be43a4563fec4397d69491351cfc88d9d4acc08c40204c20dc0524c2c3c400aa` |
| 4 | `theorem` | [sum_centroidWeights_eq_one_of_cast_card_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweights-eq-one-of-cast-card-ne-zero--0d0fac8cc79347e162b2a684.md) | 63 | `result-track:0d0fac8cc79347e162b2a6843f7cfcdef6a2e139221af70cf7a031da41f20ff9` |
| 5 | `theorem` | [sum_centroidWeights_eq_one_of_card_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweights-eq-one-of-card-ne-zero--6fba1e7d7cf5269f9254abf6.md) | 68 | `result-track:6fba1e7d7cf5269f9254abf6b4fefc580e2adc2a50dc03e39fd657888dc1cc46` |
| 6 | `theorem` | [sum_centroidWeights_eq_one_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweights-eq-one-of-nonempty--89a974ed8f4a2013b0473234.md) | 74 | `result-track:89a974ed8f4a2013b0473234060a12eea020ad4ff7e8847ecb8d775150ed5ab6` |
| 7 | `theorem` | [sum_centroidWeights_eq_one_of_card_eq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweights-eq-one-of-card-eq-add-one--2729e786cf186c670490575d.md) | 80 | `result-track:2729e786cf186c670490575d6edcf333bb443bc418b29d83a969109d857a32dc` |
| 8 | `def` | [centroid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid--b422ecbfaa381ced6efe3ef2.md) | 87 | `declaration-track:b422ecbfaa381ced6efe3ef2ac21a891d26d588a3957b9c181e5bdc4a72603f4` |
| 9 | `theorem` | [centroid_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-def--c866c180b9b0d98e6eb83e06.md) | 91 | `result-track:c866c180b9b0d98e6eb83e06fb37c11cdc457c55409ce9fbee4e5ce8f9ba07a7` |
| 10 | `theorem` | [centroid_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-univ--657477d9d1a0a684f27cbc39.md) | 94 | `result-track:657477d9d1a0a684f27cbc392539850d708e3dab4cf936f30f71eb6769a024ab` |
| 11 | `theorem` | [centroid_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-singleton--8fe8317d6b2765aba1ae336f.md) | 102 | `result-track:8fe8317d6b2765aba1ae336f761ef23282c1bd1167f2e19685d028e2b35e3019` |
| 12 | `theorem` | [centroid_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-pair--a2fb0ecb1a157a7680af1e63.md) | 107 | `result-track:a2fb0ecb1a157a7680af1e63e232b9b0e39b37a51cb11118e0e80314b4ba3862` |
| 13 | `theorem` | [centroid_pair_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-pair-fin--84642b48b3adeaed300e7ecb.md) | 121 | `result-track:84642b48b3adeaed300e7ecb6ad4352333af38dd88ca7593b5ad39cb5f1a1cd6` |
| 14 | `theorem` | [centroid_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-map--6cba4b77a1ff922ee2166394.md) | 128 | `result-track:6cba4b77a1ff922ee21663947230a2f7db7a04df18007cfdaf8dc0ef0124ffde` |
| 15 | `def` | [centroidWeightsIndicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroidweightsindicator--7d6f4a6d64dd7611965904de.md) | 138 | `declaration-track:7d6f4a6d64dd7611965904de49fab7e1008cb2cad05588e44a3cc8ffe64de089` |
| 16 | `theorem` | [centroidWeightsIndicator_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroidweightsindicator-def--0a3f05bd62284205b1b1cc2d.md) | 142 | `result-track:0a3f05bd62284205b1b1cc2da0000638fea54d81e019561649bb6f95951c97aa` |
| 17 | `theorem` | [sum_centroidWeightsIndicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweightsindicator--450445dab53544faddc9cd94.md) | 147 | `result-track:450445dab53544faddc9cd946dd33c730fd07570068c7de1c61f7b089fc525f3` |
| 18 | `theorem` | [sum_centroidWeightsIndicator_eq_one_of_card_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweightsindicator-eq-one-of-card-ne-zero--9dcb35b25019d62c05dddd20.md) | 154 | `result-track:9dcb35b25019d62c05dddd20d100ebc8535c5efb8223ee972518bf28a02d5b63` |
| 19 | `theorem` | [sum_centroidWeightsIndicator_eq_one_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweightsindicator-eq-one-of-nonempty--e9da85c430799008ae2700ab.md) | 161 | `result-track:e9da85c430799008ae2700abfe9b5a76faa441b9e1b972dc2c3783bad0066690` |
| 20 | `theorem` | [sum_centroidWeightsIndicator_eq_one_of_card_eq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/sum-centroidweightsindicator-eq-one-of-card-eq-add-one--1eb823eb681faa8db07b2c59.md) | 168 | `result-track:1eb823eb681faa8db07b2c59036cf26ada0fcba7925d0d194a3dc3bcf4a7fbc8` |
| 21 | `theorem` | [centroid_eq_affineCombination_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-eq-affinecombination-fintype--29af91aed0d17302bbef5394.md) | 174 | `result-track:29af91aed0d17302bbef5394586288914eb0e78ee2d56c73e5b47a0d39a92fa6` |
| 22 | `theorem` | [centroid_eq_centroid_image_of_inj_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-eq-centroid-image-of-inj-on--caf11b829a05d06e783e88be.md) | 183 | `result-track:caf11b829a05d06e783e88bee04f5b8af8ad978aae21b69d8b42f031938c9a84` |
| 23 | `theorem` | [centroid_eq_of_inj_on_of_image_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-eq-of-inj-on-of-image-eq--dcba4e9b307630298dc09f0b.md) | 212 | `result-track:dcba4e9b307630298dc09f0bd799eb926b99e702ba99a91a6207988e2d36cc26` |
| 24 | `theorem` | [centroid_vsub_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-vsub-const--feea455dce93f431587522ff.md) | 222 | `result-track:feea455dce93f431587522ffb7810acafac33c9b0fc76723a56e7062f73de32a` |
| 25 | `theorem` | [centroid_mem_affineSpan_of_cast_card_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-mem-affinespan-of-cast-card-ne-zero--fcd08762f7d384f0ae9fdf54.md) | 239 | `result-track:fcd08762f7d384f0ae9fdf54229fb60bba74cd87d57b2b6213c35ce02571c458` |
| 26 | `theorem` | [centroid_mem_affineSpan_of_card_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-mem-affinespan-of-card-ne-zero--67f64c8622000f70af397b5b.md) | 247 | `result-track:67f64c8622000f70af397b5b2f35f22249630dcfe3793d4e2a414b66c847ac72` |
| 27 | `theorem` | [centroid_mem_affineSpan_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-mem-affinespan-of-nonempty--6be5287d8f1c046fa068015f.md) | 253 | `result-track:6be5287d8f1c046fa068015f34aaea3c5cd057af69644d3c035986a553f0bce3` |
| 28 | `theorem` | [centroid_mem_affineSpan_of_card_eq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/declarations/centroid-mem-affinespan-of-card-eq-add-one--d061057064f60ea1ca1bf471.md) | 259 | `result-track:d061057064f60ea1ca1bf4716bdaf5d27a6a7f8e5eda6d58cadd631bcd1ed491` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
