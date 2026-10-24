# Verification target: GRWTSK.Algebra.Tower.Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16188b3a49e9bb8a6ba9752831c23b2ed7094140",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16188b3a49e9bb8a6ba9752831c23b2ed7094140`.

Source path: `GRWTSK/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lsmul](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/lsmul--155ff6bd577bc9141a07422e.md) | 63 | `declaration-track:155ff6bd577bc9141a07422e9ae7f45d4c0846a54978bef839445661162f5817` |
| 2 | `theorem` | [lsmul_coe](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/lsmul-coe--a8d2b99705545e7987b82511.md) | 72 | `result-track:a8d2b99705545e7987b82511ce892294d1999bfcdc2686f874586f37fd49f3b3` |
| 3 | `theorem` | [algebraMap_smul](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/algebramap-smul--019ae64542292b2361a0b0fb.md) | 84 | `result-track:019ae64542292b2361a0b0fb722e522366e241ef1317738bb12ebda670b7dbbd` |
| 4 | `theorem` | [of_algebraMap_smul](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/of-algebramap-smul--be4bae41a2aa5f8359c2373c.md) | 89 | `result-track:be4bae41a2aa5f8359c2373c2fa1452f61817c233c67e03332e99c0a2700ce4e` |
| 5 | `theorem` | [of_compHom](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/of-comphom--296ec6bfe80d262836813f9d.md) | 94 | `result-track:296ec6bfe80d262836813f9d3391ec19a5fa5c4738e4fcd4c16c74b1449d24cf` |
| 6 | `theorem` | [of_algebraMap_eq](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/of-algebramap-eq--6bc11b0f858b7c4796b68290.md) | 105 | `result-track:6bc11b0f858b7c4796b682904194c50944c11670825b3cbc27848ad038513e21` |
| 7 | `theorem` | [of_algebraMap_eq'](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/of-algebramap-eq--b75fca552a3ea17aafdedfb5.md) | 110 | `result-track:b75fca552a3ea17aafdedfb5bfe0b4ef662a091dafcdc86efb35836e3586cfa2` |
| 8 | `theorem` | [algebraMap_eq](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/algebramap-eq--a1720ed8d1ffc990cfcae7a9.md) | 118 | `result-track:a1720ed8d1ffc990cfcae7a90ccd71a79498723ce23638ad82d752f061ea0d97` |
| 9 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/algebramap-apply--0b0734619831a2f4ab5713a4.md) | 122 | `result-track:0b0734619831a2f4ab5713a44da77a26b49f06d0e03891771a5e9668d936f6b3` |
| 10 | `theorem` | [Algebra.ext](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/algebra-ext--883889c9ec6e5abebe09c742.md) | 126 | `result-track:883889c9ec6e5abebe09c74207d039d45b674be330cde7fe7c268a16fc56d530` |
| 11 | `def` | [toAlgHom](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/toalghom--bd97d57e33ab104eee4b1975.md) | 133 | `declaration-track:bd97d57e33ab104eee4b197595ae17647f0696b7ba04f4fc9369cc26c100f53c` |
| 12 | `theorem` | [toAlgHom_apply](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/toalghom-apply--cf5a89bc894ab51737123b1b.md) | 136 | `result-track:cf5a89bc894ab51737123b1b5749ce43f176eff24a50d0b107356a3b78f84e38` |
| 13 | `theorem` | [coe_toAlgHom](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/coe-toalghom--7b99c7eca31e09cc07654876.md) | 139 | `result-track:7b99c7eca31e09cc07654876555e9deebdd46b6f403796d5c564c3a89dc511d2` |
| 14 | `theorem` | [coe_toAlgHom'](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/coe-toalghom--f8ffeddbe36ac756aeac16e3.md) | 143 | `result-track:f8ffeddbe36ac756aeac16e378e50826de1942038c54999106bef9e804863673` |
| 15 | `theorem` | [_root_.AlgHom.map_algebraMap](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/root-alghom-map-algebramap--f4c08d86b9c10bec8e55071e.md) | 148 | `result-track:f4c08d86b9c10bec8e55071e86e6147bd0f3f624957b168637e7a2d7c98569a9` |
| 16 | `theorem` | [_root_.AlgHom.comp_algebraMap_of_tower](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/root-alghom-comp-algebramap-of-tower--3fc0a0b7fac99e73d8855ad8.md) | 155 | `result-track:3fc0a0b7fac99e73d8855ad873c14cf17b605963aa205d4e61849c2bf9f3c830` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/instance--a723a6ea25bc35e58572bd39.md) | 160 | `declaration-track:a723a6ea25bc35e58572bd39760391fae9633cfefdb8292449fdd505f69cb389` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/instance--f262a79e020b5fbf97d657c7.md) | 164 | `declaration-track:f262a79e020b5fbf97d657c7acfef87847d2a54cb7f3338d76252068ed041454` |
| 19 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/restrictscalars--0abdbf68b55082a1b784a75d.md) | 187 | `declaration-track:0abdbf68b55082a1b784a75d6a393b97da0338fa321f63594f95100c3e6b5307` |
| 20 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/restrictscalars-apply--47bfa650f9e85a2dd0a1fd94.md) | 193 | `result-track:47bfa650f9e85a2dd0a1fd9413009bdda223d77250e206872ef3b34d0a67ed75` |
| 21 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/coe-restrictscalars--71305b6fbb81f9edc942a52d.md) | 196 | `result-track:71305b6fbb81f9edc942a52dd9bba602d3e2d88b31c24e9e74be1669de05b95e` |
| 22 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/coe-restrictscalars--fc7716dd44f914906c060630.md) | 199 | `result-track:fc7716dd44f914906c0606301de9eb562f360d6f300270c74fc5fb2e06c67bee` |
| 23 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/restrictscalars-injective--692457bbd5c063437101dbbe.md) | 201 | `result-track:692457bbd5c063437101dbbed9cfaab8c4ba07d98c24a2b20e9f8daf7f4ac167` |
| 24 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/restrictscalars--27f54d14e1280036c6b0f4ff.md) | 210 | `declaration-track:27f54d14e1280036c6b0f4ff6085ced8a76b7a35a02aff279e8d285696de2640` |
| 25 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/restrictscalars-apply--b41af5c83b97c683712ef23a.md) | 216 | `result-track:b41af5c83b97c683712ef23af6fae4287b132074b56459a0fa95ae5957ce2cb3` |
| 26 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/coe-restrictscalars--855af9611750b84177f58a4b.md) | 219 | `result-track:855af9611750b84177f58a4b62b86fb426fd74aac8321a3a14d6150532d1358e` |
| 27 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/coe-restrictscalars--4b6539799dcf10a5fcd1d3f5.md) | 222 | `result-track:4b6539799dcf10a5fcd1d3f545d706090c78d4acc762f0be92357ec180b5683d` |
| 28 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/restrictscalars-injective--dc5e22c9a7293804be17e022.md) | 224 | `result-track:dc5e22c9a7293804be17e022bf2237d4a268ade9c7217d33facc1984e3605596` |
| 29 | `theorem` | [restrictScalars_span](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/restrictscalars-span--4b900364c0fa000324f787ec.md) | 240 | `result-track:4b900364c0fa000324f787ec7e0292c76ca15a40596a2d5aba7060878da00c16` |
| 30 | `theorem` | [coe_span_eq_span_of_surjective](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/coe-span-eq-span-of-surjective--2fe372c91bd418657349372b.md) | 247 | `result-track:2fe372c91bd418657349372bff929299dfc3495415394591680ce408db67fa5e` |
| 31 | `theorem` | [smul_mem_span_smul_of_mem](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/smul-mem-span-smul-of-mem--3f06e67d45d02c492ebf5061.md) | 266 | `result-track:3f06e67d45d02c492ebf50618b01dae71474f176b4e1f95b79688bf1b2ee3515` |
| 32 | `theorem` | [span_smul_of_span_eq_top](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/span-smul-of-span-eq-top--ea7d13ff3bdc21374304dcf3.md) | 273 | `result-track:ea7d13ff3bdc21374304dcf3c42af85e991cd7d8c85085ea7de5b756ac56f028` |
| 33 | `theorem` | [smul_mem_span_smul'](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/smul-mem-span-smul--e626a046fe63c699733f9638.md) | 286 | `result-track:e626a046fe63c699733f963886a4366d03e1b15d10f869e6919547306c7dbfee` |
| 34 | `theorem` | [smul_mem_span_smul](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/smul-mem-span-smul--7053f56964a0280144fdb337.md) | 290 | `result-track:7053f56964a0280144fdb33727b740cb4f9fb9fdf67632afc19f053b965e43aa` |
| 35 | `theorem` | [span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/span-algebramap-image--61ef31a4bc3b9763a13bf0bb.md) | 303 | `result-track:61ef31a4bc3b9763a13bf0bb8a82bef062e3f61534d61108dca7ab6ae7d0c2b4` |
| 36 | `theorem` | [span_algebraMap_image_of_tower](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/span-algebramap-image-of-tower--3363220947bdfc5267b00732.md) | 307 | `result-track:3363220947bdfc5267b0073203e13d52b2e3a7499068991c18267101b750e4a5` |
| 37 | `theorem` | [map_mem_span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/map-mem-span-algebramap-image--4c952d0bdbec2f6cc7843dd2.md) | 313 | `result-track:4c952d0bdbec2f6cc7843dd263da9ad7da06e91578b0ad085426e9e5a280e59c` |
| 38 | `theorem` | [lsmul_injective](../../../../mathematics/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/declarations/lsmul-injective--65f2a484d4bafe522cee5ac4.md) | 333 | `result-track:65f2a484d4bafe522cee5ac4a460f44db7d27be3fd189fc545d0a8095f6b45eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
