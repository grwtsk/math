# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46ed01b35d3eea6407799104ad60029a0bba61e2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46ed01b35d3eea6407799104ad60029a0bba61e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 7; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/le--234e3c8f449195abf6c06d19.md) | 46 | `declaration-track:234e3c8f449195abf6c06d1978bc5c5c9def7cb9007e3c1bebb8e30c8c5913a1` |
| 2 | `instance` | [lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/lt--964081c0fbf5bf1d035ae2c4.md) | 50 | `declaration-track:964081c0fbf5bf1d035ae2c4f53b93af9b63ae83f3964c9b86e2fb45d23216f1` |
| 3 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/preorder--f014bee0fc82805537d08951.md) | 53 | `declaration-track:f014bee0fc82805537d08951d6c2cf9d9fce8e5d5ab221c730d95f925cea354a` |
| 4 | `instance` | [partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/partialorder--b0aa42817230fbcbb5a31837.md) | 80 | `declaration-track:b0aa42817230fbcbb5a3183745ebae7fa951aae44713a822ab5f3ab1831dede4` |
| 5 | `instance` | [linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/linearorder--4b2fb3f37bc3298a2e5d6c4e.md) | 90 | `declaration-track:4b2fb3f37bc3298a2e5d6c4ef5e9c1a3fa49031faba3d7159cd552eacbc9ad8f` |
| 6 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/orderbot--f49a5ed5cce3ed0d7fe1e74d.md) | 104 | `declaration-track:f49a5ed5cce3ed0d7fe1e74d8de6012e22139bf735d880d317df9f48f0b28e6b` |
| 7 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/ordertop--cbd649f8c31e30ea3a748712.md) | 113 | `declaration-track:cbd649f8c31e30ea3a7487123e40ab6737fd2c77fdbf0efa197dc8d0c3ba719b` |
| 8 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/boundedorder--faf2de4e9c05e823eaf148e9.md) | 122 | `declaration-track:faf2de4e9c05e823eaf148e9c67a127d06b6eb8a78f41e54b13620586f33409e` |
| 9 | `instance` | [denselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/denselyordered--c641bae87f2d8d95dd7edb19.md) | 126 | `declaration-track:c641bae87f2d8d95dd7edb19f93af805020f116476fae64140b66cc6a6d58534` |
| 10 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/denselyordered-of-nomaxorder--2e720011505389234e91ccbd.md) | 136 | `declaration-track:2e720011505389234e91ccbd254468682772b2eb2d5ec8f48b00d2929fcb839d` |
| 11 | `instance` | [denselyOrdered_of_noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/denselyordered-of-nominorder--46114631f53a9bf31ef2941d.md) | 145 | `declaration-track:46114631f53a9bf31ef2941dd7702e48631a207e781023fa7667aa6207091566` |
| 12 | `instance` | [noMaxOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/nomaxorder-of-nonempty--8d244617c54a6877b8527faa.md) | 154 | `declaration-track:8d244617c54a6877b8527faad0fbbac306061186b7ab254d4d0eeec2eb2e4915` |
| 13 | `instance` | [noMinOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/nominorder-of-nonempty--0b0ff67c7755f0ecb0c5030f.md) | 162 | `declaration-track:0b0ff67c7755f0ecb0c5030f68e8c94ec4c953e4e4df047cd2a94635f17097a6` |
| 14 | `instance` | [noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/nomaxorder--eda7c596dca66ef2495df9b8.md) | 170 | `declaration-track:eda7c596dca66ef2495df9b8d7c3d7aef74841d6294cb3d44f6eea2a0eeead4c` |
| 15 | `instance` | [noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant7ede893cda118ed072bda7a72861c749e3b3ae3d1b6fbe40132cef375a3c31b4.lean/declarations/nominorder--2095b5529e727660c95700ea.md) | 177 | `declaration-track:2095b5529e727660c95700ea4f354fd81b46c5ec85608088ab3c2bbde1a9b790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
