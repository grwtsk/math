# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Structure.Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cc777ee07f5b1b7fdcdcb709be596b94be0081a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cc777ee07f5b1b7fdcdcb709be596b94be0081a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Structure` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Transform` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getStructureName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/declarations/getstructurename--af2355c16349774e38627a31.md) | 30 | `declaration-track:af2355c16349774e38627a3108d057d0e34df2b9cd30f58df2c76ad00f38182e` |
| 2 | `structure` | [StructProjDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/declarations/structprojdecl--db48e1607e46ada4e33a218b.md) | 41 | `declaration-track:db48e1607e46ada4e33a218bea67dc63e5f7e10598946057491c3736afcf4e36` |
| 3 | `def` | [mkProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/declarations/mkprojections--30835b601a5fcbdbcf50fd3b.md) | 58 | `declaration-track:30835b601a5fcbdbcf50fd3b6a3c8f4917ccc90b1993d393fc125af597aeffd0` |
| 4 | `def` | [etaStruct?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/declarations/etastruct--bcb4b7a8249bc5790e724c83.md) | 135 | `declaration-track:bcb4b7a8249bc5790e724c830b27f41a087cbb969d3ff1b767efed6e72f0d523` |
| 5 | `def` | [etaStructReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/declarations/etastructreduce--83f8c17a2b97c62538f3f3c3.md) | 186 | `declaration-track:83f8c17a2b97c62538f3f3c3d92cc979a0149b9d1f054d17538eb25960fc16a0` |
| 6 | `def` | [instantiateStructDefaultValueFn?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/declarations/instantiatestructdefaultvaluefn--ff7e578009e7b6248b5ced77.md) | 204 | `declaration-track:ff7e578009e7b6248b5ced774796e103915846d3784bb1e6ee21e95bb4d9733c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
