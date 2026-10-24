# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Homology.Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4115996232a6baa36e5c092bea8bf2b7ae7e0fbe",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4115996232a6baa36e5c092bea8bf2b7ae7e0fbe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean.json)

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
| 1 | `def` | [dCokernelSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/dcokernelsequence--497fb59a4ced3c20bca20860.md) | 51 | `declaration-track:497fb59a4ced3c20bca208601d8eee322275f917dd29203958ea7ff36e2f0927` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/instance--eb45ed59e34098738bc59b4b.md) | 56 | `declaration-track:eb45ed59e34098738bc59b4bab677f849bc9a2335a3513682b0c166931286574` |
| 3 | `lemma` | [dCokernelSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/dcokernelsequence-exact--a6db69414c517f37367ed124.md) | 62 | `result-track:a6db69414c517f37367ed124603f927775d51eb665710e5ccec63f32032d4f16` |
| 4 | `def` | [dKernelSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/dkernelsequence--12be1fe072bcb9b6d612cf00.md) | 81 | `declaration-track:12be1fe072bcb9b6d612cf00feeba027aefd6c19d4017ba17a4261cafe2eb350` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/instance--2699c6a7cc9058dff09cf6d3.md) | 86 | `declaration-track:2699c6a7cc9058dff09cf6d3deede8efc1f398a830c87df8fcbac5bb2a95b220` |
| 6 | `lemma` | [dKernelSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/dkernelsequence-exact--dfc51cf0b8db56ca37e32165.md) | 92 | `result-track:dfc51cf0b8db56ca37e3216548badd91405b9a686ba998cfdfa2e33f81d85d28` |
| 7 | `def` | [dShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/dshortcomplex--ba7b15111ff4894c24d26f8c.md) | 119 | `declaration-track:ba7b15111ff4894c24d26f8c19485e1cc6e5d8730c7476ded10cd2d89a2814ee` |
| 8 | `lemma` | [map_fourδ₁Toδ₀_EMap_fourδ₄Toδ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/map-four-to-emap-four-to--24853d9c19e60118dfbada02.md) | 126 | `result-track:24853d9c19e60118dfbada02c0de34d291479a18f6477175d8134ef2114cd7bc` |
| 9 | `def` | [dHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/dhomologydata--93f4f5a399a30061cb180808.md) | 142 | `declaration-track:93f4f5a399a30061cb18080817b7828b215cce28bd32995a82eb3731479c6784` |
| 10 | `def` | [dHomologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/declarations/dhomologyiso--ad4ef73fb9bfc5cb1be61b01.md) | 155 | `declaration-track:ad4ef73fb9bfc5cb1be61b012f161935709c1b9ebb89c09da241e27d6cbaaef3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
