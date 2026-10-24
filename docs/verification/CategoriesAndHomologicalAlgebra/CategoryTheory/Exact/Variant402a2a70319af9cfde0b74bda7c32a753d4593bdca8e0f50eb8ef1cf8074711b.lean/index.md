# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Exact.Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68dfcf7a0efdc29ab06ad9c363bfa2c165eb6fd5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68dfcf7a0efdc29ab06ad9c363bfa2c165eb6fd5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ImageToKernel` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact--3e4b6e6702ef1b8093f884bd.md) | 73 | `declaration-track:3e4b6e6702ef1b8093f884bdc2b6882e0327a344e91143b7ff21fbec996ffc30` |
| 2 | `theorem` | [Preadditive.exact_iff_homology_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/preadditive-exact-iff-homology-zero--3de4557af7fc7c2b79257ebe.md) | 95 | `result-track:3de4557af7fc7c2b79257ebed7d9dbbf78184a07964320357e9f930807fd2c09` |
| 3 | `theorem` | [Preadditive.exact_of_iso_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/preadditive-exact-of-iso-of-exact--bc56b12a87e6429d8b528e7d.md) | 105 | `result-track:bc56b12a87e6429d8b528e7dc7b98438960cb9cee31b0a6f689c59f05bb2e962` |
| 4 | `theorem` | [Preadditive.exact_of_iso_of_exact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/preadditive-exact-of-iso-of-exact--405e5387360f7895b083a2bc.md) | 121 | `result-track:405e5387360f7895b083a2bcf4cd25721e56074f5f36cbe398b94ba94c03fdfd` |
| 5 | `theorem` | [Preadditive.exact_iff_exact_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/preadditive-exact-iff-exact-of-iso--f33941a938d873f8c791a56b.md) | 128 | `result-track:f33941a938d873f8c791a56b749271bb23bca5180bab79057d795f30c58dceda` |
| 6 | `theorem` | [comp_eq_zero_of_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/comp-eq-zero-of-image-eq-kernel--ad3e445ba6aef2e96fa1c366.md) | 146 | `result-track:ad3e445ba6aef2e96fa1c366847086ec1606b22efe908861408650a0f63b8419` |
| 7 | `theorem` | [imageToKernel_isIso_of_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/imagetokernel-isiso-of-image-eq-kernel--65a2186b45ac5cc4db2f02c6.md) | 153 | `result-track:65a2186b45ac5cc4db2f02c6653cd1b4d66f42a8b8b20b9596bff9a8e9c53ddd` |
| 8 | `theorem` | [exact_of_image_eq_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-of-image-eq-kernel--a94278e98a62489612af454a.md) | 162 | `result-track:a94278e98a62489612af454a6bdab1a0d96c97e91383f2c792121b9ae6e1eb6c` |
| 9 | `theorem` | [exact_comp_hom_inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-comp-hom-inv-comp--a3496ef4726b78c21f6cb824.md) | 180 | `result-track:a3496ef4726b78c21f6cb82408412417cd5ad5ca42964a62d6fdde2ab71b571f` |
| 10 | `theorem` | [exact_comp_inv_hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-comp-inv-hom-comp--3a57de3466561c958c81fd48.md) | 187 | `result-track:3a57de3466561c958c81fd48da5662be05487301c6cca5eb6042c630e44cab93` |
| 11 | `theorem` | [exact_comp_hom_inv_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-comp-hom-inv-comp-iff--c682a34eb94ca2a1e463120a.md) | 191 | `result-track:c682a34eb94ca2a1e463120a1b8f37520cb4046d2f56af2266d2fe9eecc8167f` |
| 12 | `theorem` | [exact_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-epi-comp--e73af0428f124ecc17214428.md) | 195 | `result-track:e73af0428f124ecc17214428b51d320a85f4e000f1b12c25f7f383ff299f1cf6` |
| 13 | `theorem` | [exact_iso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-iso-comp--854521a69e505e0c4b513575.md) | 203 | `result-track:854521a69e505e0c4b513575b7060189f9f8c5dcaa74323dc9a042180477dd4e` |
| 14 | `theorem` | [exact_comp_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-comp-mono--d6f0a9a371e7168bd5398582.md) | 209 | `result-track:d6f0a9a371e7168bd53985825b65187ce5f236a654c78693a09d48fd4d58b54c` |
| 15 | `theorem` | [exact_comp_mono_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-comp-mono-iff--7a4394e022f7a0015c9a2340.md) | 217 | `result-track:7a4394e022f7a0015c9a234098a3b4ecc370b0f90dcf49a38f27844e348fd1fe` |
| 16 | `theorem` | [exact_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-comp-iso--bbb39b9c87f0bfb9ee57fa6b.md) | 226 | `result-track:bbb39b9c87f0bfb9ee57fa6b09b11e84b43c67d4590105d1371b4fdb12327c2a` |
| 17 | `theorem` | [exact_kernelSubobject_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-kernelsubobject-arrow--f38cc048157bdccdb82e7281.md) | 230 | `result-track:f38cc048157bdccdb82e728156dc7d8723c26153d75bcda4895885592eb6a7d2` |
| 18 | `theorem` | [exact_kernel_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-kernel--8e46dd97c3704d64f940446e.md) | 236 | `result-track:8e46dd97c3704d64f940446edceba5c5cdaa024e30873cefd71758fe391782b4` |
| 19 | `instance` | [Exact.epi_factorThruKernelSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-epi-factorthrukernelsubobject--3e52299065569b1a2508456d.md) | 241 | `declaration-track:3e52299065569b1a2508456d098f419b95e5a2d5974021c991b59be031be7175` |
| 20 | `lemma` | [Exact.epi_kernel_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-epi-kernel-lift--a24ef1c02f04e86d7a2c855b.md) | 248 | `result-track:a24ef1c02f04e86d7a2c855b1e7a04b16d1e3e7e2121da2765f17313b12a5c72` |
| 21 | `theorem` | [kernelSubobject_arrow_eq_zero_of_exact_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/kernelsubobject-arrow-eq-zero-of-exact-zero-left--482fc9f80313c8283c981fa4.md) | 255 | `result-track:482fc9f80313c8283c981fa4f2f3c003f0715ed7b26c45ec1142ff0f355de319` |
| 22 | `theorem` | [kernel_ι_eq_zero_of_exact_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/kernel-eq-zero-of-exact-zero-left--9e03687bbba1610578366837.md) | 263 | `result-track:9e03687bbba1610578366837937c02de9fb4686ecd289fe4ffe57f7bb74e2d76` |
| 23 | `theorem` | [exact_zero_left_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-zero-left-of-mono--78b10c0f2a5b6cbbd8d576d0.md) | 268 | `result-track:78b10c0f2a5b6cbbd8d576d0bffab8fa73641016864ebb50a73476742963fd74` |
| 24 | `theorem` | [kernel_comp_cokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/kernel-comp-cokernel--12af9a482107cebdb18579f9.md) | 279 | `result-track:12af9a482107cebdb18579f98d8fffb3d8011803d0f0a92052787f0581417e37` |
| 25 | `theorem` | [comp_eq_zero_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/comp-eq-zero-of-exact--ee25a7509161128c0a28b149.md) | 288 | `result-track:ee25a7509161128c0a28b149e47cfa35de0509a729c8364d43ec430e4291a5a7` |
| 26 | `theorem` | [fork_ι_comp_cofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/fork-comp-cofork--f258b3c2f3bb7582bd49b85d.md) | 295 | `result-track:f258b3c2f3bb7582bd49b85d514e91e9670908c4cd23a0e1d17cb9150d9c382b` |
| 27 | `theorem` | [exact_of_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-of-zero--ae9c52766d0cad0f8caf3ed9.md) | 312 | `result-track:ae9c52766d0cad0f8caf3ed9562098988740714326a5b5f25817b7b0b7664b34` |
| 28 | `theorem` | [exact_zero_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-zero-mono--d8e9a42c6ab9acb4951daa96.md) | 320 | `result-track:d8e9a42c6ab9acb4951daa966f99f60210a7bd9750c0cf98e3ebe643bbdbf84a` |
| 29 | `theorem` | [exact_epi_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-epi-zero--9be4ff6353cc66a6c95fbcf1.md) | 324 | `result-track:9be4ff6353cc66a6c95fbcf12f9de3561ee349551d6d425e0ee02e16491a1fb7` |
| 30 | `theorem` | [mono_iff_exact_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/mono-iff-exact-zero-left--b4c9dae2c73206c28edfc1e0.md) | 334 | `result-track:b4c9dae2c73206c28edfc1e071909cfddab835e26fdce216cce6102c443bf7cc` |
| 31 | `theorem` | [epi_iff_exact_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/epi-iff-exact-zero-right--a67f572101d321377fff3823.md) | 341 | `result-track:a67f572101d321377fff3823e2f3254a72f2f14bad1785141ebc680756f33a37` |
| 32 | `class` | [ReflectsExactSequences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/reflectsexactsequences--d0c66e450fdc6ba2806b3381.md) | 366 | `declaration-track:d0c66e450fdc6ba2806b3381d12f62326965f4fb55fe97f9477a0c1624a26704` |
| 33 | `theorem` | [exact_of_exact_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/declarations/exact-of-exact-map--5f8dbefa6f29125f78006273.md) | 370 | `result-track:5f8dbefa6f29125f780062734bd4ebc224edbd1d98615551a07f17309a190104` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
