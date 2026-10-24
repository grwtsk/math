# Verification target: GRWTSK.NumberTheory.VonMangoldt.LatticeCellSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f357f78a2fc24c8c7cf71eb0bc367f1b7672181",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/LatticeCellSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f357f78a2fc24c8c7cf71eb0bc367f1b7672181`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/LatticeCellSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/LatticeCellSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.VonMangoldt.GreenEnergyFormula`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/GreenEnergyFormula.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.FiniteSum.DyadicVariance`](../../../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edge](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/edge--628ab3b270398cb16f802087.md) | 22 | `declaration-track:628ab3b270398cb16f802087d95b296eb2eaf99d14c7e2b86ddf2963ba4abde7` |
| 2 | `def` | [prefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/prefix--031a4a9ff82ed26c90ec6671.md) | 23 | `declaration-track:031a4a9ff82ed26c90ec6671a9fcab3b66f1467d6b31c0dd52ff042d4bb4ef4d` |
| 3 | `def` | [cellMeanLog](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/cellmeanlog--246082831b2d959a2c4da382.md) | 26 | `declaration-track:246082831b2d959a2c4da38234c5fba37129f3520c1fb7b3587eb742748c1fab` |
| 4 | `def` | [cellMeanSource](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/cellmeansource--dc08f24ceb6672a776ec56b0.md) | 29 | `declaration-track:dc08f24ceb6672a776ec56b029e71ad8ee6a3bc5ce8c3eb015c28e095ccf2a9f` |
| 5 | `theorem` | [edge_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/edge-zero--9a1cecd5b848ec30822c20b4.md) | 31 | `result-track:9a1cecd5b848ec30822c20b452ab16d9f37dc062dc338f617d465e8b61930c87` |
| 6 | `theorem` | [edge_last](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/edge-last--97b7317d55552758e5fa7fba.md) | 32 | `result-track:97b7317d55552758e5fa7fba082314a1b0a7cbb346d0891a58dd3433eb9ef3cf` |
| 7 | `theorem` | [edge_width](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/edge-width--6c436a7e1eccbff54b97d9f1.md) | 35 | `result-track:6c436a7e1eccbff54b97d9f1d5edc61161bf9ccc1cf358bde7de4ef100c09907` |
| 8 | `theorem` | [edge_lt_next](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/edge-lt-next--eb32fdba3fd3123c5f39859a.md) | 41 | `result-track:eb32fdba3fd3123c5f39859a5fbd4a6199b4fc4f102de913d10de011b81ae724` |
| 9 | `theorem` | [edges_in_unit](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/edges-in-unit--fbc59c0d684e00b49be860bb.md) | 48 | `result-track:fbc59c0d684e00b49be860bb35a30f6508e50eb05b67d038238f316c82e82586` |
| 10 | `theorem` | [location_le_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/location-le-iff--7ff00e3a92382f561b52e1cf.md) | 59 | `result-track:7ff00e3a92382f561b52e1cfe8c8b1129d882cb4822a5045d26d3fc526d0524c` |
| 11 | `theorem` | [cumulative_on_open_cell](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/cumulative-on-open-cell--382fb2ba8f59db3d62391385.md) | 85 | `result-track:382fb2ba8f59db3d62391385595ba116f12ad2c3afcd58304655d399dfaa5d62` |
| 12 | `theorem` | [initial_prefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/initial-prefix--07fed8ae733688d9dfe0ee0d.md) | 98 | `result-track:07fed8ae733688d9dfe0ee0dbfd46c554d2ea539e9224c0c1c3d46f0a16cd9ed` |
| 13 | `theorem` | [endpoint_not_in_cell_prefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/endpoint-not-in-cell-prefix--c67b3d19b907ee361aee0d72.md) | 108 | `result-track:c67b3d19b907ee361aee0d7253e99c0eaaf61f40ae13f88610994449a1580be1` |
| 14 | `theorem` | [cell_integral_congr](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/cell-integral-congr--a0d0f48f53a0bb5d14b20fde.md) | 111 | `result-track:a0d0f48f53a0bb5d14b20fde6cb310eccb4d6a16a59fec028d3085a3b7d812f5` |
| 15 | `theorem` | [integral_square_cell](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/integral-square-cell--07ba8bad77a429c97fa63b8f.md) | 122 | `result-track:07ba8bad77a429c97fa63b8fc3342c8ce5ad6404252eaa9db075f41545124b26` |
| 16 | `theorem` | [integral_source_cell](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/declarations/integral-source-cell--067dda138544aaea8c3659d8.md) | 143 | `result-track:067dda138544aaea8c3659d8fb212893c9650268addc0f4f9812685c4c08b5ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
