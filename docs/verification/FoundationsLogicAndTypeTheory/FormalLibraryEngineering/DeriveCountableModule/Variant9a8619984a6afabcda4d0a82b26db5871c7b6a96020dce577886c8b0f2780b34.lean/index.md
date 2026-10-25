# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveCountableModule.Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e38c933abba2f2bcae741820c65663ffffb287e3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e38c933abba2f2bcae741820c65663ffffb287e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Basic.Countable.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveCountable` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean/declarations/single--5d7c025f6b0ac8fdc224a7eb.md) | 20 | `declaration-track:5d7c025f6b0ac8fdc224a7eb375f73eede8ece3a8f88d25555185407ffa0de4c` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean/declarations/example--c7c5d54da2f341bb1deb1563.md) | 24 | `declaration-track:c7c5d54da2f341bb1deb156314eb7b6ef93fce725eaf3ee940af2c4ae9564175` |
| 3 | `inductive` | [Tree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean/declarations/tree--1c7afdc2dafb090c4a6f7370.md) | 26 | `declaration-track:1c7afdc2dafb090c4a6f73704c1b70fb6bf8717c0e353e8025c6e59e1adfd7a8` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean/declarations/example--a571d909901764308814cddb.md) | 31 | `declaration-track:a571d909901764308814cddb169fbe73f78e9b6b37c433a3f4e33c922e313678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
