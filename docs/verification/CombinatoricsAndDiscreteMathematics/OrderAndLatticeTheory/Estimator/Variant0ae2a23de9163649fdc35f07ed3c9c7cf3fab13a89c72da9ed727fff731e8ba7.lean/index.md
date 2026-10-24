# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Estimator.Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ef2d3c58f1b7a22f3764d59cd8b6a69bcd80c42",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ef2d3c58f1b7a22f3764d59cd8b6a69bcd80c42`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelClasses` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Thunk` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EstimatorData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimatordata--8b08f96504f89f413e9a0a52.md) | 51 | `declaration-track:8b08f96504f89f413e9a0a5218a62c68ba6e5ce3829d7ec0814770a193fbf27c` |
| 2 | `class` | [Estimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimator--71f1a63509dcc01d7fc56e35.md) | 63 | `declaration-track:71f1a63509dcc01d7fc56e3586dff25cfe8ff89345bc5cdbe694ff3f4543e9d8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/instance--551e9ff830a3d9cd5e678d55.md) | 77 | `declaration-track:551e9ff830a3d9cd5e678d554fdc3a0d02da246e99df5228883b2cc198060a6c` |
| 4 | `def` | [Estimator.improveUntilAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimator-improveuntilaux--d3659205c334579c24dec17c.md) | 85 | `declaration-track:d3659205c334579c24dec17cec23b180d8d814f9ef949b7619f212e7a25476a5` |
| 5 | `def` | [Estimator.improveUntil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimator-improveuntil--b1954e376c4eb5b1788b4625.md) | 102 | `declaration-track:b1954e376c4eb5b1788b46259177b06c547fd681478a0ce5b81c5d7906b5d0d3` |
| 6 | `theorem` | [Estimator.improveUntilAux_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimator-improveuntilaux-spec--f303b1cea8bbd6257ddb4643.md) | 114 | `result-track:f303b1cea8bbd6257ddb464300cc19bb5cca4512815d55c9367eea7314eb9951` |
| 7 | `theorem` | [Estimator.improveUntil_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimator-improveuntil-spec--0ae4aa89545e5142e78f7bc5.md) | 136 | `result-track:0ae4aa89545e5142e78f7bc5cbf8e3ed1ff04a93c2b4d80a4ea6cf8cd30e860e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/instance--4699283ef87854eb716b1228.md) | 145 | `declaration-track:4699283ef87854eb716b12287c6ce746637419479a922637085c05c67b91d623` |
| 9 | `structure` | [Estimator.fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimator-fst--60cba4b563bab17eb49a4ff1.md) | 155 | `declaration-track:60cba4b563bab17eb49a4ff171ac6389cd501d68e8ad3f750edea6950efe35ab` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/instance--2607502e054a91ef4ced883a.md) | 161 | `declaration-track:2607502e054a91ef4ced883a025333a304ca618ed11898da22cdbd5b23cbb106` |
| 11 | `def` | [Estimator.fstInst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/declarations/estimator-fstinst--69b0d3e706dae073b56c856e.md) | 173 | `declaration-track:69b0d3e706dae073b56c856edf8696bdae7beb41f189dd759f1c3784d876eda4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
