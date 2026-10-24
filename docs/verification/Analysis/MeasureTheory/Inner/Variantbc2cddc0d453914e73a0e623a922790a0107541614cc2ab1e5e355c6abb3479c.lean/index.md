# Verification target: GRWTSK.Analysis.MeasureTheory.Inner.Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a499da63b783eac48ac532af8607353d29cec7bd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a499da63b783eac48ac532af8607353d29cec7bd`.

Source path: `GRWTSK/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Measurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/declarations/measurable-inner--803e7a0b82b885631fb642eb.md) | 23 | `result-track:803e7a0b82b885631fb642ebe5ce9bc2b1fb39275389af9810eef9e5d61070b8` |
| 2 | `theorem` | [Measurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/declarations/measurable-const-inner--16ba37521c2d28ac8a8748f8.md) | 30 | `result-track:16ba37521c2d28ac8a8748f8e675433b3df5b9bec0fddac13b4b571afe2d46cf` |
| 3 | `theorem` | [Measurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/declarations/measurable-inner-const--65b7e4d03d3c3da42a866d0f.md) | 36 | `result-track:65b7e4d03d3c3da42a866d0f1d6d71da07e77652ff794bca119c6781769c88fd` |
| 4 | `theorem` | [AEMeasurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/declarations/aemeasurable-inner--3fe84ec5a300aef6e9562cd8.md) | 42 | `result-track:3fe84ec5a300aef6e9562cd8dbbd66e5398dc1d88a52808a4ca68e3e06c22c12` |
| 5 | `theorem` | [AEMeasurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/declarations/aemeasurable-const-inner--699ba1530f3b2a033c98c207.md) | 53 | `result-track:699ba1530f3b2a033c98c2078aa6272f822623ea683f929ef89dd37ca26b08ba` |
| 6 | `theorem` | [AEMeasurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/declarations/aemeasurable-inner-const--35ba84ab56a8b1b4e8e0ca48.md) | 61 | `result-track:35ba84ab56a8b1b4e8e0ca48e5e8d8c0c24d00bbc47e67c9a224174248b947ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
