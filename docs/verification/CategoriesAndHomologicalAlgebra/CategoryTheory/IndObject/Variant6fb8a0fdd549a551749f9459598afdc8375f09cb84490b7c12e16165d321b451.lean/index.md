# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IndObject.Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e27e430e0f444f0211a731e18554be13f1a9020",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e27e430e0f444f0211a731e18554be13f1a9020`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FinallySmall` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Small` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Presheaf` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IndObjectPresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/indobjectpresentation--8c7f490008985988c534bdee.md) | 54 | `declaration-track:8c7f490008985988c534bdee5b8ca663d8af6a9394ee8ffdf20a1a31978d5ce4` |
| 2 | `def` | [ofCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/ofcocone--7709d49ba191260f4b43fcf7.md) | 72 | `declaration-track:7709d49ba191260f4b43fcf786fb56644ad29de6c7066f428e92edf3b510ecc0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/instance--50c8a7eee9fc7364d8bb3fd3.md) | 81 | `declaration-track:50c8a7eee9fc7364d8bb3fd34aa0163c372a539889c00bae21dff14cb193df05` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/instance--e0ad8746611b89efe56529aa.md) | 82 | `declaration-track:e0ad8746611b89efe56529aae122cf6a1c9e0711863fccc332bce11a592886b5` |
| 5 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/cocone--4a6b8a289e8ac5dece8a4dfe.md) | 86 | `declaration-track:4a6b8a289e8ac5dece8a4dfeec6b5e8a7eec66cd8836b84513f006c50fb2e617` |
| 6 | `def` | [coconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/coconeiscolimit--3ee1f87cfed528bb219a10fe.md) | 91 | `declaration-track:3ee1f87cfed528bb219a10fea91b1c527f32055804a7bf048f8a70d8b9bc5f8f` |
| 7 | `def` | [extend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/extend--337788cd2328fbc9d496386e.md) | 97 | `declaration-track:337788cd2328fbc9d496386e4f3c16775352f13cde842c50c106a047acbd41fe` |
| 8 | `def` | [toCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/tocostructuredarrow--84f50dd4ea62543056f04e95.md) | 104 | `declaration-track:84f50dd4ea62543056f04e95004f14761fa4730c016ee32e4405c38f30157040` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/instance--edfbee24f161861dfa82fb1e.md) | 107 | `declaration-track:edfbee24f161861dfa82fb1e2ad2b9b28ed54c11fe98d6f9f8ee35263bb72085` |
| 10 | `def` | [yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/yoneda--5bfdc0abe82db66fb833d1c5.md) | 112 | `declaration-track:5bfdc0abe82db66fb833d1c5679389872e3acfba311149057ce8169cc3e49ebc` |
| 11 | `structure` | [IsIndObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isindobject--21514e0f5413c54bbee5b78b.md) | 124 | `declaration-track:21514e0f5413c54bbee5b78b79425029f21d67bc6006ee8e8add653a4a613ecc` |
| 12 | `theorem` | [IsIndObject.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isindobject-mk--6d206b6aa9007efc58af04a1.md) | 127 | `result-track:6d206b6aa9007efc58af04a122a23706692755b9d9c74052c1eae24423db0341` |
| 13 | `theorem` | [isIndObject_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isindobject-yoneda--5a3b1ca800b1f72648f57caa.md) | 131 | `result-track:5a3b1ca800b1f72648f57caa7edfa4b47d5d62a54529a3278fb88bf75dba43c8` |
| 14 | `theorem` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/map--de9bfdffe62ee50c5831a068.md) | 138 | `result-track:de9bfdffe62ee50c5831a0687953b07d4c88f430dcac7f6573d157302aadff85` |
| 15 | `theorem` | [iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/iff-of-iso--52a9b6c91f2a91dc4217363b.md) | 141 | `result-track:52a9b6c91f2a91dc4217363bb3abb2fe73714e059f89791d455575b2560f8110` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/instance--3998106f78050841254c5ad3.md) | 144 | `declaration-track:3998106f78050841254c5ad3bad3554a3d05b351c1cb92ed37a528f63e091cba` |
| 17 | `def` | [presentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/presentation--751a735f1759ba690ac18ee7.md) | 148 | `declaration-track:751a735f1759ba690ac18ee735cd94af6f259cd399139c45fceac973647c4787` |
| 18 | `theorem` | [isFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isfiltered--ba076885181e39faa5d2ad82.md) | 151 | `result-track:ba076885181e39faa5d2ad82c4420d64d63bd3ae3821fb8bb8f6c27337b33686` |
| 19 | `theorem` | [finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/finallysmall--524280bdb22bd2b15781e7b3.md) | 154 | `result-track:524280bdb22bd2b15781e7b397c4ecc6009a00aaef31353793c67f3da52f9db6` |
| 20 | `theorem` | [isIndObject_of_isFiltered_of_finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isindobject-of-isfiltered-of-finallysmall--4013e0113d5158eae7514c5d.md) | 161 | `result-track:4013e0113d5158eae7514c5d2ba2e999d4008f25d5fd1a14c364464a37e66127` |
| 21 | `theorem` | [isIndObject_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isindobject-iff--d1a7ec1cc2d9eb74e896e85d.md) | 181 | `result-track:d1a7ec1cc2d9eb74e896e85d91afdde7ea8b86c54be43df0b77549704652ce3e` |
| 22 | `theorem` | [isIndObject_limit_comp_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isindobject-limit-comp-yoneda--4df7e369f01d87afb55ab1a2.md) | 188 | `result-track:4df7e369f01d87afb55ab1a2a7141b530db855f8cd415af7382b7d9a4c14e5a4` |
| 23 | `lemma` | [isIndObject_iff_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/declarations/isindobject-iff-preservesfinitelimits--ccea26db0a6115610a4c1057.md) | 200 | `result-track:ccea26db0a6115610a4c105775ee0743cc803e15c8a9589e13259e48af8436e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
