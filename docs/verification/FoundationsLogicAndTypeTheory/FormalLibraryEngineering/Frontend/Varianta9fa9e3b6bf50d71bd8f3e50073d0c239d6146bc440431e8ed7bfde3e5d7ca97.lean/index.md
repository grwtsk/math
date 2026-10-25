# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d9fd3824554a343c4e6b96b13113b3c1ccc8611",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d9fd3824554a343c4e6b96b13113b3c1ccc8611`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.Paths` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.OpenPrivate` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LintVerbosity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/lintverbosity--d82982cc6740d022bc45f958.md) | 59 | `declaration-track:d82982cc6740d022bc45f958671de723e6d2ea8a2b89bc2027c8f9bd4c6cfa9f` |
| 2 | `def` | [getChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/getchecks--87927bbe75af37a079faf8e3.md) | 76 | `declaration-track:87927bbe75af37a079faf8e3c4bdee72dd8dd8704f8c8c19b52b48b3091a4f2d` |
| 3 | `def` | [lintCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/lintcore--e1d96834b74ecedb88c885b2.md) | 96 | `declaration-track:e1d96834b74ecedb88c885b22c6490b25153d789b8519b8b68379e177c3e8eab` |
| 4 | `def` | [sortResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/sortresults--753fba6cf7e1000875928474.md) | 121 | `declaration-track:753fba6cf7e1000875928474db0148b4d9a9f1f3d0bd5f73c507dc173836d0d3` |
| 5 | `def` | [printWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/printwarning--b7a54cb41b7c41ddd5d9652f.md) | 129 | `declaration-track:b7a54cb41b7c41ddd5d9652f28d2a3930e6871a1abea503974dfca88e7190744` |
| 6 | `def` | [printWarnings](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/printwarnings--fea15959e5e165a389723c58.md) | 140 | `declaration-track:fea15959e5e165a389723c587bcef07ea7db28b5e5cee175f5eaee7fb6c078fb` |
| 7 | `def` | [groupedByFilename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/groupedbyfilename--d4f39498fc56d017287075dc.md) | 150 | `declaration-track:d4f39498fc56d017287075dc2df09649e0c0fa3409920d7fa932896153982f34` |
| 8 | `def` | [formatLinterResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/formatlinterresults--d71f48360db06f469a4dbe9d.md) | 173 | `declaration-track:d71f48360db06f469a4dbe9d022c8cdfc20a10219f358d30e311d663a01345e6` |
| 9 | `def` | [getDeclsInCurrModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/getdeclsincurrmodule--1b2b336bdb5c2a9cdada59d3.md) | 204 | `declaration-track:1b2b336bdb5c2a9cdada59d32c4cb0380253ea5a1d3163499d00038671784e59` |
| 10 | `def` | [getAllDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/getalldecls--b1a10a153abc2409badd37ae.md) | 208 | `declaration-track:b1a10a153abc2409badd37ae3a945437a4474c535fbdbd61521e538d17cbc678` |
| 11 | `def` | [getDeclsInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/getdeclsinpackage--0398251667c78c83a5d4d126.md) | 212 | `declaration-track:0398251667c78c83a5d4d1260755022cf342ac5efbea3b438b180f680553b8dc` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/syntax--724f4faf1d496cfe92dfd266.md) | 222 | `declaration-track:724f4faf1d496cfe92dfd2661f6bd1242ede31f1e1820224a6f1a69a791b2eef` |
| 13 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/elab--e0cea1e144741b56a901508e.md) | 228 | `declaration-track:e0cea1e144741b56a901508e263ea2e0b2aec97699ca294970c679314bb7939c` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/declarations/elab--d7e6625acfdf623e3a4dbb36.md) | 271 | `declaration-track:d7e6625acfdf623e3a4dbb36b513c19052c8e62eaf323cdb89198216a8d847f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
