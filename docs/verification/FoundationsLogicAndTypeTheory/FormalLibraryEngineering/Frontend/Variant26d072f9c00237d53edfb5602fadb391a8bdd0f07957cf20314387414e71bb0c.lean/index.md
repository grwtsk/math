# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe078355f2d3324c6dd1825f88e5a397ae95a36f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe078355f2d3324c6dd1825f88e5a397ae95a36f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.DeclarationRange` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Util.Path` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.CoreM` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LintVerbosity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/lintverbosity--c0a8af166afd641410ae5eda.md) | 35 | `declaration-track:c0a8af166afd641410ae5eda967fe55273fe6742e2cf69e998ecd5a3c92182a9` |
| 2 | `def` | [getEnvLinters](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/getenvlinters--4b7fc97b83b4869cf6a5600c.md) | 47 | `declaration-track:4b7fc97b83b4869cf6a5600c642e0988bc2879be975147d61a970a1b4bd5538f` |
| 3 | `def` | [isLinterEnabledFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/islinterenabledfor--a9235bffb8cc5a3dbce39f2c.md) | 59 | `declaration-track:a9235bffb8cc5a3dbce39f2cdcc8a4b500997206ce9c37b95023dfa94fcbcaac` |
| 4 | `def` | [lintCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/lintcore--8b765e8c34faf0fd0f658481.md) | 68 | `declaration-track:8b765e8c34faf0fd0f65848111a53cee22fd8f704a467d94a02a0abc036537d9` |
| 5 | `def` | [sortResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/sortresults--86d6825fb2bf14b86caa3974.md) | 93 | `declaration-track:86d6825fb2bf14b86caa39743646e9ee07473c97cd0219e40643e4f4a50e26a7` |
| 6 | `def` | [printWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/printwarning--5d32064bba429e610de2b548.md) | 101 | `declaration-track:5d32064bba429e610de2b548c4ab6a869d9ab73f6fe131fd243bdb2d37cd8253` |
| 7 | `def` | [printWarnings](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/printwarnings--4358ab0561bc0ead10bebad1.md) | 112 | `declaration-track:4358ab0561bc0ead10bebad147c539326ea607a9d728ff4720dd286c1137bd71` |
| 8 | `def` | [groupedByFilename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/groupedbyfilename--b46b9c29d050aa64534a3034.md) | 121 | `declaration-track:b46b9c29d050aa64534a3034be7b90eb380c2a4cb7034f754c073a60b101fbd6` |
| 9 | `def` | [formatLinterResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/formatlinterresults--716af9dbb4a7929cf4cd59e7.md) | 144 | `declaration-track:716af9dbb4a7929cf4cd59e7c6b062e9fecc3965c87c4a52cf3cfa72e71e4b20` |
| 10 | `def` | [getDeclsInCurrModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/getdeclsincurrmodule--64c20dcab7c8183f1e958ea9.md) | 174 | `declaration-track:64c20dcab7c8183f1e958ea967f26771bb0c250006955c303a37d8ee4db1820e` |
| 11 | `def` | [getAllDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/getalldecls--b116d85d652ef74cc3fcfb20.md) | 178 | `declaration-track:b116d85d652ef74cc3fcfb2027b1b863c92f3677451bae5ae3a53943715313a1` |
| 12 | `def` | [getDeclsInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/declarations/getdeclsinpackage--eff299330a8cb2b4a34fa3c2.md) | 182 | `declaration-track:eff299330a8cb2b4a34fa3c2b64904c2faceb32347cf8d0e3c07d09b6368590e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
