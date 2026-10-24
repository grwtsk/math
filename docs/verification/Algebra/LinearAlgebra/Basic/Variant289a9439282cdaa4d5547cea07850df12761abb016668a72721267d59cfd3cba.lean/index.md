# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f6038fad7df16340a9cb7d7b33a2447e82809a0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f6038fad7df16340a9cb7d7b33a2447e82809a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearIndependent.restrict_scalars](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-restrict-scalars--b86519b758261f112fce0136.md) | 69 | `result-track:b86519b758261f112fce0136edabfea717a33f02cb9424e2a16ce8538a239504` |
| 2 | `theorem` | [LinearIndependent.restrict_scalars'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-restrict-scalars--88251ca3341e4fa4b0df9ee6.md) | 80 | `result-track:88251ca3341e4fa4b0df9ee62641d5edf1817b5640cdfc15ef36feb83d2d929c` |
| 3 | `theorem` | [Submodule.range_ker_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/submodule-range-ker-disjoint--2cb8303b2793386f709cc917.md) | 88 | `result-track:2cb8303b2793386f709cc917eb6866e54030ddc4038e6bb3ea1c638acaf8d042` |
| 4 | `theorem` | [LinearIndependent.map_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-map-of-injective-injective--9144df6991b9f5b61d510a7b.md) | 102 | `result-track:9144df6991b9f5b61d510a7b15a8aef0960ac29412bdc09617c72856ad121906` |
| 5 | `theorem` | [LinearIndependent.map_of_surjective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-map-of-surjective-injective--3fe1da69d60551c5bb383f3b.md) | 117 | `result-track:3fe1da69d60551c5bb383f3b4607cef3e8a7254702de524c93a5b01826b9783a` |
| 6 | `theorem` | [LinearIndependent.map_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-map-injon--c4a06d324d59e695f65d2eea.md) | 131 | `result-track:c4a06d324d59e695f65d2eeaeabe46c7a0e431b360b33a12dd27cff51f88b712` |
| 7 | `theorem` | [LinearIndepOn.map_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-map-injon--252c31b93913df714e84e56a.md) | 135 | `result-track:252c31b93913df714e84e56aef37a65e4588d65c05912393b46f022ad1b78a1e` |
| 8 | `theorem` | [LinearIndepOn.comp_of_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-comp-of-image--f32ce0b070644fb1e307a4e5.md) | 139 | `result-track:f32ce0b070644fb1e307a4e5714b937e01927492b65cb73fa36219e1256949a3` |
| 9 | `theorem` | [LinearIndepOn.image_of_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-image-of-comp--3c07e56d69d5e82d0e595655.md) | 146 | `result-track:3c07e56d69d5e82d0e59565514def461e28db6ddd38358574d695dddeee460d6` |
| 10 | `theorem` | [LinearIndepOn.id_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-id-image--3ea206ffcc41198d18de68b5.md) | 155 | `result-track:3ea206ffcc41198d18de68b5e44a1cbf80dec619e70a63ac30c455b6198ae36d` |
| 11 | `theorem` | [LinearIndepOn_iff_linearIndepOn_image_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-iff-linearindepon-image-injon--1d8460aaa105e4e7cb561231.md) | 161 | `result-track:1d8460aaa105e4e7cb561231c5a6b071ef4784657b60ffb9b60f4efbb1d8ee55` |
| 12 | `theorem` | [linearIndepOn_congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-congr--fece15213014430c19a8893e.md) | 165 | `result-track:fece15213014430c19a8893ebfc3792adc1e962fb4b1434bb4b36f49dfc10954` |
| 13 | `theorem` | [LinearIndepOn.congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-congr--0b7f9389ca924a85e85f864a.md) | 172 | `result-track:0b7f9389ca924a85e85f864a17b70459d05cd0c4e3c2c73515a535e6b9cf19d7` |
| 14 | `theorem` | [LinearIndependent.group_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-group-smul--e7512042e1782f59a1a9e2f7.md) | 176 | `result-track:e7512042e1782f59a1a9e2f7a656e77ae331433b73104514b3d415e67cb97d82` |
| 15 | `theorem` | [LinearIndependent.group_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-group-smul-iff--5c12ef7db0fb9147cbf0406b.md) | 187 | `result-track:5c12ef7db0fb9147cbf0406b48860d37ef3e83bb184bbe05ca917e47d57d72ea` |
| 16 | `theorem` | [LinearIndependent.units_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-units-smul--b8f2b7f10dfec1f25aa78f36.md) | 196 | `result-track:b8f2b7f10dfec1f25aa78f36904db1f7b0e39f9091989d30e6356f1255d5208f` |
| 17 | `theorem` | [LinearIndependent.units_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-units-smul-iff--fe9a8ff3d6ac3aa6af18b184.md) | 206 | `result-track:fe9a8ff3d6ac3aa6af18b184f5678c9d031462c328aded91c3b337f567da3ef6` |
| 18 | `theorem` | [linearIndependent_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-span--fab30860f28110c33acfa9ee.md) | 212 | `result-track:fab30860f28110c33acfa9ee07654a8003fb3c7438bd050f666ba18b3bf01fca` |
| 19 | `theorem` | [linearIndependent_finset_map_embedding_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-finset-map-embedding-subtype--f1fc10b492881ba9ea653df0.md) | 218 | `result-track:f1fc10b492881ba9ea653df0dd8848c7dc24745f60a9190c14c0171734e80e22` |
| 20 | `theorem` | [linearIndepOn_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-of-finite--42223cd96cc04f0f4f987ca2.md) | 227 | `result-track:42223cd96cc04f0f4f987ca22d69cd9229545f638b048cd42bc72edc262c2f3b` |
| 21 | `theorem` | [LinearIndependent.eq_of_smul_apply_eq_smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-eq-of-smul-apply-eq-smul-apply--46d42d1c4f296d23fd224b4d.md) | 238 | `result-track:46d42d1c4f296d23fd224b4d84c9158065125ec1cd4bcf7dc10561749a70f753` |
| 22 | `theorem` | [LinearIndependent.disjoint_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-disjoint-span-image--4c6ff783cc6e2980cb30a474.md) | 251 | `result-track:4c6ff783cc6e2980cb30a474ed84da6ea616f0137d51e747ce7bb3d2ebb57cc7` |
| 23 | `theorem` | [LinearIndependent.notMem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-notmem-span-image--285f9f038f82147353c2d151.md) | 259 | `result-track:285f9f038f82147353c2d151d29c22f1f04846ef76ac98c530f1653e6f862dfa` |
| 24 | `theorem` | [LinearIndependent.linearCombination_ne_of_notMem_support](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-linearcombination-ne-of-notmem-support--9d4993cc2c51561a4459e621.md) | 272 | `result-track:9d4993cc2c51561a4459e62145616cd65cd29f0145035daf1f7804f8903921a4` |
| 25 | `theorem` | [LinearIndepOn.id_imageₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-id-image--f8ec61cbf65d624fe5b1cf2c.md) | 292 | `result-track:f8ec61cbf65d624fe5b1cf2cc4fd6dc4808cbef7ac02a7bcb23e7f079187ef37` |
| 26 | `theorem` | [surjective_of_linearIndependent_of_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/surjective-of-linearindependent-of-span--42a26caa9f1832a55048325a.md) | 301 | `result-track:42a26caa9f1832a55048325aa16c02eb2a311408c38b6e7dd3fcdc58de635f3f` |
| 27 | `theorem` | [eq_of_linearIndepOn_id_of_span_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/eq-of-linearindepon-id-of-span-subtype--b8be94fb3d759b59e6c3ae81.md) | 321 | `result-track:b8be94fb3d759b59e6c3ae819198d3d805a803b46f29679457f0fd7bf502ffc1` |
| 28 | `theorem` | [le_of_span_le_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/le-of-span-le-span--7d54835ddcc57b8a46042b36.md) | 338 | `result-track:7d54835ddcc57b8a46042b364152871560e3d2a4fa3f48bfb54dc86b40343393` |
| 29 | `theorem` | [span_le_span_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/span-le-span-iff--68446be2a75d51d6e64b3ee8.md) | 345 | `result-track:68446be2a75d51d6e64b3ee847d620451d7d28519c6c17d5ad729117d4012c95` |
| 30 | `theorem` | [LinearIndependent.eq_coords_of_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-eq-coords-of-eq--b31f8e31d286816c17caee56.md) | 359 | `result-track:b31f8e31d286816c17caee566d9a76389b2b5bcf6e967a096bd9b15d438d25a2` |
| 31 | `theorem` | [LinearIndependent.map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-map--f6d3aa10e2c7918e057eb333.md) | 368 | `result-track:f6d3aa10e2c7918e057eb333083b0bb9add467fa9c89aacacdbad174db332627` |
| 32 | `theorem` | [LinearIndependent.map'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-map--ae688deb0f1c0b60de6d872f.md) | 374 | `result-track:ae688deb0f1c0b60de6d872f23ed3ad395f51d8bff36899f6e80585b3272219c` |
| 33 | `theorem` | [LinearIndependent.map_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-map-of-injective-injective--47a4c69e020af53afcb1157f.md) | 383 | `result-track:47a4c69e020af53afcb1157faf69277c949a168f1880a0d789fc7b8f763bc2fe` |
| 34 | `theorem` | [LinearIndependent.map_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-map-of-surjective-injective--47102d54f01084f0d26e8afc.md) | 397 | `result-track:47102d54f01084f0d26e8afc0618bb482abbdf2bff22834e2b93de1bc92dceaa` |
| 35 | `theorem` | [LinearMap.linearIndependent_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearmap-linearindependent-iff--17fe567469c2398cde5060ca.md) | 405 | `result-track:17fe567469c2398cde5060ca2e4bf6ad24629be632213dd7b8ddc8c5469bca94` |
| 36 | `theorem` | [LinearIndependent.fin_cons'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-fin-cons--1a603f4a1f3c040f22ce7130.md) | 410 | `result-track:1a603f4a1f3c040f22ce7130b19b03487e544f4182ce5fd57209b3a01d565fe3` |
| 37 | `theorem` | [linearIndependent_sum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-sum--92c55a968d2e2f7a612d89e1.md) | 433 | `result-track:92c55a968d2e2f7a612d89e11f89f63b037f0067210f926d2e3d6d46a5d0fef1` |
| 38 | `theorem` | [LinearIndependent.sum_type](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-sum-type--c5245825a4d2e59d3a70808a.md) | 469 | `result-track:c5245825a4d2e59d3a70808a55202e3dfbf7fbb60626b42fc50d40965297653a` |
| 39 | `theorem` | [LinearIndepOn.union](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-union--0bf8643f5cd3568389218990.md) | 475 | `result-track:0bf8643f5cd35683892189907d91279d297e5c6c3c906dd63a96fcc65ec88e89` |
| 40 | `theorem` | [LinearIndepOn.id_union](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-id-union--25f5652ce7067a65b1ee41ab.md) | 486 | `result-track:25f5652ce7067a65b1ee41abac011040dd4dd1a27fafdcd74489b000c472c37f` |
| 41 | `theorem` | [linearIndepOn_union_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-union-iff--35238a97ec5d7cbe88a469d3.md) | 490 | `result-track:35238a97ec5d7cbe88a469d3814e861fdd55a24ab3e2ec929175bcd74d922ad2` |
| 42 | `theorem` | [linearIndepOn_id_union_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-id-union-iff--bb7d2d10f08f2000d67b9543.md) | 498 | `result-track:bb7d2d10f08f2000d67b9543b8748e7b90ecaab73b3371a5960f64332fecb1d0` |
| 43 | `theorem` | [LinearIndepOn.image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-image--3416d57a38b8bd67a86196a9.md) | 507 | `result-track:3416d57a38b8bd67a86196a90912d23ff452472363e7636c53628e1b26b34349` |
| 44 | `theorem` | [linearIndependent_monoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-monoidhom--83150cf357f3451d32d1c4af.md) | 519 | `result-track:83150cf357f3451d32d1c4afcfcbfa9a304a942161e0a072e5df58cd51a43791` |
| 45 | `theorem` | [linearIndependent_unique_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-unique-iff--9f04de72f3a93e62c91ed683.md) | 592 | `result-track:9f04de72f3a93e62c91ed683f0a753768c0d79eb550a4e29aea64160e3a38cfe` |
| 46 | `theorem` | [linearIndepOn_singleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-singleton-iff--8657bdf07960e3c1fe79b613.md) | 603 | `result-track:8657bdf07960e3c1fe79b613d6d9c49f8b083e9a745109d32bad798d50353db6` |
| 47 | `theorem` | [LinearIndepOn.id_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindepon-id-singleton--8b422706d79243c5dd293277.md) | 609 | `result-track:8b422706d79243c5dd29327733595e14ae547d9eac183c6833bbb21e0ae3eb5a` |
| 48 | `theorem` | [linearIndependent_subsingleton_index_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/declarations/linearindependent-subsingleton-index-iff--57b286e7c808f313d1f1ea37.md) | 616 | `result-track:57b286e7c808f313d1f1ea3712f7ae1f9f788efb90bdc42abade945cc10643cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
