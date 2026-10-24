# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18abb1fdcc1276b5db84ac098e1bb91bd7c4e7d2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18abb1fdcc1276b5db84ac098e1bb91bd7c4e7d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLatticeIntervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LatticeIntervals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/orderbot--3896738ae8ea5ead5b979e49.md) | 25 | `declaration-track:3896738ae8ea5ead5b979e494f8b93200ceb8c7a89386476779325d993f45c73` |
| 2 | `theorem` | [bot_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/bot-eq--84c1568c2c7829c0a4c0a4e9.md) | 28 | `result-track:84c1568c2c7829c0a4c0a4e9827eea478444c33ad1cf8aa546a9af09cb4e5fcc` |
| 3 | `instance` | [noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/nomaxorder--39426aa71a6ea2fa3e57d33b.md) | 31 | `declaration-track:39426aa71a6ea2fa3e57d33b796c89a7a65fb38bfaa73c9f260c6ee26bfbf14f` |
| 4 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/semilatticesup--c4280b80b8a0bd3331c39150.md) | 34 | `declaration-track:c4280b80b8a0bd3331c39150bc36e25a6213ba7d8ee9e5979c29d438b1a96f50` |
| 5 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/semilatticeinf--20be05ada6d62d54ff910cbc.md) | 37 | `declaration-track:20be05ada6d62d54ff910cbc78426c5c44bb279e6c95c4d9a68ce9ef4db24d9f` |
| 6 | `instance` | [distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/distriblattice--92afbebd26470ac0ca6c2e08.md) | 40 | `declaration-track:92afbebd26470ac0ca6c2e086da1ca8fb7020d9d83641fd3fa36414e3ff87d5c` |
| 7 | `instance` | [instDenselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/instdenselyordered--04aebd56bd3311696cce3db6.md) | 43 | `declaration-track:04aebd56bd3311696cce3db695dc3424f9d52fd5d8a88360cecd295d80b922d4` |
| 8 | `abbrev` | [conditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/conditionallycompletelinearorder--c0349bf4715d7ca0c6c952c1.md) | 48 | `declaration-track:c0349bf4715d7ca0c6c952c141a6a5ed1069dc1ec1be2106f11a7b70e0703f7b` |
| 9 | `abbrev` | [conditionallyCompleteLinearOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantfe71518bb97483a368d6848fbdb3330d60484c3da137d61e40a71e30d8907923.lean/declarations/conditionallycompletelinearorderbot--f5712a5d6ed61713ef2dbe87.md) | 57 | `declaration-track:f5712a5d6ed61713ef2dbe876293ea5a28b66afa29dfd29081c664f471073f6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
