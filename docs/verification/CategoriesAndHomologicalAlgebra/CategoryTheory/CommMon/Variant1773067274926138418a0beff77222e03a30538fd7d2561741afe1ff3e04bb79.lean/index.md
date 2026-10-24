# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48f823a33d697a5f543af41dd85aeb731bc91df4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48f823a33d697a5f543af41dd85aeb731bc91df4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/commmon--c0869193e9263282f07c3a4b.md) | 32 | `declaration-track:c0869193e9263282f07c3a4bf22dbde5bed659741768b8254d58088bbe5114d6` |
| 2 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/trivial--b25a1620f488fc106a1f7e55.md) | 44 | `declaration-track:b25a1620f488fc106a1f7e55982f16f0343341715f6ea90f26229ce72e1402c2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/instance--c2530cf53000d9386ba89ac1.md) | 49 | `declaration-track:c2530cf53000d9386ba89ac171df7c3f1aa1b64a60b61177ad893b812ba6d590` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/instance--379e60937be9231249c4c34a.md) | 55 | `declaration-track:379e60937be9231249c4c34afcb24be07ce2e2afe33a868194e6da5737036482` |
| 5 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/id-hom--b1a1d0697096c652ef816ece.md) | 59 | `result-track:b1a1d0697096c652ef816ece670023e10e720d3dbcc63d0bdf4afd362f763143` |
| 6 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/comp-hom--6a79a3f6de356ba03343bdaa.md) | 65 | `result-track:6a79a3f6de356ba03343bdaaa2bda7e8756886cbea74bf74e44e8cdb7eac9615` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/hom-ext--4befecb4dab4bf64adddd708.md) | 75 | `result-track:4befecb4dab4bf64adddd708e44b43df6cdcac7fc1a6975d9d936f4cd295ef1e` |
| 8 | `lemma` | [id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/id--9cfa370d9593e60cbe2b7fbb.md) | 80 | `result-track:9cfa370d9593e60cbe2b7fbbfb32a532466e2c1ab003ca8bd20a871da15b613c` |
| 9 | `lemma` | [comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/comp--deb115a2dde6f5165aeab6f6.md) | 83 | `result-track:deb115a2dde6f5165aeab6f6421f00378c492f763991e515447244db1d9ee845` |
| 10 | `def` | [forget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/forget-mon--92382d12ddc44d626cbecae4.md) | 91 | `declaration-track:92382d12ddc44d626cbecae4d5b9d5d1dc2f237e5b36f52fde63fafd0dbb51f2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/instance--abd1cb21359a4e8f9ea08781.md) | 97 | `declaration-track:abd1cb21359a4e8f9ea08781c7329704d31fcb2fbee1d3bbb9b9f44a46d09e89` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/instance--18195ba8e6864f102f2b9586.md) | 98 | `declaration-track:18195ba8e6864f102f2b958626162e9c148f0d5faf1def947a9da90d52c6411a` |
| 13 | `theorem` | [forget₂_Mon_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/forget-mon-obj-one--c73a184b3403547183a487d9.md) | 101 | `result-track:c73a184b3403547183a487d9e35c408bc6f8c733b01ae27dacb7c000edd610a9` |
| 14 | `theorem` | [forget₂_Mon_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/forget-mon-obj-mul--62052a56f34696ef3e8cde6f.md) | 107 | `result-track:62052a56f34696ef3e8cde6f9ac6dcf1752f592684c4d384a2ec61a7e8045a2b` |
| 15 | `theorem` | [forget₂_Mon_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/forget-mon-map-hom--1b74b160895023e42345c062.md) | 113 | `result-track:1b74b160895023e42345c0629f2c8877c9a41a5a01ac28d739146810665084d0` |
| 16 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/uniquehomfromtrivial--d626bd46e8227d0929884d0e.md) | 120 | `declaration-track:d626bd46e8227d0929884d0e569da65d633b58acfef3af4438c82d15dfbef11c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/instance--e6535e3dcd2f1563d25eeb6f.md) | 127 | `declaration-track:e6535e3dcd2f1563d25eeb6ff4f9133d4c1c1bf362fdcb6425d8546c78c1e9d9` |
| 18 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/mapcommmon--717d72072cad013efa9bf4e8.md) | 141 | `declaration-track:717d72072cad013efa9bf4e8926b748306132e3a035693148f289fb5d8d3baf2` |
| 19 | `def` | [mapCommMonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/mapcommmonfunctor--efbc07fc2129411fbd458cb5.md) | 158 | `declaration-track:efbc07fc2129411fbd458cb54714874a99f69fc0b802b54e429f406889a9c85d` |
| 20 | `def` | [laxBraidedToCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/laxbraidedtocommmon--ec6f74038e2b4c0eab0b5856.md) | 176 | `declaration-track:ec6f74038e2b4c0eab0b5856478f8fd27d1fd72ab6b13e5d0919071d13940001` |
| 21 | `def` | [commMonToLaxBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/commmontolaxbraided--d5d3afe87509f1e9921f574c.md) | 184 | `declaration-track:d5d3afe87509f1e9921f574c0efc75e8e2a837a517d614dc989cf1392b7d8989` |
| 22 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/unitiso--8f6473892d4a2b78a775d877.md) | 202 | `declaration-track:8f6473892d4a2b78a775d877d451dd5e31eef3bbb5a824666be9db38e9c4b8df` |
| 23 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/counitiso--a77078dbe6c7fc4c36e8532d.md) | 216 | `declaration-track:a77078dbe6c7fc4c36e8532d3c4d4ff05c5d00527e17435d5e2f366884d2080a` |
| 24 | `def` | [equivLaxBraidedFunctorPunit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79.lean/declarations/equivlaxbraidedfunctorpunit--e043058adc6eae01f7b31d05.md) | 232 | `declaration-track:e043058adc6eae01f7b31d05b4acdd6a27defc7c7372d1f23b43026e8e82c874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
