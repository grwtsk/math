# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Karoubi.Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04e90a3db85a960d77e6aeee80201774e893508e",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04e90a3db85a960d77e6aeee80201774e893508e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Karoubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/karoubi--f27b903243dab1111d091116.md) | 52 | `declaration-track:f27b903243dab1111d091116cfb15a949d3f4e5a0eb85aac72a57db56c301954` |
| 2 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/ext--e6afe5e116372c42849e4ea3.md) | 68 | `result-track:e6afe5e116372c42849e4ea3ad5bc782b87862e1507dee80cc494601bc4df47e` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/hom--140397c4b4d3feafa56b5a7d.md) | 82 | `declaration-track:140397c4b4d3feafa56b5a7d4649cf1b3f22243d07fc2bdd5ad4dfbfe92a2a65` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--93b019d75a36963c34ab67f7.md) | 89 | `declaration-track:93b019d75a36963c34ab67f752593d1d8ea3bca359a9cdda1a20be5e8b88ed53` |
| 5 | `theorem` | [p_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/p-comp--416716739d139acf91ff4ee8.md) | 93 | `result-track:416716739d139acf91ff4ee8717e500e8b1bd1c1ae99c8ee57d8e5dca673e15f` |
| 6 | `theorem` | [comp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/comp-p--f8ad740536f9499fb17852b2.md) | 97 | `result-track:f8ad740536f9499fb17852b2a3737434546a74231ccf7417854a1de6c77ee1f0` |
| 7 | `theorem` | [p_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/p-comm--22b60b2a07b9328038fc245e.md) | 102 | `result-track:22b60b2a07b9328038fc245e6189215b9148c74f90ee860428119760c263d7b6` |
| 8 | `theorem` | [comp_proof](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/comp-proof--2995672817d2e27bf883c4a1.md) | 105 | `result-track:2995672817d2e27bf883c4a19d52b40ffe80c5241a0cd273dd83ad8ea24f5f19` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--affb4116c037a0fc1320f221.md) | 110 | `declaration-track:affb4116c037a0fc1320f2218df68d5572fe9e060b1a85320a1032f3ef85cb85` |
| 10 | `theorem` | [hom_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/hom-ext-iff--3f30859afea38df9e09ee2c3.md) | 116 | `result-track:3f30859afea38df9e09ee2c35deafd1de65ac3636a86ba1e69f14cfc37b3e062` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/hom-ext--18caf9f055ae7af7d7b9e6cf.md) | 125 | `result-track:18caf9f055ae7af7d7b9e6cf8ea14681dc34b0f7139e2272c00c5144cdf01900` |
| 12 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/comp-f--d33297918220826b784f09ec.md) | 129 | `result-track:d33297918220826b784f09ec9e72292bf3323ec062c85b901ba86acc46e4c5b5` |
| 13 | `theorem` | [id_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/id-eq--b98ecb4ce46b4718a9d63f17.md) | 133 | `result-track:b98ecb4ce46b4718a9d63f1719cffe106a2c87e0a7c7aad5071e08df5e0cf32f` |
| 14 | `instance` | [coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/coe--67f9e0d0d7a1dc698daee51f.md) | 138 | `declaration-track:67f9e0d0d7a1dc698daee51fdab420f3609876bc8c3ccf5c9895a2b85674584b` |
| 15 | `theorem` | [coe_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/coe-x--7b35f82c03fd611ecd625072.md) | 143 | `result-track:7b35f82c03fd611ecd625072f2daee5fd0fc0214eddc967a30b88e4095518120` |
| 16 | `theorem` | [coe_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/coe-p--f7317b35fee0785a3962f28a.md) | 148 | `result-track:f7317b35fee0785a3962f28a71bf9d79e635bdaf26527383aad7803f3a121108` |
| 17 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/eqtohom-f--863dfb76bb4bf61c69e453c1.md) | 152 | `result-track:863dfb76bb4bf61c69e453c13e63df2d01d2a7427870f081584e5560c8254b87` |
| 18 | `def` | [toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/tokaroubi--8a812fbfe55b82780a311946.md) | 163 | `declaration-track:8a812fbfe55b82780a31194602513fe67aa77477f23912c2a0e311f11aaf1194` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--d3a7af58c36109ae5b808e58.md) | 168 | `declaration-track:d3a7af58c36109ae5b808e5889a7a657143e42e7e9bcae5fb1ce08ad8dafb9e3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--149d9330d08f79035bbc89b6.md) | 170 | `declaration-track:149d9330d08f79035bbc89b663fdb51bb48c0a56334c393394f554a9e22350f7` |
| 21 | `instance` | [instAddCommGroupHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instaddcommgrouphom--333add45ad8053840ba25c34.md) | 176 | `declaration-track:333add45ad8053840ba25c34e6527a51810b09e66ee0d4ff12c4eebbf7f1b8e2` |
| 22 | `theorem` | [hom_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/hom-eq-zero-iff--93dc90decb42bf0cd5239925.md) | 199 | `result-track:93dc90decb42bf0cd523992555d67c9a524267f51823945b535f41697b14c75e` |
| 23 | `def` | [inclusionHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/inclusionhom--021aeba1084515132b7c86fb.md) | 205 | `declaration-track:021aeba1084515132b7c86fb40f009b1cbfcaf4c59ebcf5dc526c4ee3ccdfd9e` |
| 24 | `theorem` | [sum_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/sum-hom--56fad09f29b65baed5d424b2.md) | 212 | `result-track:56fad09f29b65baed5d424b23523894ffd6a50aed5b2c28ca3437b7e0444e616` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--1bf6f83e7a299f64762efdd6.md) | 220 | `declaration-track:1bf6f83e7a299f64762efdd6d17d0569ae0eebcb5f972e6c6f9a98e5a58f12eb` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--b9c9eaf98edefaa64f5c79d7.md) | 223 | `declaration-track:b9c9eaf98edefaa64f5c79d7bafac8d1dd919e194c5dcbb2b0c8348da33d45ab` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--d8c2b20beae4a7b59bdd0e37.md) | 229 | `declaration-track:d8c2b20beae4a7b59bdd0e373c93cf98a7f23118a616f4159c551fb6f0306143` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/instance--888ea1a60a6abeb98e12fe17.md) | 238 | `declaration-track:888ea1a60a6abeb98e12fe17609a3f4d43bbdf64e6b99f9048116dc89d246dd3` |
| 29 | `def` | [toKaroubiIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/tokaroubiisequivalence--6a18dfa72fa71851d9de504c.md) | 248 | `declaration-track:6a18dfa72fa71851d9de504c5494469cfa430d21d39ffe23568bc43cf37db9ec` |
| 30 | `def` | [toKaroubiEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/tokaroubiequivalence--943759bccdff994dcac2694a.md) | 253 | `declaration-track:943759bccdff994dcac2694a8e9d5d7b347b81865c4575e760071f72494a003f` |
| 31 | `instance` | [toKaroubiEquivalence_functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/tokaroubiequivalence-functor-additive--c8b8abb9809591aadad3cf1f.md) | 258 | `declaration-track:c8b8abb9809591aadad3cf1fe5d9faccba9fc971f6a79b402c7d56e34d7f2aa4` |
| 32 | `def` | [decompId_i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decompid-i--6ca511a1b6685eae819f83a6.md) | 269 | `declaration-track:6ca511a1b6685eae819f83a66db69d7e3f086a0077104fcd8519d095f30cf18d` |
| 33 | `def` | [decompId_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decompid-p--a5398ecef7f93faf59b29338.md) | 275 | `declaration-track:a5398ecef7f93faf59b29338932234ffd2eafcc0c61fd6cf9e099f777c7f2e08` |
| 34 | `theorem` | [decompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decompid--528e6c976226ccf9c8930788.md) | 282 | `result-track:528e6c976226ccf9c89307880c199a1824dd5bc1be5ae0669e5c47a5020a5897` |
| 35 | `theorem` | [decomp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decomp-p--387a963bccb9d79e6a3f8ccb.md) | 287 | `result-track:387a963bccb9d79e6a3f8ccbb0afea0bf8337ce78411efee5ad0b5d791d54dac` |
| 36 | `theorem` | [decompId_i_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decompid-i-tokaroubi--1f46cd46e623d5c9095037c4.md) | 292 | `result-track:1f46cd46e623d5c9095037c405ea05bb31e7721dc1394d8f106aae87552d6742` |
| 37 | `theorem` | [decompId_p_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decompid-p-tokaroubi--5d1e536a1fc980d92b24b2dc.md) | 296 | `result-track:5d1e536a1fc980d92b24b2dc5664ebe4578590ebdd7b16f3d57190e1ed32959c` |
| 38 | `theorem` | [decompId_i_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decompid-i-naturality--74b66597c3a949055f7f445f.md) | 300 | `result-track:74b66597c3a949055f7f445f0cdb40c9d2874966dbfaeb91a2af31d627e6a76c` |
| 39 | `theorem` | [decompId_p_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/decompid-p-naturality--9322c629c4fdc6f48fa8dc5c.md) | 305 | `result-track:9322c629c4fdc6f48fa8dc5c07d0695f1284eeeaf7a8681421a47136f25eef2c` |
| 40 | `theorem` | [zsmul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant2bd9c70e868fe76ece6d43b67754e40e2d1351131ae7159d540578dd9af7f170.lean/declarations/zsmul-hom--8a90b2462810851d5f5b9ffe.md) | 311 | `result-track:8a90b2462810851d5f5b9ffee17d01f6ea744750fe21d90e8a16ee34f996b8c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
