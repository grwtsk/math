# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reassoc.Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b19303847db5353e663514964c9939730540bb58",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b19303847db5353e663514964c9939730540bb58`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.Simp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_whisker'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/declarations/eq-whisker--21755688fbf722add7b9aa97.md) | 35 | `result-track:21755688fbf722add7b9aa976090f764b54d1579e978607200b30ca42107f8fe` |
| 2 | `def` | [categorySimp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/declarations/categorysimp--271281492df12a9e966a0641.md) | 39 | `declaration-track:271281492df12a9e966a06415f082bf0246de905d7e48ccda283dfbf00562062` |
| 3 | `def` | [reassocExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/declarations/reassocexpr--b17f4ca6078e29389f9126a2.md) | 49 | `declaration-track:b17f4ca6078e29389f9126a2609c7d89b56aa45269368cfdd7514cce6e2ec66b` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/declarations/syntax--d8d498472b0e42d193bf692f.md) | 70 | `declaration-track:d8d498472b0e42d193bf692fd9d241ab111f42778a4b1f52bc2fbd348d5dc47d` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/declarations/initialize--caed86ed34f61fc7a56a9b3b.md) | 72 | `declaration-track:caed86ed34f61fc7a56a9b3b4cec16cdf4be686204502ba25a9454b472e9df41` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variantcf6f1468552b755fc5564a0eb2e6d7e79379886a57c6cf2257413a7099f39d99.lean/declarations/elab--c9a33796b3ace0c8b1856d72.md) | 91 | `declaration-track:c9a33796b3ace0c8b1856d729a7842fbe41b6c1b3a0b78726b0804265d60c5f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
