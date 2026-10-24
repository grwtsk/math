# Verification target: GRWTSK.Algebra.LinearAlgebra.G2.Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0b7a9360dd5128ec31d17bd3338c2709d10070c",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0b7a9360dd5128ec31d17bd3338c2709d10070c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Finite.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EmbeddedG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/embeddedg2--3a1d2e44f74a242197ecd716.md) | 63 | `declaration-track:3a1d2e44f74a242197ecd71660ce3294b8ce735e970bd07d2124ce00d45d14d9` |
| 2 | `class` | [IsG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/isg2--66d40e5d4eb98c1f2a8b91ca.md) | 71 | `declaration-track:66d40e5d4eb98c1f2a8b91ca8bf21c2147af6ab329cbae2046413491142b6ebc` |
| 3 | `class` | [IsNotG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/isnotg2--31c7261eb7e7df08142a1008.md) | 76 | `declaration-track:31c7261eb7e7df08142a10083f931f8cedadb3c188db9ca9325352d3d294c06d` |
| 4 | `lemma` | [isG2_iff](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/isg2-iff--13ebc22059b9cd4f02cdb1f4.md) | 83 | `result-track:13ebc22059b9cd4f02cdb1f41a5f1d37bd889fcab9920c94040c54b745487c15` |
| 5 | `lemma` | [isNotG2_iff](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/isnotg2-iff--c72033e89fcb4e32bc81d506.md) | 87 | `result-track:c72033e89fcb4e32bc81d506223dd6d35a810a641ce498aeb04250d7a705e10d` |
| 6 | `lemma` | [not_isG2_iff_isNotG2](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/not-isg2-iff-isnotg2--0289c2fec64cf9ba698e15b7.md) | 94 | `result-track:0289c2fec64cf9ba698e15b796f1162bd53c21d30570430c1be1b3390a3a953d` |
| 7 | `lemma` | [IsG2.pairingIn_mem_zero_one_three](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/isg2-pairingin-mem-zero-one-three--cf1bec621901abb819568108.md) | 104 | `result-track:cf1bec621901abb819568108e177574065b5d818e811bdbbbf8485ed5e8edf89` |
| 8 | `def` | [ofPairingInThree](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/ofpairinginthree--b8d7f05405e3db90f8a05566.md) | 128 | `declaration-track:b8d7f05405e3db90f8a05566493d4b09535263fcfac96e8face4da8a3cbde604` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/instance--9b9036a9f018e2876ca3147c.md) | 138 | `declaration-track:9b9036a9f018e2876ca3147c9bcd341e98e36da50debf5cd47d4e23fe964e208` |
| 10 | `lemma` | [pairing_long_short](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairing-long-short--bdff1cf2ed918d0ed5444dd2.md) | 142 | `result-track:bdff1cf2ed918d0ed5444dd25009576837a489ae5c65e0431a40b148729a6c68` |
| 11 | `def` | [shortAddLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/shortaddlong--b216747ca9468c5a228743c1.md) | 147 | `declaration-track:b216747ca9468c5a228743c1db21d75fa48fb282eb6101b646d25bab52aaa8d4` |
| 12 | `def` | [twoShortAddLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/twoshortaddlong--9ce2ff82f116088e1fea0bce.md) | 150 | `declaration-track:9ce2ff82f116088e1fea0bcef3a710a3ca79dd50382c6c82740b5b332796c40a` |
| 13 | `def` | [threeShortAddLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddlong--9110a9f12d0a85eedea5e0f1.md) | 153 | `declaration-track:9110a9f12d0a85eedea5e0f1b016565605803a05ce8ead30289f5f8d85bfd961` |
| 14 | `def` | [threeShortAddTwoLong](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddtwolong--646f2adb0de97c46da16085a.md) | 156 | `declaration-track:646f2adb0de97c46da16085aac83c9d44f92fd77d98e0b891be3cc5ca8ec6666` |
| 15 | `abbrev` | [shortRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/shortroot--3af81c185a13acbd94c356b5.md) | 159 | `declaration-track:3af81c185a13acbd94c356b5b4f9f26b2e5c3f1b22e0af3890bae7c972c77c6b` |
| 16 | `abbrev` | [longRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/longroot--ad9373d945cea43d4dd1eaaa.md) | 162 | `declaration-track:ad9373d945cea43d4dd1eaaabcb3a115ae5199c32262fb55868c575985db930a` |
| 17 | `abbrev` | [shortAddLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/shortaddlongroot--6af7c315c7b5c7dfa8da7ab4.md) | 165 | `declaration-track:6af7c315c7b5c7dfa8da7ab4c7cfc378d3dd99a6f2e537b0659737d4abfa3a10` |
| 18 | `abbrev` | [twoShortAddLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/twoshortaddlongroot--e2ef42ca94d0fa78b432cf17.md) | 168 | `declaration-track:e2ef42ca94d0fa78b432cf17cd4bf15810f297fae452b1b018ae04c89038cd0a` |
| 19 | `abbrev` | [threeShortAddLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddlongroot--8a9db738911833b53f10da38.md) | 171 | `declaration-track:8a9db738911833b53f10da38cca978e1f69c0c9e0be78423da553d70f3b831f0` |
| 20 | `abbrev` | [threeShortAddTwoLongRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddtwolongroot--59a456acb3887488825d3679.md) | 174 | `declaration-track:59a456acb3887488825d367901231d09bb5ec23948d4a6cce6cc4e439ef3c5b3` |
| 21 | `abbrev` | [allRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/allroots--42136ba7576ee5518c8683be.md) | 177 | `declaration-track:42136ba7576ee5518c8683be8481ce3d95a382f9b98fd7da306cfe8c66f5eb66` |
| 22 | `lemma` | [allRoots_subset_range_root](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/allroots-subset-range-root--63645798e9abdd64463453d4.md) | 185 | `result-track:63645798e9abdd64463453d490d69665a46026c9ffee87c15adab8cd7b6a0a19` |
| 23 | `lemma` | [pairingIn_short_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-short-long--09bd45f9f4216f2a29e94e82.md) | 195 | `result-track:09bd45f9f4216f2a29e94e8258d0729ad8c6f4ec83b4a059e697ad283f32b365` |
| 24 | `lemma` | [pairing_short_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairing-short-long--430a01042abb4e3cbcf9bd73.md) | 202 | `result-track:430a01042abb4e3cbcf9bd730a5fce13de04eed396d452687d9ef52d6c881189` |
| 25 | `lemma` | [shortAddLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/shortaddlongroot-eq--1c5019dd828515b3ceadd97d.md) | 207 | `result-track:1c5019dd828515b3ceadd97db6cd9481592b3d4742eb1afe1c50d4028672c42b` |
| 26 | `lemma` | [twoShortAddLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/twoshortaddlongroot-eq--8aa1a9d7656f96c307541aaf.md) | 211 | `result-track:8aa1a9d7656f96c307541aafa35d1002f82604a34e1fb7fd78a7167f2b75e9f9` |
| 27 | `lemma` | [threeShortAddLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddlongroot-eq--833e7717feb588d0a272c1af.md) | 217 | `result-track:833e7717feb588d0a272c1af8ed068917b422dfe403e77a6e33c3e2fc0949365` |
| 28 | `lemma` | [threeShortAddTwoLongRoot_eq](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddtwolongroot-eq--4837e1d27e1e9c51db0182e8.md) | 222 | `result-track:4837e1d27e1e9c51db0182e84498ed64326910ad9b02d1830d8979ce56d06218` |
| 29 | `lemma` | [linearIndependent_short_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/linearindependent-short-long--f3dad9f3137fc8ca41e7010f.md) | 227 | `result-track:f3dad9f3137fc8ca41e7010fe88dcb89d24330169c301efcc46e509d3231317f` |
| 30 | `abbrev` | [allCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/allcoeffs--013c784430f56cb9be136308.md) | 233 | `declaration-track:013c784430f56cb9be136308fb7407123cbef59df6b4c0aa898bde90230852ee` |
| 31 | `lemma` | [allRoots_eq_map_allCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/allroots-eq-map-allcoeffs--d52c77ea0078d5f1b9f1a211.md) | 237 | `result-track:d52c77ea0078d5f1b9f1a211127c6d9c3d253566bb6ebf831855460a59f1ebdd` |
| 32 | `lemma` | [allRoots_nodup](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/allroots-nodup--5a004eae1c8659088c414500.md) | 243 | `result-track:5a004eae1c8659088c414500c45a7736d9d8159a711cc223af6bd4395a2903cd` |
| 33 | `lemma` | [mem_span_of_mem_allRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/mem-span-of-mem-allroots--587ef1992712658e4eed0321.md) | 250 | `result-track:587ef1992712658e4eed0321c54b30cc4c76de50d1aa7b999519196081d8af84` |
| 34 | `lemma` | [long_eq_three_mul_short](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/long-eq-three-mul-short--ad1f96487ffbfc64bf489a6e.md) | 262 | `result-track:ad1f96487ffbfc64bf489a6e7d7bd3d086f0f66d6e91e27bf114dc376d5124ed` |
| 35 | `lemma` | [shortAddLongRoot_shortRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/shortaddlongroot-shortroot--1a4c26293b2b257e6574f798.md) | 269 | `result-track:1a4c26293b2b257e6574f798d3b4b19cbc6e9b6e276927868dae6d71e72259c2` |
| 36 | `lemma` | [twoShortAddLongRoot_shortRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/twoshortaddlongroot-shortroot--5958a7dce7ba90ad08102592.md) | 274 | `result-track:5958a7dce7ba90ad08102592bff6b09de06a74cfb75a7861dd9f6ca96a215063` |
| 37 | `lemma` | [threeShortAddLongRoot_longRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddlongroot-longroot--aeb1baa04b3c96517ccbc0a1.md) | 280 | `result-track:aeb1baa04b3c96517ccbc0a14fe381cfa9899b8a497c91e414bbf3a02e586ba7` |
| 38 | `lemma` | [threeShortAddTwoLongRoot_longRoot](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/threeshortaddtwolongroot-longroot--696f17a44301185ef37e7ea8.md) | 286 | `result-track:696f17a44301185ef37e7ea8afec3e273ed27ed952d6005260c44be72bab4204` |
| 39 | `lemma` | [pairingIn_shortAddLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-shortaddlong-left--5499cca952738fd0c1086fda.md) | 297 | `result-track:5499cca952738fd0c1086fda919a0ea4b2de29f6c83d4f5bd2fe83577993c9ff` |
| 40 | `lemma` | [pairingIn_shortAddLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-shortaddlong-right--799cbdec97a2faef64cf9b64.md) | 307 | `result-track:799cbdec97a2faef64cf9b6484a0c40d3c62514fabd2932df30c913308023b19` |
| 41 | `lemma` | [pairingIn_twoShortAddLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-twoshortaddlong-left--64fc8253083ffbc34c43f5ce.md) | 327 | `result-track:64fc8253083ffbc34c43f5ce58509a547429dea0d0951f4dccfc3a70b4b2e36f` |
| 42 | `lemma` | [pairingIn_twoShortAddLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-twoshortaddlong-right--09766bc5a7713e945300adb6.md) | 339 | `result-track:09766bc5a7713e945300adb6df0f434950dd2202b59f4d14a66ea8791f5023ff` |
| 43 | `lemma` | [pairingIn_threeShortAddLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-threeshortaddlong-left--450e1146507318b8c36669e0.md) | 360 | `result-track:450e1146507318b8c36669e0682d2d77b8c93197c3f3e368927e3ef3c899525b` |
| 44 | `lemma` | [pairingIn_threeShortAddLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-threeshortaddlong-right--2a1e5bfcd0b9e53fe1425316.md) | 373 | `result-track:2a1e5bfcd0b9e53fe1425316a361eb94446c7be557b66d138a728faa7d7ba0d2` |
| 45 | `lemma` | [pairingIn_threeShortAddTwoLong_left](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-threeshortaddtwolong-left--30d3effbd661038f8370d483.md) | 395 | `result-track:30d3effbd661038f8370d483b339f4ebfc7a80bb7842862f7a914cffde4b18f2` |
| 46 | `lemma` | [pairingIn_threeShortAddTwoLong_right](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/pairingin-threeshortaddtwolong-right--777b28bd16d420ad172a3449.md) | 408 | `result-track:777b28bd16d420ad172a3449ddabae875a459988d6a276be7130fc54af3d5b91` |
| 47 | `lemma` | [isOrthogonal_short_and_long_aux](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/isorthogonal-short-and-long-aux--b4c25f29aba7b7ecf34b5c9c.md) | 432 | `result-track:b4c25f29aba7b7ecf34b5c9cd170dc6f3629a983c24e8bf00f2ea92f9d804c17` |
| 48 | `lemma` | [isOrthogonal_short_and_long](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/isorthogonal-short-and-long--135b14321ea56c413a16b981.md) | 453 | `result-track:135b14321ea56c413a16b98188a8d1a9676cdd04064869e302cf6168fd25ce87` |
| 49 | `lemma` | [span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/span-eq-top--b7cc8e7de6ca70d2f33376a1.md) | 472 | `result-track:b7cc8e7de6ca70d2f33376a150f2bac2479399ed57a3cc7167b9d3fbab81640e` |
| 50 | `lemma` | [mem_allRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/mem-allroots--517ea2b11ddfa3b7bfd9f5f8.md) | 482 | `result-track:517ea2b11ddfa3b7bfd9f5f824d8d86d89bb751a30a00f266a11672492d019a0` |
| 51 | `def` | [indexEquivAllRoots](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/indexequivallroots--0d218506ea0bcf3e19a299a6.md) | 503 | `declaration-track:0d218506ea0bcf3e19a299a6b17e20b4f23f3109ead7dccd964d8e13c603cc53` |
| 52 | `lemma` | [card_index_eq_twelve](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/card-index-eq-twelve--070b0126b782ec1d22e146fa.md) | 513 | `result-track:070b0126b782ec1d22e146fab5f5abad1d5bb5e26f4ccb73beb7b903af30ca45` |
| 53 | `lemma` | [setOf_index_eq_univ](../../../../../mathematics/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/declarations/setof-index-eq-univ--362ffc0a184a580df9a6f7f4.md) | 522 | `result-track:362ffc0a184a580df9a6f7f4774738a60019060abdcd229a7b632f5c4bec127d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
