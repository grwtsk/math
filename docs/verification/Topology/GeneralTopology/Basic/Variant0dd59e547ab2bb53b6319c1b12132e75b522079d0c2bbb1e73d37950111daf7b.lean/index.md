# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a890d2992c35a591b99c7f0691a83a407c63e99",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a890d2992c35a591b99c7f0691a83a407c63e99`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean.json)

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
| 1 | `def` | [reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/refltranssymmaux--59748b9a407215f254dba304.md) | 50 | `declaration-track:59748b9a407215f254dba3041d5dfb546b1ea8de16f8d29b21d421c59553ada2` |
| 2 | `theorem` | [continuous_reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/continuous-refltranssymmaux--058d72c1a13b8231aaf9e792.md) | 54 | `result-track:058d72c1a13b8231aaf9e79245cf6c3a07e5448e140c1d154ec64bcd09dbb690` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/refltranssymmaux-mem-i--17de60e06968506ea65ebf04.md) | 57 | `result-track:17de60e06968506ea65ebf04d975bc7d7bc8ec841aa1b8abcb980030fed9e32c` |
| 4 | `def` | [reflTransSymm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/refltranssymm--25876fa74369033ab0865055.md) | 70 | `declaration-track:25876fa74369033ab0865055cf310b8f25d9b2d4be726ca458ce69e9b5ca79d3` |
| 5 | `def` | [reflSymmTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/reflsymmtrans--e4ab3f6c8c67d2f7de5fabe9.md) | 85 | `declaration-track:e4ab3f6c8c67d2f7de5fabe9ef3d378eb5e00796eb7eb2d72fcacb667d467fdd` |
| 6 | `def` | [transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transreflreparamaux--2577e4947c1eef2ca1329cc8.md) | 93 | `declaration-track:2577e4947c1eef2ca1329cc8bb114e245a771ac413f611e029117394ffc6ba82` |
| 7 | `theorem` | [continuous_transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/continuous-transreflreparamaux--9f73a51d6a0204ee66c2c8ae.md) | 97 | `result-track:9f73a51d6a0204ee66c2c8aee97297313ec44fde67c529474a3e769a39e3e7e6` |
| 8 | `theorem` | [transReflReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transreflreparamaux-mem-i--d4f375d1b0068065040d4445.md) | 100 | `result-track:d4f375d1b0068065040d4445e341e08543587107c07d40012cfdd7999bb783cc` |
| 9 | `theorem` | [transReflReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transreflreparamaux-zero--a4ea34207e2740cb77fafa51.md) | 104 | `result-track:a4ea34207e2740cb77fafa51a86a2aeb353a0ab7b254fa44617dafe684d68dba` |
| 10 | `theorem` | [transReflReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transreflreparamaux-one--0d878fc16745ad3475e702b3.md) | 107 | `result-track:0d878fc16745ad3475e702b34c72d3ad96b7cab1922445432c6bd950babdaade` |
| 11 | `theorem` | [trans_refl_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-refl-reparam--6319ae3e3eb9bb9582a981e4.md) | 111 | `result-track:6319ae3e3eb9bb9582a981e416d5340c1b3e4951556f8749989a50e24ca23803` |
| 12 | `def` | [transRefl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transrefl--6ebb67aa7f056879d6e7e19e.md) | 121 | `declaration-track:6ebb67aa7f056879d6e7e19e665b6c8d62fe45cb158a65ffcb5170f24042070d` |
| 13 | `def` | [reflTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/refltrans--81660fcef4dfb9d5418c03bf.md) | 128 | `declaration-track:81660fcef4dfb9d5418c03bfe0cf25ea202f9d1bf2c231dafb4d26e041104370` |
| 14 | `def` | [transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transassocreparamaux--851df27944719d3f1a0ad63e.md) | 136 | `declaration-track:851df27944719d3f1a0ad63e54999bccde8e8edf90f27b782eef0c59e62a9e40` |
| 15 | `theorem` | [continuous_transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/continuous-transassocreparamaux--9e4a2f28c14d389e559adbab.md) | 140 | `result-track:9e4a2f28c14d389e559adbab63427ce784d9db728be74a63ea71767a024bdbdf` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transassocreparamaux-mem-i--4c604d0a1501c4dbf405ad9b.md) | 145 | `result-track:4c604d0a1501c4dbf405ad9b2286fdbbd756adcc597aa3902691cce3b2b5a1e1` |
| 17 | `theorem` | [transAssocReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transassocreparamaux-zero--ce1ab8bb99b82126c2e59a39.md) | 149 | `result-track:ce1ab8bb99b82126c2e59a39d81e23141ac8e2ca7098ad15c033fb7754f21c69` |
| 18 | `theorem` | [transAssocReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transassocreparamaux-one--7d880bc4a7a4a2bb6f096985.md) | 152 | `result-track:7d880bc4a7a4a2bb6f096985652562435afc62ec63077b548d8d0f23a5c52d6d` |
| 19 | `theorem` | [trans_assoc_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-assoc-reparam--31bc45da9980a587c12feeb9.md) | 155 | `result-track:31bc45da9980a587c12feeb9898660877dd71662657f41b90cd8b5530df561ff` |
| 20 | `def` | [transAssoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/transassoc--5356a285feaca5b2f68e4e5a.md) | 169 | `declaration-track:5356a285feaca5b2f68e4e5ab458a15dab51c684ed0cc729634b55772a483134` |
| 21 | `theorem` | [refl_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/refl-trans--9bf8e540ee48765d6ed6ce94.md) | 182 | `result-track:9bf8e540ee48765d6ed6ce94f91bd1c0ec86e33b9bfdf7a4464ddbbea2acdf92` |
| 22 | `theorem` | [trans_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-refl--a3e81dae1d9507c038dc9d57.md) | 186 | `result-track:a3e81dae1d9507c038dc9d571cccd0b74760d258ee7d3a2904c0625debf8b0ee` |
| 23 | `theorem` | [trans_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-symm--ba89bc47e9c53200401e608d.md) | 190 | `result-track:ba89bc47e9c53200401e608dfc1ef93c83e8db18e996f6fc95a1a1d7504795cd` |
| 24 | `theorem` | [symm_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/symm-trans--95bc1d5a33b9a94cb70928c0.md) | 194 | `result-track:95bc1d5a33b9a94cb70928c0af921874d8c19109213d67fa978375ec01a90b0c` |
| 25 | `theorem` | [trans_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-assoc--838029a65b712661a1e44aa0.md) | 198 | `result-track:838029a65b712661a1e44aa05f259a507fb188e2b04828a6a0791b5c310dbde9` |
| 26 | `theorem` | [refl_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/refl-trans--6dc02b4b22c95e0217b15b39.md) | 205 | `result-track:6dc02b4b22c95e0217b15b3968609487100520d58640d1b0a660fec01b0d2f2c` |
| 27 | `theorem` | [trans_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-refl--a2ce809c1062b793f1331b7d.md) | 211 | `result-track:a2ce809c1062b793f1331b7d7695802e1f7adc9eaf10a8f1091be8c87dc92c63` |
| 28 | `theorem` | [trans_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-symm--c9b15c50bf628da9983db4a2.md) | 217 | `result-track:c9b15c50bf628da9983db4a2011a5005f1423ecc655471e95737c856ee691ade` |
| 29 | `theorem` | [symm_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/symm-trans--fb3612c2ba27d85e5ec6f6d7.md) | 223 | `result-track:fb3612c2ba27d85e5ec6f6d70863a8e2b507131f2bb3321f74d79de1f4c16932` |
| 30 | `theorem` | [trans_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/trans-assoc--7ef2fda90d45a7382e6d8459.md) | 229 | `result-track:7ef2fda90d45a7382e6d84599e2152d7483fdd35159b82446639ca67a26c686c` |
| 31 | `structure` | [FundamentalGroupoid](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/fundamentalgroupoid--ef9b1f7636d846038e3fb6bf.md) | 248 | `declaration-track:ef9b1f7636d846038e3fb6bf40e30f00bd24680884bfc96c07535cf1c2c170d7` |
| 32 | `def` | [equiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/equiv--6d27203c57a62abe369b6476.md) | 258 | `declaration-track:6d27203c57a62abe369b6476c6ba7d5d2ee1508dbfc0946a282074fba101515e` |
| 33 | `lemma` | [isEmpty_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/isempty-iff--807d34fad72015faca85a5e6.md) | 263 | `result-track:807d34fad72015faca85a5e6a9cd0efa762b9751353f00f1e40a0f5a53697df5` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/instance--0db17b15c5152317721b9c3e.md) | 267 | `declaration-track:0db17b15c5152317721b9c3eb96e0b5067f3aad3f727536b417363bc52d7f115` |
| 35 | `lemma` | [nonempty_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/nonempty-iff--a7ef9029e2572380e75e5806.md) | 272 | `result-track:a7ef9029e2572380e75e5806210da30832416bf2a60dbdfb37dc02fac8d5cf0b` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/instance--ba1c709b2916cb1ac5b5bb8d.md) | 276 | `declaration-track:ba1c709b2916cb1ac5b5bb8d2dce7bdbb478b6bf41d12a668accf08fd084e62a` |
| 37 | `lemma` | [subsingleton_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/subsingleton-iff--7d733bd194e6f11f77193e2d.md) | 281 | `result-track:7d733bd194e6f11f77193e2d32912ebff81f6d03d94713e73e0128b12398a5b0` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/instance--361eb8272bcb0bee7332ef26.md) | 285 | `declaration-track:361eb8272bcb0bee7332ef26e13fdb8ff259b1eef17c7965af4619e074e694c0` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/instance--6e93e12adfe5ff41840680a1.md) | 292 | `declaration-track:6e93e12adfe5ff41840680a1d9a4852b87ea77fea5efee196d36227c5f0960b1` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/instance--21a9ca52d40498950cad19cc.md) | 295 | `declaration-track:21a9ca52d40498950cad19cc0706388b3f5a605ad02320cca2f5b7fbb9b4ae74` |
| 41 | `theorem` | [comp_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/comp-eq--be19dc0cccc5d51a54135044.md) | 306 | `result-track:be19dc0cccc5d51a5413504498be69193255d890268ac3a8fd6618b00d0d0c3f` |
| 42 | `theorem` | [id_eq_path_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/id-eq-path-refl--baede629913916d32772a7da.md) | 308 | `result-track:baede629913916d32772a7da4d9018ca60df905e319fea4fb36eff06d9b41353` |
| 43 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/map--ac49a95561d5522824fdc78c.md) | 311 | `declaration-track:ac49a95561d5522824fdc78c55a9a85a8432db3edeceb3404f263768428c75fa` |
| 44 | `theorem` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/map-id--176808bfbae00a1b8051407b.md) | 318 | `result-track:176808bfbae00a1b8051407b2409257f9d6dbb5909d208b77fa89137a0c3ba12` |
| 45 | `theorem` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/map-comp--b1375a73c273fdb9bfd3fede.md) | 322 | `result-track:b1375a73c273fdb9bfd3fedeba518b38609b5ac0b93ecf3b2576f26b4fe9e1ab` |
| 46 | `def` | [fundamentalGroupoidFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/fundamentalgroupoidfunctor--a8fa4468258640147cd53d1a.md) | 327 | `declaration-track:a8fa4468258640147cd53d1acde2091364615b6ae75e2593afd5df9b3e982744` |
| 47 | `theorem` | [map_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/map-eq--9ea3628916f021a66635ca35.md) | 341 | `result-track:9ea3628916f021a66635ca35a36f242fb1d624a5ae81bcdd9ffa2f160af3cf82` |
| 48 | `abbrev` | [toTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/totop--51677c6f671d7ac7555f631f.md) | 346 | `declaration-track:51677c6f671d7ac7555f631f1513aad684e874ef115d6488dcfd25a245ed9ce5` |
| 49 | `abbrev` | [fromTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/fromtop--8af92383f5826ad08d9e751e.md) | 350 | `declaration-track:8af92383f5826ad08d9e751e90466bd4ea8b777833f355d3739f4b9000bbb3e3` |
| 50 | `abbrev` | [toPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/topath--3df2fa6fd35edc2618985df1.md) | 354 | `declaration-track:3df2fa6fd35edc2618985df189e7c2b3339d64bc754faa468125303cd8a57ac3` |
| 51 | `abbrev` | [fromPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/frompath--24b7fc624737cd37afa23568.md) | 360 | `declaration-track:24b7fc624737cd37afa2356891ef5ab1509d0931a9ed6c69ba164215531cc428` |
| 52 | `theorem` | [fromPath_eq_iff_homotopic](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/frompath-eq-iff-homotopic--189d236b6e05fac86ce3b50a.md) | 364 | `result-track:189d236b6e05fac86ce3b50aa206d44784b209edda68ed634ae16339be669228` |
| 53 | `lemma` | [eqToHom_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/eqtohom-eq--3132f35370fe2aabb9379143.md) | 369 | `result-track:3132f35370fe2aabb9379143f97247ccba7ced2ce541732c0e79c7602f4927fd` |
| 54 | `lemma` | [conj_eqToHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0dd59e547ab2bb53b6319c1b12132e75b522079d0c2bbb1e73d37950111daf7b.lean/declarations/conj-eqtohom--4e5a111f8e756c37ca725fc7.md) | 373 | `result-track:4e5a111f8e756c37ca725fc7d22f450c769cd819c61b9e35b76c5aae27b54ad5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
