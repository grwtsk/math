# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalComplex.Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3efddee1016cd154c3ae71579922da20fa2d0890",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3efddee1016cd154c3ae71579922da20fa2d0890`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [p_comp_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/p-comp-d--6244b4d5b2a68140aaaf2356.md) | 37 | `result-track:6244b4d5b2a68140aaaf235630a2280f7d80e3397273b72c0b867afbac937dde` |
| 2 | `theorem` | [comp_p_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/comp-p-d--43abc6a5714d512ffccca9e5.md) | 41 | `result-track:43abc6a5714d512ffccca9e5c0e0879f0817062f085eaeca067ec5ea10d7fd71` |
| 3 | `theorem` | [p_comm_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/p-comm-f--b1e9e641e871d4d138bd17b3.md) | 45 | `result-track:b1e9e641e871d4d138bd17b3838bfd4c575e9d1b4ecc7eecae0e612b853ac147` |
| 4 | `theorem` | [p_idem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/p-idem--9818cfcb1e95117d4755f2c9.md) | 51 | `result-track:9818cfcb1e95117d4755f2c9e0ee3a29d626b8b460c35fe041424de52637eb5e` |
| 5 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/obj--733513835a24d1b951e429a2.md) | 67 | `declaration-track:733513835a24d1b951e429a2cb4e8fc37b5ca50433121cf9c8ff4e39f9be459a` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/map--4339d860ed18373facabcab5.md) | 77 | `declaration-track:4339d860ed18373facabcab5b5951cbf86a15642799d82fc4fd01f8086345c01` |
| 7 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/functor--ca72359faa118b115affdf9c.md) | 85 | `declaration-track:ca72359faa118b115affdf9c23dae471b86cb7157305b46ec4f83c6aabcd76aa` |
| 8 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/obj--ca36804db2f3652b5ba07eee.md) | 94 | `declaration-track:ca36804db2f3652b5ba07eee39e31656d5f373324cc506ec9ae80155f1774c01` |
| 9 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/map--7db9e8c8c2617edf0903098d.md) | 106 | `declaration-track:7db9e8c8c2617edf0903098dd2bca8aae74d69d7a89003b04802f2136acba087` |
| 10 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/inverse--9bfa68f74ea21257075aa1e5.md) | 115 | `declaration-track:9bfa68f74ea21257075aa1e5ed90dadf20b722372dddf40d63014bf0d2918c3e` |
| 11 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/counitiso--fcaa13a072f8a4d1561a4633.md) | 122 | `declaration-track:fcaa13a072f8a4d1561a4633c67eaa1d8f25160e286ba10a1296067672cac759` |
| 12 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/unitiso--b46cea6b8b65e41ebe9af981.md) | 129 | `declaration-track:b46cea6b8b65e41ebe9af981110ce1b530afdc832b5c64b9dd834bc80e5580b9` |
| 13 | `def` | [karoubiHomologicalComplexEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/karoubihomologicalcomplexequivalence--bd4d6a5745b627f6a0638707.md) | 179 | `declaration-track:bd4d6a5745b627f6a0638707b12b8d1149482987f34f42a819ae6800da05d100` |
| 14 | `def` | [karoubiChainComplexEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/karoubichaincomplexequivalence--95ef89d3de42d4bc795e9c59.md) | 190 | `declaration-track:95ef89d3de42d4bc795e9c599c245050a87c070e320745e3fbb37ed345cb0b12` |
| 15 | `def` | [karoubiCochainComplexEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/karoubicochaincomplexequivalence--5d02f50890e6825b267357e5.md) | 195 | `declaration-track:5d02f50890e6825b267357e569b35c01fb636576606621580c32b8da435f9d46` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/declarations/instance--20c1af9fec0612b0cf60b605.md) | 199 | `declaration-track:20c1af9fec0612b0cf60b605488d35e1ce7c0bbd8cbd9d0a378afe3811ac0f81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
