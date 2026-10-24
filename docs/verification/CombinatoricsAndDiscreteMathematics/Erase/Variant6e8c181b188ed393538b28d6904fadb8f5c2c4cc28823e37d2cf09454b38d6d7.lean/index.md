# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a2023dde0dded54411ec138724b71c743d35bde",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a2023dde0dded54411ec138724b71c743d35bde`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean.json)

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
| 1 | `def` | [erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase--73a2061b9b7a7bca4f3e6ea9.md) | 49 | `declaration-track:73a2061b9b7a7bca4f3e6ea9fcee9f3ec65d1567aedd6b2dbf977269308ab9b6` |
| 2 | `theorem` | [erase_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-val--5b7d7e1ca22785385e4ec546.md) | 53 | `result-track:5b7d7e1ca22785385e4ec546e135d2bdd14023d813f06e1d89ced672427327f4` |
| 3 | `theorem` | [mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/mem-erase--111a2a546faaaca243ee20ea.md) | 57 | `result-track:111a2a546faaaca243ee20ea81437998127263f97110ca80511d9b70de1c86b6` |
| 4 | `theorem` | [notMem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/notmem-erase--026087c8092dadf07ee2c3a1.md) | 60 | `result-track:026087c8092dadf07ee2c3a165a89a814a1c02dc0810855fd2caa1ed1c016c2d` |
| 5 | `theorem` | [ne_of_mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/ne-of-mem-erase--3468502901f60790256d5e9e.md) | 63 | `result-track:3468502901f60790256d5e9ec4f21eb87bf24d44f61135c9de259869f07b61a7` |
| 6 | `theorem` | [mem_of_mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/mem-of-mem-erase--c0784c956c9c281d63b85ae5.md) | 65 | `result-track:c0784c956c9c281d63b85ae557a0ac1a0083df96b4f37c693560ece726ee4f91` |
| 7 | `theorem` | [mem_erase_of_ne_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/mem-erase-of-ne-of-mem--01548caf980272be92b3ab97.md) | 68 | `result-track:01548caf980272be92b3ab97df40a99c0529859b18ed18eae768fc662b8e5d17` |
| 8 | `theorem` | [eq_of_mem_of_notMem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/eq-of-mem-of-notmem-erase--204a1bf1cbe954eea497f2b0.md) | 72 | `result-track:204a1bf1cbe954eea497f2b0fcda7c319f916c42900600b83c52d6eca8e4905c` |
| 9 | `theorem` | [erase_eq_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-eq-of-notmem--8c1691765129a898f09eb9d2.md) | 75 | `result-track:8c1691765129a898f09eb9d2570e02359a1a4738e5c70444f16d232e77b7689f` |
| 10 | `theorem` | [erase_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-eq-self--8df8d638c0b8e77d98095ffa.md) | 79 | `result-track:8df8d638c0b8e77d98095ffa79ce46f3b2929f161f6f1e970659c2d1dfb4c625` |
| 11 | `theorem` | [erase_ne_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-ne-self--890ad6cbafd01fe74a4acd4a.md) | 82 | `result-track:890ad6cbafd01fe74a4acd4abc86dd09d207ed62cd65513aadff09b15b5c563c` |
| 12 | `theorem` | [erase_subset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-subset-erase--2fa4b720557fe4c8aeea7c01.md) | 86 | `result-track:2fa4b720557fe4c8aeea7c0196b412a02c941b80f53c193d77795f6f11cbed7b` |
| 13 | `theorem` | [erase_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-subset--f82a70462b117480bbe3d56e.md) | 89 | `result-track:f82a70462b117480bbe3d56ea7bd49fba3765ec388febdce67214003e5fa2562` |
| 14 | `theorem` | [subset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/subset-erase--ad29e0e8f0ff3c4d81910db1.md) | 92 | `result-track:ad29e0e8f0ff3c4d81910db110949472c7251aeca0095c06feb94d84378e9677` |
| 15 | `theorem` | [coe_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/coe-erase--f08b3dbeba8b15a997ee00e6.md) | 95 | `result-track:f08b3dbeba8b15a997ee00e6511cb5fcb9c34b926da97e83de36e2a5bb79b79e` |
| 16 | `theorem` | [erase_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-idem--a0d875f48869262123abb9bf.md) | 97 | `result-track:a0d875f48869262123abb9bf426e9d9978e2c97e603e68d8a89bccb116e829a4` |
| 17 | `theorem` | [erase_right_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-right-comm--dac37bc43d27a359ddb6c63a.md) | 99 | `result-track:dac37bc43d27a359ddb6c63aae3cfa7f7b21fd32acc10e31ccd4ee8459d60d74` |
| 18 | `theorem` | [erase_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-inj--a1e1b10deb0da55892ce475f.md) | 102 | `result-track:a1e1b10deb0da55892ce475f86439b6bc67d5194584aa6e402b3ca9e1a3ee677` |
| 19 | `theorem` | [erase_injOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7.lean/declarations/erase-injon--d7d215955224f4ff7e64dc62.md) | 105 | `result-track:d7d215955224f4ff7e64dc622ad0a0f3888077196729056e49a9b1ba77aba700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
