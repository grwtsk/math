# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3cd31c0d8e65c80d0d3fa27d2d07ca66ec2854a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3cd31c0d8e65c80d0d3fa27d2d07ca66ec2854a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean.json)

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
| 1 | `class` | [IsStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/isstableunderretracts--154452447a7ea125d3da8f18.md) | 32 | `declaration-track:154452447a7ea125d3da8f1888ea518cbc51f069c063b28ce1761ca60b28b4f2` |
| 2 | `lemma` | [of_retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/of-retract--5d91580fadd2808987df72ff.md) | 35 | `result-track:5d91580fadd2808987df72ffd7802198a3089daa59ea8d7840ab40129c23f50a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/instance--79607b68c8449dc2ef6ca6ff.md) | 39 | `declaration-track:79607b68c8449dc2ef6ca6ff52be2102d917b2a4edb7e21dc2e524580b5cbbb4` |
| 4 | `instance` | [IsStableUnderRetracts.monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/isstableunderretracts-monomorphisms--67a1111eb68a8708d5b7e558.md) | 44 | `declaration-track:67a1111eb68a8708d5b7e558432a594d488311e7f93063a77cc03fdf99301012` |
| 5 | `instance` | [IsStableUnderRetracts.epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/isstableunderretracts-epimorphisms--a707e5f3a0d0afe51908df7a.md) | 49 | `declaration-track:a707e5f3a0d0afe51908df7a6115ad90efd7792f26c2d0d8719ea0e36bab4c61` |
| 6 | `instance` | [IsStableUnderRetracts.isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/isstableunderretracts-isomorphisms--b541f8bce84ec51fd0309188.md) | 54 | `declaration-track:b541f8bce84ec51fd0309188db9f66c45cf61c6e138f1972ea5a6c6526acf4b2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/instance--bff801da178076ac85a94ac3.md) | 60 | `declaration-track:bff801da178076ac85a94ac3e7f62a1df8e6a3b7efb4bdca4d3d6cfd69bd504f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/instance--d23be3b02ce8a71858b5db1e.md) | 64 | `declaration-track:d23be3b02ce8a71858b5db1ed6e77f00a23eecdec777f1f0ab762d5bab017ba7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/instance--600d62ecd9c261fcd78fea73.md) | 68 | `declaration-track:600d62ecd9c261fcd78fea7350cf3da7be5dad6d2e0ab26b1f544ae8afac0a14` |
| 10 | `def` | [retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/retracts--1c21661728e82cedf38affe9.md) | 75 | `declaration-track:1c21661728e82cedf38affe980c8e31aeac6f967fbde68dbbc6ee32f1dea034e` |
| 11 | `lemma` | [le_retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/le-retracts--a86ea6a14ac5aaa8e2e5cb97.md) | 78 | `result-track:a86ea6a14ac5aaa8e2e5cb97fd5718b47c58c12c2bd152e8e0b9384cb4cdf88d` |
| 12 | `lemma` | [retracts_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/retracts-monotone--5ff0c08014881425e6391c72.md) | 82 | `result-track:5ff0c08014881425e6391c7243a0882f81d0c1fc9672b6bf668bdd43f3ecca98` |
| 13 | `lemma` | [isStableUnderRetracts_iff_retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/isstableunderretracts-iff-retracts-le--7a67182d69be466601045758.md) | 86 | `result-track:7a67182d69be4666010457582da94179ed1e36104fd31b4b3e419fc9c1cb05b3` |
| 14 | `lemma` | [retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/retracts-le--43ab1b2f97ff2657e65aa942.md) | 95 | `result-track:43ab1b2f97ff2657e65aa94294f56ae5c1122ed7f989024c857466d92416817f` |
| 15 | `lemma` | [retracts_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/retracts-le-iff--8c611ca859ac5fe49c91941b.md) | 100 | `result-track:8c611ca859ac5fe49c91941b3f27264012118621637d97dd1901aa42f813b66b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant8276656edf583e932ae0672949b9f7cf738bf4dd3b75c84981193e779bd923f4.lean/declarations/instance--6ca55b0ccea388dff9aa50e9.md) | 107 | `declaration-track:6ca55b0ccea388dff9aa50e9011080e482d3bb409810aa49aae2be3ed3959d1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
