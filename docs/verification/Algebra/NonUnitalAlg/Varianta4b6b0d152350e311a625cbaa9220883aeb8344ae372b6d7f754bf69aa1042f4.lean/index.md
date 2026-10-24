# Verification target: GRWTSK.Algebra.NonUnitalAlg.Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e18cdd8c4c60795a25dabba3642f3abbb659134",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e18cdd8c4c60795a25dabba3642f3abbb659134`.

Source path: `GRWTSK/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/nonunitalalghom--151291ca92a2b9fd4f99fac8.md) | 55 | `declaration-track:151291ca92a2b9fd4f99fac870aa643cea151c2c513840a6a69c1c71ea066075` |
| 2 | `class` | [NonUnitalAlgHomClass](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/nonunitalalghomclass--032fb55f29aa4b08ea0e5dda.md) | 69 | `declaration-track:032fb55f29aa4b08ea0e5ddadf4fc6abd287880594cd978b593e63e9b2d201c0` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--4dfa08a8084c31a25325ae5e.md) | 82 | `declaration-track:4dfa08a8084c31a25325ae5ef13ad0f350678fc17af77dc9e5e6a1a2076a74ba` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--3860a95fbf53675448262192.md) | 93 | `declaration-track:3860a95fbf536754482621929798fdf8fa3acb3081b89dd7e97d6e6a8ae8a707` |
| 5 | `def` | [toNonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/tononunitalalghom--70c3af2eebd487536f1d5826.md) | 99 | `declaration-track:70c3af2eebd487536f1d5826620eff7944a421bd34a73ea9a8a4eb61505462af` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--3aa0378e088501c52bcbb57a.md) | 105 | `declaration-track:3aa0378e088501c52bcbb57abe5f61ec465302f94d7949773fa45f18a43ce0d0` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--7c034a7b38ffd61881c683f2.md) | 127 | `declaration-track:7c034a7b38ffd61881c683f2fa058cb994befee1349e99d659e163d19e0794c5` |
| 8 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/tofun-eq-coe--20c51ba7248c1139f435a950.md) | 132 | `result-track:20c51ba7248c1139f435a950ef0fbbf50e327d771c34e401c0ceb63c1b50e9e4` |
| 9 | `def` | [Simps.apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/simps-apply--a148db4ca2c8cd0df362c456.md) | 137 | `declaration-track:a148db4ca2c8cd0df362c45616ee4d7bddaf35eb83f37b3cc3e5144ed976e530` |
| 10 | `theorem` | [coe_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-coe--7c8cf0441c95f49e0ef2a708.md) | 143 | `result-track:7c8cf0441c95f49e0ef2a70848b9f81da74f19fc6bdc44f061abc7571efeb2be` |
| 11 | `theorem` | [coe_injective](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-injective--72733bee99b77e77a76194f7.md) | 148 | `result-track:72733bee99b77e77a76194f778074eb119544c92fb5f8b0a72e343d2ca3cf9b0` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--491acf0031315bb0b923e832.md) | 152 | `declaration-track:491acf0031315bb0b923e832a00e969b5e5d8bbecce58d6dcde8226d5763be90` |
| 13 | `theorem` | [ext](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/ext--3fdc53b359f86139319e201d.md) | 162 | `result-track:3fdc53b359f86139319e201d1febbfc37b480d7a91b6d7f3057eefbed21c1e03` |
| 14 | `theorem` | [ext_iff](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/ext-iff--61e48c3572d131f726bb31b2.md) | 166 | `result-track:61e48c3572d131f726bb31b2c07d4948e22cea06eb4c8e470a14c9aff4b3aed2` |
| 15 | `theorem` | [congr_fun](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/congr-fun--86e2a88179282622881f3977.md) | 172 | `result-track:86e2a88179282622881f3977360fb5dc3564eb76b56e10a5c0ff52a551299bd5` |
| 16 | `theorem` | [coe_mk](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-mk--6af178ece7a5b2bec9b93ef5.md) | 177 | `result-track:6af178ece7a5b2bec9b93ef58ccc82f725c7f6db75d6917cdce6ad9455d2d024` |
| 17 | `theorem` | [mk_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/mk-coe--88fad103f177a62dad7db796.md) | 182 | `result-track:88fad103f177a62dad7db796b34959401e82c207ce119b8323a58cd0d3d2b064` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--34244e22ee7c3f4fa91ba0f0.md) | 186 | `declaration-track:34244e22ee7c3f4fa91ba0f0285595f74073d9abf12569e4af65a5309c5be260` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--93bf9e931b823269ff35ae6b.md) | 189 | `declaration-track:93bf9e931b823269ff35ae6b06210017215b79f44ca8dc2dd50e5138dd00c811` |
| 20 | `theorem` | [toDistribMulActionHom_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/todistribmulactionhom-eq-coe--a931ed3fa4bc0c8fb12472b4.md) | 193 | `result-track:a931ed3fa4bc0c8fb12472b48194cb76bbe5dfdfcf105ff8fc21abd04f675005` |
| 21 | `theorem` | [toMulHom_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/tomulhom-eq-coe--23256fca24d665f0fc83b113.md) | 198 | `result-track:23256fca24d665f0fc83b1133229c7c2697cbe8112af7c2e8725f5ede456fc53` |
| 22 | `theorem` | [coe_to_distribMulActionHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-to-distribmulactionhom--8986011e8e808899d6b17340.md) | 203 | `result-track:8986011e8e808899d6b173404d7ef1f38c828fe6c53eee17a2bbc0d555742300` |
| 23 | `theorem` | [coe_to_mulHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-to-mulhom--ce3eb26ea2ee2133e62206a9.md) | 208 | `result-track:ce3eb26ea2ee2133e62206a9cce9f72af952fed5d9548b03af8f6e669a61841f` |
| 24 | `theorem` | [to_distribMulActionHom_injective](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/to-distribmulactionhom-injective--4ff23852070301f8246673cc.md) | 212 | `result-track:4ff23852070301f8246673ccaf3cfbbbe355d90d59794aa940ee7bc25931972f` |
| 25 | `theorem` | [to_mulHom_injective](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/to-mulhom-injective--ac139fb8096a2c56f087b74c.md) | 218 | `result-track:ac139fb8096a2c56f087b74cdbc82b7ca38d0aa785d1078ee488d1acd86a6253` |
| 26 | `theorem` | [coe_distribMulActionHom_mk](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-distribmulactionhom-mk--17a4acb140e86524d6a235e5.md) | 224 | `result-track:17a4acb140e86524d6a235e5e5423999551f7fb36c399492223f1919f3ce869a` |
| 27 | `theorem` | [coe_mulHom_mk](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-mulhom-mk--ac26617ca97b81057dfc7d2e.md) | 230 | `result-track:ac26617ca97b81057dfc7d2e2a30fb66e4ab78e2e23f45b1de5f63f542617425` |
| 28 | `theorem` | [map_smul](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/map-smul--c537ccf815e1c03d6c915329.md) | 236 | `result-track:c537ccf815e1c03d6c91532935ca4f2eb5f7e06c24743ee26be9ec9fb2bd44d8` |
| 29 | `theorem` | [map_add](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/map-add--56b38f6ab54809f345136adc.md) | 241 | `result-track:56b38f6ab54809f345136adcc835abd540ebe12c8cd7d034b42e10718552573a` |
| 30 | `theorem` | [map_mul](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/map-mul--c3b98e545ed6e0c78a982b42.md) | 246 | `result-track:c3b98e545ed6e0c78a982b42eb41bab06fd5a947acd7976998ad9aac759b1d85` |
| 31 | `theorem` | [map_zero](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/map-zero--784c63647207d47eabacc989.md) | 251 | `result-track:784c63647207d47eabacc9890c7d15adde5f485cac7017d084e01c296b6922b3` |
| 32 | `def` | [id](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/id--3636580de021622f6cbc055e.md) | 256 | `declaration-track:3636580de021622f6cbc055eb56c7c516f7a0eb635bc8dd95cead4d563d426d8` |
| 33 | `theorem` | [coe_id](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-id--4b4dcb03acc2a36fd2be2e1b.md) | 263 | `result-track:4b4dcb03acc2a36fd2be2e1be16a9cdf7d786767acd47457900e3579a9b18c19` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--c0235df1c75c111cd4072314.md) | 266 | `declaration-track:c0235df1c75c111cd407231415c58184b96fdbf0743e7b16abb320f9ae6f3ee6` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--556ee8173f21bdf79ff82b31.md) | 269 | `declaration-track:556ee8173f21bdf79ff82b313c567346e0e23ea428f011834c1dda31eefd53e0` |
| 36 | `theorem` | [coe_zero](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-zero--c6c9c6ddb8606946561c15ce.md) | 273 | `result-track:c6c9c6ddb8606946561c15ce3377c3573f8d0e4b52379409a82ba81d12855ff5` |
| 37 | `theorem` | [coe_one](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-one--d8d073a248f8c608bd6ff21c.md) | 278 | `result-track:d8d073a248f8c608bd6ff21c3c16f9f78232775e6a8e30646308293ca67f01ce` |
| 38 | `theorem` | [zero_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/zero-apply--4f4814416dfb825983bed3bd.md) | 282 | `result-track:4f4814416dfb825983bed3bd7d23eb2e85d64fb16dc300c7ec0c2b6c9a9abd84` |
| 39 | `theorem` | [one_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/one-apply--34519dd09abe88f8893fd86b.md) | 286 | `result-track:34519dd09abe88f8893fd86b4a5b719461d0cbd29a5f17a5aaf659978bca4a68` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--4110d30fbe4e89834b8746e2.md) | 290 | `declaration-track:4110d30fbe4e89834b8746e296e20d6aa754ff4313eaaae96d762cc6f9bea707` |
| 41 | `def` | [comp](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/comp--f445281deb5eecd442dd8e3c.md) | 294 | `declaration-track:f445281deb5eecd442dd8e3c8a4e27873610ae881ad03cbe640b74e4b4d3dafe` |
| 42 | `theorem` | [coe_comp](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-comp--7872efeb2f87549988142bea.md) | 299 | `result-track:7872efeb2f87549988142bea7a95934301ebd7711fa80a803bac59541a4bf748` |
| 43 | `theorem` | [comp_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/comp-apply--bd4ccf9d45d51f79df1e0934.md) | 304 | `result-track:bd4ccf9d45d51f79df1e0934b0ebc5235c7c5f1482e686dcfa82cf8716bc97b4` |
| 44 | `def` | [inverse](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/inverse--7d30423efb6bdc0eaa1d32a4.md) | 309 | `declaration-track:7d30423efb6bdc0eaa1d32a439a088b0ceb75ae0cd7c9651bd4221151a497a92` |
| 45 | `theorem` | [coe_inverse](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-inverse--542047e700c0b995d9729c2f.md) | 315 | `result-track:542047e700c0b995d9729c2fe643c7540c448261c5b1152e4f05563c4928fc3c` |
| 46 | `def` | [fst](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/fst--3b7cd9d06ef3236944b914a8.md) | 331 | `declaration-track:3b7cd9d06ef3236944b914a816b2c95db08fc01981bb026d6049e5dfde7b2e17` |
| 47 | `def` | [snd](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/snd--6c985403921dd4a67b77c945.md) | 341 | `declaration-track:6c985403921dd4a67b77c945323fe89a116bcf0975178021908a91c517bebfef` |
| 48 | `def` | [prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/prod--ef61712cc17c25ba09d3a4fd.md) | 353 | `declaration-track:ef61712cc17c25ba09d3a4fda0a1462ccf0ded80cefd7883ce86a9db178de915` |
| 49 | `theorem` | [coe_prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-prod--6d269752f832c4297e7a217b.md) | 362 | `result-track:6d269752f832c4297e7a217b585fc40339c34fdd584c0c8e9feb7df4abdff83e` |
| 50 | `theorem` | [fst_prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/fst-prod--5e21b9bf23ba3012fbc4f83f.md) | 367 | `result-track:5e21b9bf23ba3012fbc4f83f7c221b8393da6c7ce0b0eb95aeccaffb5eff6f38` |
| 51 | `theorem` | [snd_prod](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/snd-prod--d4919eab92a0659cdef575d4.md) | 372 | `result-track:d4919eab92a0659cdef575d4f5828ff37524763dbed25af10cd9eb09cc565e5f` |
| 52 | `theorem` | [prod_fst_snd](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/prod-fst-snd--5d9ad821f0323a6f3c81af45.md) | 377 | `result-track:5d9ad821f0323a6f3c81af45af927629f07f4761322fe427d249f0b41131d9b4` |
| 53 | `def` | [prodEquiv](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/prodequiv--590c8c3cab31a363469ab2ea.md) | 384 | `declaration-track:590c8c3cab31a363469ab2ea7fc5263266fad1c7d75a8ed2b0f214933fa254db` |
| 54 | `def` | [inl](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/inl--48fa3fe06dc5eea048743f14.md) | 395 | `declaration-track:48fa3fe06dc5eea048743f14b5385455da15e0c22aaa562550d712665977ae28` |
| 55 | `def` | [inr](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/inr--5fa7b45267895d13e32ca66b.md) | 400 | `declaration-track:5fa7b45267895d13e32ca66b594990d3ca641f85741a491bd4b546fce912afcb` |
| 56 | `theorem` | [coe_inl](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-inl--cd53a117f2d3c62527a94bb8.md) | 407 | `result-track:cd53a117f2d3c62527a94bb886058beba21278d84b8430694c137d23733c6052` |
| 57 | `theorem` | [inl_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/inl-apply--1e8aab51ed4f839f28621e02.md) | 411 | `result-track:1e8aab51ed4f839f28621e02a2fea1286f38ea83cd5277f4b30d9d04c3022e2b` |
| 58 | `theorem` | [coe_inr](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-inr--fae1d9e954d0a0552969a75e.md) | 416 | `result-track:fae1d9e954d0a0552969a75e297f957ecd90197745a045b2331140100c1dc3d8` |
| 59 | `theorem` | [inr_apply](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/inr-apply--426c1eba607761f158b2c05c.md) | 420 | `result-track:426c1eba607761f158b2c05c7f5e2fbd4eeb393290da883d2834a5c70bb737e5` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/instance--2566ce4184fdc16ada329f40.md) | 437 | `declaration-track:2566ce4184fdc16ada329f405570b37e9d87388821bbd4fa7ae605144d4fcab6` |
| 61 | `def` | [toNonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/tononunitalalghom--830783e405d7ff53acad1032.md) | 442 | `declaration-track:830783e405d7ff53acad10323511c54cfa8e5791bb9881d59040378748015976` |
| 62 | `instance` | [NonUnitalAlgHom.hasCoe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/nonunitalalghom-hascoe--67c46e5ede9df495b08fd688.md) | 446 | `declaration-track:67c46e5ede9df495b08fd688868c50cf4d3cca52c21749e010ef9b35a739b787` |
| 63 | `theorem` | [toNonUnitalAlgHom_eq_coe](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/tononunitalalghom-eq-coe--edfdd8fe42a01bd36a7f831b.md) | 451 | `result-track:edfdd8fe42a01bd36a7f831b4da46c93028ae051d0bbdfb89f1076887286d4b1` |
| 64 | `theorem` | [coe_to_nonUnitalAlgHom](../../../../mathematics/Algebra/NonUnitalAlg/Varianta4b6b0d152350e311a625cbaa9220883aeb8344ae372b6d7f754bf69aa1042f4.lean/declarations/coe-to-nonunitalalghom--02751ad4d6aa66ad5c6b2b24.md) | 456 | `result-track:02751ad4d6aa66ad5c6b2b24dbeb824eee4ef7ffc86ab007aa894e4e8e789286` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
