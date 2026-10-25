# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84ec9c3a8894b1bbb0da0f0777e3dcc011f74659",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84ec9c3a8894b1bbb0da0f0777e3dcc011f74659`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Rat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/invatprec--088df1a2c112cd7642f466c6.md) | 30 | `declaration-track:088df1a2c112cd7642f466c6ad60ad9f216cb5aafd9dadcf4c936a7d1ec73a45` |
| 2 | `def` | [divAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/divatprec--27c7ae78f99032ecb1a33ed4.md) | 40 | `declaration-track:27c7ae78f99032ecb1a33ed41a61affcfba70ad9b0724447cfbc3c9b60ddccb5` |
| 3 | `theorem` | [invAtPrec_eq_divAtPrec_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/invatprec-eq-divatprec-one--619d65db373a516f4a4ffd0b.md) | 46 | `result-track:619d65db373a516f4a4ffd0b1478bd751a24908513a4bce66e3ba86197848223` |
| 4 | `theorem` | [eq_toDyadic_of_precision_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/eq-todyadic-of-precision-le--0b49dc65eb32a2c94ab9be62.md) | 60 | `result-track:0b49dc65eb32a2c94ab9be629855b24bb693bdbdc2220b9ee54b17d38c0ef031` |
| 5 | `theorem` | [divAtPrec_mul_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/divatprec-mul-le--a355dc2c88c82a7c0a034a94.md) | 95 | `result-track:a355dc2c88c82a7c0a034a94e55f0caa137a1a8f239af917c2557d5e70c5c067` |
| 6 | `theorem` | [lt_divAtPrec_add_inc_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/lt-divatprec-add-inc-mul--7345058cb80233763c8c8135.md) | 110 | `result-track:7345058cb80233763c8c813569fca5e19ed9c88a698bca2dd7ce47df47902412` |
| 7 | `theorem` | [eq_divAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/eq-divatprec--bfa7ee702044e4225f856abe.md) | 130 | `result-track:bfa7ee702044e4225f856abe488351aa2748d8066148bef9944fa75a929f1443` |
| 8 | `theorem` | [invAtPrec_mul_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/invatprec-mul-le-one--83b8e8d0e4b04f137c12ba08.md) | 159 | `result-track:83b8e8d0e4b04f137c12ba08d3ee1a38296695dd5c602c70227df98cfdd9312e` |
| 9 | `theorem` | [one_lt_invAtPrec_add_inc_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/one-lt-invatprec-add-inc-mul--c5d975acc7915b59cc22eea6.md) | 165 | `result-track:c5d975acc7915b59cc22eea635fa03c83f44b908758f4ba9e5d17d703b1d3be3` |
| 10 | `theorem` | [eq_invAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/eq-invatprec--b57b72db7b4a90a5a2db0c68.md) | 174 | `result-track:b57b72db7b4a90a5a2db0c6856b4929ed460f8f3118a049b01179c672c1b6c57` |
| 11 | `theorem` | [mul_invAtPrec_lt_divAtPrec_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/mul-invatprec-lt-divatprec-add--ef4236927ae578fd8417413f.md) | 191 | `result-track:ef4236927ae578fd8417413f60d14e8e68f927b2ad275c2ecee0f64620b18524` |
| 12 | `theorem` | [divAtPrec_sub_mul_lt_mul_invAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/declarations/divatprec-sub-mul-lt-mul-invatprec--fda34a04a3f3a650f41ec2a8.md) | 212 | `result-track:fda34a04a3f3a650f41ec2a8d0a44e07cc81de8c0415a0a71648ecac3e927d72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
