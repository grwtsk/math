# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3c2d096b33a31ff2ab3ca5440f8f6d3ddadcfe",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3c2d096b33a31ff2ab3ca5440f8f6d3ddadcfe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.String` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/value--977b74d222d0ac83c9d512fe.md) | 27 | `declaration-track:977b74d222d0ac83c9d512fe3a5111231cdc03341ad51ea9baa79624cfc81b40` |
| 2 | `abbrev` | [Table](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/table--11500c9a29f041ed4e447ae2.md) | 38 | `declaration-track:11500c9a29f041ed4e447ae2c12f68b1911ba36c70f0163c19f0634034413717` |
| 3 | `def` | [Table.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/table-empty--0028aa1d7dc0d94d36d10ca7.md) | 40 | `declaration-track:0028aa1d7dc0d94d36d10ca79421f22247e5a0c543e5e660f46a4ae0a41f1e7e` |
| 4 | `def` | [Table.mkEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/table-mkempty--1f4d641601115b110a5cc1e2.md) | 41 | `declaration-track:1f4d641601115b110a5cc1e23250db533887c7178cbafadd768d0f1e52b925fb` |
| 5 | `abbrev` | [Value.table](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/value-table--c7664b82c7ffa882127d5e91.md) | 43 | `declaration-track:c7664b82c7ffa882127d5e91e09493bf8249dbd214e02cc40ac478ebe832f3b6` |
| 6 | `def` | [Value.ref](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/value-ref--be4cb6c79574e18b43419aae.md) | 46 | `declaration-track:be4cb6c79574e18b43419aae16f0cd7782b2d786c95aedf42ce37d6e610fb84b` |
| 7 | `def` | [ppString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/ppstring--d7fe94642875f148b7525aec.md) | 59 | `declaration-track:d7fe94642875f148b7525aec36e3c96865bef1172a2134b7e1c1ba416c2cff04` |
| 8 | `def` | [ppSimpleKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/ppsimplekey--48823aa6a0d528db2be2a8a6.md) | 76 | `declaration-track:48823aa6a0d528db2be2a8a60fed74f204583e3a611b5cc097aa34c63c57a0d1` |
| 9 | `def` | [ppKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/ppkey--b6f3a82f9753998648c6001c.md) | 82 | `declaration-track:b6f3a82f9753998648c6001cd64aa8746f7c40792d8f5056e4f5e01eb3d5134e` |
| 10 | `def` | [ppInlineTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/ppinlinetable--ffdbedb35acae6d74772e473.md) | 93 | `declaration-track:ffdbedb35acae6d74772e473612b62894a47dc5a31fc95fad90a17a36ef959a6` |
| 11 | `def` | [ppInlineArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/ppinlinearray--d24745eba577aab94b4da7ec.md) | 97 | `declaration-track:d24745eba577aab94b4da7ec948d11b1767079ccdfc7503641ae540a7b46ee4c` |
| 12 | `def` | [Value.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/value-tostring--a0bdbcbb289fe65be6efd083.md) | 101 | `declaration-track:a0bdbcbb289fe65be6efd083e98563c4764497b8b5dcd4ab06533eb2e516159a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/instance--f4656c30f853703fac738648.md) | 113 | `declaration-track:f4656c30f853703fac73864892c3a5b0cd63516c3b1e388d8d841002a924bec0` |
| 14 | `def` | [ppTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variantbde363a84b1dab4facda4b96c07f5f2fb31332cf11f4dd27403584cc746d3626.lean/declarations/pptable--8b44f6ee6f185768e6e1765f.md) | 115 | `declaration-track:8b44f6ee6f185768e6e1765f44c261c86bdd3407c38b24efc2629ec109f0673e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
