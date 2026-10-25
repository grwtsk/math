# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ConditionallyCompleteOrder.Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0c56c24657b361a755a3d7d9d8411178e75cfe3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0c56c24657b361a755a3d7d9d8411178e75cfe3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instConditionallyCompleteLinearOrder](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/instconditionallycompletelinearorder--7e1eae41afd1ee0c2c27e9c2.md) | 30 | `declaration-track:7e1eae41afd1ee0c2c27e9c2d0d2f8704bb5cb5b923b546765d4a0ddb231bf9a` |
| 2 | `theorem` | [csSup_eq_greatest_of_bdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/cssup-eq-greatest-of-bdd--88936ea93abdb353e869305e.md) | 62 | `result-track:88936ea93abdb353e869305e4914e8d87f650255bfce234e08995df7dc781b14` |
| 3 | `theorem` | [csSup_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/cssup-empty--6f5008e7055ce0b65bd507f2.md) | 69 | `result-track:6f5008e7055ce0b65bd507f2b63cfdd28f840415aabbee3947a0cd2597e04bbd` |
| 4 | `theorem` | [csSup_of_not_bdd_above](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/cssup-of-not-bdd-above--5dccfe122075e2b2b3c072cb.md) | 72 | `result-track:5dccfe122075e2b2b3c072cb6fe65421c59e8fd1d363e9abd5b9c50726fdb41c` |
| 5 | `theorem` | [csInf_eq_least_of_bdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/csinf-eq-least-of-bdd--8cf7585d0c8ff6fe7142103e.md) | 75 | `result-track:8cf7585d0c8ff6fe7142103e2e3fd7b2b7d032d81357cb8e23fdcf957fe279d0` |
| 6 | `theorem` | [csInf_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/csinf-empty--7ad593bb17fbe8db371d630b.md) | 82 | `result-track:7ad593bb17fbe8db371d630bf24c87f9e9e37c62e012ae12fccd7aba5abb57c9` |
| 7 | `theorem` | [csInf_of_not_bdd_below](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/csinf-of-not-bdd-below--ac48ca8a7522545630327cde.md) | 85 | `result-track:ac48ca8a7522545630327cdec5d71c267b1874ef9742cbcc05cbd72a13aef086` |
| 8 | `theorem` | [csSup_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/cssup-mem--79238785a4a23ab99f4ce6ff.md) | 88 | `result-track:79238785a4a23ab99f4ce6ffc5921dd1c611fdcc3e8eb246b2e0c8ea91b9b0bd` |
| 9 | `theorem` | [csInf_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/csinf-mem--49f9382e2cc7cede04abc2a2.md) | 92 | `result-track:49f9382e2cc7cede04abc2a2c59e6d86a510ca2b7b6092b3e294750d1884e3b5` |
| 10 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variant0ce2dbbe4fc1974e91fd914e86bd25e5ce460f8c0f7f7ab9b132686bf4ff8cd7.lean/declarations/example--17d1e7e28b39af11366ddb1a.md) | 102 | `declaration-track:17d1e7e28b39af11366ddb1ad8e60c1ce897dd881ba45220a546e79bfe381d39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
