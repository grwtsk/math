# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09d223b5a17d801f5921edda17ae688be13e37ba",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09d223b5a17d801f5921edda17ae688be13e37ba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/instance--8dd3d0a87ff87713c444dc99.md) | 29 | `declaration-track:8dd3d0a87ff87713c444dc9954b336f32f5141557568d480c98cbe8eea714413` |
| 2 | `lemma` | [orderSucc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/ordersucc-eq--dc301e96e6a488fa4355013f.md) | 40 | `result-track:dc301e96e6a488fa4355013f604c7c715daf5f8c51b29007692c679fc444b36d` |
| 3 | `lemma` | [orderSucc_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/ordersucc-apply--3c72e4b64cd12f27264a9570.md) | 43 | `result-track:3c72e4b64cd12f27264a95701c87b4ddf8572f8fed2f90fcc63084d8bf3e09c7` |
| 4 | `lemma` | [orderSucc_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/ordersucc-last--5c58b905edd29fae09bb1d56.md) | 47 | `result-track:5c58b905edd29fae09bb1d56a411bf3818395b8ee3cfa73256d76864684a4796` |
| 5 | `lemma` | [orderSucc_castSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/ordersucc-castsucc--f05b26ce56659a88fbfed439.md) | 52 | `result-track:f05b26ce56659a88fbfed4396961f4b19b17c9caaef53b8fcca8d5eababd1e86` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/instance--8e9c583cf0d476fb19765ccc.md) | 59 | `declaration-track:8e9c583cf0d476fb19765ccc86226fd71b0cbbd63d7607fd8b5d5dc02508dbfe` |
| 7 | `lemma` | [orderPred_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/orderpred-eq--ec263afd3f20ba1c1ed0bb8a.md) | 71 | `result-track:ec263afd3f20ba1c1ed0bb8aee14a653d05162adcc8de6f7d6a4462e1b5397ef` |
| 8 | `lemma` | [orderPred_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/orderpred-apply--e75a33d2b7127128eb64bb6f.md) | 74 | `result-track:e75a33d2b7127128eb64bb6ff6fea5a09c92a41221596522581f2c09d619abf5` |
| 9 | `lemma` | [orderPred_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/orderpred-zero--c9027f30dfe539b0e10736d2.md) | 78 | `result-track:c9027f30dfe539b0e10736d24929d0c5c3535b083369b3c03708589fb49d329d` |
| 10 | `lemma` | [orderPred_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant1563914257d2d551d37eac50807d177136789dd6197af0303c1d1010da4f5097.lean/declarations/orderpred-succ--6595563d1ffe7fc592fd8337.md) | 83 | `result-track:6595563d1ffe7fc592fd8337dd315b85a1babb7036ab32a9077942d60a97f7fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
