# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ad239a8c57101a49d0b14c3da9d4a03a9b1825a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ad239a8c57101a49d0b14c3da9d4a03a9b1825a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean.json)

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
| 1 | `def` | [abelianImageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/abelianimagetokernel--af358a87d546392b2e4c06b1.md) | 50 | `declaration-track:af358a87d546392b2e4c06b107f04ddb7a7ae8267ef66b1e47b4fe80fe029aab` |
| 2 | `lemma` | [abelianImageToKernel_comp_kernel_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/abelianimagetokernel-comp-kernel--8962d28f4ce0f71132db5721.md) | 56 | `result-track:8962d28f4ce0f71132db57216107c0ecb146c4ca143898a997e1f8e5a914a8a4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/instance--f27976b74e2c134a2de34ae5.md) | 60 | `declaration-track:f27976b74e2c134a2de34ae5b2c52d39ab69aaae27596136b81cd145106770aa` |
| 4 | `lemma` | [abelianImageToKernel_comp_kernel_ι_comp_cokernel_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/abelianimagetokernel-comp-kernel-comp-cokernel--3ffd8e3f63f85cdc97e338f5.md) | 64 | `result-track:3ffd8e3f63f85cdc97e338f5cd7be92086463aeff8ce27f229cba9b11fec2f43` |
| 5 | `def` | [abelianImageToKernelIsKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/abelianimagetokerneliskernel--410076be4e1bd0860d3df5b1.md) | 69 | `declaration-track:410076be4e1bd0860d3df5b12808031a619bcb8bc2b7e678c69656d372b1037f` |
| 6 | `def` | [ofAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/ofabelian--b32288b3d3b07f84c6cf58db.md) | 84 | `declaration-track:b32288b3d3b07f84c6cf58dbc246cfad400b8869028df13402815aeec8a899da` |
| 7 | `def` | [cokernelToAbelianCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/cokerneltoabeliancoimage--3ebf884d128b5b15f4b4405f.md) | 120 | `declaration-track:3ebf884d128b5b15f4b4405f84cfbf5de457ed3d45f28c8517d611757224f31d` |
| 8 | `lemma` | [cokernel_π_comp_cokernelToAbelianCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/cokernel-comp-cokerneltoabeliancoimage--3745c27c94fe3bffa92c5786.md) | 126 | `result-track:3745c27c94fe3bffa92c57864abe2ca9dc2f9f4b831362b2770e48d4ad128110` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/instance--fc42932430572ab4ccbe6adf.md) | 130 | `declaration-track:fc42932430572ab4ccbe6adfd813cce4e3fec8e902551bd10285591b88df2594` |
| 10 | `lemma` | [kernel_ι_comp_cokernel_π_comp_cokernelToAbelianCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/kernel-comp-cokernel-comp-cokerneltoabeliancoimage--66c388572a712716fe4d9ec4.md) | 133 | `result-track:66c388572a712716fe4d9ec46247f28e3a1955df4978889e5298a37403d17bfb` |
| 11 | `def` | [cokernelToAbelianCoimageIsCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/cokerneltoabeliancoimageiscokernel--07abe96afcc18d9728206006.md) | 137 | `declaration-track:07abe96afcc18d97282060061fc80a2e49a0012267ce2a807f6a8562f45346d3` |
| 12 | `def` | [ofAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/ofabelian--da9b2159501e5d9104083dbd.md) | 153 | `declaration-track:da9b2159501e5d9104083dbd804e3f51157cccd91fff1c4dfa9dc16482e488a1` |
| 13 | `def` | [HomologyData.ofAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/homologydata-ofabelian--1bbd75794ea3933d0537d832.md) | 187 | `declaration-track:1bbd75794ea3933d0537d83267f4480aaa30948dde354129943c105bda7010f7` |
| 14 | `instance` | [_root_.CategoryTheory.categoryWithHomology_of_abelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/root-categorytheory-categorywithhomology-of-abelian--3bd2485c6cc561f256a5da31.md) | 192 | `declaration-track:3bd2485c6cc561f256a5da3147071b1a38dc42ce948426a6c8ec41bb4463f07b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/instance--a36d1b50ff7cc31b8b6a8d63.md) | 196 | `declaration-track:a36d1b50ff7cc31b8b6a8d636299614542ff6d3d9eba107eef0285d1697afaf6` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/instance--b8e57ec2ea7f4931a4c40736.md) | 201 | `declaration-track:b8e57ec2ea7f4931a4c407368751fa9d3dc258fed88a5cb8445d74c31fd42dfa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/instance--00e881234d4d65b5cb6130ad.md) | 206 | `declaration-track:00e881234d4d65b5cb6130ad801184586ced048a90d1ff42dd3aea4eec970c8e` |
| 18 | `def` | [homologyIsoImageICyclesCompPOpcycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/homologyisoimageicyclescomppopcycles--dd1cb449224bf81d1b7bfe94.md) | 212 | `declaration-track:dd1cb449224bf81d1b7bfe94d62737e28517efef2abaa42232c7b72ebc6abc96` |
| 19 | `lemma` | [homologyIsoImageICyclesCompPOpcycles_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/homologyisoimageicyclescomppopcycles--4e01cfe161243934e3de0599.md) | 217 | `result-track:4e01cfe161243934e3de0599fe204c5d5b210590adc8094f3dc3c547a2ad3a0a` |
| 20 | `def` | [isoImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/isoimage--1f8a42e3ae88d63db79feb84.md) | 236 | `declaration-track:1f8a42e3ae88d63db79feb84f67de05c7a57865db062491d895089b952002173` |
| 21 | `lemma` | [isoImage_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/isoimage--4e85da2ea68e072aa59a8fa5.md) | 243 | `result-track:4e85da2ea68e072aa59a8fa53a60d36b3a209fcb4bae699e2df61b690ce8112c` |
| 22 | `def` | [isoHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/isohomology--b0358512552dba6f63675aff.md) | 253 | `declaration-track:b0358512552dba6f63675affd2e8e488fa3f70ed4cc387858e4016e9adabb3f6` |
| 23 | `lemma` | [π_comp_isoHomology_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/comp-isohomology-hom--a1ed18eea852e39aa1e4da5e.md) | 257 | `result-track:a1ed18eea852e39aa1e4da5e9294b2894dcb27036acc78779af099e223f55a14` |
| 24 | `lemma` | [isoHomology_hom_comp_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/isohomology-hom-comp--3ef90d08c14670f6742a2aa7.md) | 265 | `result-track:3ef90d08c14670f6742a2aa77b759761f5df1ca87b9e5ca5a0d3522ec1655f63` |
| 25 | `lemma` | [f'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/f-eq--5fbb79e0682de6f3d7546452.md) | 270 | `result-track:5fbb79e0682de6f3d75464521713a4fc1d0c115ec2ff879f34e074e765e35720` |
| 26 | `lemma` | [g'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/g-eq--3a1e154ec4590d829cf8bcd2.md) | 276 | `result-track:3a1e154ec4590d829cf8bcd2d3789e65fe02bb311ec7e802e748dc86c8c9d184` |
| 27 | `lemma` | [homologyπ_isoHomology_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/homology-isohomology-inv--e0ad34f612b8a3429d6da5c3.md) | 282 | `result-track:e0ad34f612b8a3429d6da5c32a4dd197920bcba896ec7f3a09451661e7d8c997` |
| 28 | `lemma` | [isoHomology_inv_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/isohomology-inv-homology--cfe72303e2cb7129f8dd8e54.md) | 288 | `result-track:cfe72303e2cb7129f8dd8e540a0b674ad33fc031b79a98b0579e54714a32cebf` |
| 29 | `def` | [leftHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/lefthomologydata--ae3012df81bdf99da6d3fc01.md) | 301 | `declaration-track:ae3012df81bdf99da6d3fc0196eb2bfc831d383ef53192ff5aea15481db39b3a` |
| 30 | `def` | [rightHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/righthomologydata--faa66772246bf00d09a91060.md) | 326 | `declaration-track:faa66772246bf00d09a91060e18436c378ea418d8cc94e06f0b7722d9d6e11b5` |
| 31 | `def` | [ofEpiMonoFactorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/declarations/ofepimonofactorisation--3c199b77199584fbbe8b3194.md) | 350 | `declaration-track:3c199b77199584fbbe8b3194f250271933a1b58a84800bd8cad064c8b30036db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
