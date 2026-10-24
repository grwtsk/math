# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Exact.Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f56be7810bc13a8b9f04cc90d1d90c0c3163f39",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f56be7810bc13a8b9f04cc90d1d90c0c3163f39`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ImageToKernel` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact--6adbe40f7ac798f03adeb286.md) | 65 | `declaration-track:6adbe40f7ac798f03adeb28699bf7f19ba8c7f61b6e27d4fa438a2ff1e5a222c` |
| 2 | `theorem` | [Preadditive.exact_iff_homology_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/preadditive-exact-iff-homology-zero--4f2c49172cc63496be16c886.md) | 87 | `result-track:4f2c49172cc63496be16c886e22e20cb1d31006547e679f6ecbd4f46327fa342` |
| 3 | `theorem` | [Preadditive.exact_of_iso_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/preadditive-exact-of-iso-of-exact--68a4ffb8a043412e665cb523.md) | 97 | `result-track:68a4ffb8a043412e665cb5233914f386bdd61fb8df5d32b1f162fe3a9cc37324` |
| 4 | `theorem` | [Preadditive.exact_of_iso_of_exact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/preadditive-exact-of-iso-of-exact--8c2bebeaa4e63d1460c93308.md) | 113 | `result-track:8c2bebeaa4e63d1460c9330882b12277fdc49205b0d9200613996ac86cb46a49` |
| 5 | `theorem` | [Preadditive.exact_iff_exact_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/preadditive-exact-iff-exact-of-iso--992ee97793fe66f8ddba40c9.md) | 120 | `result-track:992ee97793fe66f8ddba40c9ed05031a6858aa81ef124f2053d9ddc7a5bc2e1b` |
| 6 | `theorem` | [comp_eq_zero_of_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/comp-eq-zero-of-image-eq-kernel--51573fb7d164aef35aa1c353.md) | 138 | `result-track:51573fb7d164aef35aa1c3531fdadc77b846e5f5da0a073a464bcc040f4e5f86` |
| 7 | `theorem` | [imageToKernel_isIso_of_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/imagetokernel-isiso-of-image-eq-kernel--e252baa2163bc1ab45a67669.md) | 145 | `result-track:e252baa2163bc1ab45a6766963ffce3ab3f8f451b9407e4b5a6671f47ad29edd` |
| 8 | `theorem` | [exact_of_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-of-image-eq-kernel--88b5d11d2cd0c839e64a500c.md) | 154 | `result-track:88b5d11d2cd0c839e64a500c7a03a2b90678d892017f966b8573e33a5ffb4ca6` |
| 9 | `theorem` | [exact_comp_hom_inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-comp-hom-inv-comp--1a8da9dc2f7749480b3a981e.md) | 172 | `result-track:1a8da9dc2f7749480b3a981ef1e6b8bf36a62b023b3ecca261b5835640a4ee46` |
| 10 | `theorem` | [exact_comp_inv_hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-comp-inv-hom-comp--cfe14dd9bc724dbe65c24bb5.md) | 179 | `result-track:cfe14dd9bc724dbe65c24bb57686c48e1ae5f5e1a2f08eef43e22ca65534a1df` |
| 11 | `theorem` | [exact_comp_hom_inv_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-comp-hom-inv-comp-iff--35a507ea23de752c3615f6d5.md) | 183 | `result-track:35a507ea23de752c3615f6d5bfaacbc710d23b861ef85104f8972b56882cd78e` |
| 12 | `theorem` | [exact_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-epi-comp--dc004f6823f2a292d74476b7.md) | 187 | `result-track:dc004f6823f2a292d74476b7ad460ce8d1d22de68b452b99520bacc719189dc6` |
| 13 | `theorem` | [exact_iso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-iso-comp--727d1e744b21394ab07a5ae9.md) | 195 | `result-track:727d1e744b21394ab07a5ae962c17bb1d8478babf5f280a1721b5535fc1a06a0` |
| 14 | `theorem` | [exact_comp_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-comp-mono--831e0f12de89f8275322b385.md) | 201 | `result-track:831e0f12de89f8275322b385fb69da3acfb8a320bff7c763006afd9f5bb1eaf7` |
| 15 | `theorem` | [exact_comp_mono_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-comp-mono-iff--afca9037c837c0a917c541d8.md) | 209 | `result-track:afca9037c837c0a917c541d893fff653d0daf3b32f16fe79bf16bfe8f9ae7b07` |
| 16 | `theorem` | [exact_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-comp-iso--9a0613063ac9438cad0feb14.md) | 218 | `result-track:9a0613063ac9438cad0feb14d77128945086179c479543329c59e2fb27d6c8e6` |
| 17 | `theorem` | [exact_kernelSubobject_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-kernelsubobject-arrow--28942f699106810ee2530d9a.md) | 222 | `result-track:28942f699106810ee2530d9af65a8a222f9f22ee93a67cc34dde884281111f5d` |
| 18 | `theorem` | [exact_kernel_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-kernel--b9577e99b40ae0b459f1988f.md) | 228 | `result-track:b9577e99b40ae0b459f1988f03d0aacf44df2c4b67fc61dd9098111a7cb32594` |
| 19 | `instance` | [Exact.epi_factorThruKernelSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-epi-factorthrukernelsubobject--eb4516866b9949a7ca7c7402.md) | 233 | `declaration-track:eb4516866b9949a7ca7c74025d3f15fc11b4b0bc0b506f6d68798f440c448f8d` |
| 20 | `lemma` | [Exact.epi_kernel_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-epi-kernel-lift--9469f46267a433a78a7980b5.md) | 240 | `result-track:9469f46267a433a78a7980b59984f6892e13e32349883088f7e48b8ba79ade8f` |
| 21 | `theorem` | [kernelSubobject_arrow_eq_zero_of_exact_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/kernelsubobject-arrow-eq-zero-of-exact-zero-left--1a197b1b5bacf22f1b70cb39.md) | 247 | `result-track:1a197b1b5bacf22f1b70cb39520e77ceee5d2d823289cc3d6aa59c68861d08c9` |
| 22 | `theorem` | [kernel_ι_eq_zero_of_exact_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/kernel-eq-zero-of-exact-zero-left--1261a3e7acce5e092583a488.md) | 255 | `result-track:1261a3e7acce5e092583a4881466d1b745fb7b68cecc5d8d5e9220cd9e830cb0` |
| 23 | `theorem` | [exact_zero_left_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-zero-left-of-mono--435938db8feb1f4ec4db2a1f.md) | 260 | `result-track:435938db8feb1f4ec4db2a1fc8ac9b87b3fbb85d2c47348d3a3ac771f0917d01` |
| 24 | `theorem` | [kernel_comp_cokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/kernel-comp-cokernel--feba247d66fafb202cde1776.md) | 271 | `result-track:feba247d66fafb202cde1776e6b1497a2c1574fd3b8104e1bb8f2454959c6172` |
| 25 | `theorem` | [comp_eq_zero_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/comp-eq-zero-of-exact--e7cc9b2c196faac23ad784eb.md) | 280 | `result-track:e7cc9b2c196faac23ad784ebd3d2cfb14837aaddf8d18222b8775d81470fe6cb` |
| 26 | `theorem` | [fork_ι_comp_cofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/fork-comp-cofork--2034ff81b0cdf808cd1faae5.md) | 287 | `result-track:2034ff81b0cdf808cd1faae585cb8717c6db79b84b3b6de71d7442f0565c759a` |
| 27 | `theorem` | [exact_of_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-of-zero--1dbb0d0ea76b407a36f2b6b1.md) | 304 | `result-track:1dbb0d0ea76b407a36f2b6b138e9a96580271af32c30f82dbf63d3c202cd3071` |
| 28 | `theorem` | [exact_zero_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-zero-mono--2fc1648919e90530963b865a.md) | 312 | `result-track:2fc1648919e90530963b865af0914ebc89622cbb39fcf4d3c829572441841c93` |
| 29 | `theorem` | [exact_epi_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-epi-zero--cee9080c9b275ce17c6df067.md) | 316 | `result-track:cee9080c9b275ce17c6df06776fe2ae2a95dc52e6b03c86092c7a1256838b0d0` |
| 30 | `theorem` | [mono_iff_exact_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/mono-iff-exact-zero-left--6adab1303e78e1e46e9bcfd8.md) | 326 | `result-track:6adab1303e78e1e46e9bcfd8517654b8dadc80214ea6e04cabf0689a79beebb7` |
| 31 | `theorem` | [epi_iff_exact_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/epi-iff-exact-zero-right--f8887630f83678fd8bdac129.md) | 333 | `result-track:f8887630f83678fd8bdac12907084e42b354a018a318e54eb4452ad44b7cccd3` |
| 32 | `class` | [ReflectsExactSequences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/reflectsexactsequences--b2955c38a0ada2cc4e169ffe.md) | 358 | `declaration-track:b2955c38a0ada2cc4e169ffe953d7c94aa4f6111562cc87c0a00520cee6cfb95` |
| 33 | `theorem` | [exact_of_exact_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/declarations/exact-of-exact-map--328b43282bd00c03e687dc6a.md) | 362 | `result-track:328b43282bd00c03e687dc6a941660d0c267b9b8a94ac430530da79acd7f1877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
