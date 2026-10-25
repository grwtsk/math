# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80a309b71d19a05d002a7c6f9eba4bc1bf9c4843",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80a309b71d19a05d002a7c6f9eba4bc1bf9c4843`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.DeclarationRange` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Util.Path` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.CoreM` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LintVerbosity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/lintverbosity--f6359a9d489904d6b44b1349.md) | 27 | `declaration-track:f6359a9d489904d6b44b134936c9bb99579960888eb7a6b1dc32eac27381af80` |
| 2 | `def` | [getEnvLinters](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/getenvlinters--9db0bff901efaadffea879f4.md) | 39 | `declaration-track:9db0bff901efaadffea879f40e38d31613c125635aaa91a4d6a7d5745a690379` |
| 3 | `def` | [isLinterEnabledFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/islinterenabledfor--c9bd22a6ae78e6ecc5ef648f.md) | 51 | `declaration-track:c9bd22a6ae78e6ecc5ef648f9724e2d8c3a47d458380bb97ae280e303570ea79` |
| 4 | `def` | [lintCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/lintcore--9adc1b839f6a978c2dda6734.md) | 60 | `declaration-track:9adc1b839f6a978c2dda6734770c0f4d2d29baf37b7b367daa1c65ec6684e28e` |
| 5 | `def` | [sortResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/sortresults--0fc58da62e0642f2b4de7ccf.md) | 85 | `declaration-track:0fc58da62e0642f2b4de7ccf89e6dc8b7e3f0386680217e6c7d1e67f7d5086fb` |
| 6 | `def` | [printWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/printwarning--582e103a895ae3770c48e2d8.md) | 93 | `declaration-track:582e103a895ae3770c48e2d89121ae2223b8ac875b4c2bd68b9f6ff4a54014e8` |
| 7 | `def` | [printWarnings](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/printwarnings--b7a8f72cc1f02ee06cce3ea6.md) | 104 | `declaration-track:b7a8f72cc1f02ee06cce3ea69eff4a1b50ed6a556edad318608d800d5eebe0b6` |
| 8 | `def` | [groupedByFilename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/groupedbyfilename--8f05b75e58eb8dacfbd2b3c8.md) | 113 | `declaration-track:8f05b75e58eb8dacfbd2b3c872c0de7d7f344768ac0ef832da8c270078f78988` |
| 9 | `def` | [formatLinterResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/formatlinterresults--133519c29a33586c091f638d.md) | 136 | `declaration-track:133519c29a33586c091f638d956f5934d087a80b74f33fbe26f7ab9d70012fe4` |
| 10 | `def` | [getDeclsInCurrModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/getdeclsincurrmodule--cbd1c88f0475cd9632d7b8a2.md) | 166 | `declaration-track:cbd1c88f0475cd9632d7b8a252e047f169174be5fbfc07eab10d22d044c8ca8d` |
| 11 | `def` | [getAllDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/getalldecls--ca5991ee57c8734230bd69f5.md) | 170 | `declaration-track:ca5991ee57c8734230bd69f546d23842b9ffd906f574a23a75dd4d767884e1ac` |
| 12 | `def` | [getDeclsInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant839aa5944d2441a848bf03beb303f2217b222b27027d273cc76806647413e3b8.lean/declarations/getdeclsinpackage--a021cdd372a4f7a47e18a688.md) | 174 | `declaration-track:a021cdd372a4f7a47e18a688656f4ee20b53d2e014ee9422b21896cf061e7b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
