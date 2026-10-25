# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckImports.Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0b7fc66dbd7c4b9cb8f7df97de36c0a778eb8e3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0b7fc66dbd7c4b9cb8f7df97de36c0a778eb8e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogIO](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/logio--1ee5bcd1e7cd8bffb541d1e5.md) | 23 | `declaration-track:1ee5bcd1e7cd8bffb541d1e5ffee3896cdeb3d70a2b8411dcaf50461e0a32c78` |
| 2 | `def` | [runLogIO](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/runlogio--67bc9e8eb3855e19c09541bc.md) | 25 | `declaration-track:67bc9e8eb3855e19c09541bcfb8103439143f38e4c0d03422251b9b2f18ce4c0` |
| 3 | `def` | [warn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/warn--17a8bcfa38160e6b5f5ce38a.md) | 30 | `declaration-track:17a8bcfa38160e6b5f5ce38aa7972d137c616ca79c5d30cabb397de1cccaa9eb` |
| 4 | `def` | [getWarningInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/getwarninginfo--c7ec205c7fdecb2d22882abb.md) | 35 | `declaration-track:c7ec205c7fdecb2d22882abbfccd828a3b3bfeec9b82b5a2da592d11d1145fb4` |
| 5 | `def` | [createModuleHashmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/createmodulehashmap--5e1441a9e896b8428a48a928.md) | 37 | `declaration-track:5e1441a9e896b8428a48a9286a081eea7b1cb851c05fbde0946e08fbf5fffa44` |
| 6 | `def` | [addModulesIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/addmodulesin--f2eccf7513015fb8dee4d6e3.md) | 46 | `declaration-track:f2eccf7513015fb8dee4d6e36ef3c6fa26c148575c5b0e2486d3e26f1ceab633` |
| 7 | `def` | [modulePath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/modulepath--6cc82940f4c51523e085858e.md) | 59 | `declaration-track:6cc82940f4c51523e085858ef55df9f1b2b862aebc4928dc2bf1998510d05877` |
| 8 | `def` | [writeImportModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/writeimportmodule--28f57f42127e0c4eb895b98c.md) | 63 | `declaration-track:28f57f42127e0c4eb895b98c3781e086e72eed44af65ab39eb6850d93a29963c` |
| 9 | `def` | [checkMissingImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/checkmissingimports--aff71001f68285d979ee61a3.md) | 71 | `declaration-track:aff71001f68285d979ee61a3293f8a0001535399654f43ad7c4e062b05589ace` |
| 10 | `def` | [checkBatteriesDataDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/checkbatteriesdatadir--98e9256a29bbf53a0b675e77.md) | 82 | `declaration-track:98e9256a29bbf53a0b675e77e2affebdb9534dbe8184bef99a90ddbb5f70271e` |
| 11 | `def` | [expectedBatteriesImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/expectedbatteriesimports--9cf61e4e2b37489aab556260.md) | 109 | `declaration-track:9cf61e4e2b37489aab5562604ec417326fbfcf8736590a70ab3cf92652e42235` |
| 12 | `def` | [checkBatteriesDataImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/declarations/checkbatteriesdataimports--b9ba39c958d468f33e73e622.md) | 124 | `declaration-track:b9ba39c958d468f33e73e622486e1b07082e066e94af6959ca36edbf55b7b15c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
