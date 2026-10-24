# Verification target: GRWTSK.Algebra.Hom.Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3843be9c783a0f1d0d349864267d63c5f272c3b9",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3843be9c783a0f1d0d349864267d63c5f272c3b9`.

Source path: `GRWTSK/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean.json)

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
| 1 | `structure` | [BialgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/bialghom--ac7615b83d08093a9ed897bc.md) | 38 | `declaration-track:ac7615b83d08093a9ed897bc1ce5c5f79dca08e339b87adf42558ebd43137bec` |
| 2 | `class` | [BialgHomClass](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/bialghomclass--c4f716eef17d8ca778604d53.md) | 53 | `declaration-track:c4f716eef17d8ca778604d53b2de8d8ab5468fc4d792e713cfeec82e3c3e4d0e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/instance--9053fbe5f9a20934b1f7746c.md) | 68 | `declaration-track:9053fbe5f9a20934b1f7746c538d9b1a456d5b3784f64083cb7be54a980d977d` |
| 4 | `def` | [toBialgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/tobialghom--33ba59a218533a0622d4c4d6.md) | 79 | `declaration-track:33ba59a218533a0622d4c4d62356c35cf579b187d89f43698a4b9297294c7eae` |
| 5 | `instance` | [instCoeToBialgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/instcoetobialghom--5d29566a31277beafbd7e08a.md) | 83 | `declaration-track:5d29566a31277beafbd7e08a0d8f20dfc97b793941a3cb0de3f694533382e64b` |
| 6 | `theorem` | [counitAlgHom_comp](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/counitalghom-comp--7e156651e9db10d95231d2f1.md) | 93 | `result-track:7e156651e9db10d95231d2f11904a938b084f91569da2adcc6c34e1490c26c90` |
| 7 | `theorem` | [map_comp_comulAlgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/map-comp-comulalghom--7f9892f6de5cf14e13c5a28b.md) | 98 | `result-track:7f9892f6de5cf14e13c5a28b9e1e77c40534385b26234db0db3354aa8849c704` |
| 8 | `instance` | [funLike](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/funlike--b50769ab147f6f8c5bf844fb.md) | 116 | `declaration-track:b50769ab147f6f8c5bf844fb020c7251294e67df2e2c46ab2dae0ac8bffbbf65` |
| 9 | `instance` | [bialgHomClass](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/bialghomclass--8295641355aa8ebffe6ba485.md) | 123 | `declaration-track:8295641355aa8ebffe6ba48538a0d74a295bb1a823f6878e555f8dfb21e210ce` |
| 10 | `def` | [Simps.apply](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/simps-apply--e09981be0b11aee66666c042.md) | 132 | `declaration-track:e09981be0b11aee66666c042d1016d83d62f25df2d547898aeb7fb33c3cb16ee` |
| 11 | `theorem` | [coe_coe](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-coe--53366e39037fe775bb586801.md) | 140 | `result-track:53366e39037fe775bb58680167286ca7326f84075d46ef0f6e910a36d7c0a687` |
| 12 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-mk--808b3631b006f793b66db89b.md) | 145 | `result-track:808b3631b006f793b66db89b8d3823a313a2f22225d98348adbb4b1322b300fb` |
| 13 | `theorem` | [coe_mks](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-mks--01ced5a1009cb9ba7d08372a.md) | 149 | `result-track:01ced5a1009cb9ba7d08372acef8e93c90ff945c6a6609517c43b4976b327208` |
| 14 | `theorem` | [coe_coalgHom_mk](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-coalghom-mk--448aaf3071c28c2a916ecf08.md) | 154 | `result-track:448aaf3071c28c2a916ecf0857ee3653d5a979501a04ed39aef25a80cf2e457c` |
| 15 | `theorem` | [coe_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-tocoalghom--424f9fa419509c12b05c12e6.md) | 159 | `result-track:424f9fa419509c12b05c12e6a1678df5fbb0fe3e12536fbc76882ee00bd9aba3` |
| 16 | `lemma` | [toCoalgHom_apply](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/tocoalghom-apply--84e20c52cae9f33a4555ffc8.md) | 162 | `result-track:84e20c52cae9f33a4555ffc80e86a283a44e990a2078dfe3bff21fe2be93d087` |
| 17 | `theorem` | [coe_toLinearMap](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-tolinearmap--801a7fc4f9de27b2e9f47656.md) | 165 | `result-track:801a7fc4f9de27b2e9f476569c8eb673ca8685b613f2dd6be4e7b362bf131942` |
| 18 | `def` | [toAlgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/toalghom--21de18f8ae5a63c57a120347.md) | 170 | `declaration-track:21de18f8ae5a63c57a1203475069e845800a182ed502e2842caf91830b9da9e2` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/instance--26cf9bf0068141ff0f35559e.md) | 176 | `declaration-track:26cf9bf0068141ff0f35559e4ad94c6d01c69f7272ea7542077fb5303d18a0bd` |
| 20 | `theorem` | [coe_toAlgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-toalghom--5fcb7b614252c4f62b339f35.md) | 179 | `result-track:5fcb7b614252c4f62b339f35f8ea9d061d7807210554916dce6dcd1ac9951401` |
| 21 | `theorem` | [toAlgHom_toLinearMap](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/toalghom-tolinearmap--f85f0ea8dda6d883b2369f5e.md) | 182 | `result-track:f85f0ea8dda6d883b2369f5ed76ab8ee9a4b244f7634322c61f881e40c86452d` |
| 22 | `theorem` | [coe_fn_injective](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-fn-injective--8a82773b6c6358b40e260b3a.md) | 188 | `result-track:8a82773b6c6358b40e260b3a18272d5728d7dd6b9a7e4cf9a2920363c2366a58` |
| 23 | `theorem` | [coe_fn_inj](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-fn-inj--2cdba563ec4814c00c1f87bb.md) | 191 | `result-track:2cdba563ec4814c00c1f87bbf7347e7b7d8b8cb6ed111ee2cfe54974641e78fc` |
| 24 | `theorem` | [coe_coalgHom_injective](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-coalghom-injective--1d55c8bd128980babc81e468.md) | 194 | `result-track:1d55c8bd128980babc81e468f8a5df166f4c9fbdc867577709f4736fcddccab0` |
| 25 | `theorem` | [coe_toAlgHom_injective](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-toalghom-injective--e007471a55c47ea4049b0f20.md) | 198 | `result-track:e007471a55c47ea4049b0f20c46eae13844bfe271acb152a18f67bad629d0a9a` |
| 26 | `theorem` | [coe_linearMap_injective](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-linearmap-injective--3ad105fff407740b51eb689d.md) | 204 | `result-track:3ad105fff407740b51eb689d714510e8d529c94a8ee35f1fcb36038b8f99fcdf` |
| 27 | `theorem` | [congr_fun](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/congr-fun--5900d9f070e8bfe83e7fb34b.md) | 207 | `result-track:5900d9f070e8bfe83e7fb34ba2e47051419a810377088eab1c72c78bdc84a842` |
| 28 | `theorem` | [congr_arg](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/congr-arg--308f37485f58e0ec44b6e8d5.md) | 210 | `result-track:308f37485f58e0ec44b6e8d5fb599adbadbe5b844c2f252eaa47e4fe794160ca` |
| 29 | `theorem` | [ext](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/ext--4443bc87abd7075e8ce7f6aa.md) | 214 | `result-track:4443bc87abd7075e8ce7f6aaebed23828b826eb66dc7fb36b074cb06f2032735` |
| 30 | `theorem` | [ext_of_ring](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/ext-of-ring--4190187efa54569bebc72bfd.md) | 218 | `result-track:4190187efa54569bebc72bfd9a97c8a9fded71af0d4016851fb87ef8e369be11` |
| 31 | `theorem` | [mk_coe](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/mk-coe--c0fc9609ea52336eb9413cde.md) | 222 | `result-track:c0fc9609ea52336eb9413cdea3d54a6c944caf9dea1f4985fefb9686ba9bbf8d` |
| 32 | `def` | [copy](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/copy--b3723e9d9fd28f39422af147.md) | 228 | `declaration-track:b3723e9d9fd28f39422af1474e1c881a09dfeef2807e7d9fc4f2565ed7d765e1` |
| 33 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-copy--7cf0a13b5a9b1b03dcde3119.md) | 234 | `result-track:7cf0a13b5a9b1b03dcde311977eea604cc86a1d6a5651fc87b6ee174ca6315a0` |
| 34 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/copy-eq--342cb1a471c3cbd4a3c047aa.md) | 237 | `result-track:342cb1a471c3cbd4a3c047aa1ac541cc533656512b1a4ef8f84950f859678d2b` |
| 35 | `def` | [id](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/id--042011ae83e640e1b4bf069f.md) | 245 | `declaration-track:042011ae83e640e1b4bf069f73cef889ccbfc4d1a8e27b24c1a6793a891e2ba4` |
| 36 | `theorem` | [coe_id](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-id--f61b1f115859a5654441ecd1.md) | 251 | `result-track:f61b1f115859a5654441ecd16932748501728ab95983c7a104981d0f3c8e62e4` |
| 37 | `theorem` | [id_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/id-tocoalghom--c37c686edf4f5181d982eda0.md) | 255 | `result-track:c37c686edf4f5181d982eda044f3d6eeb9f3d35b133c6754f094e593f78b1bf0` |
| 38 | `theorem` | [id_toAlgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/id-toalghom--6f5c8a2804881bd690ca14bf.md) | 259 | `result-track:6f5c8a2804881bd690ca14bf0f3e3a9ca5c2d842378a3562f31237d91ea8bbe3` |
| 39 | `def` | [comp](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/comp--01efb54b4497c63a9d311121.md) | 265 | `declaration-track:01efb54b4497c63a9d3111212801e4a4aaac8600c08b426b5e64ad7b9c4bb003` |
| 40 | `theorem` | [coe_comp](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/coe-comp--c7055dd5b2ee2c64ea64f1fa.md) | 269 | `result-track:c7055dd5b2ee2c64ea64f1fa773fc9483c73876bc6a71d17d5cc8fb91dd30897` |
| 41 | `theorem` | [comp_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/comp-tocoalghom--ae4728b548dbbe939dd77d5b.md) | 273 | `result-track:ae4728b548dbbe939dd77d5be4729d328d75ef10fa00b8580339183791226e9a` |
| 42 | `theorem` | [comp_toAlgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/comp-toalghom--ab7cd1c0dec1b19b9dbbbe0d.md) | 278 | `result-track:ab7cd1c0dec1b19b9dbbbe0d6a58c96a7bdf149f8bc133d029e1963efe62634a` |
| 43 | `theorem` | [comp_id](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/comp-id--0ed9a768b4dafb318637b323.md) | 283 | `result-track:0ed9a768b4dafb318637b323d9fa8cfabe483fcf86b25faab9f8f266e18ccf2b` |
| 44 | `theorem` | [id_comp](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/id-comp--2dfcd418cad1c39be0b1db90.md) | 287 | `result-track:2dfcd418cad1c39be0b1db905f005767c65dc4856dc547de688872cd5a5d8c1b` |
| 45 | `theorem` | [comp_assoc](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/comp-assoc--d3295397552f4f5992cded58.md) | 290 | `result-track:d3295397552f4f5992cded5810dc1708790a3b556efefcbaf7042591ca9307c3` |
| 46 | `theorem` | [map_smul_of_tower](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/map-smul-of-tower--a7c1c69061ed0a2c2ebc29b7.md) | 294 | `result-track:a7c1c69061ed0a2c2ebc29b70371ee6c7dca28df77266047adfe32f75873844b` |
| 47 | `instance` | [End](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/end--99561bebe277440770154440.md) | 299 | `declaration-track:99561bebe277440770154440cb89158ed191064612503e893f88b5f03bf31af1` |
| 48 | `theorem` | [one_apply](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/one-apply--882f744b11178a0d8cc642b7.md) | 307 | `result-track:882f744b11178a0d8cc642b7ac016e9022951abbb5a61d98d2b1b1c3c7854feb` |
| 49 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/mul-apply--eba715f566cedcc089692e01.md) | 311 | `result-track:eba715f566cedcc089692e01a958a8c17644fc939373fc4f33066fb514672f50` |
| 50 | `def` | [ofAlgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/ofalghom--8660e59941b7d1fbe25abda4.md) | 320 | `declaration-track:8660e59941b7d1fbe25abda4a05637ff814a1f42e5747c41f7ca726a3f173642` |
| 51 | `theorem` | [counitAlgHom_comp](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/counitalghom-comp--fead08c7c4a02a74e0576d91.md) | 330 | `result-track:fead08c7c4a02a74e0576d9172de5f0d0ef84796e48ea85323550349da8dd1a0` |
| 52 | `theorem` | [map_comp_comulAlgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/map-comp-comulalghom--38e78d4a7e484ffdcd93894a.md) | 335 | `result-track:38e78d4a7e484ffdcd93894af2f7bb6a8cf295454b53b244a19a85fb3971fb04` |
| 53 | `def` | [unitBialgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/unitbialghom--6fa545f19a2152a6138f75b6.md) | 346 | `declaration-track:6fa545f19a2152a6138f75b6a1034011cab1dc59d23514696ef73d2fcef459ca` |
| 54 | `def` | [counitBialgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/counitbialghom--8493a0c21a2bb559961b6445.md) | 351 | `declaration-track:8493a0c21a2bb559961b6445a3f572c0500a333754bcb1badfd16893fa4f4992` |
| 55 | `theorem` | [counitBialgHom_apply](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/counitbialghom-apply--efe10d4a4c3bc4237b56d2ad.md) | 355 | `result-track:efe10d4a4c3bc4237b56d2ad5aff7a2163bf4d01122f22d199a9e7d2d9692ab0` |
| 56 | `theorem` | [counitBialgHom_toCoalgHom](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/counitbialghom-tocoalghom--a5a827fc45e1225ee30411ce.md) | 359 | `result-track:a5a827fc45e1225ee30411ce8ad9ae287c3c42367b964ff0bf0ebb11e8447aa6` |
| 57 | `lemma` | [counitBialgHom_self](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/counitbialghom-self--1fa096458a6f3a5630a5bc1a.md) | 362 | `result-track:1fa096458a6f3a5630a5bc1aee52307234e533d062d5268d924fa691e0614f22` |
| 58 | `instance` | [subsingleton_to_ring](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/subsingleton-to-ring--11755d75c967b553ffa1738a.md) | 364 | `declaration-track:11755d75c967b553ffa1738a16662934fd0c133d37bfc8c67c40c42f5648238d` |
| 59 | `theorem` | [ext_to_ring](../../../../mathematics/Algebra/Hom/Variant933938638400b890dd2b7ec4db3c5d7bc481e93d6a95a8a69b2897219100b688.lean/declarations/ext-to-ring--a23e5ce8b3bc9202dba18046.md) | 368 | `result-track:a23e5ce8b3bc9202dba18046a92391f6185f4d79cc15a251fd285ecbcebc30a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
