# Verification target: GRWTSK.Topology.GeneralTopology.Arctan.Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b680760734f0a3dcbd38e545d03f09bca33f6fb4",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b680760734f0a3dcbd38e545d03f09bca33f6fb4`.

Source path: `GRWTSK/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tan_add](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tan-add--6a166e9c2cdf9c9659070f4c.md) | 30 | `result-track:6a166e9c2cdf9c9659070f4c908b3a0e2e4261c5ca597e31052746ba147dfd9f` |
| 2 | `theorem` | [tan_add'](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tan-add--a7b08b6c6646047cbf5e3657.md) | 38 | `result-track:a7b08b6c6646047cbf5e3657d10c32b029e6291682a3aca1b35ccd4d1556c51f` |
| 3 | `theorem` | [tan_two_mul](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tan-two-mul--e73842da29c0d2fc10eb49f6.md) | 43 | `result-track:e73842da29c0d2fc10eb49f6725ad1c2474632ef11b6373fa9c21774f68aa79f` |
| 4 | `theorem` | [tan_int_mul_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tan-int-mul-pi-div-two--fa75854d283294ef59680be6.md) | 47 | `result-track:fa75854d283294ef59680be6760032ac4571cd5e41f7da0351351cb87289b57b` |
| 5 | `theorem` | [continuousOn_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/continuouson-tan--8fb584a31b2c3eaced3878e0.md) | 50 | `result-track:8fb584a31b2c3eaced3878e0008f6b6716cdcac9126de0e045f809f4ab0e2e81` |
| 6 | `theorem` | [continuous_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/continuous-tan--65c6ea5fdaf15173781f8c83.md) | 57 | `result-track:65c6ea5fdaf15173781f8c832186c718030b6de8ac7e1178f2408eecb4560279` |
| 7 | `theorem` | [continuousOn_tan_Ioo](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/continuouson-tan-ioo--385845273ca4b26b6c198b29.md) | 60 | `result-track:385845273ca4b26b6c198b290fdc848caca8c8cd2a2d48154365fefde32849b7` |
| 8 | `theorem` | [surjOn_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/surjon-tan--64b1f8e54bcbff1fb8923e4b.md) | 80 | `result-track:64b1f8e54bcbff1fb8923e4b95b855bf4e231ef801cf285d4b4b27ac8b1ffec8` |
| 9 | `theorem` | [tan_surjective](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tan-surjective--241640c4f6cf80507b84758c.md) | 86 | `result-track:241640c4f6cf80507b84758c18310ff1757b60444c6a895e22cf4c68514ed34f` |
| 10 | `theorem` | [image_tan_Ioo](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/image-tan-ioo--bb551387d55a19cb2e1d08e3.md) | 88 | `result-track:bb551387d55a19cb2e1d08e39294458f52024f6ea60e1b3066e31b7b15107bef` |
| 11 | `def` | [tanOrderIso](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tanorderiso--055735f42e53871f24463df7.md) | 92 | `declaration-track:055735f42e53871f24463df79627f8aac5ca474d05de8d6323af2dd0d123367c` |
| 12 | `def` | [arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan--039e4efad6a112fdfc132dd0.md) | 99 | `declaration-track:039e4efad6a112fdfc132dd0d05a0efa77ad6ff7c97abc2ce3f5da3774f5c249` |
| 13 | `theorem` | [tan_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tan-arctan--68175dcad44be93819d75001.md) | 103 | `result-track:68175dcad44be93819d75001f417a7886e912ba53db96133cbe6119fb7440917` |
| 14 | `theorem` | [arctan_mem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-mem-ioo--efe3394e9e7af1d5a3aaa6d4.md) | 106 | `result-track:efe3394e9e7af1d5a3aaa6d410e11cc03ed46d62ddb2697b38c6e5886527c1df` |
| 15 | `theorem` | [range_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/range-arctan--b2f1002c5f0ac918d86f09b2.md) | 110 | `result-track:b2f1002c5f0ac918d86f09b2b7b4ea563d594577e02a12b31d6c509a36f7b322` |
| 16 | `theorem` | [arctan_tan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-tan--848d7127030465691407d64f.md) | 113 | `result-track:848d7127030465691407d64f0225e225a088f8894596d3ed097037734f938e80` |
| 17 | `theorem` | [cos_arctan_pos](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/cos-arctan-pos--95a5e04ca63ef2cdbcc06b60.md) | 116 | `result-track:95a5e04ca63ef2cdbcc06b60346ae88cc9aa7a099bfa8c691d407e8e3e54098a` |
| 18 | `theorem` | [cos_sq_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/cos-sq-arctan--6aa20fba8fafe397ec302814.md) | 119 | `result-track:6aa20fba8fafe397ec302814490014a7c5d6adca0d3e0f9ab0ff85ade664821e` |
| 19 | `theorem` | [sin_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/sin-arctan--27ef42d55213271e5ab0d52a.md) | 122 | `result-track:27ef42d55213271e5ab0d52a9246d60cf7321e7923f428a9b06316fa35e6755e` |
| 20 | `theorem` | [cos_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/cos-arctan--3db75ac2ff68fbc0784ecec1.md) | 125 | `result-track:3db75ac2ff68fbc0784ecec153cb79fc7c5b5dd248a5f620be65ca3ec36260c4` |
| 21 | `theorem` | [arctan_lt_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-lt-pi-div-two--839c11208a423d978b869f78.md) | 128 | `result-track:839c11208a423d978b869f78a649ef64ab13e9004624f588a64d334a4310fba9` |
| 22 | `theorem` | [neg_pi_div_two_lt_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/neg-pi-div-two-lt-arctan--02d0b574d28df95267a533ef.md) | 131 | `result-track:02d0b574d28df95267a533efa3abea98d33e1598efcab0a6e518455fe75df615` |
| 23 | `theorem` | [arctan_eq_arcsin](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-eq-arcsin--ba750291496dfd71a39f7e96.md) | 134 | `result-track:ba750291496dfd71a39f7e9638aa16b5622fb14e1451cd8dcea0cc6cb1c181c7` |
| 24 | `theorem` | [arcsin_eq_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arcsin-eq-arctan--7ea1638de40753dfba93b08b.md) | 137 | `result-track:7ea1638de40753dfba93b08ba8bf944c57eaafb2846601f2a957cf05feb59776` |
| 25 | `theorem` | [arctan_zero](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-zero--c72d7d95c3f16f2938958a72.md) | 143 | `result-track:c72d7d95c3f16f2938958a72e8172929fe503f3efd4c90b7fe96b0362445c795` |
| 26 | `theorem` | [arctan_strictMono](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-strictmono--b39cbd537757cd0a6b0dffac.md) | 146 | `result-track:b39cbd537757cd0a6b0dffacc5bb75f42d625689b4041813354c2c9701f56730` |
| 27 | `lemma` | [arctan_lt_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-lt-arctan--696d828fa3dcfae7103588ac.md) | 149 | `result-track:696d828fa3dcfae7103588acb20bbfa727d9a24fcaf80f0ca3b75987bc7f69aa` |
| 28 | `lemma` | [arctan_le_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-le-arctan--b19faa417607f02bc7a761a1.md) | 152 | `result-track:b19faa417607f02bc7a761a133bb66570d2ae64de9d09667732eca6f10e5e523` |
| 29 | `theorem` | [arctan_injective](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-injective--f3827b213c1f34377795db59.md) | 155 | `result-track:f3827b213c1f34377795db596eeb026d56f4199734a86a24f176139da5459a62` |
| 30 | `theorem` | [arctan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-eq-zero-iff--ed94fa0bd3faf1e6bdc865e3.md) | 158 | `result-track:ed94fa0bd3faf1e6bdc865e397278f40c402fbc53e00cbc23f6289d6af0611ae` |
| 31 | `theorem` | [tendsto_arctan_atTop](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tendsto-arctan-attop--e61ae707cb5215f18b857dd8.md) | 161 | `result-track:e61ae707cb5215f18b857dd865831958d8a3e079e38914fa4eccd1c335224a58` |
| 32 | `theorem` | [tendsto_arctan_atBot](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tendsto-arctan-atbot--3250ddc55f516b38c27f35bc.md) | 164 | `result-track:3250ddc55f516b38c27f35bc763fcdab406a32b5fd0d11561edb6548bbf493fe` |
| 33 | `theorem` | [arctan_eq_of_tan_eq](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-eq-of-tan-eq--56266af0ebf2465f842765ce.md) | 167 | `result-track:56266af0ebf2465f842765ce46b5c18857b5f34c1314e1cc79cd048a50b28855` |
| 34 | `theorem` | [arctan_one](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-one--2825d908f211a873ee01e538.md) | 172 | `result-track:2825d908f211a873ee01e53830ef65b6bfde96b7537c4ea665eeec6b645ae084` |
| 35 | `theorem` | [arctan_neg](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-neg--9d9bbbe8f0ad3e8492cefa77.md) | 176 | `result-track:9d9bbbe8f0ad3e8492cefa77ef4995c1acf9ae6781e63415f976baf69bdaf968` |
| 36 | `theorem` | [arctan_eq_arccos](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-eq-arccos--1bb94d3d9e0a185bb021d1f5.md) | 178 | `result-track:1bb94d3d9e0a185bb021d1f5e2545baf563dd2ac882469192bd34963707fae8c` |
| 37 | `theorem` | [arccos_eq_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arccos-eq-arctan--8e07e7383bc6b07b0debc234.md) | 186 | `result-track:8e07e7383bc6b07b0debc2349bd6f3da9f93d0d778f3f5cef4eeaa25d666f798` |
| 38 | `theorem` | [arctan_inv_of_pos](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-inv-of-pos--0c7863e4bbacaedeec88e00a.md) | 193 | `result-track:0c7863e4bbacaedeec88e00ac17aae90b9237d4b7bae3200510d0969e602a3ee` |
| 39 | `theorem` | [arctan_inv_of_neg](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-inv-of-neg--db2a89e0ac72bc3bfef7e9d4.md) | 200 | `result-track:db2a89e0ac72bc3bfef7e9d4ec6e953648ec59ce110222763aa80bbde760843f` |
| 40 | `lemma` | [arctan_ne_mul_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-ne-mul-pi-div-two--5c65e271253038fcb9f5e056.md) | 206 | `result-track:5c65e271253038fcb9f5e056b0b8a8906ca6b6c8ee70d34d967dcfe6ce9b4eb3` |
| 41 | `lemma` | [arctan_add_arctan_lt_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-add-arctan-lt-pi-div-two--7fb1889c4379c701e56a22ff.md) | 214 | `result-track:7fb1889c4379c701e56a22ff524c70c9c49b4c367f9af825312b3bcc53a69b96` |
| 42 | `theorem` | [arctan_add](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-add--699bb9693d39f2df3d2305d2.md) | 222 | `result-track:699bb9693d39f2df3d2305d2c1fa3083db1ea329aa3f8fd7a04b4d1ce325664d` |
| 43 | `theorem` | [arctan_add_eq_add_pi](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-add-eq-add-pi--093477b8e4e51b3a90e02b12.md) | 233 | `result-track:093477b8e4e51b3a90e02b12f295aa975468f7ebd565303607fc782ebbafbd34` |
| 44 | `theorem` | [arctan_add_eq_sub_pi](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-add-eq-sub-pi--4927481f300b0fe0c37d0ec9.md) | 245 | `result-track:4927481f300b0fe0c37d0ec93aa26b642ae99ef7b67da351d992c3ef9ae1f79b` |
| 45 | `theorem` | [two_mul_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/two-mul-arctan--b59d81fdbf21f118f228bfcf.md) | 253 | `result-track:b59d81fdbf21f118f228bfcff708c5c956829d737e1f42c7a3d7e9dab71bd36a` |
| 46 | `theorem` | [two_mul_arctan_add_pi](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/two-mul-arctan-add-pi--ad5f5d10361c3c8e7172852e.md) | 257 | `result-track:ad5f5d10361c3c8e7172852e11f41ec124382243847bca88d6d987ac85d02bb8` |
| 47 | `theorem` | [two_mul_arctan_sub_pi](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/two-mul-arctan-sub-pi--6c6e0aafe54fba5cd4e22312.md) | 261 | `result-track:6c6e0aafe54fba5cd4e22312c25c9ab592f055e487cd92ac873b03503459f18e` |
| 48 | `theorem` | [arctan_inv_2_add_arctan_inv_3](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/arctan-inv-2-add-arctan-inv-3--788311fc821010b5a5b6399b.md) | 265 | `result-track:788311fc821010b5a5b6399b2f7d5cd26b8bf27b3799605cbb2ff947659f1cb8` |
| 49 | `theorem` | [two_mul_arctan_inv_2_sub_arctan_inv_7](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/two-mul-arctan-inv-2-sub-arctan-inv-7--dbb6d625e6ed671333ae4b2b.md) | 268 | `result-track:dbb6d625e6ed671333ae4b2ba509ded6a360f7b98fad59313a6936c451fce78d` |
| 50 | `theorem` | [two_mul_arctan_inv_3_add_arctan_inv_7](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/two-mul-arctan-inv-3-add-arctan-inv-7--6fe4b0df5f66c86c5e4a4ae2.md) | 271 | `result-track:6fe4b0df5f66c86c5e4a4ae2e34e5e4e3a405d374dbff2d6cf6f712a87047459` |
| 51 | `theorem` | [four_mul_arctan_inv_5_sub_arctan_inv_239](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/four-mul-arctan-inv-5-sub-arctan-inv-239--43b778258b57efa2b23e2ff4.md) | 275 | `result-track:43b778258b57efa2b23e2ff4a8fe7f7d558941a879a3c3ccb9f06722a7bdb548` |
| 52 | `theorem` | [continuous_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/continuous-arctan--14750d30e10e7dd0f25341b5.md) | 282 | `result-track:14750d30e10e7dd0f25341b5979a63ecd3ea3748b694645230039abae04e57cb` |
| 53 | `theorem` | [continuousAt_arctan](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/continuousat-arctan--e24e126e74f81b9652c4d5c1.md) | 285 | `result-track:e24e126e74f81b9652c4d5c13e481e756c555bc77b8c31ddfd6992242b2e386a` |
| 54 | `def` | [tanPartialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/tanpartialhomeomorph--8a6f0473caf1890442fb3e31.md) | 289 | `declaration-track:8a6f0473caf1890442fb3e31c767a15d830b28155291062ae47f7bda9bc11c63` |
| 55 | `theorem` | [coe_tanPartialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/coe-tanpartialhomeomorph--d4b8f62472879ca401651929.md) | 304 | `result-track:d4b8f62472879ca40165192905967783eecc5cdec37ec18a6ad131a5367c16fe` |
| 56 | `theorem` | [coe_tanPartialHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/declarations/coe-tanpartialhomeomorph-symm--bec1cdd7a527f207471955d5.md) | 308 | `result-track:bec1cdd7a527f207471955d57340970e0983827746da0ad184ffe249e8cbabcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
