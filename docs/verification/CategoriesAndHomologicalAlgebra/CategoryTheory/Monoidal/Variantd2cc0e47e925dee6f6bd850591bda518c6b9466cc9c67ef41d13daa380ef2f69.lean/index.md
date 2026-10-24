# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75c2b79ba1d88cc5315367025a22606620492dbf",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75c2b79ba1d88cc5315367025a22606620492dbf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Trifunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/ismonoidal--94cf334ce7c27085fbe460c3.md) | 37 | `declaration-track:94cf334ce7c27085fbe460c34cc312a3138f6aab9e75c212f481c824714a0025` |
| 2 | `lemma` | [whiskerLeft_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/whiskerleft-mem--5e013c370b3d32a4e3c56814.md) | 43 | `result-track:5e013c370b3d32a4e3c56814cd4ac19069b58acef44a0e3bd80cb9d2d616eda3` |
| 3 | `lemma` | [whiskerRight_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/whiskerright-mem--5517b507b6eae5c6ff8ac735.md) | 46 | `result-track:5517b507b6eae5c6ff8ac73555dbf98f2116a0fbb2ac7d750f40da190f4c8bcb` |
| 4 | `lemma` | [tensorHom_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/tensorhom-mem--748ba56f13dde459351abb7c.md) | 49 | `result-track:748ba56f13dde459351abb7ca3cc78d73d77170d37eb797fdfbf9cc4d24d34ce` |
| 5 | `def` | [LocalizedMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/localizedmonoidal--9ee3acedb3d9b94c146257bf.md) | 61 | `declaration-track:9ee3acedb3d9b94c146257bfe58630103886af1ef1f141611c9cd221d98d3a31` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--05a770de202d947defa93e27.md) | 69 | `declaration-track:05a770de202d947defa93e272567334d8c2131d54467ff7212fccbd38bf68ed6` |
| 7 | `def` | [toMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/tomonoidalcategory--e82fe7d8b865a547e3e66de0.md) | 76 | `declaration-track:e82fe7d8b865a547e3e66de0312f1bf7ac67a5dde8f681b5ed8e19daf94a4201` |
| 8 | `abbrev` | [ε'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/anonymous--a106cfc4d0b053e866747966.md) | 80 | `declaration-track:a106cfc4d0b053e86674796641f93deb8ac7d38a4eabcaf4e0c3c0b3ef661340` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--b085242bcd13012638729a4a.md) | 84 | `declaration-track:b085242bcd13012638729a4a8de3beb977200689d2a4cc1669fd02a9be61ef5f` |
| 10 | `lemma` | [isInvertedBy₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/isinvertedby--e30819f2fd0ee5ead51101bd.md) | 86 | `result-track:e30819f2fd0ee5ead51101bd64fc541bbf7e870d0a9569ea44eb20beb4c6fed3` |
| 11 | `def` | [tensorBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/tensorbifunctor--cae1a74ef9214f23ddde9844.md) | 96 | `declaration-track:cae1a74ef9214f23ddde98440582c27a08dfd3bfd0d55676f0c9119c589d6f3d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--f49cabf7bf56e48df55d4276.md) | 100 | `declaration-track:f49cabf7bf56e48df55d4276f8428d0e8e60e55d6884a0bf6c38632ca242796b` |
| 13 | `abbrev` | [tensorBifunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/tensorbifunctoriso--de359c2ed21a6e3f5eb75cfb.md) | 107 | `declaration-track:de359c2ed21a6e3f5eb75cfbd37efa4e299de37f94f6fd6c21d155155b34ae2b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--b6e15ac8d029cf4b70c7a73d.md) | 113 | `declaration-track:b6e15ac8d029cf4b70c7a73d30b1a6090a30a069156fb090e0ed79b549218d23` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--681482cc78056693cdfdbdac.md) | 117 | `declaration-track:681482cc78056693cdfdbdac4413d080c02dae58067cdf04b9fcf99e107c8522` |
| 16 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/leftunitor--632c547eb10fd620735b1095.md) | 122 | `declaration-track:632c547eb10fd620735b10956dc1c83d7e875fdf5613b41256715c3c865742c4` |
| 17 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/rightunitor--493e548fc5d249ea3af237a5.md) | 129 | `declaration-track:493e548fc5d249ea3af237a55112c14d51c3f80ecf7cb707e6a8facf1c01217e` |
| 18 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/associator--8112922fec8fe897d3abb5af.md) | 136 | `declaration-track:8112922fec8fe897d3abb5af3fea44606d048cb4fbfc95b1fe3e6acadaf74579` |
| 19 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/monoidalcategorystruct--349c76859723edb94dae0f89.md) | 143 | `declaration-track:349c76859723edb94dae0f8941e91742f6d8ee83b49c2681fadba7d2878d542d` |
| 20 | `def` | [μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/anonymous--26ad585a0aead6878fc470c4.md) | 155 | `declaration-track:26ad585a0aead6878fc470c44074b830f85b5ff3d667c3820e7f686ea6d6a412` |
| 21 | `lemma` | [μ_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/natural-left--e3cda73f68418080bf19f532.md) | 159 | `result-track:e3cda73f68418080bf19f532276a74c4cd0d246fa497e27e836e3c344990a683` |
| 22 | `lemma` | [μ_inv_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/inv-natural-left--aa0a379dd7f706dc168b1a7e.md) | 165 | `result-track:aa0a379dd7f706dc168b1a7e107a6323886907526bdb28a5d2db6b525e0d88be` |
| 23 | `lemma` | [μ_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/natural-right--b7b87150279a4f8a45f17124.md) | 171 | `result-track:b7b87150279a4f8a45f17124d32ee35e19e4fd94d023114739324a1e758ee022` |
| 24 | `lemma` | [μ_inv_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/inv-natural-right--7d242d4671df14b7d8a7f441.md) | 177 | `result-track:7d242d4671df14b7d8a7f4414a8e52ba58f4beea9b52c5df16358cde7055f616` |
| 25 | `lemma` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/leftunitor-hom-app--a3ffe80fa919fdd512172648.md) | 182 | `result-track:a3ffe80fa919fdd5121726488b5731e3d673dbfcd1216640834ec5006f9a0e5e` |
| 26 | `lemma` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/rightunitor-hom-app--82404ef60c3d0992832d3858.md) | 192 | `result-track:82404ef60c3d0992832d38586eb58e6bbb811d826ed57fa0d5471a1804fd6f49` |
| 27 | `lemma` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/associator-hom-app--c7ea402d4ff33450495f557c.md) | 203 | `result-track:c7ea402d4ff33450495f557ceb76ba30212a41a56a2345148157443567420743` |
| 28 | `lemma` | [id_tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/id-tensorhom--e3024eb488f8398d7ea202b6.md) | 212 | `result-track:e3024eb488f8398d7ea202b6c96d71836094de640899c1ffac580631f6dbba32` |
| 29 | `lemma` | [tensorHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/tensorhom-id--927bd57c41b0335054d635a8.md) | 216 | `result-track:927bd57c41b0335054d635a8ad1e809784a2b3cae5a1c55aef3cb42052e01165` |
| 30 | `lemma` | [tensor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/tensor-comp--8903fa69bf1dcc453076ac69.md) | 221 | `result-track:8903fa69bf1dcc453076ac69b387925f6620563906fca6f34fd8cdfcbc6ff87a` |
| 31 | `lemma` | [tensor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/tensor-id--a8e659ce2f4151235e2decf0.md) | 226 | `result-track:a8e659ce2f4151235e2decf05ab979991a1d42b4cb1f3e9350b8a0c1d2ac56d5` |
| 32 | `theorem` | [whiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/whiskerleft-comp--378a9f475770a3fb53b1e0dd.md) | 230 | `result-track:378a9f475770a3fb53b1e0dd94c4fb09fa82e61e04f1c7c33f99c0ccf904d3e5` |
| 33 | `theorem` | [whiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/whiskerright-comp--5daf66977b57a3e1a248151a.md) | 236 | `result-track:5daf66977b57a3e1a248151a56352954a3b98a05e38514edd9c711bf7701b5ab` |
| 34 | `lemma` | [whiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/whiskerleft-id--a4d36384d98d2f4f45993b68.md) | 241 | `result-track:a4d36384d98d2f4f45993b6822c247975e058a429647ff5ee295620480c6cf54` |
| 35 | `lemma` | [whiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/whiskerright-id--a3aa0dfd40d1f018e8b327d2.md) | 244 | `result-track:a3aa0dfd40d1f018e8b327d26fae81ef63e0f4ccce9b2d69bdc74357e83e2610` |
| 36 | `lemma` | [whisker_exchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/whisker-exchange--a2b3b979cc683243f565d4f5.md) | 248 | `result-track:a2b3b979cc683243f565d4f5f5bb487e16b11ec9033ba247f5bb021602830878` |
| 37 | `lemma` | [associator_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/associator-naturality--156a54c0e57fc09af1073bb2.md) | 253 | `result-track:156a54c0e57fc09af1073bb22a3fc41d0c174bca85ddfbf12ba3d627a579b606` |
| 38 | `lemma` | [associator_naturality₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/associator-naturality--71788da99c6bfaec2c2416e1.md) | 264 | `result-track:71788da99c6bfaec2c2416e1e2618c78824b5882c3a42c265b6d8174b30b4230` |
| 39 | `lemma` | [associator_naturality₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/associator-naturality--c20ccf75b5965b232bc16bc3.md) | 269 | `result-track:c20ccf75b5965b232bc16bc3d3b6a189a53869e3560d33e177793c2cd064738e` |
| 40 | `lemma` | [associator_naturality₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/associator-naturality--d4e43ab090c38f381e605992.md) | 274 | `result-track:d4e43ab090c38f381e6059925f5774f4e3c866dcef29c40153626572fad637a7` |
| 41 | `lemma` | [pentagon_aux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/pentagon-aux--c3569fa1116b024d3bbdd3e1.md) | 278 | `result-track:c3569fa1116b024d3bbdd3e1bb47547a67f832e6cc4a06750e96479e265e992e` |
| 42 | `lemma` | [pentagon_aux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/pentagon-aux--44773316ca2b59d60d134b74.md) | 283 | `result-track:44773316ca2b59d60d134b7487d25d9cf6973ad348bd4a9bb5227470c00ff885` |
| 43 | `lemma` | [pentagon_aux₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/pentagon-aux--20e9921395ddc9498343317a.md) | 288 | `result-track:20e9921395ddc9498343317a997634242be7718ccb9036140f84a267b7447791` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--e73ca44b0f2b4d1c1f80265b.md) | 293 | `declaration-track:e73ca44b0f2b4d1c1f80265bd790c78e2faa86b0c3be669e36a830704d955116` |
| 45 | `lemma` | [pentagon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/pentagon--acdc7ff8705aae98e9ad2a27.md) | 296 | `result-track:acdc7ff8705aae98e9ad2a271bf00ec85e18acf476971a14ad3f451d1aab0228` |
| 46 | `lemma` | [leftUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/leftunitor-naturality--b429aa73747e64be504d7db1.md) | 339 | `result-track:b429aa73747e64be504d7db1d94796726d2ff8b509a88ed122238e63a5e49edc` |
| 47 | `lemma` | [rightUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/rightunitor-naturality--328fa9160d22cf3e524a1f62.md) | 343 | `result-track:328fa9160d22cf3e524a1f6296ebcd837f7ea0ca7199982c39f6177e23c243e8` |
| 48 | `lemma` | [triangle_aux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/triangle-aux--12acbb98b29376fda9c92c3f.md) | 348 | `result-track:12acbb98b29376fda9c92c3f55e4dc30ad391ee5dc2c9bcd0f0e47d045fff2a6` |
| 49 | `lemma` | [triangle_aux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/triangle-aux--326da361640c03ae50e291c9.md) | 355 | `result-track:326da361640c03ae50e291c9d391c3ebb6750c566c0bed7fe522efc8e5b03bd0` |
| 50 | `lemma` | [triangle_aux₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/triangle-aux--bf8581b0f04bbcb65a31dd66.md) | 365 | `result-track:bf8581b0f04bbcb65a31dd66cc2a3a12e3ef2c440150bdc3e33ab4436320f25b` |
| 51 | `lemma` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/triangle--11ba0b730d03a3375e68ca0b.md) | 377 | `result-track:11ba0b730d03a3375e68ca0b8346ca949d50dd60702103430c0d89fd89ce9e3d` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--90d254506bbbc2e8d3415d13.md) | 404 | `declaration-track:90d254506bbbc2e8d3415d13f961a7c574ecb0f7e4b2101857d8ca3e021be7ad` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/declarations/instance--a2ca141831c15fa34387a93f.md) | 423 | `declaration-track:a2ca141831c15fa34387a93f6acafbe9ba8d26aafabf0cddc1751044df8e2590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
