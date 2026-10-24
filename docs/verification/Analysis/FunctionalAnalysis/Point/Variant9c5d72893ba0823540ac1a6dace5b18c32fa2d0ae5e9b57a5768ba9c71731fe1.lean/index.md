# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Point.Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3826fe7241a45441fdcbba0e32e86308f6adc0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3826fe7241a45441fdcbba0e32e86308f6adc0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.FeatureMap` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Kernel.Regularization` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RhetoricalPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/rhetoricalpoint--3aa9b921b0c62a38ea97ff5b.md) | 21 | `declaration-track:3aa9b921b0c62a38ea97ff5ba9d86ceab7afc86795756acb882607ba79051c9e` |
| 2 | `def` | [rawVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/rawvector--dbe6603cc5f6f30e24c7d06d.md) | 31 | `declaration-track:dbe6603cc5f6f30e24c7d06d36be76b1417de75faac4ef3c1e56ff508a0d7dbf` |
| 3 | `theorem` | [rawVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/rawvector-ne-zero--373bcbfd75e4666acf821b36.md) | 35 | `result-track:373bcbfd75e4666acf821b36295a5357be88c3942083e62b3bf35152aaa08282` |
| 4 | `def` | [vector](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/vector--60b1aafebea2fe8d9caf8d65.md) | 47 | `declaration-track:60b1aafebea2fe8d9caf8d6558d34afd148902c5dbcbea7328c04759335b8f7c` |
| 5 | `theorem` | [vector_norm_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/vector-norm-one--480915a09b5cf667aedae3aa.md) | 52 | `result-track:480915a09b5cf667aedae3aa57d81502294322442fd9d3d6838cb84ae2e83cee` |
| 6 | `def` | [projection](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/projection--afeebc709a12897005d7f5c8.md) | 60 | `declaration-track:afeebc709a12897005d7f5c80b7c9269d6b61c1f853f5535b3e1722e4c484fbf` |
| 7 | `theorem` | [projection_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/projection-selfadjoint--d60c75126801ccc45032f3da.md) | 65 | `result-track:d60c75126801ccc45032f3dabf72e101f72f62060439ec34eb26b3b33e235018` |
| 8 | `theorem` | [projection_idempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/projection-idempotent--e0686f3bb9a44237a7678918.md) | 70 | `result-track:e0686f3bb9a44237a76789184623fae4aa04591cfac63667352ecd8198ea764c` |
| 9 | `theorem` | [projection_isStarProjection](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/projection-isstarprojection--3d515fb1c8dad0a9453750de.md) | 75 | `result-track:3d515fb1c8dad0a9453750de24cd242ccd3bf750d3ca2986c1b5f4d58d7be887` |
| 10 | `def` | [regularizedRhetoricalPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/regularizedrhetoricalpoint--a83b9dfe6ab6ec04fd17180e.md) | 83 | `declaration-track:a83b9dfe6ab6ec04fd17180e0750099d729939c7b8b0ab98b54dfc584430df15` |
| 11 | `theorem` | [regularized_rhetoricalVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/regularized-rhetoricalvector-ne-zero--68475221bdd162c84a1d3d79.md) | 108 | `result-track:68475221bdd162c84a1d3d79a07534c8f481f8c661179df1eba8552dc9942276` |
| 12 | `def` | [productionRhetoricalPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/productionrhetoricalpoint--f059a7b4f50c1c8479171d09.md) | 118 | `declaration-track:f059a7b4f50c1c8479171d09578c0d2adc9f398552460e74742789521f95a4ea` |
| 13 | `theorem` | [production_rhetoricalVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant9c5d72893ba0823540ac1a6dace5b18c32fa2d0ae5e9b57a5768ba9c71731fe1.lean/declarations/production-rhetoricalvector-ne-zero--cacd18231ce8cd615d773a4f.md) | 126 | `result-track:cacd18231ce8cd615d773a4fc784b53227e2cc20fdc65e8df7b02b747ca02572` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
