# Verification target: GRWTSK.Topology.GeneralTopology.Arctan.Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d71bb893b369e11eb77d59698a2e62ecc7ba195e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d71bb893b369e11eb77d59698a2e62ecc7ba195e`.

Source path: `GRWTSK/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/macro-rules--0216cf8dc7f66b8cb8aa5449.md) | 28 | `declaration-track:0216cf8dc7f66b8cb8aa544941b008c5b7673ee9b80eaf571dbf5390c0c72fd1` |
| 2 | `theorem` | [tan_add](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-add--4081641c27d2d5991260d87d.md) | 36 | `result-track:4081641c27d2d5991260d87df085cfaa8abbc2c4df12da20c7edcc1f91ddc7b1` |
| 3 | `theorem` | [tan_add'](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-add--3a6d0ea90eb908043a49ee18.md) | 45 | `result-track:3a6d0ea90eb908043a49ee188d7c58af71b9a7c6063f4b04f47525b6762e3bd5` |
| 4 | `theorem` | [tan_two_mul](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-two-mul--5e418a4b30f2cad1f0c1c604.md) | 51 | `result-track:5e418a4b30f2cad1f0c1c604b091fc0b6edadf8e45365ef9808f09c2d180abd9` |
| 5 | `theorem` | [tan_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-ne-zero-iff--50543e2d4b9433b87c608d3d.md) | 56 | `result-track:50543e2d4b9433b87c608d3d27e208f9348b988a99bf84c597f1ffa7b6bcc068` |
| 6 | `theorem` | [tan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-eq-zero-iff--ec38ed69802f8b38ed289c3b.md) | 60 | `result-track:ec38ed69802f8b38ed289c3bddbb9ea679a7bcaa996d21dfff13f7f9708361f5` |
| 7 | `theorem` | [tan_int_mul_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-int-mul-pi-div-two--9c13a7d8e410e59406ce2c21.md) | 64 | `result-track:9c13a7d8e410e59406ce2c21892a8149f231cc37e74be708fde837880852db56` |
| 8 | `theorem` | [continuousOn_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/continuouson-tan--192e48d32f0cd11b17aa24ff.md) | 68 | `result-track:192e48d32f0cd11b17aa24ff76d5062cdbda28394487a9485f81ec229b0a2ca7` |
| 9 | `theorem` | [continuous_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/continuous-tan--4533d1717590d9b4fb16abf7.md) | 76 | `result-track:4533d1717590d9b4fb16abf706d17c66a15c6178338996c3631b14e33d761878` |
| 10 | `theorem` | [continuousOn_tan_Ioo](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/continuouson-tan-ioo--0e294a4e62f17d321d08e28c.md) | 80 | `result-track:0e294a4e62f17d321d08e28c145556791fc8134d7bd5464233781059770a3d7f` |
| 11 | `theorem` | [surjOn_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/surjon-tan--f3303511491d258c81361cda.md) | 100 | `result-track:f3303511491d258c81361cda438a33bd50c261d5373f1939acd4250479945b4f` |
| 12 | `theorem` | [tan_surjective](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-surjective--c1bc83ffbd3ca872ae4fc00c.md) | 107 | `result-track:c1bc83ffbd3ca872ae4fc00c60c5b3d084617edb2e6bbac804a8cdd19a54bacf` |
| 13 | `theorem` | [image_tan_Ioo](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/image-tan-ioo--e1e5d5717ead95ec1b715a77.md) | 110 | `result-track:e1e5d5717ead95ec1b715a77d65b1fbcabe93919dcbd18bca2941331b4475664` |
| 14 | `def` | [tanOrderIso](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tanorderiso--5893416e2241d05d511a2034.md) | 115 | `declaration-track:5893416e2241d05d511a203443753c5a26d33a901d7367ebae921e00193340b0` |
| 15 | `def` | [arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan--1a456f61aff8716dc0510ada.md) | 123 | `declaration-track:1a456f61aff8716dc0510ada0cb6d19175396371269e2d2e118d1d5cd0e45bf1` |
| 16 | `theorem` | [tan_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tan-arctan--b51059bbee70dbada26e6674.md) | 128 | `result-track:b51059bbee70dbada26e667496c3535cee9c439e1d1943ab41676805c9e333a3` |
| 17 | `theorem` | [arctan_mem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-mem-ioo--d05c2ab40ffc5c8d7a050e0b.md) | 132 | `result-track:d05c2ab40ffc5c8d7a050e0bd297f99d1144832a65ca2990d7e01320489b9341` |
| 18 | `theorem` | [range_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/range-arctan--ded41fb471e39dc6ab850951.md) | 137 | `result-track:ded41fb471e39dc6ab850951040b8d0eb8eeacdadbbda6020fd8996740ffc52e` |
| 19 | `theorem` | [arctan_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-tan--a730b15d1500395f14edc501.md) | 141 | `result-track:a730b15d1500395f14edc5012e3aa9a02c5c4ae8e306a78f5909bb0f81e7d332` |
| 20 | `theorem` | [cos_arctan_pos](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/cos-arctan-pos--2a006b07fed0907fe4e52a40.md) | 145 | `result-track:2a006b07fed0907fe4e52a4041cc829fb8a5b0a3f5eabe80c9f2d4dd6363ff7f` |
| 21 | `theorem` | [cos_sq_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/cos-sq-arctan--b53dc11e7090ac8334ad1cdd.md) | 149 | `result-track:b53dc11e7090ac8334ad1cdd07f11ed8a3c4676a81955d12c7cb26f4517ea9c5` |
| 22 | `theorem` | [sin_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/sin-arctan--e3c175f126274e384c9c3fe5.md) | 153 | `result-track:e3c175f126274e384c9c3fe557e772db49cd7d11852b0bda80aa3adcff469527` |
| 23 | `theorem` | [cos_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/cos-arctan--079c64b48f8f52ebfb66e3f0.md) | 157 | `result-track:079c64b48f8f52ebfb66e3f0fc423e75bfffa747bf3d5e32dd59a6b34ee90bad` |
| 24 | `theorem` | [arctan_lt_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-lt-pi-div-two--67bf855b3b1cf80a1c30411a.md) | 161 | `result-track:67bf855b3b1cf80a1c30411ac680efdbd3b0842ae09b1c00b7eae0ce8c8a9b6e` |
| 25 | `theorem` | [neg_pi_div_two_lt_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/neg-pi-div-two-lt-arctan--92c0d088a533cae30a2cf74c.md) | 165 | `result-track:92c0d088a533cae30a2cf74cc74f47bffae62546ccacca660f8601e66f88bb8c` |
| 26 | `theorem` | [arctan_eq_arcsin](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-eq-arcsin--16362cfbd8d8375f7a926b12.md) | 169 | `result-track:16362cfbd8d8375f7a926b12f069358f82be0bebaf253c3fa1495f148baeb3eb` |
| 27 | `theorem` | [arcsin_eq_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arcsin-eq-arctan--95c009fe13c7ef2780a9741b.md) | 173 | `result-track:95c009fe13c7ef2780a9741b457fd7606298f42e8f05d2b267fbfb589dfaac4f` |
| 28 | `theorem` | [arctan_zero](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-zero--b19d27c81195bcab2ca2da03.md) | 180 | `result-track:b19d27c81195bcab2ca2da038df052de7ed0e99c837bfcdad0ec84eea8515cac` |
| 29 | `theorem` | [arctan_eq_of_tan_eq](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-eq-of-tan-eq--e0507bc83cc28d66bcc6a409.md) | 183 | `result-track:e0507bc83cc28d66bcc6a409751de1beb2080ef5517e92eb3d76c07a295d4057` |
| 30 | `theorem` | [arctan_one](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-one--b7ba43fe47cc9b783c987680.md) | 189 | `result-track:b7ba43fe47cc9b783c98768058e8617f92258edd38a96f230c74a6485ea5b81e` |
| 31 | `theorem` | [arctan_neg](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-neg--41fd06d3068ec18bacdbf4c0.md) | 194 | `result-track:41fd06d3068ec18bacdbf4c08c8544712b05e230b3ee31890efc00fd98d1f49c` |
| 32 | `theorem` | [arctan_eq_arccos](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arctan-eq-arccos--ce75fb41be4b86e9ae40b235.md) | 197 | `result-track:ce75fb41be4b86e9ae40b235a920b206ac3fddd2e5421fbe70478418634b81fa` |
| 33 | `theorem` | [arccos_eq_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/arccos-eq-arctan--7f93ce3e26cd348926fae3cd.md) | 205 | `result-track:7f93ce3e26cd348926fae3cd82a7c35fab0059aa71b7b82f644c3a557b37d5f8` |
| 34 | `theorem` | [continuous_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/continuous-arctan--fc5dc9cb733e4b1cb08ebd24.md) | 214 | `result-track:fc5dc9cb733e4b1cb08ebd242b61bd961fa155ac8f41b7b88005eb600c005dec` |
| 35 | `theorem` | [continuousAt_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/continuousat-arctan--71738bdc2b0ca1e51a654694.md) | 218 | `result-track:71738bdc2b0ca1e51a654694b00a97ceaa37ddb62416180f6c021e1d7fee2429` |
| 36 | `def` | [tanLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/tanlocalhomeomorph--a66d9b1a6b79dcb4d05d7cd7.md) | 223 | `declaration-track:a66d9b1a6b79dcb4d05d7cd7ef817fc73c8001a2330cf0be630a42a8359a4386` |
| 37 | `theorem` | [coe_tanLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/coe-tanlocalhomeomorph--5468e54208a69d6627b4244d.md) | 239 | `result-track:5468e54208a69d6627b4244d7ec42ea168d33ad292baa725bce2a99e2fe969e4` |
| 38 | `theorem` | [coe_tanLocalHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variantbb1799110ff52489196bcf8fbda605087a680ff55576e7bd2a4c26bb1d21f2b5.lean/declarations/coe-tanlocalhomeomorph-symm--220ddd4c97ea6ebfbeafa41b.md) | 244 | `result-track:220ddd4c97ea6ebfbeafa41bd9a0e09ee9423083a719f62e5f1e7946cfaee719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
