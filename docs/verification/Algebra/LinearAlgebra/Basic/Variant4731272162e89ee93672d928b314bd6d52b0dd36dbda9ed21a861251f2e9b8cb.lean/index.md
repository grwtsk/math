# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aa2a5e2eac071ca595089040bc651c6333c7c02",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aa2a5e2eac071ca595089040bc651c6333c7c02`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/derivation--800e45eca6899b1f98957d8f.md) | 51 | `declaration-track:800e45eca6899b1f98957d8f99585e1bd47b7bdda859de404f59144b06e7f14e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--ae27bf327cd689ab6f0571a4.md) | 72 | `declaration-track:ae27bf327cd689ab6f0571a4516effc7a6aceffa52f37bf969fa4fb4ac63f720` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--96d95afe0411a84683fe2310.md) | 80 | `declaration-track:96d95afe0411a84683fe231053b2d273e5ceee8a0763c06bb1f090fa54cd858a` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/tofun-eq-coe--a7bfb9ac6fef524125dfbfb3.md) | 84 | `result-track:a7bfb9ac6fef524125dfbfb3cd1027bd5d03ede6f59d4c260b6b4add36490dfc` |
| 5 | `instance` | [hasCoeToLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/hascoetolinearmap--cc69035994a9f161b85013ee.md) | 90 | `declaration-track:cc69035994a9f161b85013eedadcad430fb12e79dfcf3780642f7e7244c493b2` |
| 6 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/mk-coe--de96e67aaf6f34efb8d2eeef.md) | 97 | `result-track:de96e67aaf6f34efb8d2eeefb1f2df98b0afe9071dfb0ace78e8c0125d48d6f4` |
| 7 | `theorem` | [coeFn_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coefn-coe--794f06420b0da0de62f68514.md) | 102 | `result-track:794f06420b0da0de62f685141e6974ab73d19a03dbe5781885418f4e6299c459` |
| 8 | `theorem` | [coe_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-injective--b04032e8c41b295a8e65701d.md) | 106 | `result-track:b04032e8c41b295a8e65701dbb870a58880049203f73a43d29d2c9659f1d1776` |
| 9 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/ext--9a5daa44e834ee7f09bb72a4.md) | 111 | `result-track:9a5daa44e834ee7f09bb72a4250a69f2fb916ba75b9599e691a5cded8affcce4` |
| 10 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/congr-fun--16715a74e41c8836b8a02356.md) | 115 | `result-track:16715a74e41c8836b8a02356274e8ef3c44c93197c4c4c3896242c5881d01a2a` |
| 11 | `theorem` | [map_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-add--e9fcfe97425ed474d5aec420.md) | 119 | `result-track:e9fcfe97425ed474d5aec4208316e0cb94700e8ef2edcf6e8d85dabbcf0ba29f` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-zero--ad74fa3e83ca05b618b729ed.md) | 123 | `result-track:ad74fa3e83ca05b618b729ed8e29540477dcce50e5d033ff5f23caa00b8f6a5e` |
| 13 | `theorem` | [map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-smul--24092c05f7d84faed2058359.md) | 128 | `result-track:24092c05f7d84faed20583592540bb181554afc69fd404f52e23402baae2eb19` |
| 14 | `theorem` | [leibniz](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/leibniz--f3a186218ca88113c5725aff.md) | 133 | `result-track:f3a186218ca88113c5725aff809200d871370fa6dfbe9f47dc45b733d80f186e` |
| 15 | `theorem` | [map_sum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-sum--f95f54fea31e4a25221c3dd8.md) | 137 | `result-track:f95f54fea31e4a25221c3dd8a9ed435c548a2c83d9dd6397ee1cca3d279d83d5` |
| 16 | `theorem` | [map_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-smul-of-tower--6389096527e2b259269f1ef3.md) | 142 | `result-track:6389096527e2b259269f1ef35cc060de1d5d36679c4208fd53991f6a8d48791d` |
| 17 | `theorem` | [map_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-one-eq-zero--8aee109d1cc9b9224afea1c9.md) | 148 | `result-track:8aee109d1cc9b9224afea1c94ebc1f379735f4c023cf3107ab74bed5b1ee2a0e` |
| 18 | `theorem` | [map_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-algebramap--d670ec007c2361112effa0cc.md) | 153 | `result-track:d670ec007c2361112effa0cca3198ac367896b4b57d60a7901ef0fee98445122` |
| 19 | `theorem` | [map_coe_nat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-coe-nat--368cdb2c78d6c30a783107c8.md) | 159 | `result-track:368cdb2c78d6c30a783107c898f3ca328a0da64b32a5ea9b663ae9831b4a90df` |
| 20 | `theorem` | [leibniz_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/leibniz-pow--c05981f709022d0e52b75a1c.md) | 164 | `result-track:c05981f709022d0e52b75a1cbde9a86384038e678d2c64b796bb327cccb20936` |
| 21 | `theorem` | [eqOn_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/eqon-adjoin--7e13c15e5401c27986a71b51.md) | 174 | `result-track:7e13c15e5401c27986a71b519ccde57d2c1db52744528a8466a5d035fe2cc07a` |
| 22 | `theorem` | [ext_of_adjoin_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/ext-of-adjoin-eq-top--ef07ef53d01a40e7b6b93929.md) | 181 | `result-track:ef07ef53d01a40e7b6b939299575537341f7ad61554daa32c6b6bc8b229bc288` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--9c39ea4c80a798b64ce2ed3e.md) | 186 | `declaration-track:9c39ea4c80a798b64ce2ed3e491320807d2928962f59e0df2d554614db8b9b46` |
| 24 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-zero--956c53ac06011a60aeadebc2.md) | 192 | `result-track:956c53ac06011a60aeadebc25639cd0a385cd42573dbf402adaa295a6b0e6abe` |
| 25 | `theorem` | [coe_zero_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-zero-linearmap--e604753f2b8a014bcd6dc188.md) | 197 | `result-track:e604753f2b8a014bcd6dc188face327f80ce99f2417cf1435583f5a4b7bb14cf` |
| 26 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/zero-apply--f76979bfc477d45c97890586.md) | 201 | `result-track:f76979bfc477d45c97890586abe79daa385ffccf960b8f9b78198d996349dcf5` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--119ee5ed00df2dd8eedcd4c5.md) | 205 | `declaration-track:119ee5ed00df2dd8eedcd4c52f2a034b567dcf699ed9c59097f648207cfa6cfd` |
| 28 | `theorem` | [coe_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-add--99029b90e3b9c83c2a6059b7.md) | 213 | `result-track:99029b90e3b9c83c2a6059b700ad71010886689842515408ac6d908c691f0200` |
| 29 | `theorem` | [coe_add_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-add-linearmap--7f5ed3bbd6723fa9401e17e1.md) | 218 | `result-track:7f5ed3bbd6723fa9401e17e13d0ac5902ce13cd584b7c7e25682d1f46b78e95a` |
| 30 | `theorem` | [add_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/add-apply--d323aa7f70c086c58999771c.md) | 222 | `result-track:d323aa7f70c086c58999771c66ccaf7bf40d86a9ca460cf9367fbc0ef7115ad4` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--137fa15d4cd13272634fbdf1.md) | 226 | `declaration-track:137fa15d4cd13272634fbdf19f481d0aa64ae1247259575655ae9fff2c1876ff` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--485957aa4cfc1745fa0079c2.md) | 237 | `declaration-track:485957aa4cfc1745fa0079c2f84471e321a0803ddffcaf86f6759a8c52cea332` |
| 33 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-smul--23f4fd7f87870a511ee9a29d.md) | 245 | `result-track:23f4fd7f87870a511ee9a29de9181545cfafbc69f541bc88a53fcf720e7dc495` |
| 34 | `theorem` | [coe_smul_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-smul-linearmap--7b16b7a2e59475223b0823f6.md) | 250 | `result-track:7b16b7a2e59475223b0823f65e164b8114196dc2767f171d8ed36dd955cc1533` |
| 35 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/smul-apply--7101c2684e07b12e429b8a78.md) | 254 | `result-track:7101c2684e07b12e429b8a78f81e376d9d305e1fec3f405e7e4df1ed964276b0` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--3006fabf6c1c673721b16794.md) | 258 | `declaration-track:3006fabf6c1c673721b167945278be5869eee703e48d7597a945b295b00ed1a3` |
| 37 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coefnaddmonoidhom--55aaed2356513da5a3946cdf.md) | 262 | `declaration-track:55aaed2356513da5a3946cdfe00960aa2586366ae06ea0ccb87544ffa6a587aa` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--25f5f6f4266d6e9157a28f5f.md) | 268 | `declaration-track:25f5f6f4266d6e9157a28f5f72eaa9aa173487490fe8eb3646f7ed21ec96ab5a` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--acec4fc3ad20ad8b717d61be.md) | 271 | `declaration-track:acec4fc3ad20ad8b717d61be22334381fccfafb627782afaf5b26131236b491c` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--b49d73c1e35a7144d46ba04a.md) | 274 | `declaration-track:b49d73c1e35a7144d46ba04a5918d6ab5bf33ec976b87ba96cefe77b38cf8e74` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--2f8540a19dcc5bfd5eb0f78e.md) | 277 | `declaration-track:2f8540a19dcc5bfd5eb0f78eaf32eaa0c67351b389df97db058e88eefae160af` |
| 42 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instmodule--4e5bf245da73cd74714502d7.md) | 282 | `declaration-track:4e5bf245da73cd74714502d7ae9081501a2949899c4da0ccfd61983d7a1e6210` |
| 43 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.LinearMap.compDer](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/root-grwtsk-algebra-linearalgebra-derivation-variant9e1fdf926e712333bae4--63080e21a179f83bb214e2e7.md) | 295 | `declaration-track:63080e21a179f83bb214e2e78afe8642eaa0663a97ad0ab0b3533aab49715f73` |
| 44 | `theorem` | [coe_to_linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-to-linearmap-comp--c86ee741871c1bf246f61ac4.md) | 307 | `result-track:c86ee741871c1bf246f61ac403f76f0fd04d6e8808f78cbb02674d2661037594` |
| 45 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-comp--341e7c71be58f7a2ff4088d1.md) | 312 | `result-track:341e7c71be58f7a2ff4088d1c2825efcc1f0a5f4f5a6cc9a4a91e6043cf30f6d` |
| 46 | `def` | [llcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/llcomp--8e52100fa327fb2bdb5501ff.md) | 318 | `declaration-track:8e52100fa327fb2bdb5501ffbd3b6491eea147a0898d701f6451179fa3e92996` |
| 47 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.Derivation.Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.LinearEquiv.compDer](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/root-grwtsk-algebra-linearalgebra-derivation-variant9e1fdf926e712333bae4--4187da5064adbfe22fcfa1f0.md) | 325 | `declaration-track:4187da5064adbfe22fcfa1f0d6c994c31e72737433e867f6ac35ba93b498b27e` |
| 48 | `def` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/restrictscalars--9d714d19f78cd8fbad1a743b.md) | 344 | `declaration-track:9d714d19f78cd8fbad1a743bb078f0fad04dc25adf9edbc628ffc56f93e4ec49` |
| 49 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/mk--c49a1a50db95e85ad7d46bad.md) | 361 | `declaration-track:c49a1a50db95e85ad7d46badcbeec357a7a0350332bddc95a294c8406312b28d` |
| 50 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-mk--a2fa657ccabca9d871078329.md) | 368 | `result-track:a2fa657ccabca9d871078329a828f1de0d86473f042aef99e6fa85f5fed4452b` |
| 51 | `theorem` | [coe_mk'_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-mk-linearmap--8a0d0091c8d6f1f13ca462f5.md) | 373 | `result-track:8a0d0091c8d6f1f13ca462f58d8f86895f344fee57161b8edd1b1f125c1dce54` |
| 52 | `theorem` | [map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-neg--feee482834c2da153a9788c6.md) | 391 | `result-track:feee482834c2da153a9788c683429b93822ab9ca8e7f7977c07360183b2a20f2` |
| 53 | `theorem` | [map_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-sub--3d73603533b3a55761598c25.md) | 395 | `result-track:3d73603533b3a55761598c256ed73fe8bdb47d0bb5b40d3ef3a59f5c7a0eb6da` |
| 54 | `theorem` | [map_coe_int](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/map-coe-int--1b8d9dcc618cb8525be22fcb.md) | 400 | `result-track:1b8d9dcc618cb8525be22fcb6d3495d575d0de28e9f130d893a2db05569c8921` |
| 55 | `theorem` | [leibniz_of_mul_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/leibniz-of-mul-eq-one--25850d30b3160356e81765c5.md) | 404 | `result-track:25850d30b3160356e81765c5ff2121d62af29a566d0f9e923ff58e3ee5c2a81a` |
| 56 | `theorem` | [leibniz_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/leibniz-invof--3decd36b71b05179d3321fb1.md) | 414 | `result-track:3decd36b71b05179d3321fb114f0b60d646fc1d0024c23cdf89305ac95221548` |
| 57 | `theorem` | [leibniz_inv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/leibniz-inv--6dbb650cdb7d417cb92b0310.md) | 418 | `result-track:6dbb650cdb7d417cb92b031019d40bb15e01347d318849b539e116c5066b0cca` |
| 58 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--c336f7cb864c758448aeba17.md) | 425 | `declaration-track:c336f7cb864c758448aeba17ab533a082bd3f0006f35214cf504886f837a8cfa` |
| 59 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-neg--05f9d119ba32acddfb852468.md) | 431 | `result-track:05f9d119ba32acddfb852468b9050fc0578766fb949e844a8f7f7a89b58f9be7` |
| 60 | `theorem` | [coe_neg_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-neg-linearmap--920c83af5b82858f68bde56b.md) | 436 | `result-track:920c83af5b82858f68bde56bc1fc1088962ea7a1abe7b3a2b4f987b95430b1df` |
| 61 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/neg-apply--90de22744cf55c69bb4eb848.md) | 440 | `result-track:90de22744cf55c69bb4eb848fa67e46d6749e155a0f8cd5d588e4af4728855cb` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--cc2d2bfe24e7a2b736ab9781.md) | 444 | `declaration-track:cc2d2bfe24e7a2b736ab9781a9c02d1ba483be5f56242ff814aeae87d13ab4fc` |
| 63 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-sub--904cadf690d6a915e9ba1be0.md) | 450 | `result-track:904cadf690d6a915e9ba1be03dfa7a0565021207236a7d174b26542cbdfa5370` |
| 64 | `theorem` | [coe_sub_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/coe-sub-linearmap--dda5281b36efb4cdb3cb57e9.md) | 455 | `result-track:dda5281b36efb4cdb3cb57e94e3cf88cf69094e634089c885db569b28ace9077` |
| 65 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/sub-apply--b682f04b4c08cafceebb7bba.md) | 459 | `result-track:b682f04b4c08cafceebb7bba84f27a61cfd4867de2ab405b9f1e247b10968e50` |
| 66 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4731272162e89ee93672d928b314bd6d52b0dd36dbda9ed21a861251f2e9b8cb.lean/declarations/instance--5d80b8da2a2a569eb88b5eab.md) | 463 | `declaration-track:5d80b8da2a2a569eb88b5eab0e0d68b67db1a5d11b63267124d7a2a9f79f93bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
