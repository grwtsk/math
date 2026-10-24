# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nodup.Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d61aec20eb27ed475bf58c8906b1e3410a815f3",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d61aec20eb27ed475bf58c8906b1e3410a815f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Bind` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup--fe72ac1b6aeb63952a94c8ae.md) | 26 | `declaration-track:fe72ac1b6aeb63952a94c8ae736da5429892d65130605951445007b52c06de3b` |
| 2 | `theorem` | [coe_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/coe-nodup--09fbe17bc2f09c5dbfdfdae5.md) | 31 | `result-track:09fbe17bc2f09c5dbfdfdae53edfa42049d978aef8a1c236c2103e36bf503dbf` |
| 3 | `theorem` | [nodup_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-zero--7435a2b1dcbf96c4a86f2cbb.md) | 36 | `result-track:7435a2b1dcbf96c4a86f2cbb77d1c83e293f790375b7a7d1cca2c7483dba9634` |
| 4 | `theorem` | [nodup_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-cons--58f4694dc9962dd9bf8e0a56.md) | 41 | `result-track:58f4694dc9962dd9bf8e0a56b2e337aa2acd2e5579aa32665aa70600ec4aab2a` |
| 5 | `theorem` | [Nodup.cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-cons--c955d66c32d5fc32b93ef95b.md) | 45 | `result-track:c955d66c32d5fc32b93ef95b7033a2c5ba38db2c62bed94193de26c564595ebb` |
| 6 | `theorem` | [nodup_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-singleton--c993ca817d4bfcbbe84c37fe.md) | 50 | `result-track:c993ca817d4bfcbbe84c37fe0d57690397988fc957c5d3dc56248d451e928ab7` |
| 7 | `theorem` | [Nodup.of_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-of-cons--137c289f3c0df88b058af238.md) | 54 | `result-track:137c289f3c0df88b058af238f770aeb66167f84f4d08167bc4e4b1af200437ee` |
| 8 | `theorem` | [Nodup.not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-not-mem--d741c9d3bcb376e5a47588c6.md) | 58 | `result-track:d741c9d3bcb376e5a47588c6a76e15af4f65bdcddd09ae8d8c2870b6ed0dcec5` |
| 9 | `theorem` | [nodup_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-of-le--f06a6ae9c6149dc73630bdaf.md) | 62 | `result-track:f06a6ae9c6149dc73630bdaf70d466a7aba609d5c56be865e29caa4a6bbd4c57` |
| 10 | `theorem` | [not_nodup_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/not-nodup-pair--4f1212a1b53de72c08719a37.md) | 66 | `result-track:4f1212a1b53de72c08719a37049689e963c6758434afe5bc1f6bf2a8db413985` |
| 11 | `theorem` | [nodup_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-iff-le--86f30e5e7f72673220715efd.md) | 70 | `result-track:86f30e5e7f72673220715efd3626e21c3f7472f04055a5423acbe2dd64145066` |
| 12 | `theorem` | [nodup_iff_ne_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-iff-ne-cons-cons--6900dcb6e91e0c4a4f8942c3.md) | 75 | `result-track:6900dcb6e91e0c4a4f8942c3f278c01e10f70cb6cbcb414a51f59044e4a19dea` |
| 13 | `theorem` | [nodup_iff_count_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-iff-count-le-one--bfbe89c703276d892c68e797.md) | 82 | `result-track:bfbe89c703276d892c68e797a6346efc2cd8f6a81187ec20fe30485e995b2ec6` |
| 14 | `theorem` | [count_eq_one_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/count-eq-one-of-mem--500fe75370f3db287d3cbd16.md) | 89 | `result-track:500fe75370f3db287d3cbd16444b05eb6e384a497fd257c41f2c1734f37c96e9` |
| 15 | `theorem` | [count_eq_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/count-eq-of-nodup--ec98c49fbfcd52fcec9ddf18.md) | 94 | `result-track:ec98c49fbfcd52fcec9ddf184b9bf342127258c52e339d259bcf2b8f7e7e256c` |
| 16 | `theorem` | [nodup_iff_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-iff-pairwise--4eb260312755092d5a57c649.md) | 101 | `result-track:4eb260312755092d5a57c6499d45780054d26d189d840577816a87bd38053f07` |
| 17 | `theorem` | [Nodup.pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-pairwise--63ad49422195e85aac86e8e5.md) | 105 | `result-track:63ad49422195e85aac86e8e5b7d490862128e21601e0bb48381f6b06b3daeeaf` |
| 18 | `theorem` | [Pairwise.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/pairwise-forall--ff68645867375344d16d6fb9.md) | 109 | `result-track:ff68645867375344d16d6fb991e1d2639f6f8a23e6d49b6a30626256f09b522c` |
| 19 | `theorem` | [nodup_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-add--1920d6123f9f9a3f0dd339ba.md) | 115 | `result-track:1920d6123f9f9a3f0dd339bace48a52a31b81e11abff225221782c6bc778c50b` |
| 20 | `theorem` | [disjoint_of_nodup_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/disjoint-of-nodup-add--2d995343590640392111f9dc.md) | 119 | `result-track:2d995343590640392111f9dcf8a31b6a19eaa2bf363d50d0c048a2db8d14b089` |
| 21 | `theorem` | [Nodup.add_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-add-iff--2911e4551493093a97d391e8.md) | 123 | `result-track:2911e4551493093a97d391e885e7134cee18d4b3a07723e71cae8bfd77124c42` |
| 22 | `theorem` | [Nodup.of_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-of-map--46d8eacfb3c1959d8105dee5.md) | 127 | `result-track:46d8eacfb3c1959d8105dee5194637badee752a01d0c135448a095e69747b36c` |
| 23 | `theorem` | [Nodup.map_on](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-map-on--e933235f85cce6a4d5ca9b5e.md) | 131 | `result-track:e933235f85cce6a4d5ca9b5efae4dc78fa9074a0f5af444878dfdba87f07a793` |
| 24 | `theorem` | [Nodup.map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-map--cd708c0d7d8eb0e6a2e0e0be.md) | 136 | `result-track:cd708c0d7d8eb0e6a2e0e0be45915c27bd2d0730fe645a1ce218a6175352415d` |
| 25 | `theorem` | [inj_on_of_nodup_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/inj-on-of-nodup-map--ed35e6ba61eefe7595787ccc.md) | 140 | `result-track:ed35e6ba61eefe7595787cccf5b1e0de3f0419bb8dd88369314334598632f929` |
| 26 | `theorem` | [nodup_map_iff_inj_on](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-map-iff-inj-on--c56f467c379181339ac68633.md) | 145 | `result-track:c56f467c379181339ac68633b8c942059c0083667254cdb828e925e8ceede3ec` |
| 27 | `theorem` | [Nodup.filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-filter--137ac0f2d3ea7a587f122cb4.md) | 150 | `result-track:137ac0f2d3ea7a587f122cb4504de35cbf93bd8b4fe253d1c6786694b16a0a78` |
| 28 | `theorem` | [nodup_attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-attach--fbc5dad6cd6dd4bab631ecb4.md) | 155 | `result-track:fbc5dad6cd6dd4bab631ecb4f11b2a965733bd0d0a2cf1d0722e9ce15fa69dd7` |
| 29 | `theorem` | [Nodup.pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-pmap--c56c3b7af0cca69b8f2fdcb5.md) | 159 | `result-track:c56c3b7af0cca69b8f2fdcb56f3c40c5f9c95de964940297abaec52a2b935ddd` |
| 30 | `instance` | [nodupDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodupdecidable--99d8be0906e947a61b15f6b6.md) | 164 | `declaration-track:99d8be0906e947a61b15f6b62a208c8d58ace7c5c9f09882e9fad1997e661ea0` |
| 31 | `theorem` | [Nodup.erase_eq_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-erase-eq-filter--3892fe128f09f1fdb1c181a5.md) | 168 | `result-track:3892fe128f09f1fdb1c181a5a077c030e9d29864eb61618aea5efefa3a94c541` |
| 32 | `theorem` | [Nodup.erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-erase--f0d078b7603c9f2a97d2c146.md) | 174 | `result-track:f0d078b7603c9f2a97d2c14657807bcb6cdd9723949d022ebc3055792ce3bdca` |
| 33 | `theorem` | [Nodup.mem_erase_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-mem-erase-iff--587dcde74b83feaef5e8be9f.md) | 178 | `result-track:587dcde74b83feaef5e8be9ff71163614ac414e6c6a0a83098fbb3cc1b686da3` |
| 34 | `theorem` | [Nodup.not_mem_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-not-mem-erase--a6da6a7317274b9e9d42851c.md) | 183 | `result-track:a6da6a7317274b9e9d42851cba8210fa9eb5fa9092b570a293085ecfec6e8ac9` |
| 35 | `theorem` | [Nodup.product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-product--96bfaef1612ea1d60eeaa65c.md) | 187 | `result-track:96bfaef1612ea1d60eeaa65c533ffa5f94df879f2b59c74952d896deb9b61272` |
| 36 | `theorem` | [Nodup.sigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-sigma--801c34d8cac64ee6f55f602e.md) | 191 | `result-track:801c34d8cac64ee6f55f602e7bf848be004c0f5ee2b88bf2b455ae0e2b608267` |
| 37 | `theorem` | [Nodup.filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-filtermap--f918e99c48c7fba6b8f0af27.md) | 198 | `result-track:f918e99c48c7fba6b8f0af2723060cbe6e2f4891c43b3ea02367bd88ae9a5c2c` |
| 38 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-range--6d76c7663a1bfd2ed26dcb8b.md) | 203 | `result-track:6d76c7663a1bfd2ed26dcb8bf702627771e4f3c76a93ebed555c43d49b928b26` |
| 39 | `theorem` | [Nodup.inter_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-inter-left--77b6a6e6cf126ce3f3ebc682.md) | 207 | `result-track:77b6a6e6cf126ce3f3ebc682e9ecf44db52482c7ff7d3c96fc9dfbbb197e4216` |
| 40 | `theorem` | [Nodup.inter_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-inter-right--efeb3148fa0332adcb0eb20c.md) | 211 | `result-track:efeb3148fa0332adcb0eb20c407d074d97caefa5580200904b26b3544c6453d3` |
| 41 | `theorem` | [nodup_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-union--847e4c5a639a875f8173ef69.md) | 216 | `result-track:847e4c5a639a875f8173ef69ae668a8cd20ef2a623652dc70f5873b0e2449407` |
| 42 | `theorem` | [nodup_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-bind--fa4ea73104c3b41fee1fcd6f.md) | 224 | `result-track:fa4ea73104c3b41fee1fcd6f67ed741917c5438f2a4c136f3da6a0495369120d` |
| 43 | `theorem` | [Nodup.ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/nodup-ext--da63ee1ae16439e534b68d09.md) | 233 | `result-track:da63ee1ae16439e534b68d095a0109f9dc991de4a4ce2aa23e84afe82bf91000` |
| 44 | `theorem` | [le_iff_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/le-iff-subset--d9fd59d6a97a8f873914e645.md) | 237 | `result-track:d9fd59d6a97a8f873914e64532656b5b8703d05b3584a3623265d25e4470bb53` |
| 45 | `theorem` | [range_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/range-le--c96bff5ac56f91d050c2456f.md) | 241 | `result-track:c96bff5ac56f91d050c2456f16f9f2e642412918b33cc9c0d9978f598529812f` |
| 46 | `theorem` | [mem_sub_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/mem-sub-of-nodup--b4fb6a6e6708121a7d794d18.md) | 245 | `result-track:b4fb6a6e6708121a7d794d18a29b79b74f60c8ada873e21d8ec46a9b0dd50cfd` |
| 47 | `theorem` | [map_eq_map_of_bij_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6602e3aa6e94a9467d03998382de44957820d79f624746147deda848aeeda34d.lean/declarations/map-eq-map-of-bij-of-nodup--92be83e0705fb54fa235aeec.md) | 255 | `result-track:92be83e0705fb54fa235aeecf16bacee82f428df80a67171a2b9531f487a1d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
