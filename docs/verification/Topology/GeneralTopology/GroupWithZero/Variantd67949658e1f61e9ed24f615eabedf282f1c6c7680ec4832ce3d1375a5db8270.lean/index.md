# Verification target: GRWTSK.Topology.GeneralTopology.GroupWithZero.Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e88a392290dd1450ae457dbe31a9f7810718149",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e88a392290dd1450ae457dbe31a9f7810718149`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/filter-tendsto-div-const--7eb41672460af8aa77ee292e.md) | 58 | `result-track:7eb41672460af8aa77ee292e86723d88d46f3f352f83f2b109a8066b58fada90` |
| 2 | `theorem` | [ContinuousAt.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuousat-div-const--7952921dade14e2870edd26c.md) | 64 | `result-track:7952921dade14e2870edd26c562c823dee47489c2e87c67ef59039bf0ee0c0f7` |
| 3 | `theorem` | [ContinuousWithinAt.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouswithinat-div-const--20860deadb408c583a9bda60.md) | 68 | `result-track:20860deadb408c583a9bda60446a0a03bd027c6788756837b1247aaedd36adac` |
| 4 | `theorem` | [ContinuousOn.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-div-const--6c50dd7ce36365bb2d3e3a35.md) | 72 | `result-track:6c50dd7ce36365bb2d3e3a3576340f628c0898aaf763f96aab9fec4398c7e7ed` |
| 5 | `theorem` | [Continuous.div_const](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuous-div-const--a7cacac308514937206447cb.md) | 77 | `result-track:a7cacac308514937206447cb3c7ed887bd3df7d9dafef86789e54e995b3afab4` |
| 6 | `class` | [HasContinuousInv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/hascontinuousinv--f7f4e31b58506907acaf180f.md) | 84 | `declaration-track:f7f4e31b58506907acaf180fbbe60f127fc28c19f8b3600f59f13b3dbd9cd3e1` |
| 7 | `theorem` | [tendsto_inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/tendsto-inv--6426a6d4ddac08f0de9fa511.md) | 103 | `result-track:6426a6d4ddac08f0de9fa511a70549e96d5638558820ca3e4cd12d949ee7fbfb` |
| 8 | `theorem` | [continuousOn_inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-inv--9b40b64b5eff37896ea510f8.md) | 106 | `result-track:9b40b64b5eff37896ea510f885dc8ab87ec5c663572d6b58aac36c8cd8d905bb` |
| 9 | `theorem` | [Filter.Tendsto.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/filter-tendsto-inv--241111db6f6255b730de63f8.md) | 112 | `result-track:241111db6f6255b730de63f8324cfb396b95ee8ffed3008e26c0dbbb48b4ac3b` |
| 10 | `theorem` | [ContinuousWithinAt.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouswithinat-inv--71e31f173c782928671a252e.md) | 118 | `result-track:71e31f173c782928671a252efa6c4763ec87d7e3f282f6cb98b5d61dc80be200` |
| 11 | `theorem` | [ContinuousAt.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuousat-inv--439893a909e909c692d36435.md) | 123 | `result-track:439893a909e909c692d364350c99ab1ac6172d6004c8cdf9fa0cb94d0bb3e459` |
| 12 | `theorem` | [Continuous.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuous-inv--bc3aeb8ba4a1a9b898d569e7.md) | 128 | `result-track:bc3aeb8ba4a1a9b898d569e740afeee786e04d55049926c13f95aac9fd5bd5d9` |
| 13 | `theorem` | [ContinuousOn.inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-inv--39a28ad2d12351729c226ba3.md) | 132 | `result-track:39a28ad2d12351729c226ba3860256e86755e98d22da1b220f120bc89ba32bde` |
| 14 | `theorem` | [Units.isEmbedding_val₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/units-isembedding-val--7eda47a15e148d9bfda0b634.md) | 139 | `result-track:7eda47a15e148d9bfda0b6340b60cf59fcb1a2b4184998f5f2b5aaa7ab7efa2e` |
| 15 | `lemma` | [nhds_inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/nhds-inv--a37539409c1e03a481c0c705.md) | 150 | `result-track:a37539409c1e03a481c0c7055220efcb8d608993d5c60c481a353ea20b0c2546` |
| 16 | `lemma` | [tendsto_inv_iff₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/tendsto-inv-iff--de2ef1c08c2e105ef6310d19.md) | 154 | `result-track:de2ef1c08c2e105ef6310d190d8da3f1d0ab618374d1e332ebfbc6c4e1cfb61b` |
| 17 | `theorem` | [Filter.Tendsto.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/filter-tendsto-div--55254b0ab6a21a6f5a7ca788.md) | 172 | `result-track:55254b0ab6a21a6f5a7ca788b6d525dba5abd76f7f279abb6f0d13fb6280307e` |
| 18 | `theorem` | [Filter.tendsto_mul_iff_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/filter-tendsto-mul-iff-of-ne-zero--8abfc176f8b67b8e3488b358.md) | 176 | `result-track:8abfc176f8b67b8e3488b358cc7779c19015a861ef13c3ea6e7d422a75956c7b` |
| 19 | `theorem` | [ContinuousWithinAt.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouswithinat-div--18f2c38815f3372a6d83e927.md) | 186 | `result-track:18f2c38815f3372a6d83e9270ffbc4652d9800a600d7f5a7bb57891320f23624` |
| 20 | `theorem` | [ContinuousOn.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-div--d53500255b7af72c6196c0d5.md) | 190 | `result-track:d53500255b7af72c6196c0d51b61216940dc9df83f50ca7473588b9e01b86634` |
| 21 | `theorem` | [ContinuousAt.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuousat-div--42760e127021385b20a48d28.md) | 195 | `result-track:42760e127021385b20a48d28238fe1e77b05d6d1f9d1f6f3a0de67a00f5be817` |
| 22 | `theorem` | [Continuous.div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuous-div--7f2285b2e28b98e9bc9fa42b.md) | 200 | `result-track:7f2285b2e28b98e9bc9fa42b0252ea55c7c5b82fe6874c304d0159b34334274a` |
| 23 | `theorem` | [continuousOn_div](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-div--b9fa08574d5e5958052a0411.md) | 203 | `result-track:b9fa08574d5e5958052a041196a1c7c08a7e9f60ba234a401fc1e5222e8f0d39` |
| 24 | `theorem` | [Continuous.div₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuous-div--594d584544e00b44603ddb81.md) | 207 | `result-track:594d584544e00b44603ddb818c0804ad3b6c6c734a3eafddcb1d860314f6a55c` |
| 25 | `theorem` | [ContinuousAt.div₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuousat-div--b79596ce240ce4c4444453ee.md) | 212 | `result-track:b79596ce240ce4c4444453ee95d6c9ecb8b1ac5c82f52264696c553371b9d1de` |
| 26 | `theorem` | [ContinuousOn.div₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-div--7ec867f767af19376e73bd38.md) | 216 | `result-track:7ec867f767af19376e73bd3806be02591ec7a7f8adedc86c2488df156f1257c0` |
| 27 | `theorem` | [ContinuousAt.comp_div_cases](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuousat-comp-div-cases--244857b12bcd0614a641490e.md) | 224 | `result-track:244857b12bcd0614a641490ec0c9d13cf011c21471e87af2f695dc3bb91e6ea3` |
| 28 | `theorem` | [Continuous.comp_div_cases](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuous-comp-div-cases--345e6c42a6d4404b16907d84.md) | 237 | `result-track:345e6c42a6d4404b16907d84e342d2fba8b7bcd1ec00bf92e3978981e8b753fa` |
| 29 | `def` | [mulLeft₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/mulleft--7123c58b7bf13cd619d8f47f.md) | 255 | `declaration-track:7123c58b7bf13cd619d8f47f01f4208ae1a615949e78d302ca619be510412f5b` |
| 30 | `def` | [mulRight₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/mulright--92951a4e52ae949ff3a80696.md) | 262 | `declaration-track:92951a4e52ae949ff3a80696037629a6e75a4b07bc2b75a26d8168244a686fc7` |
| 31 | `theorem` | [coe_mulLeft₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/coe-mulleft--c54d3945e8d66b163e8ae47a.md) | 268 | `result-track:c54d3945e8d66b163e8ae47a2b1dde7c024309f9e79894e053280a9a8a7ebd1b` |
| 32 | `theorem` | [mulLeft₀_symm_apply](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/mulleft-symm-apply--1856be728e78a04e8f5e74f2.md) | 272 | `result-track:1856be728e78a04e8f5e74f2d99f45dcfa4f85ba95bbaa22d05ba990cb9075d0` |
| 33 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/coe-mulright--fa9a4c56b7b369155961e315.md) | 277 | `result-track:fa9a4c56b7b369155961e315e8a8c7cbc5d49b99d67ec5551d564f96d7327ba1` |
| 34 | `theorem` | [mulRight₀_symm_apply](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/mulright-symm-apply--f90e8d6dde9d37d08e389a1b.md) | 281 | `result-track:f90e8d6dde9d37d08e389a1bc2f160360754110e0e660ad336858b0d3354e308` |
| 35 | `theorem` | [map_mul_left_nhds₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/map-mul-left-nhds--c3032721f9bbd9697ff06fd2.md) | 291 | `result-track:c3032721f9bbd9697ff06fd2507ce85d14325a1d47cace26ab1aa9820d0006ec` |
| 36 | `theorem` | [map_mul_left_nhds_one₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/map-mul-left-nhds-one--20eac7b4e899e86bae2a638a.md) | 294 | `result-track:20eac7b4e899e86bae2a638a40cf8bc6ec82dcb8b35ce489b4486fb4700ee2ed` |
| 37 | `theorem` | [map_mul_right_nhds₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/map-mul-right-nhds--2f3d19e64b89fd8a09446d49.md) | 297 | `result-track:2f3d19e64b89fd8a09446d49c1d0f45849a45713ecf2021526c2bbc07ea342d4` |
| 38 | `theorem` | [map_mul_right_nhds_one₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/map-mul-right-nhds-one--256cac8e7be145440224358b.md) | 300 | `result-track:256cac8e7be145440224358bf55e1270f219d7acade23221d5caee6d05211eaa` |
| 39 | `theorem` | [nhds_translation_mul_inv₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/nhds-translation-mul-inv--5e464c36b919235d022f4616.md) | 303 | `result-track:5e464c36b919235d022f461609d81f2ba3fe4be24741bf54daae4483063bdc9b` |
| 40 | `theorem` | [HasContinuousInv₀.of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/hascontinuousinv-of-nhds-one--eb73df70e01ff1ed6c248531.md) | 308 | `result-track:eb73df70e01ff1ed6c248531a2000ae5aa913316bd6e0db1f4b1a8aff43e3b72` |
| 41 | `theorem` | [continuousAt_zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuousat-zpow--e282351b791b5dc80c0ec197.md) | 322 | `result-track:e282351b791b5dc80c0ec1977931029714c1cd046dddcd057a29efaabb1fc753` |
| 42 | `theorem` | [continuousOn_zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-zpow--64888c36334866a2dd10c3b5.md) | 330 | `result-track:64888c36334866a2dd10c3b51883bf14639ad2f0cf5de46d26c4264a1ef8ce04` |
| 43 | `theorem` | [Filter.Tendsto.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/filter-tendsto-zpow--bca1f796169541517f143b22.md) | 333 | `result-track:bca1f796169541517f143b2286d54fccb8d56937203efaed1ec443a8a03ac70c` |
| 44 | `theorem` | [ContinuousAt.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuousat-zpow--fae6e7b76942e81093a9ace2.md) | 340 | `result-track:fae6e7b76942e81093a9ace2ccd0ebe8a07abbacdbac90f26dccb515248004b8` |
| 45 | `theorem` | [ContinuousWithinAt.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouswithinat-zpow--a84b64288315162d8f85d082.md) | 344 | `result-track:a84b64288315162d8f85d0826b6759359d3ac2094aa865f7813d1f2f2c1f878d` |
| 46 | `theorem` | [ContinuousOn.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuouson-zpow--e7e270a5be463947935bf822.md) | 349 | `result-track:e7e270a5be463947935bf8221cbf371c6f9874d8eecd6cf008d7a56cb75b33b5` |
| 47 | `theorem` | [Continuous.zpow₀](../../../../../mathematics/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/declarations/continuous-zpow--a1c71b3dec4d5118f031a9b7.md) | 353 | `result-track:a1c71b3dec4d5118f031a9b72b73a9ca57dab9cc58fc3b444c8cf46c7dc488a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
