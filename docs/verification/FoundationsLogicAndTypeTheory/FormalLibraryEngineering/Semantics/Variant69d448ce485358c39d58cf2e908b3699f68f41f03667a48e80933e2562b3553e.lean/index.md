# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "228b401a042efd105134b32d5b9be48aafa86faf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `228b401a042efd105134b32d5b9be48aafa86faf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.Syntax` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Env](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/env--e04f4cf4f10dadb0eccde951.md) | 27 | `declaration-track:e04f4cf4f10dadb0eccde951b1a72096ed3b4d78f6f7aaa50f4fa0ede9f25e73` |
| 2 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval--47b71c04d33fde62c89ea0cb.md) | 31 | `declaration-track:47b71c04d33fde62c89ea0cb843843b66df68aa50c38955f9e6c141775873b6c` |
| 3 | `theorem` | [eval_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval-var--c709ac5bb270f665eec478e8.md) | 41 | `result-track:c709ac5bb270f665eec478e816abaa0e054b130bf9abfa2b3e2b9587cac7e6a8` |
| 4 | `theorem` | [eval_tru](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval-tru--cb656dcc2af95804de159795.md) | 46 | `result-track:cb656dcc2af95804de1597952e1d910d5f6e41caaf1016e131a7963df3c137a3` |
| 5 | `theorem` | [eval_fls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval-fls--d1cbb530b171bcc68e61a36f.md) | 51 | `result-track:d1cbb530b171bcc68e61a36fa7d79d0b23a48fab5084a7880788ea9a20927280` |
| 6 | `theorem` | [eval_not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval-not--39d0a9f4d9640e76e91f8d29.md) | 56 | `result-track:39d0a9f4d9640e76e91f8d29bcdb1bd5ebc5fc5dca359f7a31194fff8882d081` |
| 7 | `theorem` | [eval_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval-and--3c7cecc148caffe33eb97a4d.md) | 61 | `result-track:3c7cecc148caffe33eb97a4d76f196496c8bec1e13c41e1d799cf22e54cda1de` |
| 8 | `theorem` | [eval_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval-or--aebfee2746337a9bba9d20da.md) | 66 | `result-track:aebfee2746337a9bba9d20da54165b255f9c0b18e8cb784d0b930eb8492664c4` |
| 9 | `theorem` | [eval_xor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant69d448ce485358c39d58cf2e908b3699f68f41f03667a48e80933e2562b3553e.lean/declarations/eval-xor--fb6c33eef51b1199e8a4b06b.md) | 71 | `result-track:fb6c33eef51b1199e8a4b06ba41b18c649b483f71c16aeb58885b066f2cda556` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
