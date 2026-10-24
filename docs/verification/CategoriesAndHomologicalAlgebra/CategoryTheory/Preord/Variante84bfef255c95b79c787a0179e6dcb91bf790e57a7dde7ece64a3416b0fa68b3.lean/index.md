# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preord.Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "404bea0a44ac9cf1209fcbfad340ec807b771b08",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `404bea0a44ac9cf1209fcbfad340ec807b771b08`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteBooleanAlgebra` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Preord](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/preord--e69491e63c258d70388a24e6.md) | 24 | `declaration-track:e69491e63c258d70388a24e638df6fa1e40f9b335e3bb091da1c39ff444a14e0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/instance--e829cdd711e4ce7d7b44ba72.md) | 35 | `declaration-track:e829cdd711e4ce7d7b44ba72cbe92fc7d0a5436d65626251de027857e8bfc1fb` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/of--39cdf4393819d459df15223f.md) | 41 | `declaration-track:39cdf4393819d459df15223f8c8d2b9f676a92f2882ede5db78f732255e29294` |
| 4 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom--f5cb75c64f0c7d13464d2698.md) | 45 | `declaration-track:f5cb75c64f0c7d13464d2698159e5fbc8293e2c973dc421dda548f709fecff5d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/instance--cf1ff810104264d99071f24c.md) | 50 | `declaration-track:cf1ff810104264d99071f24c5b088d836445fba307dfaca27dd9b91606c5cc29` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/instance--f71aeb06ba1c5d47fce0d903.md) | 55 | `declaration-track:f71aeb06ba1c5d47fce0d9038c4b2ad60423a07cf19bb774df4a71913e7862d2` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom-hom--35a6c87d99c43601b2dfc98d.md) | 60 | `declaration-track:35a6c87d99c43601b2dfc98db300e1122600f903df20e1822c7d94c18d045d79` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/ofhom--942b21385d3c73594ffb4991.md) | 64 | `declaration-track:942b21385d3c73594ffb4991b0ecf401cbe6b104b5c11ac83983b93c4c3ca7c1` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom-simps-hom--f816440f6da22da5b6671978.md) | 69 | `declaration-track:f816440f6da22da5b6671978c5858ae5d80fd5b0ddb64863b205ab01e0eadc1e` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/coe-id--8d91a8a750e065056ed1d6f9.md) | 79 | `result-track:8d91a8a750e065056ed1d6f911d931f181d34d03ee59ef621e6ed4d06ea316cb` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/coe-comp--aee2c8102e5f44ea119c525f.md) | 82 | `result-track:aee2c8102e5f44ea119c525f540a57620686fbccad02372be85fbb93b6c72547` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/forget-map--72731de676993193e0bcd1b6.md) | 85 | `result-track:72731de676993193e0bcd1b6dbd9a482e6fcb1b1ce148377e1781cb2eebf8046` |
| 13 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/ext--e28bdc84ffe90854e7c92b4d.md) | 89 | `result-track:e28bdc84ffe90854e7c92b4dd66854e0276fef5bc485e0c7bcb41ec6314ba6f4` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/coe-of--5f98e55ea430f63e5de361a6.md) | 93 | `result-track:5f98e55ea430f63e5de361a694015b390786f36083de2e18a8bc86203413a201` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom-id--25e39a89a865c143dff9fb33.md) | 96 | `result-track:25e39a89a865c143dff9fb3332fc8d8c1ad0a19f2b4e2eb44b8b091d755059ef` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/id-apply--d608201b84a6cdb1733c1706.md) | 99 | `result-track:d608201b84a6cdb1733c170606821f156fe961ddf573bcd880201105eaa85cea` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom-comp--179caa7c1dea7371ea2a88e7.md) | 103 | `result-track:179caa7c1dea7371ea2a88e74a5a55a356b87812eb92c395ae27cb61501422a8` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/comp-apply--89c31aa340cf9d28c933c95d.md) | 107 | `result-track:89c31aa340cf9d28c933c95d23a7cd3b569a9603be798d051f91beab4c221068` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom-ext--bc2aa8014d56394347b0b249.md) | 111 | `result-track:bc2aa8014d56394347b0b249fbe978ac771745d0e00b6974570ba1db344785c5` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom-ofhom--9326b61984ba282fd0ca9001.md) | 115 | `result-track:9326b61984ba282fd0ca90017634674ae68fd617439fd622ef61b4ac428a4809` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/ofhom-hom--3a549b08125b565b58480d12.md) | 119 | `result-track:3a549b08125b565b58480d125b1b947990a874f09001aa88b72a68863a35cc12` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/ofhom-id--72af9aaf2209d6377058e020.md) | 123 | `result-track:72af9aaf2209d6377058e020939ebcb98fce5591cecf69037a07a73cf5332938` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/ofhom-comp--346e69aee36b0dd106d374f2.md) | 126 | `result-track:346e69aee36b0dd106d374f218d7df6aaeecda78cf70a832a51f67c31978c0d0` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/ofhom-apply--170031abbfb86bbc8bdb670a.md) | 131 | `result-track:170031abbfb86bbc8bdb670aac6db837cd9f851fb1128fb6b170a972cf577fc4` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/inv-hom-apply--520e1f025d9e257c7e2e14f4.md) | 134 | `result-track:520e1f025d9e257c7e2e14f456199fdc3e4786f4df91c768cb92da2d7751de0e` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/hom-inv-apply--1f384537e1a11e145279cd1b.md) | 137 | `result-track:1f384537e1a11e145279cd1b0c63af0e05cae9b7855adbaeabb4dab204eac462` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/instance--7661cd311c4c51dcb4001f01.md) | 140 | `declaration-track:7661cd311c4c51dcb4001f0163107ad0207c060cde502ef0df0de87a140784a6` |
| 28 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/iso-mk--076d46cfec7b381f96542cf3.md) | 145 | `declaration-track:076d46cfec7b381f96542cf3459655a85734db40074826d79192d409f35ad843` |
| 29 | `def` | [dual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/dual--61a65207618bc870f79d666e.md) | 151 | `declaration-track:61a65207618bc870f79d666e6269d04b99d12f83b7bdd87ced94c33b9de57fd7` |
| 30 | `def` | [dualEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/dualequiv--e286c19963d1a0c1b71de611.md) | 157 | `declaration-track:e286c19963d1a0c1b71de6116822b5c5a566701338e2d95d90f6943bb9423f21` |
| 31 | `def` | [preordToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/preordtocat--26ed65596aa456cb04420396.md) | 168 | `declaration-track:26ed65596aa456cb0442039674102036ec4704f1b8fc9954993fe80e7a5d1f5d` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/instance--b22cdde05b7b0ea31bcd1e44.md) | 172 | `declaration-track:b22cdde05b7b0ea31bcd1e4449321c2c230c0b6667a2ba0c5bf1376f11cc559f` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preord/Variante84bfef255c95b79c787a0179e6dcb91bf790e57a7dde7ece64a3416b0fa68b3.lean/declarations/instance--07d23dc04bee4e606ad74f29.md) | 175 | `declaration-track:07d23dc04bee4e606ad74f29d7f375ac6d4e59cf60e0202dbed6f285be311923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
