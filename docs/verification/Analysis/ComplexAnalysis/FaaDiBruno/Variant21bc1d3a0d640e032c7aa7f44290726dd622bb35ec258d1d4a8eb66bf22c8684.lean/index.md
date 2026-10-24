# Verification target: GRWTSK.Analysis.ComplexAnalysis.FaaDiBruno.Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0850d20114feb43c262202e4c74e29984503f61",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0850d20114feb43c262202e4c74e29984503f61`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Within` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/orderedfinpartition--719d7f42dfc01cb772374906.md) | 93 | `declaration-track:719d7f42dfc01cb772374906ab2dfe867b82a3311b5ace7c93b09f74ed581e70` |
| 2 | `def` | [atomic](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/atomic--75351a11c412a0189e5c8e5d.md) | 117 | `declaration-track:75351a11c412a0189e5c8e5d6b6b6cb67bea0a0c69c0030af8e223017c51f97c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/instance--b44625026e3d77aa1676e16d.md) | 129 | `declaration-track:b44625026e3d77aa1676e16d881685f00356fb8c7634500042500c8877ced886` |
| 4 | `theorem` | [default_eq](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/default-eq--b83cfa68b9118353e36d19fd.md) | 132 | `result-track:b83cfa68b9118353e36d19fdaa11686b3d769f31da58b8cfe24cd35e15768b0a` |
| 5 | `lemma` | [length_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/length-le--e1555c8b5dd51836fa2052d0.md) | 134 | `result-track:e1555c8b5dd51836fa2052d0c53a1e49709e4f2c059313bd3bd19935ef3047aa` |
| 6 | `lemma` | [partSize_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/partsize-le--f46d45b7da3eb5f98b85a4b7.md) | 137 | `result-track:f46d45b7da3eb5f98b85a4b77889ce3cc89c4928707e4a8e3e03f082916c7836` |
| 7 | `def` | [embSigma](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/embsigma--709471a3a22d810675bd7f52.md) | 142 | `declaration-track:709471a3a22d810675bd7f52b479a83ffc5974b128ac06e21bb7a149508c5dfe` |
| 8 | `lemma` | [injective_embSigma](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/injective-embsigma--fc7ff41e6c570b4bc0bd663c.md) | 147 | `result-track:fc7ff41e6c570b4bc0bd663c37f74b6508c241262b1296f6ecb7877f2cecf0b8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/instance--f98af61da7255e8f696f3448.md) | 159 | `declaration-track:f98af61da7255e8f696f34482b31fed745454374e6574723147acbc963fb0293` |
| 10 | `instance` | [instUniqueZero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/instuniquezero--ca76cae6bc532554710d72ce.md) | 162 | `declaration-track:ca76cae6bc532554710d72ce0fd4ac600cb75a06b6c97450fd354281747f407b` |
| 11 | `lemma` | [exists_inverse](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/exists-inverse--2dbcaedde69280981f762b89.md) | 167 | `result-track:2dbcaedde69280981f762b89520b518db56c2ea0a271c54fd95db982557b3f21` |
| 12 | `lemma` | [emb_injective](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/emb-injective--bab2907e99cf4dc83c2f29a8.md) | 172 | `result-track:bab2907e99cf4dc83c2f29a8c264ae0dbcfdae91c5af4ec9097d6f9b83eae04e` |
| 13 | `lemma` | [emb_ne_emb_of_ne](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/emb-ne-emb-of-ne--a28b59013cf2110123480874.md) | 182 | `result-track:a28b59013cf21101234808740e92344f0b9d9c6c3eb31bd79cdd3b3cea6ba14a` |
| 14 | `def` | [index](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/index--6875e13527c55020dcfd75f3.md) | 187 | `declaration-track:6875e13527c55020dcfd75f3f45c7d5cc1ba8a08d84b7a164ce2a2879932a1ae` |
| 15 | `def` | [invEmbedding](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/invembedding--7ea602f35c2952c9d01efc6a.md) | 192 | `declaration-track:7ea602f35c2952c9d01efc6a04f4fdcb810d6787de51285e7de911e647e472da` |
| 16 | `lemma` | [emb_invEmbedding](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/emb-invembedding--6df7710489b0b9cf3142c5de.md) | 195 | `result-track:6df7710489b0b9cf3142c5deef6588fca5a45f712cb6f0ab8a519a1d10747e48` |
| 17 | `def` | [equivSigma](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/equivsigma--95e7c39915642e75e3b14fde.md) | 201 | `declaration-track:95e7c39915642e75e3b14fde623211fe04e01bef301dd610be15c67249583803` |
| 18 | `lemma` | [prod_sigma_eq_prod](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/prod-sigma-eq-prod--1d66089da92d58c9b3033c47.md) | 207 | `result-track:1d66089da92d58c9b3033c4744d539dd7bf053857858a945c0b03ba7e7a58a5a` |
| 19 | `lemma` | [length_pos](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/length-pos--2b8fa9f4313aaad07925b9be.md) | 212 | `result-track:2b8fa9f4313aaad07925b9be1ad6b9e46845ae1f63b8917d93801f99d3d22ab0` |
| 20 | `lemma` | [neZero_length](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/nezero-length--277627a0deb62f50302a1348.md) | 214 | `result-track:277627a0deb62f50302a1348db47074eb6b3d02632e9aeefebdc8318c2bd0705` |
| 21 | `lemma` | [neZero_partSize](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/nezero-partsize--4a3d17add7af334ba6cf0510.md) | 217 | `result-track:4a3d17add7af334ba6cf05102c3e614ba437b7a21f6836c43088a739804c0ffa` |
| 22 | `instance` | [instUniqueOne](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/instuniqueone--074c1f22ef9e00c1ed844d51.md) | 222 | `declaration-track:074c1f22ef9e00c1ed844d51563b1946692f12658f3d69e03aeeedc4f971119e` |
| 23 | `lemma` | [emb_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/emb-zero--4fd2f5aa781c170acafc0a6e.md) | 232 | `result-track:4fd2f5aa781c170acafc0a6e07bd3609462c85e7b4744c334cab8b8384c0fa35` |
| 24 | `lemma` | [partSize_eq_one_of_range_emb_eq_singleton](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/partsize-eq-one-of-range-emb-eq-singleton--c0abdb788a557a4a461060a7.md) | 237 | `result-track:c0abdb788a557a4a461060a7de657fe1d3c6ed018c809c69e68071f577ea23f5` |
| 25 | `lemma` | [one_lt_partSize_index_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/one-lt-partsize-index-zero--a2c6bd45571ecb031395c37b.md) | 249 | `result-track:a2c6bd45571ecb031395c37b66b620a035866b86156f5bfe8321dbd202ca2f82` |
| 26 | `def` | [extendLeft](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/extendleft--476c831c3ed145b72a0dc63f.md) | 287 | `declaration-track:476c831c3ed145b72a0dc63f3f1ef1d499cdfe672f37fdb0e7e615a8e0b6a53c` |
| 27 | `lemma` | [range_extendLeft_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/range-extendleft-zero--d765b60b11039a0f13b2b2b2.md) | 332 | `result-track:d765b60b11039a0f13b2b2b2d28fea269c7f54f1f387129906de2ed46fd25bee` |
| 28 | `def` | [extendMiddle](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/extendmiddle--ef6aa52b386afc227792bdd1.md) | 340 | `declaration-track:ef6aa52b386afc227792bdd1755d197e13a00523206ced9792de2d3442c008ea` |
| 29 | `lemma` | [index_extendMiddle_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/index-extendmiddle-zero--3d8235dcc635848af9d8c91f.md) | 426 | `result-track:3d8235dcc635848af9d8c91f1b67b1595626b507c28ba81a349402e931f28ec2` |
| 30 | `lemma` | [range_emb_extendMiddle_ne_singleton_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/range-emb-extendmiddle-ne-singleton-zero--370cd2869b0336beb062b9c3.md) | 433 | `result-track:370cd2869b0336beb062b9c3a6ce49a9a6a517a384fe884663ecee0405a57f78` |
| 31 | `def` | [extend](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/extend--e8b0a5eb6a2c34435524e502.md) | 453 | `declaration-track:e8b0a5eb6a2c34435524e502bf43a3dd65468d25b1ec4c7cb22187cd19086f06` |
| 32 | `lemma` | [extend_none](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/extend-none--25a7859c1da5c97011574519.md) | 458 | `result-track:25a7859c1da5c97011574519a13c484659b17ce4c0e33afe30413353614896f4` |
| 33 | `lemma` | [extend_some](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/extend-some--79effe3bdbcd027fe6b770a1.md) | 461 | `result-track:79effe3bdbcd027fe6b770a1f4254e0b2e3aa65e4cf5a4e9018c1d61979f007a` |
| 34 | `def` | [eraseLeft](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/eraseleft--a65e753a9bbef41252b0b8f7.md) | 466 | `declaration-track:a65e753a9bbef41252b0b8f750f290a67ec0fad9be968031385a6f5781a46b4c` |
| 35 | `def` | [eraseMiddle](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/erasemiddle--4c57e465dc9302634d1abcfb.md) | 512 | `declaration-track:4c57e465dc9302634d1abcfba88aa3baf8a84a2488a7d60f28f4b4bef15762c1` |
| 36 | `def` | [extendEquiv](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/extendequiv--ca41b77f61cfe1ac0b05bfd8.md) | 624 | `declaration-track:ca41b77f61cfe1ac0b05bfd8f9e9a72f186beb441341d7a6a6a342bcab6c37a3` |
| 37 | `def` | [applyOrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/applyorderedfinpartition--6779268664a3450dfa59ec27.md) | 718 | `declaration-track:6779268664a3450dfa59ec2720b4b9b62a9c55522d9e466909ee2c802069f4e0` |
| 38 | `lemma` | [applyOrderedFinpartition_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/applyorderedfinpartition-apply--32306ea2d9838701ed005ef3.md) | 722 | `result-track:32306ea2d9838701ed005ef39ebd7274461d77039ef30d45b978825e25861d58` |
| 39 | `theorem` | [norm_applyOrderedFinpartition_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/norm-applyorderedfinpartition-le--885434e57c877ffb504397a1.md) | 726 | `result-track:885434e57c877ffb504397a18cdfacbe046af7244a60e140bfb9417e332ce16d` |
| 40 | `theorem` | [applyOrderedFinpartition_update_right](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/applyorderedfinpartition-update-right--9b9c61297d4aff5bfa5da86e.md) | 734 | `result-track:9b9c61297d4aff5bfa5da86efd94eea0e4d5ff4738fced92e5cd8875bf048704` |
| 41 | `theorem` | [applyOrderedFinpartition_update_left](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/applyorderedfinpartition-update-left--3e4d1b60900feaf1deec4b90.md) | 758 | `result-track:3e4d1b60900feaf1deec4b909da91ab7c321c971bf09adbdd0ef71cb445fc657` |
| 42 | `def` | [compAlongOrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/compalongorderedfinpartition--5eb6816f9899cdde79089666.md) | 773 | `declaration-track:5eb6816f9899cdde7908966620c556d8a14103e24e0878a99f05a3fa1293f5cc` |
| 43 | `lemma` | [compAlongOrderFinpartition_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/compalongorderfinpartition-apply--b7066bc25ac1df6d637a19ef.md) | 788 | `result-track:b7066bc25ac1df6d637a19eff36587f5187c319c91fbaba98bbfb4bbbfeae812` |
| 44 | `theorem` | [norm_compAlongOrderedFinpartition_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/norm-compalongorderedfinpartition-le--793dc73d116bf566a6b824aa.md) | 792 | `result-track:793dc73d116bf566a6b824aae2554ba402e0d4caa55309daaa9df384ae5ccab4` |
| 45 | `def` | [compAlongOrderedFinpartitionₗ](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/compalongorderedfinpartition--310d0361ffa4faf8bc91baa4.md) | 803 | `declaration-track:310d0361ffa4faf8bc91baa4a14e7da946ba55ce97b573ff3c431894fe09b9d1` |
| 46 | `def` | [compAlongOrderedFinpartitionL](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/compalongorderedfinpartitionl--f1d8b0e27456fc23ef98e854.md) | 820 | `declaration-track:f1d8b0e27456fc23ef98e854e2a091aed0f628b9f3f09c77826dfa09d271c40e` |
| 47 | `lemma` | [compAlongOrderedFinpartitionL_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/compalongorderedfinpartitionl-apply--e176a366182ea9756613809a.md) | 827 | `result-track:e176a366182ea9756613809acd0db5c981ec893fb1e76d41272d5a3c3fd51467` |
| 48 | `theorem` | [norm_compAlongOrderedFinpartitionL_le](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/norm-compalongorderedfinpartitionl-le--1b58a75904bd94a83b74d590.md) | 831 | `result-track:1b58a75904bd94a83b74d590d22ff7a954b4cd7676e6667290dbfba7cacf723a` |
| 49 | `def` | [compAlongOrderedFinpartition](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/compalongorderedfinpartition--514f93e7b058a363de4c43df.md) | 845 | `declaration-track:514f93e7b058a363de4c43df2744831914f150cc8368062109439c41439743d7` |
| 50 | `theorem` | [compAlongOrderedFinpartition_apply](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/compalongorderedfinpartition-apply--0da28f238b27d1fd71eaced7.md) | 851 | `result-track:0da28f238b27d1fd71eaced7ae72c333b12f022d9a137a1ac97d5cbca1cecda0` |
| 51 | `def` | [taylorComp](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/taylorcomp--776eb46e5b66500820b55e77.md) | 871 | `declaration-track:776eb46e5b66500820b55e7723ef5e711d5d4067955e58a88fc607924f1457d5` |
| 52 | `theorem` | [analyticOn_taylorComp](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/analyticon-taylorcomp--fbe3f5724880d3da90ed8a54.md) | 878 | `result-track:fbe3f5724880d3da90ed8a5401edf7e1810b3e3883336abff16e93e638d98512` |
| 53 | `lemma` | [faaDiBruno_aux1](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/faadibruno-aux1--3f1610849635db7209ebbe75.md) | 899 | `result-track:3f1610849635db7209ebbe755793bbe5e213ad04e02542d3fdf638cac84bef22` |
| 54 | `lemma` | [faaDiBruno_aux2](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/faadibruno-aux2--f175a9cf584311873ebd8439.md) | 920 | `result-track:f175a9cf584311873ebd8439835cf5a283f30f35e461cc6d571e002286929f8b` |
| 55 | `theorem` | [HasFTaylorSeriesUpToOn.comp](../../../../../mathematics/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/declarations/hasftaylorseriesuptoon-comp--10587a1bb3f6836ca23c70dc.md) | 949 | `result-track:10587a1bb3f6836ca23c70dc195cb69d01c0a6ee9620797f9243e2731ff2e95e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
