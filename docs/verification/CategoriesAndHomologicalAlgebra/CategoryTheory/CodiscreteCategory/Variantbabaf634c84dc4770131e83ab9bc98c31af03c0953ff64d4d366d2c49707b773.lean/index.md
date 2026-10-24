# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CodiscreteCategory.Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aeea7038fae5f43075d2cfc462e84fcf94b0adf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aeea7038fae5f43075d2cfc462e84fcf94b0adf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Codiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/codiscrete--4c7e0899ad4497cb630f7a22.md) | 39 | `declaration-track:4c7e0899ad4497cb630f7a22e4be04732a3a20acbb8ea23272b163d11136f94d` |
| 2 | `theorem` | [Codiscrete.mk_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/codiscrete-mk-as--0fc97ce389056cc806507159.md) | 45 | `result-track:0fc97ce389056cc806507159035e66155b6f9b66525587714b41d4a74457bcc3` |
| 3 | `def` | [codiscreteEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/codiscreteequiv--ae0eec877a14f3097c87cc84.md) | 49 | `declaration-track:ae0eec877a14f3097c87cc846554f2f2d79cc932b426e982633a313af8069d52` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/instance--cf51d9861b40f1c35f468504.md) | 55 | `declaration-track:cf51d9861b40f1c35f4685043af0058e9741c2b80d8fa630fbdfb20177f6d960` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/instance--d75d58bbc408290bb19bfafb.md) | 60 | `declaration-track:d75d58bbc408290bb19bfafb316c38b857a32b0954fd7d076cf8583a1abe4e6a` |
| 6 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/functor--2191d383b14e111162dbddfe.md) | 69 | `declaration-track:2191d383b14e111162dbddfe49d63923f65be6d3cc1ab0d2f7fff9d11333df13` |
| 7 | `def` | [invFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/invfunctor--4354249343ebb7df7f0b6ab3.md) | 74 | `declaration-track:4354249343ebb7df7f0b6ab3eb88399fc084475f4c8734301020ac6a70b09757` |
| 8 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/nattrans--9852a7575c571eaf776d8240.md) | 77 | `declaration-track:9852a7575c571eaf776d824065bfb902ca848805ac2a95f27903a8bcc109872f` |
| 9 | `def` | [natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/natiso--0bd563c0208f069e9eebc28e.md) | 82 | `declaration-track:0bd563c0208f069e9eebc28e5fc60642192f00abc4510d69470a04505c21bd67` |
| 10 | `def` | [natIsoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/natisofunctor--40cd700c83126cc7403cea45.md) | 89 | `declaration-track:40cd700c83126cc7403cea45696f9b2063b4f127528196db550925b2f5ca20e8` |
| 11 | `def` | [functorOfFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/functoroffun--12d04a4e3859c501ae08bcde.md) | 94 | `declaration-track:12d04a4e3859c501ae08bcde56657d79ed25d2f68a4560bfcd78b67a6fd2d253` |
| 12 | `def` | [oppositeEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/oppositeequivalence--3896e328aff8a2fc28099ff5.md) | 100 | `declaration-track:3896e328aff8a2fc28099ff5f8ff5921cecad8cdb2c13c8d314b0d7320238b98` |
| 13 | `def` | [functorToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/functortocat--23e9cf4e04df881f8d3b708e.md) | 107 | `declaration-track:23e9cf4e04df881f8d3b708e09115de711a9766db800918d114e3616c42bc0f2` |
| 14 | `def` | [equivFunctorToCodiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/equivfunctortocodiscrete--4a5997ef5bb6cb825189ede6.md) | 115 | `declaration-track:4a5997ef5bb6cb825189ede6b57e5caa42be694991cd509dc6e3a56b4cf4f2ca` |
| 15 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/adj--6b4187fd4327ecb2fe0266d2.md) | 124 | `declaration-track:6b4187fd4327ecb2fe0266d202db8bce0f2a1dbed4085ebf283728625fde8c01` |
| 16 | `def` | [unitApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/unitapp--6c9b3d13f8ec1d949f2903a4.md) | 130 | `declaration-track:6c9b3d13f8ec1d949f2903a438ed6d85af5bbbd77ccd58777a498f27aa54bc31` |
| 17 | `def` | [counitApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/counitapp--7113595ccde84b979eba454d.md) | 133 | `declaration-track:7113595ccde84b979eba454d5339ae0f3bcc23398f881d22a2bbdac12a0d5d97` |
| 18 | `lemma` | [adj_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/adj-unit-app--f5d0b1ecdd4dbddb3be1d234.md) | 135 | `result-track:f5d0b1ecdd4dbddb3be1d234084148cbe1d892f3aed1ea3f3fa1affaec59f0dd` |
| 19 | `lemma` | [adj_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/adj-counit-app--daf1db7fc0371058c1c39899.md) | 138 | `result-track:daf1db7fc0371058c1c39899ae5a9305ad4ff2755d58580c01e7fa17a832fd71` |
| 20 | `lemma` | [left_triangle_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/left-triangle-components--422a7a1b6134efb480501ae9.md) | 143 | `result-track:422a7a1b6134efb480501ae94a93e2ad812555fbe59ff1da2709e285c0df23a2` |
| 21 | `lemma` | [right_triangle_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variantbabaf634c84dc4770131e83ab9bc98c31af03c0953ff64d4d366d2c49707b773.lean/declarations/right-triangle-components--9a113087289cedb1b2f8d6be.md) | 149 | `result-track:9a113087289cedb1b2f8d6be1d6a83edd5765c5e7c9513d1bf24f144c2551df8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
