# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Actions.Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b358e4d8a13ea53e34654246d141e400317f116e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b358e4d8a13ea53e34654246d141e400317f116e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Proc` — import line 15; external provider; requires a separately pinned dependency.
- `Lake.Util.FilePath` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.Util.IO` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.CoreM` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compileLeanModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/compileleanmodule--2dc60e5f850383a6725e3115.md) | 36 | `declaration-track:2dc60e5f850383a6725e3115022613620f0fda683f4f0ea10e1fe5bf3177d5f1` |
| 2 | `def` | [compileO](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/compileo--c269680268039c7321c8a998.md) | 109 | `declaration-track:c269680268039c7321c8a99833e2088c3ce251aa9370508b4df8e90db8ba26d6` |
| 3 | `def` | [mkArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/mkargs--ee60e3b726bc4d907099d8a2.md) | 119 | `declaration-track:ee60e3b726bc4d907099d8a2aea0c8ae7780ff6c9773bf0055dc5f2b50113f7b` |
| 4 | `def` | [compileStaticLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/compilestaticlib--ac12f06c151b663d9a25e8f0.md) | 135 | `declaration-track:ac12f06c151b663d9a25e8f0043716f6f8b56a52d68c007bcd359ac9d8f4107f` |
| 5 | `def` | [getMacOSXDeploymentEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/getmacosxdeploymentenv--5f2bd6440109de88cd441063.md) | 147 | `declaration-track:5f2bd6440109de88cd441063e6c55821c7e1eb7dfcc8d569dbadacb153b74239` |
| 6 | `def` | [compileSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/compilesharedlib--f1e1ba542de08d25aebb2c34.md) | 158 | `declaration-track:f1e1ba542de08d25aebb2c34beefd963129404cac4b79e7ad06797b83b2c009f` |
| 7 | `def` | [compileExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/compileexe--5d7dd4df26c9bc73484b8634.md) | 168 | `declaration-track:5d7dd4df26c9bc73484b86341adf3159d7ba233cc5887fe1d886d94db7dfb7d2` |
| 8 | `def` | [download](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/download--f60e6f4b4da06bca41560e77.md) | 179 | `declaration-track:f60e6f4b4da06bca41560e77429a867d2c8d44fb39781711658b059e833e93cc` |
| 9 | `def` | [untar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/untar--132005342ee39fdfa9cd9f01.md) | 191 | `declaration-track:132005342ee39fdfa9cd9f0114bb9667799d2caa99eaa4b1978d4d985984213d` |
| 10 | `def` | [tar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant670abf48d107303f415ff9ccb6c962db29b643e77422d7ce0e6adecec19ae165.lean/declarations/tar--2bfd248f03085f15b5295eb8.md) | 202 | `declaration-track:2bfd248f03085f15b5295eb83a1ae74060299c02b40e5f3676ab4a626ab602c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
