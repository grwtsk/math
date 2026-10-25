# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proc.Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec2cba3546f9067f6121c1b9f6c2bd7122293ba",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec2cba3546f9067f6121c1b9f6c2bd7122293ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkCmdLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/mkcmdlog--40df64a03d5c6dc35ae66710.md) | 14 | `declaration-track:40df64a03d5c6dc35ae66710f521728d62c077c28c1b6852f94115592b313e8e` |
| 2 | `def` | [logOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/logoutput--eb55b23419732709286d3607.md) | 21 | `declaration-track:eb55b23419732709286d36071127cda40200a222539de8ac2c6cdd952bc8bff8` |
| 3 | `def` | [rawProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/rawproc--e0778e67ad45fe8a3b39842f.md) | 29 | `declaration-track:e0778e67ad45fe8a3b39842f4adfc29579670fe5c262439b5a92701ca42126fe` |
| 4 | `def` | [proc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/proc--283ca7292d460cd32a24e0ae.md) | 38 | `declaration-track:283ca7292d460cd32a24e0aed23cc25b19c6e0bcbab700965145bfed88035473` |
| 5 | `def` | [captureProc'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/captureproc--d2a8aa5992cec799e5483006.md) | 49 | `declaration-track:d2a8aa5992cec799e5483006381e20295be59998715e844cca1694672c2f1a91` |
| 6 | `def` | [captureProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/captureproc--4f63205779022cc97d64ed61.md) | 58 | `declaration-track:4f63205779022cc97d64ed61dcff846ea814705b1e69196e84643be00c2f93f4` |
| 7 | `def` | [captureProc?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/captureproc--5c1076307d5623fd8615989c.md) | 61 | `declaration-track:5c1076307d5623fd8615989c1903cb94f06b61fe9eda75dab723b922c63203ce` |
| 8 | `def` | [testProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proc/Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097.lean/declarations/testproc--b630b5d702a4cff9f7e1d6db.md) | 69 | `declaration-track:b630b5d702a4cff9f7e1d6db2b90b861299e62ee53e3547f14009382ebcdeb96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
