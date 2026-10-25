# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FromTypes.Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c44aa068ea8bb2b9b9f6ee2c4a6c19c92300ea2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c44aa068ea8bb2b9b9f6ee2c4a6c19c92300ea2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FromTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes--4c863a07330240c93eae792c.md) | 26 | `declaration-track:4c863a07330240c93eae792c6f0533cf318fbf2f36fd239ca30e8102b778063e` |
| 2 | `theorem` | [fromTypes_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-zero--858490303fd9d8638c5c1f32.md) | 30 | `result-track:858490303fd9d8638c5c1f32925dc62564b90049eef33c250dc6f9c376470af7` |
| 3 | `theorem` | [fromTypes_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-nil--4300492ad850afe112c6e470.md) | 32 | `result-track:4300492ad850afe112c6e470ed7bf75dfd40930dc80c489ccbdd27038924e2ac` |
| 4 | `theorem` | [fromTypes_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-succ--7925a6f0f2f9c334c2847d5f.md) | 35 | `result-track:7925a6f0f2f9c334c2847d5f7d6be278d77fb4a3845899444e065a0dd532a1a4` |
| 5 | `theorem` | [fromTypes_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-cons--3d7646a4ab53b631d845e8dd.md) | 38 | `result-track:3d7646a4ab53b631d845e8dd9132ef33984d4287507eaad29e4eea4593c593f6` |
| 6 | `def` | [fromTypes_zero_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-zero-equiv--d699621faf28ecd40c0a7b98.md) | 43 | `declaration-track:d699621faf28ecd40c0a7b98e820e74af9b215e1d24f72bc5f8d109e64aac6c4` |
| 7 | `def` | [fromTypes_nil_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-nil-equiv--d2338b69f6d0c00c2089e989.md) | 48 | `declaration-track:d2338b69f6d0c00c2089e9895c4ef2e425c95fbcd7931fcab1b4b59c21f3f5f3` |
| 8 | `def` | [fromTypes_succ_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-succ-equiv--9fe71f0d178bc3fe1845e911.md) | 54 | `declaration-track:9fe71f0d178bc3fe1845e911fc8cb58ee45d9dbf6f45c27ff59090aeb4cf8dc4` |
| 9 | `def` | [fromTypes_cons_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/fromtypes-cons-equiv--126ec55ae7da84158d848f9a.md) | 60 | `declaration-track:126ec55ae7da84158d848f9ae0d2aa3ea9ffb5d72bf0045a14a8d78fd12d3e4d` |
| 10 | `def` | [const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/const--12201535920157c04a989116.md) | 66 | `declaration-track:12201535920157c04a989116c832aca48f492727d908405bf34267634a051d27` |
| 11 | `theorem` | [const_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/const-zero--733a0ec742c8d14f2f8f8f6b.md) | 71 | `result-track:733a0ec742c8d14f2f8f8f6bac14a2710c98a2eac964b573d924b19ffe36cd49` |
| 12 | `theorem` | [const_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/const-succ--1dc84befb09475762d824c71.md) | 75 | `result-track:1dc84befb09475762d824c711d22c231b93a251674a8d27f9ede3d6c9ac3cecc` |
| 13 | `theorem` | [const_succ_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/const-succ-apply--94ba32e60638586006abb162.md) | 78 | `result-track:94ba32e60638586006abb1623cea5585daa09cad1a550023d3c12ae519337701` |
| 14 | `instance` | [inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70.lean/declarations/inhabited--fe518336fa65c83d61d304e1.md) | 81 | `declaration-track:fe518336fa65c83d61d304e16652d105b33be7fe44e9b5493716e7e2c7881bd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
