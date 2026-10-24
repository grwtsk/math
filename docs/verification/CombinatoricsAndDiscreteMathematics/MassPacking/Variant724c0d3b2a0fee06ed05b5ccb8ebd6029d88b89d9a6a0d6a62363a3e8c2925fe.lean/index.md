# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MassPacking.Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66313d7bd0380d46bda6f5a38a560c7f06581d93",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66313d7bd0380d46bda6f5a38a560c7f06581d93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatchedCoefficientPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/declarations/matchedcoefficientpartition--53436f699e0de8462b77e8aa.md) | 38 | `declaration-track:53436f699e0de8462b77e8aa8e777af5d17fd04b3bb1b55d07fa811d65f8420b` |
| 2 | `def` | [MatchedCoefficientPartition.leftChild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/declarations/matchedcoefficientpartition-leftchild--31abf54db338e02884f3c880.md) | 46 | `declaration-track:31abf54db338e02884f3c880a793b72f2e9164ae065b88b79ba91c80195a497d` |
| 3 | `def` | [MatchedCoefficientPartition.rightChild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/declarations/matchedcoefficientpartition-rightchild--2f8828844c423015cf1b278a.md) | 57 | `declaration-track:2f8828844c423015cf1b278ac5ec44baaf93fe6e10c1543a42e0f0b7c40f752b` |
| 4 | `def` | [MatchedCoefficientPartition.childMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/declarations/matchedcoefficientpartition-childmass--048e78c247c353aefb4bbf5a.md) | 68 | `declaration-track:048e78c247c353aefb4bbf5a8294a62a97df010f5bbbdbd7b1efeb5fbc71c7d8` |
| 5 | `theorem` | [MatchedCoefficientPartition.sum_leftChild_norm_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/declarations/matchedcoefficientpartition-sum-leftchild-norm-sq--6ff771ee5352c1633d0df610.md) | 77 | `result-track:6ff771ee5352c1633d0df6100fe514eb65eac08212b0177eecb5b4ee8c550c8e` |
| 6 | `theorem` | [MatchedCoefficientPartition.sum_rightChild_norm_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/declarations/matchedcoefficientpartition-sum-rightchild-norm-sq--3b1448f9375edc78270a41f1.md) | 95 | `result-track:3b1448f9375edc78270a41f14ffa5570a9b8f5eca02393ab097a2dddd600d839` |
| 7 | `theorem` | [MatchedCoefficientPartition.sum_childMass_le_parent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant724c0d3b2a0fee06ed05b5ccb8ebd6029d88b89d9a6a0d6a62363a3e8c2925fe.lean/declarations/matchedcoefficientpartition-sum-childmass-le-parent--0fc4780cf173a6b9246a9b56.md) | 114 | `result-track:0fc4780cf173a6b9246a9b56a31cda96a8f393ef590fe0ba87740fb0d52f012c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
