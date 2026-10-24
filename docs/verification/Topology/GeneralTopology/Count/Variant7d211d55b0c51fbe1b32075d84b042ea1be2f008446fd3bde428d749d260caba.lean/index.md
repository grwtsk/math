# Verification target: GRWTSK.Topology.GeneralTopology.Count.Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec84f01a1b1adcf70484e95d8e925a34266c5dff",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec84f01a1b1adcf70484e95d8e925a34266c5dff`.

Source path: `GRWTSK/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_nil](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-nil--debb8556676ed176aefe9889.md) | 34 | `result-track:debb8556676ed176aefe988922e3247feee07339b237b23ac77285908936cdd0` |
| 2 | `theorem` | [countP_go_eq_add](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-go-eq-add--26df68cb2fc1f32f0e50ae88.md) | 36 | `result-track:26df68cb2fc1f32f0e50ae88c3f02ded1e0530d2725af86c094ddb8fdac0f886` |
| 3 | `theorem` | [countP_cons_of_pos](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-cons-of-pos--323acd6a481e4c1c5407ab49.md) | 44 | `result-track:323acd6a481e4c1c5407ab49c961ec6406b801e9f1656cab81596993fabcb4b2` |
| 4 | `theorem` | [countP_cons_of_neg](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-cons-of-neg--cff46b6cd695eb76492976ef.md) | 49 | `result-track:cff46b6cd695eb76492976ef772824f3628a19417740bbb020730d4219d4fd3e` |
| 5 | `theorem` | [countP_cons](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-cons--47321885af60ba7597be3d69.md) | 52 | `result-track:47321885af60ba7597be3d69b923d79d085c27b7ac273f8ac83fd126b2fbc94d` |
| 6 | `theorem` | [length_eq_countP_add_countP](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/length-eq-countp-add-countp--bb067a7b796cf5898ca5f5ae.md) | 55 | `result-track:bb067a7b796cf5898ca5f5ae302468edca518f8412d609380b502f204de02d16` |
| 7 | `theorem` | [countP_eq_length_filter](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-eq-length-filter--8b489e474e904daa20fe9ba0.md) | 68 | `result-track:8b489e474e904daa20fe9ba032a0a0dee54d1b427dd37c7684ffd4e429f7d1bf` |
| 8 | `theorem` | [countP_le_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-le-length--71c9b58ba9a963174cc8a863.md) | 76 | `result-track:71c9b58ba9a963174cc8a863fb61f5c7d2fdb18f582d96f14a4bdeb7a1eb5fcf` |
| 9 | `theorem` | [countP_append](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-append--bd8b6bc624d3cf950fd393f3.md) | 80 | `result-track:bd8b6bc624d3cf950fd393f325760efee52e58bb11d238fac981ab503228aa7a` |
| 10 | `theorem` | [countP_pos](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-pos--56b11a04453941c2392b8b16.md) | 83 | `result-track:56b11a04453941c2392b8b16223b8e2011547e1d1c7c64455e8d1e23fb095a66` |
| 11 | `theorem` | [countP_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-eq-zero--33d00217dd153b5cbf85ee49.md) | 86 | `result-track:33d00217dd153b5cbf85ee4991c7c77d99bae60c4cd5737770ef7b878232a8a9` |
| 12 | `theorem` | [countP_eq_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-eq-length--0a0f2c2bd36d70bd8e5b19b8.md) | 89 | `result-track:0a0f2c2bd36d70bd8e5b19b8852ce312d86592eeb0410ba0619a184fc3550d93` |
| 13 | `theorem` | [Sublist.countP_le](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/sublist-countp-le--03d6b3c6d8375d7048b16fd1.md) | 92 | `result-track:03d6b3c6d8375d7048b16fd16c82419507599d485b6f1522ebe29777c3c268c7` |
| 14 | `theorem` | [countP_filter](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-filter--844985e166dcf70653320111.md) | 96 | `result-track:844985e166dcf706533201110b3ca4e4419a06d478aa85bfd58dca81d82565f9` |
| 15 | `theorem` | [countP_true](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-true--cf8b2911d1bc50ceb34027cc.md) | 100 | `result-track:cf8b2911d1bc50ceb34027ccff17c66b69a020ae5dead25cb39220c3857641cd` |
| 16 | `theorem` | [countP_false](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-false--b0865ebac9435722271efb7c.md) | 104 | `result-track:b0865ebac9435722271efb7cdcb2af0e1c78051412db0f8014be0c3e9505b48c` |
| 17 | `theorem` | [countP_map](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-map--9c642a3867a3d1009d599265.md) | 108 | `result-track:9c642a3867a3d1009d599265d93510aaa5e3930a4796cc24f39e7539a9c49c2f` |
| 18 | `theorem` | [countP_mono_left](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-mono-left--f62d9808137ae86191bc2261.md) | 115 | `result-track:f62d9808137ae86191bc2261cdb50608e70a1cbe6b77eb75de12764d3846bab7` |
| 19 | `theorem` | [countP_congr](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/countp-congr--e0a9d9aede6b96af32cbe1ee.md) | 130 | `result-track:e0a9d9aede6b96af32cbe1ee15db2feca6e4ba03746b66a6885d58014cb4f5cb` |
| 20 | `theorem` | [count_nil](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-nil--8e873a72b6d3be6df34e6d36.md) | 143 | `result-track:8e873a72b6d3be6df34e6d36fdfc8c16e3fff9c425d7c2184f09f902f3d0793a` |
| 21 | `theorem` | [count_cons](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-cons--d3f21aaa8b83861bb3063090.md) | 145 | `result-track:d3f21aaa8b83861bb306309014bc427f7cd7ab2c001628abb3ae7a39af642583` |
| 22 | `theorem` | [count_cons_self](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-cons-self--ef609feffaff13ad5d34f5b1.md) | 149 | `result-track:ef609feffaff13ad5d34f5b1e1fcbfbe69af8f0217fd88afba58fa9d03ee7055` |
| 23 | `theorem` | [count_cons_of_ne](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-cons-of-ne--a9365110b9e553d1bf52801a.md) | 152 | `result-track:a9365110b9e553d1bf52801a08f9fbeb05cae99127a05dc5b06f6d63660b6abe` |
| 24 | `theorem` | [count_tail](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-tail--df2e5938f64a7f6b272936ab.md) | 155 | `result-track:df2e5938f64a7f6b272936abb42dbd4bc3449cc5d24a7cb407c089dbeeb8b887` |
| 25 | `theorem` | [count_le_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-le-length--268c8d80aaca13624760e87a.md) | 159 | `result-track:268c8d80aaca13624760e87aee0ec76a6071248f1480a640cf8a02cc7ab7b8d4` |
| 26 | `theorem` | [Sublist.count_le](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/sublist-count-le--af0eeab76408ff8ee5fd934c.md) | 161 | `result-track:af0eeab76408ff8ee5fd934c896320550750d8be55a20d54c7a9300a0e0785b6` |
| 27 | `theorem` | [count_le_count_cons](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-le-count-cons--5946a5126b1b1030f5696244.md) | 163 | `result-track:5946a5126b1b1030f569624424d66af7563a3de011fb34b855b4c455dd00f0a3` |
| 28 | `theorem` | [count_singleton](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-singleton--e10921f8492204a7875fba7b.md) | 166 | `result-track:e10921f8492204a7875fba7b154aeb9de5fd75dd98ae02249bde5ee6186856f7` |
| 29 | `theorem` | [count_singleton'](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-singleton--00715bf987209cf64071bff4.md) | 168 | `result-track:00715bf987209cf64071bff4cbbdb3b1bc5b97717aa9d93d512cb22c694ff296` |
| 30 | `theorem` | [count_append](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-append--a0389a34bf8241267a4cced6.md) | 170 | `result-track:a0389a34bf8241267a4cced643a7ea00d2d632c8ab15bff219e581b50144d1d0` |
| 31 | `theorem` | [count_concat](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-concat--4266acfc49d9d251bbfc47fd.md) | 173 | `result-track:4266acfc49d9d251bbfc47fdf8a6d679978bfb3a5a74d20cf56550a7759bc867` |
| 32 | `theorem` | [count_pos_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-pos-iff-mem--a4950cc873670b48d8930c54.md) | 175 | `result-track:a4950cc873670b48d8930c5444a61890b41fa4111c7c4f289e544111b12242f8` |
| 33 | `theorem` | [count_eq_zero_of_not_mem](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-eq-zero-of-not-mem--196dda8805aec05a4dff5c37.md) | 178 | `result-track:196dda8805aec05a4dff5c37cd554041f9d64911feb88d00ff76780e234b09c5` |
| 34 | `theorem` | [not_mem_of_count_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/not-mem-of-count-eq-zero--d68b63c0e44d3840a07ffad8.md) | 181 | `result-track:d68b63c0e44d3840a07ffad8c8ffce629fa653a3d120aa7d93408278a34ad99f` |
| 35 | `theorem` | [count_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-eq-zero--81ac8d6e641f34229a41da5f.md) | 184 | `result-track:81ac8d6e641f34229a41da5fc663732a175de6893895b2358757f4c3623c2c6b` |
| 36 | `theorem` | [count_eq_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-eq-length--2fa4fdf4f674f92ac715377c.md) | 187 | `result-track:2fa4fdf4f674f92ac715377c0cbb74fc2ffa389428e1350489c01c4db3f24fcb` |
| 37 | `theorem` | [count_replicate_self](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-replicate-self--c24033f3cc77fea6cca9baaa.md) | 193 | `result-track:c24033f3cc77fea6cca9baaaa90e5dca9e75d93460a0ed9afb28cdb9563b6d34` |
| 38 | `theorem` | [count_replicate](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-replicate--e753188de7f687d1951e07c9.md) | 196 | `result-track:e753188de7f687d1951e07c999a10344eeb9a8c94f0bef57f45bd83c9966235e` |
| 39 | `theorem` | [filter_beq'](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/filter-beq--55c2201efbf6ab12765bc283.md) | 200 | `result-track:55c2201efbf6ab12765bc283c8e939904f4c81e507cdb10ba93f12946c292eea` |
| 40 | `theorem` | [filter_eq'](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/filter-eq--af675caf3a5e87dfc7501457.md) | 204 | `result-track:af675caf3a5e87dfc75014575a62c6d491d1425743e92b428dd970615263c0b0` |
| 41 | `theorem` | [filter_eq](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/filter-eq--eec2750758abe403f8d23251.md) | 207 | `result-track:eec2750758abe403f8d23251e79d990b65439dcb76204bde648d09520d0b556d` |
| 42 | `theorem` | [filter_beq](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/filter-beq--ae1c22401c225096ef3dd39d.md) | 210 | `result-track:ae1c22401c225096ef3dd39dac25603ee957ca87ba226d2deb995b4340eb0bdf` |
| 43 | `theorem` | [le_count_iff_replicate_sublist](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/le-count-iff-replicate-sublist--18f0fbf731b873bc2f904aa4.md) | 213 | `result-track:18f0fbf731b873bc2f904aa4606f1402393a07febab0d9dcc493ea81fa747779` |
| 44 | `theorem` | [replicate_count_eq_of_count_eq_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/replicate-count-eq-of-count-eq-length--fde10e392f32be92ce374975.md) | 218 | `result-track:fde10e392f32be92ce3749759474a5a30457e5fe04f502ee344d6f36fa04308f` |
| 45 | `theorem` | [count_filter](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-filter--a053c7346f220bac88574439.md) | 223 | `result-track:a053c7346f220bac8857443952fce123bd0b44b53f980a2322f787fc8a511d80` |
| 46 | `theorem` | [count_le_count_map](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-le-count-map--412eb75f3cba76b0a0b30730.md) | 228 | `result-track:412eb75f3cba76b0a0b3073023216ecd872722300936f06e215d6e1d748ab8d7` |
| 47 | `theorem` | [count_erase](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-erase--7a20a82df9ae18baec538b3a.md) | 233 | `result-track:7a20a82df9ae18baec538b3a98729e884b6bbbad0cd00abd9c471fe5df0bda75` |
| 48 | `theorem` | [count_erase_self](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-erase-self--7f90a40628b41a394b419851.md) | 248 | `result-track:7f90a40628b41a394b4198515fe211e905a9a7f5ad18bf80ab4574b37ad1c2ae` |
| 49 | `theorem` | [count_erase_of_ne](../../../../../mathematics/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/declarations/count-erase-of-ne--9664959d78118f4e38815d3c.md) | 251 | `result-track:9664959d78118f4e38815d3c05bb70dfeaff57c88d1c4cf1be34def389734371` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
