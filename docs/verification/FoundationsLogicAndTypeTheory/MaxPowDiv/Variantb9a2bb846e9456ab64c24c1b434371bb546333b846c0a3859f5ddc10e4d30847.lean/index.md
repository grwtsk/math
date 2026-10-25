# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MaxPowDiv.Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea1166f01c52511bc125a754c2b6d92f933e2d6e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea1166f01c52511bc125a754c2b6d92f933e2d6e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pow` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPowDiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/maxpowdiv--47acdd6fca0f2b322cb10e94.md) | 29 | `declaration-track:47acdd6fca0f2b322cb10e942fe05fe1eadbd376da2a97d9595d1c484fb53b16` |
| 2 | `theorem` | [go_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/go-eq--55c80a7fed236ae26bcd2dc5.md) | 44 | `result-track:55c80a7fed236ae26bcd2dc5c53b8786ea113a7da41265b953ef055c47769c33` |
| 3 | `theorem` | [go_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/go-succ--d9cb94d5d718dc2d8e26d8cb.md) | 50 | `result-track:d9cb94d5d718dc2d8e26d8cb749264c898ce397e39bc459d0890ce6143b5d893` |
| 4 | `theorem` | [zero_base](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/zero-base--1af2af94299488bdb2b8c31d.md) | 60 | `result-track:1af2af94299488bdb2b8c31d4202a994a8b0cd2c84367b7144b6658f803bc38c` |
| 5 | `theorem` | [zero](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/zero--b5eaaa21bee7ee28d58b5bde.md) | 66 | `result-track:b5eaaa21bee7ee28d58b5bdeebaaf2b19bdf19887c294752a1eb16e3f4770a4e` |
| 6 | `theorem` | [base_mul_eq_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/base-mul-eq-succ--b5438a5f645eac29eb45af50.md) | 71 | `result-track:b5438a5f645eac29eb45af5064d04441491f30937517a76a8de3d7086d871cac` |
| 7 | `theorem` | [base_pow_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/base-pow-mul--780ed0c9e79ccdfbe9ec4b4c.md) | 80 | `result-track:780ed0c9e79ccdfbe9ec4b4ce6fcdfff3d0b83bc98cc151c9ee9e0f54a43d6f6` |
| 8 | `theorem` | [pow_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/pow-dvd--35423f0cb8ca69f89250fb74.md) | 89 | `result-track:35423f0cb8ca69f89250fb74fbb4ef40b9ec76c294554a788d086c0dc6234e22` |
| 9 | `theorem` | [le_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variantb9a2bb846e9456ab64c24c1b434371bb546333b846c0a3859f5ddc10e4d30847.lean/declarations/le-of-dvd--d3267acc61c2c51af50f89a2.md) | 103 | `result-track:d3267acc61c2c51af50f89a2af9163e63422d4df3ac2d058628ad6de3a3cfb09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
