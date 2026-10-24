# Verification target: GRWTSK.Topology.GeneralTopology.AbsolutelyContinuous.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43cfa13281fe2e2c62f9f6d28aaed6ebffafd415",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43cfa13281fe2e2c62f9f6d28aaed6ebffafd415`.

Source path: `GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean.json)

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
| 1 | `def` | [totalLengthFilter](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/totallengthfilter--bafdaec5d561e3ecb3cdb206.md) | 78 | `declaration-track:bafdaec5d561e3ecb3cdb20628d2d30fba5c31a2754462877645385d0822cd8d` |
| 2 | `lemma` | [hasBasis_totalLengthFilter](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/hasbasis-totallengthfilter--da1e7a05e367704b6b008893.md) | 81 | `result-track:da1e7a05e367704b6b0088935512cec3d78a2cf9d799844df845e4dc1ef40560` |
| 3 | `def` | [disjWithin](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/disjwithin--b12430fbd3d5f6e19386abce.md) | 95 | `declaration-track:b12430fbd3d5f6e19386abce41ea7d5185bb843985b76f0f730784cb06b99a5c` |
| 4 | `lemma` | [disjWithin_comm](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/disjwithin-comm--3797b29292df8f403cf153d2.md) | 99 | `result-track:3797b29292df8f403cf153d28eaeb7f9ca0192a7216aa49c399923e08f251365` |
| 5 | `lemma` | [disjWithin_mono](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/disjwithin-mono--2fb9e0c11e3f46b71c123564.md) | 102 | `result-track:2fb9e0c11e3f46b71c123564661c75660ada782fb0a6f22d5aab92158bf5f509` |
| 6 | `lemma` | [uIoc_subset_of_mem_disjWithin](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/uioc-subset-of-mem-disjwithin--26f502d049f63ce0b7158995.md) | 106 | `result-track:26f502d049f63ce0b7158995394115ec073b9d8cf809c3356d25bb7927082212` |
| 7 | `lemma` | [biUnion_uIoc_subset_of_mem_disjWithin](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/biunion-uioc-subset-of-mem-disjwithin--e9d31e919f4b31ec59a1827c.md) | 111 | `result-track:e9d31e919f4b31ec59a1827cdc2d6d4530d795ffac262399c524637072f807a8` |
| 8 | `lemma` | [tendsto_volume_totalLengthFilter_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/tendsto-volume-totallengthfilter-nhds-zero--37897410cecc813eaebbe922.md) | 117 | `result-track:37897410cecc813eaebbe9226313d0997334ad2357f2f6f2acf5a510da8f66c4` |
| 9 | `lemma` | [tendsto_volume_restrict_totalLengthFilter_disjWithin_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/tendsto-volume-restrict-totallengthfilter-disjwithin-nhds-zero--aacb5dd90bdd623a39544bfc.md) | 133 | `result-track:aacb5dd90bdd623a39544bfc90b9b7d13c25dff428e6546c664db52b1583f2a2` |
| 10 | `def` | [_root_.AbsolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/root-absolutelycontinuousoninterval--3e9a2afa20c9b5e4f1dd4acf.md) | 154 | `declaration-track:3e9a2afa20c9b5e4f1dd4acf19f4e269c303b58ae45e8b3f4e7c3be945500860` |
| 11 | `theorem` | [_root_.absolutelyContinuousOnInterval_iff](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/root-absolutelycontinuousoninterval-iff--0b2a6bd31f36150d49c7081e.md) | 163 | `result-track:0b2a6bd31f36150d49c7081e2ca08ff4d6b57a0978020b9ffc23677f62998ee6` |
| 12 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/symm--1afd7b15a6a47af88d4b8ac1.md) | 174 | `result-track:1afd7b15a6a47af88d4b8ac17aa303deaa207eec6fe75ad66710b4129cb494dc` |
| 13 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/mono--3f337db3dc6a14f14d6fd164.md) | 178 | `result-track:3f337db3dc6a14f14d6fd1644efde2fb915b847766713e59cce3110bcdbfdbf9` |
| 14 | `theorem` | [congr](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/congr--85f55cc25544a6351f44cd8e.md) | 184 | `result-track:85f55cc25544a6351f44cd8ed626bc6e42c0138c42f27d9a24abfedb4859280b` |
| 15 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/refl--9516df5a455436a7728c47d3.md) | 192 | `result-track:9516df5a455436a7728c47d3f9f52ff73a1c02102570a0b4fdc5eea2084fc4a3` |
| 16 | `theorem` | [rfl](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/rfl--fe6e57b1e77cc40026e07425.md) | 200 | `result-track:fe6e57b1e77cc40026e074255632cb91c7f02f976cb3404d4fd910a22e609d58` |
| 17 | `theorem` | [add](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/add--41c9fc4722a5190d3eafaa26.md) | 205 | `result-track:41c9fc4722a5190d3eafaa26ff93f08ea71ae8fd0cf12eada315fdbd2d9c54dc` |
| 18 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/neg--2e70fba84b489d2b76e238e1.md) | 215 | `result-track:2e70fba84b489d2b76e238e19310f0ff530b1aff138ded08d5be5f096d8833f1` |
| 19 | `theorem` | [sub](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/sub--0990293c1de8a61b3f531838.md) | 222 | `result-track:0990293c1de8a61b3f5318383d5ff2c6d4529bb675b6cc2c60444986f6baf2c3` |
| 20 | `theorem` | [const_smul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/const-smul--13fd1ed1a44a3aa7c53c7e5a.md) | 227 | `result-track:13fd1ed1a44a3aa7c53c7e5a4546a2fa6825002523848ba8126ea35e2c156238` |
| 21 | `theorem` | [const_mul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/const-mul--91a2c68b9bc6c76260121b8f.md) | 234 | `result-track:91a2c68b9bc6c76260121b8f94881d3b54df83338010dd64e671d0a0d6134e4b` |
| 22 | `lemma` | [uniformity_eq_comap_totalLengthFilter](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/uniformity-eq-comap-totallengthfilter--ba00449bab5854f3d402e0ac.md) | 238 | `result-track:ba00449bab5854f3d402e0ace364767d2799df3d10b1fd5f7801766ba9776389` |
| 23 | `theorem` | [uniformContinuousOn](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/uniformcontinuouson--feb56f0fda84355849708d90.md) | 246 | `result-track:feb56f0fda84355849708d90e567b91f78d4281c7a3673994ed13070d19b19e3` |
| 24 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/continuouson--7420963b3ac45a3eb69c056c.md) | 260 | `result-track:7420963b3ac45a3eb69c056c0c39d27cfe78d78a1d0feba46b12639b382e8523` |
| 25 | `theorem` | [exists_bound](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/exists-bound--4ec8101e5e884fb3ca16fbdd.md) | 265 | `result-track:4ec8101e5e884fb3ca16fbddcdf3a663f10ab2c7dc5f52067b882bf6efb2d3f4` |
| 26 | `theorem` | [smul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/smul--76677b7674916ad7e9b6ce94.md) | 272 | `result-track:76677b7674916ad7e9b6ce943bd359b3206fc9f0fdca61fc23d44dcfc7a97f82` |
| 27 | `theorem` | [mul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/mul--77acfea9829a487cf41f4a5c.md) | 303 | `result-track:77acfea9829a487cf41f4a5c3b461715a96aa4d4a1457f4eff13ea701fed1342` |
| 28 | `theorem` | [_root_.LipschitzOnWith.absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/root-lipschitzonwith-absolutelycontinuousoninterval--54ab182ea1df332ebceb4728.md) | 309 | `result-track:54ab182ea1df332ebceb47289842840b90fbfa112663fa9e9cdcb57b621f60eb` |
| 29 | `theorem` | [_root_.LipschitzOnWith.comp_absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/root-lipschitzonwith-comp-absolutelycontinuousoninterval--d97349bfced20bea4b8cc90a.md) | 328 | `result-track:d97349bfced20bea4b8cc90a227bde1af1836ffba4d5cdeac555f8a8fc371477` |
| 30 | `theorem` | [_root_.LipschitzWith.comp_absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/root-lipschitzwith-comp-absolutelycontinuousoninterval--61b7338d1540ca54ab4c3999.md) | 343 | `result-track:61b7338d1540ca54ab4c3999a56c7afb2f3ddb3d851a786923c92948f8fb1f11` |
| 31 | `theorem` | [_root_.ContDiffOn.absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/root-contdiffon-absolutelycontinuousoninterval--a8b0e701c7c7570693df8340.md) | 350 | `result-track:a8b0e701c7c7570693df83405d3a93ba9f67e924f2b21e697d9d7baa5f50c1d1` |
| 32 | `theorem` | [boundedVariationOn](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/boundedvariationon--1ea24b83e09db747c90b8d2f.md) | 357 | `result-track:1ea24b83e09db747c90b8d2fd6d0acdd315a498f70b263dae8248c84a48c8b10` |
| 33 | `theorem` | [ae_differentiableAt](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/ae-differentiableat--e09d3030d0b69ece991cf635.md) | 443 | `result-track:e09d3030d0b69ece991cf6354dbbc7720a0105512a18b619354971f61b8e034d` |
| 34 | `theorem` | [_root_.IntervalIntegrable.absolutelyContinuousOnInterval_intervalIntegral](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/declarations/root-intervalintegrable-absolutelycontinuousoninterval-intervalintegral--4ac54ba887e076072a7cb241.md) | 450 | `result-track:4ac54ba887e076072a7cb2411082e5f21d154caa260bc83b7e3975870ab0d13d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
