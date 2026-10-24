# Verification target: GRWTSK.Algebra.LinearAlgebra.Hom.Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "985d7b766ef00deaf90e8ed4ade9fb78f1ee2608",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `985d7b766ef00deaf90e8ed4ade9fb78f1ee2608`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coalghom--272c36318046020c78dcf7d5.md) | 41 | `declaration-track:272c36318046020c78dcf7d5866fdb874d581ecf6ef6400ee2ba3f1e8da1c93b` |
| 2 | `class` | [CoalgHomClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coalghomclass--5023cfc4906f26647188ae1d.md) | 55 | `declaration-track:5023cfc4906f26647188ae1d64fa5d129d1c2562ea329042136015a4e2097080` |
| 3 | `def` | [toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/tocoalghom--7ac175c0531db5fc6ae73404.md) | 75 | `declaration-track:7ac175c0531db5fc6ae7340433faec056ba27de370b75ac63a5ce6a2d06b6eb1` |
| 4 | `instance` | [instCoeToCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/instcoetocoalghom--393dfaf5d60bd5eed5b11f8f.md) | 81 | `declaration-track:393dfaf5d60bd5eed5b11f8f489e152b2ff19922fae406127dfe2459fdb8d22e` |
| 5 | `theorem` | [counit_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/counit-comp-apply--e1d9eb4b861ba0ecae7e2bf1.md) | 85 | `result-track:e1d9eb4b861ba0ecae7e2bf13931f7d04a2ea889654cf13ba0e633c5f77b5ada` |
| 6 | `theorem` | [map_comp_comul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/map-comp-comul-apply--ed36e633df9df1fc05a0becd.md) | 89 | `result-track:ed36e633df9df1fc05a0becdd0aefdbcd0e5cbf836226379cbf913fe43d7414d` |
| 7 | `instance` | [funLike](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/funlike--2f40661cd369d9ee4afa2cb7.md) | 105 | `declaration-track:2f40661cd369d9ee4afa2cb7a16b468173e8d9c24e4ba0e0ca24f3a63e40e37a` |
| 8 | `instance` | [coalgHomClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coalghomclass--69cd8d4780eece8b3143e364.md) | 112 | `declaration-track:69cd8d4780eece8b3143e364d6ff8e37e9cc51f3f6f40515637cd2ff8bd811ff` |
| 9 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/simps-apply--cc2d0b00d9a97e60afe0817d.md) | 119 | `declaration-track:cc2d0b00d9a97e60afe0817d463ebc03086f3c907fe6ccf322be335d43af6508` |
| 10 | `theorem` | [coe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-coe--87c4662252e029d586f786d3.md) | 127 | `result-track:87c4662252e029d586f786d3716d0fdf65899e255e76ee08404b781b92204656` |
| 11 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-mk--c7973e77a32c1650437c9acd.md) | 132 | `result-track:c7973e77a32c1650437c9acd4b4685842c6a36e3d98920e33f3b4bc902bd2f83` |
| 12 | `theorem` | [coe_mks](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-mks--29fa39aedc4c45ae8e638e62.md) | 136 | `result-track:29fa39aedc4c45ae8e638e62de13f6437dd0bdb9345762c841751427f580090c` |
| 13 | `theorem` | [coe_linearMap_mk](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-linearmap-mk--3d34c13c757824ed41413bfb.md) | 140 | `result-track:3d34c13c757824ed41413bfbf609774e0ad8733cfad89933da9c42fbc9e104a8` |
| 14 | `theorem` | [toLinearMap_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/tolinearmap-eq-coe--419d60afb8f2951a65522c28.md) | 144 | `result-track:419d60afb8f2951a65522c28151876ef5edd477aa0a6b0bcb4d439eb9ac0f373` |
| 15 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-tolinearmap--b2191726ce36385e39989597.md) | 148 | `result-track:b2191726ce36385e39989597d318f6b9ec33192d682b502950e68aa12f44b6c3` |
| 16 | `theorem` | [coe_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-toaddmonoidhom--0a4c13670999f3fd486bfbc2.md) | 152 | `result-track:0a4c13670999f3fd486bfbc21be367eb017dca6f2fa588694d0646e5b09d6f8a` |
| 17 | `theorem` | [coe_fn_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-fn-injective--a1fd253f0585d504532ceb8a.md) | 155 | `result-track:a1fd253f0585d504532ceb8a507149eaedea4a5f3c7620b92a03d3cbc076661d` |
| 18 | `theorem` | [coe_fn_inj](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-fn-inj--1569d9ad05610e7e7012037e.md) | 158 | `result-track:1569d9ad05610e7e7012037ed70452fbbd637e16666f9a96975b16346b3e7532` |
| 19 | `theorem` | [coe_linearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-linearmap-injective--6d2ef5d2832418683b402b09.md) | 161 | `result-track:6d2ef5d2832418683b402b09fc119a44eaf156c8e72de94360f5296c2c27cca4` |
| 20 | `theorem` | [coe_addMonoidHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-addmonoidhom-injective--e8ce3532ff703eddd2f8096b.md) | 165 | `result-track:e8ce3532ff703eddd2f8096b62c789f3f38a2aca60ad3a36f59bb5087644d1f9` |
| 21 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/congr-fun--8d25ed059cf67b5d1a708eb1.md) | 168 | `result-track:8d25ed059cf67b5d1a708eb1792e8442904e7c4d631fb4e0a10f9516efabef66` |
| 22 | `theorem` | [congr_arg](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/congr-arg--7a5e5ac365bfe5acfb430104.md) | 171 | `result-track:7a5e5ac365bfe5acfb4301046f29a9a9d75b7d397704edc285259d03362095bc` |
| 23 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/ext--7196164794fe3d26a9fa4054.md) | 175 | `result-track:7196164794fe3d26a9fa405468df622790ebb79010d636ab71bc7243ec189a07` |
| 24 | `theorem` | [ext_of_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/ext-of-ring--708a2cf6a6d1a57a302f09e4.md) | 179 | `result-track:708a2cf6a6d1a57a302f09e4ed0bc81264e8eaf66d1f65b2f140f12cbf703b84` |
| 25 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/mk-coe--4c4f57e6a4c68ae7403be44f.md) | 183 | `result-track:4c4f57e6a4c68ae7403be44fc4b0be7277e05a2f0b9ff9ea830190b74bcb5256` |
| 26 | `def` | [copy](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/copy--551ad14187f96cb878d84f37.md) | 188 | `declaration-track:551ad14187f96cb878d84f379db99ab00e7aab304b34d4e58a01d6bb1e6dd303` |
| 27 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-copy--6204bbaa88d6bfe5c936d184.md) | 195 | `result-track:6204bbaa88d6bfe5c936d184e30cca4d38510f577e1790f5ba475e8d41560baa` |
| 28 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/copy-eq--090673192d4b2909252ede66.md) | 198 | `result-track:090673192d4b2909252ede6641d4fc9f2cb1532ade275e93cf7ae2369389494c` |
| 29 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/id--beb41d94c9724dd7135aa983.md) | 204 | `declaration-track:beb41d94c9724dd7135aa983c31ea73a824e9ba5c891671debfc68a4773b5f64` |
| 30 | `theorem` | [coe_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-id--50d8ef6a78b4297d1d6f3fdb.md) | 212 | `result-track:50d8ef6a78b4297d1d6f3fdb25dad8d6668d3b11987d7fc24156c75de19465a7` |
| 31 | `theorem` | [id_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/id-tolinearmap--6974d121e48c921a2bed98e2.md) | 216 | `result-track:6974d121e48c921a2bed98e2941bdebb13654849b0e12726d0ac0337b25ff3ee` |
| 32 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/comp--32966418e332c7e4a6f23eb5.md) | 219 | `declaration-track:32966418e332c7e4a6f23eb5bbff8a39d3c406a325df6542755bb33897991934` |
| 33 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/coe-comp--760e9111b6b3eae0fecfca16.md) | 225 | `result-track:760e9111b6b3eae0fecfca16315c12b9fe5e134b0f40141561de3b3348698bc0` |
| 34 | `theorem` | [comp_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/comp-tolinearmap--192b4b5b55d421f0ded78cc4.md) | 228 | `result-track:192b4b5b55d421f0ded78cc437954efa7614aaa6074139430a990ae0a5c89106` |
| 35 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/comp-id--2ecf1955938c56532ecebe33.md) | 234 | `result-track:2ecf1955938c56532ecebe33320df3c777890230073c0c069a87031d5b2a49da` |
| 36 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/id-comp--a37a930a07013e79ce8c4f56.md) | 238 | `result-track:a37a930a07013e79ce8c4f56371c6371457aa02518b97c0ed2183018da3d5038` |
| 37 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/comp-assoc--58058420b98e9cb672d53784.md) | 241 | `result-track:58058420b98e9cb672d53784ec71235f1ffd7144a66383cb9254bfef50fa6e9e` |
| 38 | `theorem` | [map_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/map-smul-of-tower--dd78433a54775782f3b9c871.md) | 245 | `result-track:dd78433a54775782f3b9c871e42b870787c1d607937e055a233972dd3f83aa2e` |
| 39 | `instance` | [End](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/end--feef897426ef4c7433bc73f5.md) | 250 | `declaration-track:feef897426ef4c7433bc73f599b967e2c71a60bd0270cc25ac523563a64c512a` |
| 40 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/one-apply--070269b53cd6d0c50f793c81.md) | 258 | `result-track:070269b53cd6d0c50f793c8143a021a9767893e89c71b363c0507d17cd018fe1` |
| 41 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/mul-apply--64936c6f459892d62a4b7fdb.md) | 262 | `result-track:64936c6f459892d62a4b7fdb72795a79ecc96cf3b0e68ad0fbb6b5eb172d66b5` |
| 42 | `def` | [counitCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/counitcoalghom--2f4ff494a59d1a6ab3d518a3.md) | 277 | `declaration-track:2f4ff494a59d1a6ab3d518a366611505c049883a8598310c6be027d7461c8b11` |
| 43 | `theorem` | [counitCoalgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/counitcoalghom-apply--515f82e57d462ea00492ed47.md) | 286 | `result-track:515f82e57d462ea00492ed47ff3ffd5694d82f16d4653060e28459b79c1814df` |
| 44 | `theorem` | [counitCoalgHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/counitcoalghom-tolinearmap--e2ee66ee1e3d6ae66f754bc3.md) | 290 | `result-track:e2ee66ee1e3d6ae66f754bc305d3d6399ab067f056336d327673eb24dece3dc8` |
| 45 | `instance` | [subsingleton_to_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/subsingleton-to-ring--a1345e908e850b74a196fd80.md) | 295 | `declaration-track:a1345e908e850b74a196fd805b55d2cfc3ed6de5a5341d0c996920d177403d62` |
| 46 | `theorem` | [ext_to_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/ext-to-ring--b2e351a0073464f505e061e6.md) | 303 | `result-track:b2e351a0073464f505e061e66c2141b9dbf40046c1f58ea89ce220873bfd6731` |
| 47 | `def` | [Repr.induced](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/declarations/repr-induced--37d9039bebf4fc6604c88fad.md) | 310 | `declaration-track:37d9039bebf4fc6604c88fad9e6a50c09773c6d84b28a7030caffb2874015020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
