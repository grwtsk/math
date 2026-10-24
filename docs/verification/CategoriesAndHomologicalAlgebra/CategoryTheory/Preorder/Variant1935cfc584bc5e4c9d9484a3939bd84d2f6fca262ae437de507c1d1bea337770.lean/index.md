# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd7332ab24c0b01604b0f2b62644095f4586af8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd7332ab24c0b01604b0f2b62644095f4586af8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/instance--20a19dc15600490737e4c90a.md) | 52 | `declaration-track:20a19dc15600490737e4c90a649595b103d2f159a9de779ac90731c9b3ad5532` |
| 2 | `instance` | [subsingleton_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/subsingleton-hom--ab66cb3bbab0e3c0526e2c08.md) | 57 | `declaration-track:ab66cb3bbab0e3c0526e2c08825276a34bc5fadf652a18f6bb03e5c4b7be64be` |
| 3 | `def` | [homOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/homofle--c016a61d1fe9e401db03a9c0.md) | 70 | `declaration-track:c016a61d1fe9e401db03a9c0f5c41a7298d672f82783e9e9c226ec9168e0548b` |
| 4 | `abbrev` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomOfLE.Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.LE.le.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-homofle-varia--b4d75ef2ac18e911c1fddabc.md) | 74 | `declaration-track:b4d75ef2ac18e911c1fddabc8ae460790f49b79709eab96da2a856091cd1c5e8` |
| 5 | `theorem` | [homOfLE_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/homofle-refl--3f17328563170c6f73a4bb1b.md) | 77 | `result-track:3f17328563170c6f73a4bb1ba53601cbb3e12101ebdc58932c899445e910459a` |
| 6 | `theorem` | [homOfLE_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/homofle-comp--19a6ba48fcc7416a0f9c9e59.md) | 81 | `result-track:19a6ba48fcc7416a0f9c9e59881fad23e5cde2478f95d2f145a18cf4a73638c9` |
| 7 | `theorem` | [leOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/leofhom--c8cb18c278bffdad22719920.md) | 87 | `result-track:c8cb18c278bffdad22719920f619e83ba99b66dc42e6e1aac6e72b6b011e54f3` |
| 8 | `abbrev` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomOfLE.Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.Quiver.Hom.le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-homofle-varia--ece9399db9201b892041fed7.md) | 91 | `declaration-track:ece9399db9201b892041fed7fb83e16b19f3bc0031df886a64f730cca91f5b1b` |
| 9 | `theorem` | [homOfLE_leOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/homofle-leofhom--d2592b166b53833478bd75b6.md) | 94 | `result-track:d2592b166b53833478bd75b65d95d2e5c3059bd65696ddbf7f4294e0fd041d15` |
| 10 | `lemma` | [homOfLE_isIso_of_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/homofle-isiso-of-eq--f8692d29254cd40a05c3ee64.md) | 97 | `result-track:f8692d29254cd40a05c3ee6425954ec20ce6c8d2cc0702aa6d95b21d3815ac24` |
| 11 | `lemma` | [homOfLE_comp_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/homofle-comp-eqtohom--389f0527a514ecc39bafe468.md) | 102 | `result-track:389f0527a514ecc39bafe468f6e99f1f5346e845e5d70983b810ab16d15fcd96` |
| 12 | `lemma` | [eqToHom_comp_homOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/eqtohom-comp-homofle--0fd7b0af9eba30cfefc18256.md) | 107 | `result-track:0fd7b0af9eba30cfefc18256cb7bc87610c424f0494e2b99d83c28b6ff4b95de` |
| 13 | `lemma` | [homOfLE_op_comp_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/homofle-op-comp-eqtohom--344db39ebc5915ebfbd47958.md) | 112 | `result-track:344db39ebc5915ebfbd47958737bc2cd60512dea2590c174c0401678524af122` |
| 14 | `lemma` | [eqToHom_comp_homOfLE_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/eqtohom-comp-homofle-op--bd9b55eada4e9e7f35175f14.md) | 117 | `result-track:bd9b55eada4e9e7f35175f146b7e8e41b94928f70f2f909e8c3b00668107b9a1` |
| 15 | `def` | [opHomOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/ophomofle--5e958b7a6968249084f2f256.md) | 122 | `declaration-track:5e958b7a6968249084f2f256edf94b289e59ec4e5ba8e1e9d00c2f0b2bb4f2f3` |
| 16 | `theorem` | [le_of_op_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/le-of-op-hom--948169db11c53ecc1271df1b.md) | 125 | `result-track:948169db11c53ecc1271df1b3e601b6e54a92c73d38b6f5ae1d9737a629ae454` |
| 17 | `instance` | [uniqueToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/uniquetotop--28e22dc8fb4100b8e41a22b5.md) | 128 | `declaration-track:28e22dc8fb4100b8e41a22b57ee1eb733075da30e3acdbd044d5043bb5ba059c` |
| 18 | `instance` | [uniqueFromBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/uniquefrombot--37d4bc6502a42d0936e39866.md) | 132 | `declaration-track:37d4bc6502a42d0936e398668195c54f9a09c2b1699c82ee541c5af0d34065d4` |
| 19 | `def` | [orderDualEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/orderdualequivalence--7171170d528cdc97ad413260.md) | 140 | `declaration-track:7171170d528cdc97ad413260cecf80758c3102dab161df5c601900c0f313f6cb` |
| 20 | `def` | [Monotone.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/monotone-functor--af055358e01378e2c53d3d1e.md) | 160 | `declaration-track:af055358e01378e2c53d3d1e6ddd4e1965bd59a9fde1021fb8b87fe7110a6945` |
| 21 | `theorem` | [Monotone.functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/monotone-functor-obj--38145c5e3f9c711fd9841990.md) | 165 | `result-track:38145c5e3f9c711fd98419905020780f83285ad03577c8f4e9e390a2515ef19d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/instance--62128c9f2809c0e0b84d5260.md) | 169 | `declaration-track:62128c9f2809c0e0b84d5260e73fc8e5d8a558a826745efe94d209e1fc2a7488` |
| 23 | `def` | [OrderIso.equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/orderiso-equivalence--100e5c874b294a05ef9f6b71.md) | 174 | `declaration-track:100e5c874b294a05ef9f6b715741e20015ec95f51ce0dc3ce1bba5d6bfa99f45` |
| 24 | `theorem` | [Functor.monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/functor-monotone--b5ec02084909cc1d307d2b58.md) | 191 | `result-track:b5ec02084909cc1d307d2b58bd65b7b0f98aadb5c4440bd72d81942a2f5b2b5f` |
| 25 | `theorem` | [Iso.to_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/iso-to-eq--3256dfa06229e88bed0420b3.md) | 199 | `result-track:3256dfa06229e88bed0420b3f1a9e32856cd52ad6f738a4510122268ccaca5dc` |
| 26 | `def` | [Equivalence.toOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/equivalence-toorderiso--42b8a89f2f583209947ee6d5.md) | 204 | `declaration-track:42b8a89f2f583209947ee6d55d270991d47cf39c95c0b5c9649b8fc1687425ed` |
| 27 | `theorem` | [Equivalence.toOrderIso_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/equivalence-toorderiso-apply--7a77095140cfb718d4fb34a2.md) | 217 | `result-track:7a77095140cfb718d4fb34a2b0c540caecc8c83d0213d3e20746652ec8b8fcc0` |
| 28 | `theorem` | [Equivalence.toOrderIso_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/equivalence-toorderiso-symm-apply--c40adf96dd5182b26eeb7c69.md) | 221 | `result-track:c40adf96dd5182b26eeb7c69c8e99673c879f961076427898eaa9732aa7b751f` |
| 29 | `lemma` | [PartialOrder.isIso_iff_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant1935cfc584bc5e4c9d9484a3939bd84d2f6fca262ae437de507c1d1bea337770.lean/declarations/partialorder-isiso-iff-eq--5ca4b18bb7674a5be3237d49.md) | 231 | `result-track:5ca4b18bb7674a5be3237d4954e809e65915b6c21580dca78067fb55f8750142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
