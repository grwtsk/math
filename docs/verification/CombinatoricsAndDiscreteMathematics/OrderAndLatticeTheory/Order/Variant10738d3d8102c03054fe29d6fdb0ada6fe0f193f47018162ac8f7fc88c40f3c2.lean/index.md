# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d9077d181cd60bfec827ba5341675e275930132",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d9077d181cd60bfec827ba5341675e275930132`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 12; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/le--cd83ed8804df2f01db31f6fa.md) | 54 | `declaration-track:cd83ed8804df2f01db31f6fabc3e1f8943b1ea3d749d879477ca2bed632db476` |
| 2 | `instance` | [lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/lt--54ef5fe1e370e40a5684278e.md) | 58 | `declaration-track:54ef5fe1e370e40a5684278e3cf3dffbd912d6f2fb7fd7f837f4013d87d9edb2` |
| 3 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/preorder--357d47cc78cccbb436fa0b54.md) | 61 | `declaration-track:357d47cc78cccbb436fa0b54964de7ea04bac10f994400bd924521c89b55b00e` |
| 4 | `instance` | [partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/partialorder--7788ca23e71ee45b819ca63d.md) | 88 | `declaration-track:7788ca23e71ee45b819ca63d57123442a27e0a89c9cf3604e9e769217a8f8d1b` |
| 5 | `instance` | [linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/linearorder--09c7d48084604e2912009c53.md) | 98 | `declaration-track:09c7d48084604e2912009c530372b907778cb8c2c81159d1fa9273fccb5648bd` |
| 6 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/orderbot--bbe6d7fbf2a7fa05d171b28a.md) | 112 | `declaration-track:bbe6d7fbf2a7fa05d171b28a2ace7d5390583d9652fb4606505dce0d7851cf84` |
| 7 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/ordertop--f12c83ca404050a01ac64e31.md) | 121 | `declaration-track:f12c83ca404050a01ac64e31471481a980b35f35fa8c12910b197453e6c185a0` |
| 8 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/boundedorder--a619758ba23caac3bfa55075.md) | 130 | `declaration-track:a619758ba23caac3bfa55075709d7b244a6d00a7fbd5290cd9b502570135d815` |
| 9 | `instance` | [denselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/denselyordered--4d946b459139a52615ec4793.md) | 134 | `declaration-track:4d946b459139a52615ec4793d3ca6729c7914384cbfe26079c113baaca76e21c` |
| 10 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/denselyordered-of-nomaxorder--f5932018a32c6c4c75c56ff9.md) | 144 | `declaration-track:f5932018a32c6c4c75c56ff9e609826e0ed621d4607517fca5f01bff88d0f655` |
| 11 | `instance` | [denselyOrdered_of_noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/denselyordered-of-nominorder--4c858b68d9abcddf36fb6b8b.md) | 153 | `declaration-track:4c858b68d9abcddf36fb6b8b8274f30b92146bf49b6625116d577fa6272c89f3` |
| 12 | `instance` | [noMaxOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/nomaxorder-of-nonempty--08830041d80323650e02b3dd.md) | 162 | `declaration-track:08830041d80323650e02b3ddf39147a7d1ac083bd5dcb3349f16421a81ae5cfa` |
| 13 | `instance` | [noMinOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/nominorder-of-nonempty--6c073e529f8757c88687671d.md) | 170 | `declaration-track:6c073e529f8757c88687671db4a73d120b9415d14c52ebfdaa12357bb3d305f0` |
| 14 | `instance` | [noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/nomaxorder--86d77325e08f5cdbb02a1da1.md) | 178 | `declaration-track:86d77325e08f5cdbb02a1da103f27b406afbc4c4b6b9c6a26f90470c55da95dd` |
| 15 | `instance` | [noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant10738d3d8102c03054fe29d6fdb0ada6fe0f193f47018162ac8f7fc88c40f3c2.lean/declarations/nominorder--ec248c70d04433ff1a253e9b.md) | 185 | `declaration-track:ec248c70d04433ff1a253e9bcb82d920f29de89e6ad6453a3408a5ff5c474e9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
