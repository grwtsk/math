# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Evaluation.Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0143fe17f0749146bbb17fc685ae3c581604294b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0143fe17f0749146bbb17fc685ae3c581604294b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/evaluationleftadjoint--289476e6ad1e152db5de04fd.md) | 36 | `declaration-track:289476e6ad1e152db5de04fdeca83fe0f0d6cf495f8efecdf3e5916ee804bfdb` |
| 2 | `def` | [evaluationAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/evaluationadjunctionright--bfcb6b0af688d90ed0e1e0e5.md) | 51 | `declaration-track:bfcb6b0af688d90ed0e1e0e5d7d078784b41c79793a74393a13f9e213db51114` |
| 3 | `instance` | [evaluationIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/evaluationisrightadjoint--a26243ba7cfccc9cbb959b6e.md) | 75 | `declaration-track:a26243ba7cfccc9cbb959b6eecf494f7ab07dfae04345ccf275664882ef8663b` |
| 4 | `theorem` | [NatTrans.mono_iff_mono_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/nattrans-mono-iff-mono-app--e13cd5c8952b6cf0d34e518b.md) | 79 | `result-track:e13cd5c8952b6cf0d34e518b48d711abd10885340d0f97094bc6082224a12af3` |
| 5 | `def` | [evaluationRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/evaluationrightadjoint--1c130ef88533f918320707da.md) | 95 | `declaration-track:1c130ef88533f918320707da53926768cb91dc8d009c89fd7547831491c2c4ce` |
| 6 | `def` | [evaluationAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/evaluationadjunctionleft--9699dd967dfa8fad2d9c039f.md) | 110 | `declaration-track:9699dd967dfa8fad2d9c039f877ca65f5e7d97314ca98ab77c259f439b5f60ae` |
| 7 | `instance` | [evaluationIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/evaluationisleftadjoint--dff3e54ff1f9d46b4584d832.md) | 134 | `declaration-track:dff3e54ff1f9d46b4584d832cf039619265d5c415f6ef3321bdb93647710855a` |
| 8 | `theorem` | [NatTrans.epi_iff_epi_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/declarations/nattrans-epi-iff-epi-app--58348c0c859fb3d4824e3f62.md) | 138 | `result-track:58348c0c859fb3d4824e3f62a26b20afe071160437c7cd1ffa770f4ba004d678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
