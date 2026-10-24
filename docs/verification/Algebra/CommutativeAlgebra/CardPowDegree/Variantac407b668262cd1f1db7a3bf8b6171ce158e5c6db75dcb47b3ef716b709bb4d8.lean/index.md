# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CardPowDegree.Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "414c1b69756aec9ba339d3805cf780195390c5c3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `414c1b69756aec9ba339d3805cf780195390c5c3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Euclidean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardPowDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/declarations/cardpowdegree--2f16d09a3fc80dbdc5c74f4c.md) | 48 | `declaration-track:2f16d09a3fc80dbdc5c74f4c6f162c8d5b198e1a1b5a1c982220647837c461fc` |
| 2 | `theorem` | [cardPowDegree_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/declarations/cardpowdegree-apply--a46c0e2e602157f30e2512e7.md) | 82 | `result-track:a46c0e2e602157f30e2512e78a4dbe946431f7fdcddd00f08211cd461c3e14f7` |
| 3 | `theorem` | [cardPowDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/declarations/cardpowdegree-zero--b706ccc3fd0a94132f471413.md) | 89 | `result-track:b706ccc3fd0a94132f471413db3ed2a48aef2824e7e0670a2c22538b44c0d680` |
| 4 | `theorem` | [cardPowDegree_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/declarations/cardpowdegree-nonzero--27251f1efd2574c75afbe523.md) | 92 | `result-track:27251f1efd2574c75afbe523250cbbc8ac155f3c050d9d45854f5710c173f084` |
| 5 | `theorem` | [cardPowDegree_isEuclidean](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantac407b668262cd1f1db7a3bf8b6171ce158e5c6db75dcb47b3ef716b709bb4d8.lean/declarations/cardpowdegree-iseuclidean--9014d2326e871f2c00b883f8.md) | 96 | `result-track:9014d2326e871f2c00b883f83bc015a00bd86c901e7c1492cb52670d5615a107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
