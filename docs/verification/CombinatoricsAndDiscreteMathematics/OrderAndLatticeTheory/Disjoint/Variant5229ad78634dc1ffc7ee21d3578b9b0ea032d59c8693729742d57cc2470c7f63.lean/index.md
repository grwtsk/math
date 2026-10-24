# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Disjoint.Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5b588a19b65852a69c90ad22bb138ee1010d382",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5b588a19b65852a69c90ad22bb138ee1010d382`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Disjoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_atBot_principal_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-atbot-principal-ioi--6ee2f309b5fefd21c06478d4.md) | 21 | `result-track:6ee2f309b5fefd21c06478d4689c060bc230907234d58eca009a18cae617328a` |
| 2 | `theorem` | [disjoint_atTop_principal_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-attop-principal-iio--8048437e7f8c5ce6a687b1d1.md) | 24 | `result-track:8048437e7f8c5ce6a687b1d1e34dda2996639ee9df42b006ce9668e26ffdcda3` |
| 3 | `theorem` | [disjoint_atTop_principal_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-attop-principal-iic--1d6f462a4e6e74f4a107ee96.md) | 27 | `result-track:1d6f462a4e6e74f4a107ee9665463ce4efc7914281105a8b94205fb93a3a3ad9` |
| 4 | `theorem` | [disjoint_atBot_principal_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-atbot-principal-ici--d0763a9d3eaf40c51db4eed0.md) | 32 | `result-track:d0763a9d3eaf40c51db4eed0c766b004a5fb4ee19dfb42c5fc4bb380e83d8f57` |
| 5 | `theorem` | [disjoint_pure_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-pure-attop--4a72bdd232f51ca7061e4153.md) | 36 | `result-track:4a72bdd232f51ca7061e4153aa6e39d09a3b7e67e959fa6f744d9846c5e2f0d7` |
| 6 | `theorem` | [disjoint_pure_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-pure-atbot--ce8f60ca771b13394e9e607b.md) | 40 | `result-track:ce8f60ca771b13394e9e607b28d9ba167cbbce0c95b4e812281fed8c8b321db1` |
| 7 | `theorem` | [disjoint_atBot_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-atbot-attop--8eee19b673be2e608093c9f6.md) | 43 | `result-track:8eee19b673be2e608093c9f6dc8e50c2b867fb7708c9585316c7c914154d40e5` |
| 8 | `theorem` | [disjoint_atTop_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63.lean/declarations/disjoint-attop-atbot--c28e71e85bd45470e8ff3a45.md) | 52 | `result-track:c28e71e85bd45470e8ff3a45cd68d4927dba4def599cea9bfcc6dc0861ce5a3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
