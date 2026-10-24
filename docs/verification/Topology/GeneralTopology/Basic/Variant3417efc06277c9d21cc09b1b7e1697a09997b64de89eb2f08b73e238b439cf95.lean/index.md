# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a872101e79d8fbb752f2279b62d0b99d65d1e3b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a872101e79d8fbb752f2279b62d0b99d65d1e3b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompleteSeparated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.HeineCantor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteSubset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Pi.instIsUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/pi-instisuniformgroup--f0cc9d2684139e90340bc3b3.md) | 41 | `declaration-track:f0cc9d2684139e90340bc3b37bd59ff32e7073acd73276c453885576367edea7` |
| 2 | `theorem` | [isUniformEmbedding_translate_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/isuniformembedding-translate-mul--607df500ab69074da931983c.md) | 48 | `result-track:607df500ab69074da931983cc238f6ae4bd983dd29849579ed68543457f2fda2` |
| 3 | `lemma` | [cauchy_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchy-iff-tendsto--40887ad73630a499ea2324b2.md) | 62 | `result-track:40887ad73630a499ea2324b2c6fffe13f798ce0f257545744893b898ef0dccc4` |
| 4 | `lemma` | [cauchy_iff_tendsto_swapped](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchy-iff-tendsto-swapped--fac26412ba872ed57f58edf2.md) | 67 | `result-track:fac26412ba872ed57f58edf2612594af5f35cfe962b960171b7c062901b31aef` |
| 5 | `lemma` | [cauchy_map_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchy-map-iff-tendsto--7405021aa4c53ece0b00804d.md) | 72 | `result-track:7405021aa4c53ece0b00804d72f6fee952dedb44113df2a0a4271e19882fbd4b` |
| 6 | `lemma` | [cauchy_map_iff_tendsto_swapped](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchy-map-iff-tendsto-swapped--83cde99fd136f68b7eda0fbf.md) | 77 | `result-track:83cde99fd136f68b7eda0fbff26b5806ba5117829dbf5a262a54ea7e51f4ed63` |
| 7 | `lemma` | [IsUniformInducing.isUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/isuniforminducing-isuniformgroup--2340c7df692465b611baa94c.md) | 90 | `result-track:2340c7df692465b611baa94cb7de818afcefd6417684daafcc445ced11f02108` |
| 8 | `theorem` | [IsUniformGroup.comap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/isuniformgroup-comap--9e00c602f7f1c3f5fd5274d3.md) | 104 | `result-track:9e00c602f7f1c3f5fd5274d32b69619738bd5d7a0f76d52cd1c8f4e0d0e7b052` |
| 9 | `instance` | [isUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/isuniformgroup--02844337930365aaa580e52e.md) | 113 | `declaration-track:02844337930365aaa580e52e6cd59e23d7ba2599aab7360a80c442136260f72a` |
| 10 | `theorem` | [CauchySeq.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchyseq-mul--eeb14c15b01b669d06c5d399.md) | 118 | `result-track:eeb14c15b01b669d06c5d399da47c363b14b4c898f749bd66334b99f542033f1` |
| 11 | `theorem` | [CauchySeq.mul_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchyseq-mul-const--e0d29108ae351741449a8160.md) | 123 | `result-track:e0d29108ae351741449a8160fe61142fc4671dd751c6c752dd6a73e3586a7ce0` |
| 12 | `theorem` | [CauchySeq.const_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchyseq-const-mul--fe63d3a85ec1d85964885ac8.md) | 128 | `result-track:fe63d3a85ec1d85964885ac8ceee7a33d0cf5d7a30a89a2a8e2a22cd4c6cac7e` |
| 13 | `theorem` | [CauchySeq.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/cauchyseq-inv--fa841c8437cfb9c9f80c102b.md) | 133 | `result-track:fa841c8437cfb9c9f80c102b599f6ce0ec79973568611f976d0e6d866c58d258` |
| 14 | `theorem` | [totallyBounded_iff_subset_finite_iUnion_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/totallybounded-iff-subset-finite-iunion-nhds-one--c26d5baf8cc990910ddd8f33.md) | 138 | `result-track:c26d5baf8cc990910ddd8f33ebb4b2e6bacb703f12ffb5620ba82e0fd68efa01` |
| 15 | `theorem` | [totallyBounded_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/totallybounded-inv--47a368a223d66f3e68eac877.md) | 144 | `result-track:47a368a223d66f3e68eac8773b8f2445281e3d9dafd07fcf0b178f858ccd6441` |
| 16 | `theorem` | [TendstoUniformlyOnFilter.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformlyonfilter-mul--393c1f0533cf7b6de9ae08db.md) | 153 | `result-track:393c1f0533cf7b6de9ae08dbaaf1419593be566eccd80af82c3018d4b337389d` |
| 17 | `theorem` | [TendstoUniformlyOnFilter.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformlyonfilter-div--ddbc61c37d66dc5688c082f6.md) | 159 | `result-track:ddbc61c37d66dc5688c082f6d52b86bbd2a7738d285865b98f4bd965e687fab1` |
| 18 | `theorem` | [TendstoUniformlyOn.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformlyon-mul--92452ca0c42b31376f41be65.md) | 165 | `result-track:92452ca0c42b31376f41be650141095d03284510e2e43448ce860420fc47b3e4` |
| 19 | `theorem` | [TendstoUniformlyOn.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformlyon-div--508b10ca34203c5e9a336bfd.md) | 170 | `result-track:508b10ca34203c5e9a336bfdcda99ae56d5ca2c0e8da3271b78fb8fd2cc907f7` |
| 20 | `theorem` | [TendstoUniformly.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformly-mul--bda4f43007622f820bfd22f6.md) | 175 | `result-track:bda4f43007622f820bfd22f616710f31e2b3b7f07acdb1aa9f073172529f1458` |
| 21 | `theorem` | [TendstoUniformly.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformly-div--20d0939c9c88e75a8928938a.md) | 180 | `result-track:20d0939c9c88e75a8928938a39fc4498a36d98cc2ccb731286dae22fe526ec71` |
| 22 | `theorem` | [UniformCauchySeqOn.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/uniformcauchyseqon-mul--9671fe226c5d2cf9f4fb755f.md) | 185 | `result-track:9671fe226c5d2cf9f4fb755f48a57a917efbefa859e36510f7789d177ab58c3e` |
| 23 | `theorem` | [UniformCauchySeqOn.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/uniformcauchyseqon-div--b24f6a58daaeb68aa5ee7efa.md) | 190 | `result-track:b24f6a58daaeb68aa5ee7efa7df474cf43c87d5ee436c8d5978cb8a72b5ad876` |
| 24 | `theorem` | [topologicalGroup_is_uniform_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/topologicalgroup-is-uniform-of-compactspace--c14c9061228c042464ac1f10.md) | 207 | `result-track:c14c9061228c042464ac1f10bf26912d415bf536e5db94c0e1e7ab91320be335` |
| 25 | `instance` | [Subgroup.isClosed_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/subgroup-isclosed-of-discrete--45abb5ad8076b1a6f0a11344.md) | 215 | `declaration-track:45abb5ad8076b1a6f0a11344663600313f0bf9e3f5de3165d8629c8bc241323e` |
| 26 | `lemma` | [Subgroup.tendsto_coe_cofinite_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/subgroup-tendsto-coe-cofinite-of-discrete--1cd961cc625da072fca16dfd.md) | 229 | `result-track:1cd961cc625da072fca16dfd99c24811d3b4c31b77de1660ada3f69f1ebad81d` |
| 27 | `lemma` | [MonoidHom.tendsto_coe_cofinite_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/monoidhom-tendsto-coe-cofinite-of-discrete--48f520b85096eccd84936b40.md) | 234 | `result-track:48f520b85096eccd84936b40345934669b14b14ef1e6b6e47e5f2ce9a4fa382f` |
| 28 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformly-iff--74c2684cc6a1dce41e0be9ff.md) | 247 | `result-track:74c2684cc6a1dce41e0be9ffc10f2d89d27880f0bfa27b82e81d761ebe4f2c56` |
| 29 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstouniformlyon-iff--ed695497e5981cb069cd9918.md) | 254 | `result-track:ed695497e5981cb069cd99185cb560155af7d555775932b18b9fe574eb642017` |
| 30 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstolocallyuniformly-iff--9dbf2b3d6b32c369998067a5.md) | 261 | `result-track:9dbf2b3d6b32c369998067a5fb8e17abad7f3732c71d4ba5bd09edaa822af6a1` |
| 31 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/tendstolocallyuniformlyon-iff--7f1fdd35b117ed0b32cf5b76.md) | 270 | `result-track:7f1fdd35b117ed0b32cf5b760012ccbb4d9754036d4ec44e9128226f6fd29acb` |
| 32 | `theorem` | [extend_Z_bilin_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/extend-z-bilin-aux--ef85f2b9c66df6cc66adb712.md) | 302 | `result-track:ef85f2b9c66df6cc66adb71221242d5a5d148ad853c62e869d40b03f4062dcf9` |
| 33 | `theorem` | [extend_Z_bilin_key](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/extend-z-bilin-key--a8cb4aa779f59b8ca673c6c3.md) | 322 | `result-track:a8cb4aa779f59b8ca673c6c373ea3f4ffd8cbc1ff27bd47ca3e57e001766e4f7` |
| 34 | `theorem` | [extend_Z_bilin](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/extend-z-bilin--cba717c469e2084c6689a97e.md) | 376 | `result-track:cba717c469e2084c6689a97eb9ba0934c4fd4a8a9274def817ea3be61c64db80` |
| 35 | `instance` | [QuotientGroup.completeSpace'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/quotientgroup-completespace--c7aa31a8c35c8adad243cf90.md) | 434 | `declaration-track:c7aa31a8c35c8adad243cf903e566487a3f7589a613edb1f35a81ebbb6317917` |
| 36 | `instance` | [QuotientGroup.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/declarations/quotientgroup-completespace--deccd28e7e2775daeb244270.md) | 533 | `declaration-track:deccd28e7e2775daeb2442707e752800461a48459e2bfec6b3e9377dcd50347e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
