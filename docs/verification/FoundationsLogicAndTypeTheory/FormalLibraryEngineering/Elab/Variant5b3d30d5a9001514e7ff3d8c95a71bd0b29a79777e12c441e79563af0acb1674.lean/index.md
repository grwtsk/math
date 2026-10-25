# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72fbc45dca58fa6d7bb625a864c5d617577e3300",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72fbc45dca58fa6d7bb625a864c5d617577e3300`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.IR.CompilerM` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Frontend` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.DSL.Extensions` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Util.JsonObject` — import line 13; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 14; external provider; requires a separately pinned dependency.
- `Lake.DSL.AttributesCore` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/builtin-initialize--8d1c91f0fee235357078154d.md) | 28 | `declaration-track:8d1c91f0fee235357078154d8d4c869464f505131f8584f9d84487171e572fdc` |
| 2 | `def` | [importModulesUsingCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/importmodulesusingcache--e51a5cadd65e0f790258e5b9.md) | 32 | `declaration-track:e51a5cadd65e0f790258e5b9ac81518f031307845dd535c0eef899584a22c771` |
| 3 | `def` | [processHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/processheader--a5393b7cc79abe35275b855b.md) | 45 | `declaration-track:a5393b7cc79abe35275b855b837ba3146c439242a732f93310b0a7800d7e91c3` |
| 4 | `def` | [configModuleName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/configmodulename--782ecf8191d6a125b179c429.md) | 58 | `declaration-track:782ecf8191d6a125b179c429886269a7d9202beb347b9c9c85e2e9e820677747` |
| 5 | `def` | [elabConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/elabconfigfile--974cadb126698019a6807194.md) | 61 | `declaration-track:974cadb126698019a68071945e021899688d58809acbdc99e57d377efe70c07c` |
| 6 | `opaque` | [addToEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/addtoenv--4ada03a18a6ed286e362bc14.md) | 97 | `declaration-track:4ada03a18a6ed286e362bc1409715637e8733432eb35f2349f3c2d2618d114d1` |
| 7 | `def` | [importConfigFileCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/importconfigfilecore--6b1c9b1bc99bac659e0a2145.md) | 103 | `declaration-track:6b1c9b1bc99bac659e0a21453b2af0e115a8a6ccdd0df7df7365a324e90c5ab1` |
| 8 | `structure` | [ConfigTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/configtrace--9f0880efd0c8984362356bfe.md) | 166 | `declaration-track:9f0880efd0c8984362356bfeb95c4d9db92f20497a02d015bea9a7195a25c7e0` |
| 9 | `def` | [importConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/declarations/importconfigfile--0d07f9e27a63124839fecadb.md) | 180 | `declaration-track:0d07f9e27a63124839fecadbda9b3a33c8cd0ef0a49ae7dcd904175a05a78a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
