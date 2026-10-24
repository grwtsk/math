# Verification target: GRWTSK.NumberTheory.VonMangoldt.DyadicEulerIdentification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "595106d0a932db6e127a5fe63db81e628c516750",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/DyadicEulerIdentification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `595106d0a932db6e127a5fe63db81e628c516750`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/DyadicEulerIdentification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/DyadicEulerIdentification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Series.DyadicPartition`](../../../../../../mathematics/Analysis/Series/DyadicPartition.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.DyadicIntegralSeries`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicIntegralSeries.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications`](../../../../../../mathematics/NumberTheory/Zeta/DyadicGreenSpecifications.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arithmeticTerm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/arithmeticterm--e172572d22e1527beb181c80.md) | 31 | `declaration-track:e172572d22e1527beb181c8095f8d3af3027e8cca0a4e49a694ff606968e8883` |
| 2 | `theorem` | [arithmeticTerm_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/arithmeticterm-zero--6e5c7b9faf67551cad6b18f3.md) | 34 | `result-track:6e5c7b9faf67551cad6b18f31b7587979fb968c942413075be08111b410f7c44` |
| 3 | `theorem` | [arithmeticTerm_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/arithmeticterm-one--7d5fb3b75a315c4ab8d691fe.md) | 37 | `result-track:7d5fb3b75a315c4ab8d691feaf6f651c1e84adc016ffd2ab00b11cbd3678b5cf` |
| 4 | `theorem` | [power_eq_cpow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/power-eq-cpow--3c2e01f3c043162be9f068aa.md) | 42 | `result-track:3c2e01f3c043162be9f068aa596ac6c0babc7469553f567766f59eac6b0fa932` |
| 5 | `theorem` | [arithmeticTerm_eq_LSeries_term](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/arithmeticterm-eq-lseries-term--349b909afaf1df3db1ab7898.md) | 48 | `result-track:349b909afaf1df3db1ab7898f87f7fb663b172ec862895ffeefb416d2c671101` |
| 6 | `theorem` | [arithmeticTerm_hasSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/arithmeticterm-hassum--e83ef766225e9ea7322f23fd.md) | 61 | `result-track:e83ef766225e9ea7322f23fd61c203ee2726baefe4c1dc3bd8295e45df98e000` |
| 7 | `theorem` | [cell_eq_window](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/cell-eq-window--87a93f42f2b114dc05e35bdb.md) | 76 | `result-track:87a93f42f2b114dc05e35bdbf8c8caf61ce32d97c41ef7f6083a63d6fe796190` |
| 8 | `theorem` | [source_block_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/source-block-split--b251693121cdff392684e114.md) | 79 | `result-track:b251693121cdff392684e114ccf3b710ea420715223db16f58dcbede3013aac5` |
| 9 | `theorem` | [arithmetic_cells_hasSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/arithmetic-cells-hassum--a970701673d65dcd8e984a02.md) | 86 | `result-track:a970701673d65dcd8e984a0247cf94bedb4c83f5e343017f35de3d00dcf72d36` |
| 10 | `theorem` | [source_blocks_hasSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/source-blocks-hassum--fe90c04635542f745d72fa7b.md) | 93 | `result-track:fe90c04635542f745d72fa7bfb9b5529cf064b8f51436c6d899e0f16f154a7a7` |
| 11 | `theorem` | [source_blocks_summable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/source-blocks-summable--b97303cf04458d7c1efbb557.md) | 99 | `result-track:b97303cf04458d7c1efbb55764275c78054161745b69210292682680219c1bad` |
| 12 | `theorem` | [finite_source_prefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/finite-source-prefix--9bd0f1df75dae251e1ccec85.md) | 105 | `result-track:9bd0f1df75dae251e1ccec854843a8a0f26e089ac20615effa7b9d59057b4eef` |
| 13 | `theorem` | [blockSeries_eq_all_blocks](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/blockseries-eq-all-blocks--05f074cce6180052adcc2786.md) | 114 | `result-track:05f074cce6180052adcc2786317314ba8d44d0aa27fa565dd4007f20adf0105b` |
| 14 | `theorem` | [eulerIdentification](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/euleridentification--1f581e4a6bc37dc154b43408.md) | 121 | `result-track:1f581e4a6bc37dc154b43408068169c6d1f1251990cc56a4b0aa63e1d8fde044` |
| 15 | `theorem` | [tailSeries_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/declarations/tailseries-eq--2b3a1ac15e4b3b5e47938351.md) | 128 | `result-track:2b3a1ac15e4b3b5e47938351af68d7395cd0ce6ef8c13ecab38d40b0c8856a41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
