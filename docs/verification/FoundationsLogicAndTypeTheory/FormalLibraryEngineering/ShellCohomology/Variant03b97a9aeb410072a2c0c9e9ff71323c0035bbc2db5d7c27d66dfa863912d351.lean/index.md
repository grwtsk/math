# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShellCohomology.Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "774f66f860a643fefb99999df291ec9917afa2e1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `774f66f860a643fefb99999df291ec9917afa2e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Cellular.PhaseConnection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cohomologous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean/declarations/cohomologous--b4726800bbd5a52a90b6fe68.md) | 19 | `declaration-track:b4726800bbd5a52a90b6fe6845ea1a3cb0cb8949f3923b7075666f9b76995e1a` |
| 2 | `structure` | [ShellTorsionClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean/declarations/shelltorsionclass--5265ff88663d129809b1baae.md) | 23 | `declaration-track:5265ff88663d129809b1baaef4c4ea3086444005a5b8f3be9a5638251944e97c` |
| 3 | `def` | [SameShellTorsionClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean/declarations/sameshelltorsionclass--97cdce9e0302a83d458a012a.md) | 26 | `declaration-track:97cdce9e0302a83d458a012abdf7983d6acc27552d9d914981c1cb1e9d79e908` |
| 4 | `theorem` | [exact_connection_same_as_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean/declarations/exact-connection-same-as-zero--98bb3e8e6b9ba2242f9395ff.md) | 30 | `result-track:98bb3e8e6b9ba2242f9395ff24129f5b6534dce902b94bae7fcf71308f858be8` |
| 5 | `structure` | [TopShellCohomologyContract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCohomology/Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351.lean/declarations/topshellcohomologycontract--9355f055f915d736cddc09c2.md) | 37 | `declaration-track:9355f055f915d736cddc09c2dfbbd9684ff2f382b37e2e6f2899d532f3b48e95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
